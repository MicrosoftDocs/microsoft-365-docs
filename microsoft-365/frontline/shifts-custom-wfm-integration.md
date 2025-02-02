---
title: Create a custom integration to sync your workforce management system with Shifts
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: harrywong
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to create a custom integration using the Microsoft Graph API to integrate your workforce management (WFM) system with Shifts. 
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - teams-1p-app-admin
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 11/18/2024
---

# Create a custom integration to sync your workforce management system with Shifts

## Overview

Integrate Shifts, the schedule management app in Microsoft Teams, with your workforce management (WFM) system. This integration allows your frontline workforce to view and manage their schedules directly within Shifts.

This article guides you through how to create a connector using the Microsoft Graph API to facilitate this integration.

You can set up your integration for either a one-way data sync or a two-way data sync.

- **One-way sync (WFM system to Shifts)**: In this setup, schedule data in your WFM system is synced to Shifts. The connector reads the data in your WFM system and writes it to Shifts. However, any changes made in Shifts by users aren't reflected back in your WFM system.

- **Two-way sync (WFM system and Shifts)**: This setup allows for a bidirectional sync. Schedule data in your WFM system is synced to Shifts, and any changes made in Shifts by users are synced back to your WFM system. The connector validates and approves the changes users make in Shifts according to business rules enforced by your WFM system before the changes are written to Shifts.

> [!NOTE]
> If you're using UKG Pro WFM, Blue Yonder WFM, or Reflexis WFM, you can also use a managed connector to integrate Shifts with your WFM system. To learn more, see [Shifts connectors](shifts-connectors.md).

### Terminology used in this article

|Term |Description |
|---------|---------|
|connector| An app that syncs schedule data between your WFM system and Shifts.        |
|workforce integration| An entity that defines the encryption method for communication, the callback URL for your connector, and the Shifts entities to be synced.|

## Before you begin

### Prerequisites

- Determine what data you want to sync according to your business needs.
- Understand the authentication and authorization concepts in the Microsoft identity platform. See [Authentication and authorization basics](/graph/auth/auth-concepts).
- Admin roles required:
  - At least a [Cloud Application Administrator](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json#cloud-application-administrator) to register an app in the Microsoft Entra admin center
  - Global Administrator to register the workforce integration

### Get familiar with the integration process

Here's an overview of the integration steps. Review this information to get an understanding of the overall process, including who performs each step.

|Step|One-way sync |Two-way sync|Who performs this step|
|---------|---------|------------------|------------------|
|1|Create your connector:<ul><li>Step 1a: [Sync changes made in Shifts to your WFM system](#step-1a-sync-changes-made-in-shifts-to-your-wfm-system)<ul><li>Implement [/connect endpoint](#post-connect)</li><li>Implement [/update endpoint](#post-teamsteamidupdate) and [make Shifts read-only](#if-you-want-to-set-up-a-one-way-sync-make-shifts-read-only)</li></ul><li>Step 1b: [Sync data from your WFM system to Shifts](#step-1b-sync-data-from-your-wfm-system-to-shifts)</li></ul>|Create your connector:<ul><li>Step 1a: [Sync changes made in Shifts to your WFM system](#step-1a-sync-changes-made-in-shifts-to-your-wfm-system)<ul><li>Implement [/connect endpoint](#post-connect)</li><li>Implement [/update endpoint](#post-teamsteamidupdate)</li></ul><li>Step 1b: [Sync data from your WFM system to Shifts](#step-1b-sync-data-from-your-wfm-system-to-shifts)</li></ul>|Developer|
|2|[Register an app in the Microsoft Entra admin center](#step-2-register-an-app-in-the-microsoft-entra-admin-center)|[Register an app in the Microsoft Entra admin center](#step-2-register-an-app-in-the-microsoft-entra-admin-center)|An account that is at least a Cloud Application Administrator |
|3|[Create teams and schedules for syncing](#step-3-create-teams-and-schedules-for-syncing)|[Create teams and schedules for syncing](#step-3-create-teams-and-schedules-for-syncing)|Developer or Teams Administrator |
|4|Register and enable the workforce integration:<ul><li>Step 4a: [Register the workforce integration in your tenant](#step-4a-register-the-workforce-integration-in-your-tenant)</li><li>Step 4b: [Enable the workforce integration for your team schedules](#step-4b-enable-the-workforce-integration-for-your-team-schedules)</li></ul>|Register and enable the workforce integration:<ul><li>Step 4a: [Register the workforce integration in your tenant](#step-4a-register-the-workforce-integration-in-your-tenant)</li><li>Step 4b: [Enable the workforce integration for your team schedules](#step-4b-enable-the-workforce-integration-for-your-team-schedules)</li></ul>|Step 4a: Global Administrator<br>Step 4b: Developer|

## Step 1: Create your connector

To create your connector, complete the following steps:

- [Step 1a: Sync changes made in Shifts to your WFM system](#step-1a-sync-changes-made-in-shifts-to-your-wfm-system)
- [Step 1b: Sync data from your WFM system to Shifts](#step-1b-sync-data-from-your-wfm-system-to-shifts)

### Step 1a: Sync changes made in Shifts to your WFM system

To set up your connector to receive and process requests from Shifts, you need to implement the following endpoints:

- [/connect](#post-connect) (required)
- [/update](#post-teamsteamidupdate) (required)
- [/read](#post-teamsteamidread) (optional)

**Determine your base URL and endpoint URLs**

The base URL (webhook) is `{url}/v{apiVersion}`, where **url** and **apiVersion** are the properties you set in the [workforceIntegration](/graph/api/resources/workforceintegration?view=graph-rest-1.0) object when you [register the workforce integration](#step-4a-register-the-workforce-integration-in-your-tenant).

The relative paths of the endpoint URLs are as follows:

- /connect: `/connect`
- /update: `/teams/{teamid}/update`
- /read: `/teams/{teamid}/read`

For example, if **url** is `https://contosoconnector.com/wfi` and **apiVersion** is `1`:

- The base URL is `https://contosoconnector/com/wfi/v1`.
- The /connect endpoint is `https://contosoconnector/wfi/v1/connect`.
- The /update endpoint is `https://contosoconnector/wfi/v1/teams/{teamid}/update`.
- The /read endpoint is `https://contosoconnector/wfi/v1/teams/{teamid}/read`.

**Encryption**

All requests are encrypted using AES-256-CBC-HMAC-SHA256. You specify the shared secret key when you [register the workforce integration](#step-4a-register-the-workforce-integration-in-your-tenant). Responses sent back to Shifts shouldn't be encrypted.

#### Endpoints

##### POST /connect

Shifts calls this endpoint to test the connection when you [register the workforce integration](#step-4a-register-the-workforce-integration-in-your-tenant). A success response is returned only if this endpoint returns an HTTP `200 OK` response.

###### Example

**Request**<br>
ConnectRequest

```http
{
   "tenantId": "a1s2s355-a2s3-j7h6-f4d3-k2h9j4mqpz",
   "userId": "4fbc12d7-1234-56ef-8a90-bc123d45678f"
}
```

**Response**<br>
Return HTTP `200 OK`

##### POST /teams/{teamid}/update

Shifts calls this endpoint to get approval when a change is made to a Shifts entity in a [schedule](/graph/api/resources/schedule?view=graph-rest-1.0) that's [enabled for the workforce integration](#step-4b-enable-the-workforce-integration-for-your-team-schedules). If this endpoint approves the request, the change is saved in Shifts.

As your WFM system is the system of record, when the connector receives a request to this endpoint, it should first attempt to make the change in the WFM system. If the change is successful, return success. Otherwise, return failure.

Shifts calls this endpoint for every change (including changes initiated from the connector/WFM system). If the connector sent an update to Shifts using Graph API and added the `X-MS-WFMPassthrough: workforceIntegratonId` header, the request coming to this endpoint will have the same header, which allows you to identify and handle these requests appropriately. For example, return success without making the same change in the WFM system as it would be redundant and can cause the connector to get stuck in an infinite loop.

The following diagram shows the flow of data.

:::image type="content" source="media/shifts-custom-integration-update-from-shifts.png" alt-text="Diagram showing the flow for updates from Shifts to your WFM system." lightbox="media/shifts-custom-integration-update-from-shifts.png":::

> [!NOTE]
> For more information on Request and Response models, see [WfiRequest](#wfirequest) in the **Endpoint reference** section of this article.

**Return response code**<br>
Any response from the integration, including an error, must have an HTTP response code `200 OK`. The response body must have the status and error message that reflects the appropriate sub call error state. Any response from the integration other than `200 OK` is treated as an error and returned to the caller (client or Microsoft Graph).

###### If you want to set up a one-way sync, make Shifts read-only

For a one-way sync, you must make Shifts read-only so that users can't make changes in Shifts. To make Shifts read-only, return a failure response for all requests from Shifts.

For example, to block users from making changes to shifts in the schedule, this endpoint must return a failure response whenever it receives a request regarding a `shift` entity.

###### Example

**Request**<br>
WfiRequestContainer

The following example shows a request from Shifts that asks whether a shift, whose ID is SHFT_12345678-1234-1234-1234-1234567890ab and has the properties listed in **body**, can be saved in Shifts. This request was triggered when a user creates a shift in Shifts.

```http
{
  "requests": [
    {
      "id": "SHFT_12345678-1234-1234-1234-1234567890ab",
      "method": "POST",
      "url": "/shifts/SHFT_12345678-1234-1234-1234-1234567890ab",
      "headers": {
        "X-MS-Transaction-ID": "1",
        "X-MS-Expires": "2024-10-11T21:27:59.0134605Z"
      },
      "body": {
        "draftShift": {
          "activities": [],
          "isActive": true,
          "startDateTime": "2024-10-12T15:00:00.000Z",
          "endDateTime": "2024-10-12T17:00:00.000Z",
          "theme": "Blue"
        },
        "isStagedForDeletion": false,
        "schedulingGroupId": "TAG_a3e0b3f1-4a5c-4c2e-8eeb-5b8c3d1e3f8b",
        "userId": "f47ac10b-58cc-4372-a567-0e02b2c3d479",
        "createdDateTime": "2024-10-11T21:27:28.762Z",
        "lastModifiedDateTime": "2024-10-11T21:27:28.762Z",
        "lastModifiedBy": {
          "user": {
            "id": "f47ac10b-58cc-4372-a567-0e02b2c3d479",
            "displayName": "Adele Vance"
          }
        },
        "id": "SHFT_12345678-1234-1234-1234-1234567890ab"
      }
    }
  ]
}
```

**Response**<br>
WfiResponse

Success: Return HTTP `200 OK`

This example shows the response returned if the endpoint approved the request. In this scenario, the shift is saved in Shifts, and the user can see the shift in the schedule.

```http
{
  "responses": [
    {
      "id": "SHFT_12345678-1234-1234-1234-1234567890ab",
      "status": 200,
      "body": {
        "eTag": "3f4e5d6c-7a8b-9c0d-1e2f-3g4h5i6j7k8l",
        "error": null,
        "data": null
      }
    }
  ]
}
```

Failure: Return HTTP `200 OK`

This example shows the response returned if the endpoint denied the request. In this scenario, the user receives a “Could not add the shift” error message in Shifts.

```http
{
    "responses": [
        {
            "id": "SHFT_12345678-1234-1234-1234-1234567890ab",
            "status": 500,
            "body": {
                "error": {
                    "code": "500",
                    "message": “Could not add the shift”
                },
                "data": null
            }
        }
    ]
}
```

##### POST /teams/{teamid}/read

This endpoint handles requests from Shifts to fetch eligible time-off reasons or eligible shifts for swap requests for a user.

> [!NOTE]
> As of October 2024, this endpoint is supported only in the beta version of the Microsoft Graph API. You must also specify values for the **eligibilityFilteringEnabledEntities** property when you [register the workforce integration](#step-4a-register-the-workforce-integration-in-your-tenant).

The following diagram shows the flow of data.

:::image type="content" source="media/shifts-custom-integration-read-from-shifts.png" alt-text="Diagram showing the flow for eligibility filtering requests." lightbox="media/shifts-custom-integration-read-from-shifts.png":::

**Return response code**<br>
Any response from the integration, including an error, must have an HTTP response code `200 OK`. The response body must include the status and error message that reflects the appropriate sub call error state. Any response from the integration other than `200 OK` is treated as an error and returned to the caller (client or Microsoft Graph).

###### Example: TimeOffReason

**Request**

The following example shows a request from Shifts that asks which time off reasons a user (user ID aa162a04-bec6-4b81-ba99-96caa7b2b24d) is eligible for. This request was triggered when the user requests time off in Shifts.

```http
 { 
  "requests": [ 
    { 
      "id": "aa162a04-bec6-4b81-ba99-96caa7b2b24d", 
      "method": "GET", 
      "url": "/users/aa162a04-bec6-4b81-ba99-96caa7b2b24d/timeOffReasons?requestType=TimeOffReason"
    } 
  ] 
}
```

**Response**<br>
Success: Return HTTP `200 OK`

The following response shows that the eligible time off reason IDs for the user are "TOR_29f4a110-ae53-458b-83d6-00c910fe2fbc" and "TOR_8c0e8d07-ac1a-48dc-b3af-7bc71a62ff7d". In this scenario, the user sees the corresponding time-off reasons to choose from in Shifts.

```http
{
    "responses": [ 
      { 
        "id": "aa162a04-bec6-4b81-ba99-96caa7b2b24d", 
        "status": 200, 
        "body": { 
          "data": [ 
            "TOR_29f4a110-ae53-458b-83d6-00c910fe2fbc", 
            "TOR_8c0e8d07-ac1a-48dc-b3af-7bc71a62ff7d" 
          ], 
          "error": null 
          } 
        }
    ]
}
```

Failure: Return HTTP `200 OK`

In this example, an error response is returned because the connector couldn't reach the WFM system to retrieve time off reasons for the user.

```http
 {
  "responses": [
    {
      "id": "aa162a04-bec6-4b81-ba99-96caa7b2b24d",
      "status": 503,
      "body": {
        "data": null,
        "error": {
          "code": "503",
          "message": "Could not reach WFM"
        }
      }
    }
  ]
}
```

###### Example: SwapRequest

**Request**

The following example shows a request from Shifts that asks which shifts are eligible for a swap with the shift whose ID is SHFT_5e2b51ac-dc47-4a66-83ea-1bbbf81ac029 between 2024-10-01T04:00:00.0000000Z and 2024-11-01T03:59:59.9990000Z.

```http
{
  "requests": [
    {
      "id": "SHFT_5e2b51ac-dc47-4a66-83ea-1bbbf81ac029",
      "method": "GET",
      "url": "/shifts/SHFT_5e2b51ac-dc47-4a66-83ea-1bbbf81ac029/requestableShifts?requestType=SwapRequest&startTime=2024-10-01T04:00:00.0000000Z&endTime=2024-11-01T03:59:59.9990000Z"
    }
  ]
}
```

**Response**<br>
Success: Return HTTP `200 OK`

The following response shows that the shift can be swapped with the shift whose ID is SHFT_98e96e23-966b-43be-b90d-4697037b67af.

```http
{ 
  "responses": [ 
    { 
      "id": "SHFT_5e2b51ac-dc47-4a66-83ea-1bbbf81ac029", 
      "status": 200, 
      "body": { 
        "data": ["SHFT_98e96e23-966b-43be-b90d-4697037b67af"],
        "error": null, 
      } 
    }
  ]
}
```

Failure: Return HTTP `200 OK`

In this example, an error response is returned because the connector couldn't reach the WFM system to retrieve eligible shifts for a swap request for the user.

```http
{
  "responses": [
    {
      "id": "SHFT_5e2b51ac-dc47-4a66-83ea-1bbbf81ac029",
      "status": 503,
      "body": {
        "data": null,
        "error": {
          "code": "503",
          "message": "could not reach WFM"
        }
      }
    }
  ]
}

```

### Step 1b: Sync data from your WFM system to Shifts

Use Shifts APIs in Microsoft Graph to read schedule data from your WFM system and write the data to Shifts.

For example, to add a shift to Shifts, use the [Create shift](/graph/api/schedule-post-shifts?view=graph-rest-1.0) API.

See the [Microsoft Graph API v1.0 reference](/graph/api/resources/shift?view=graph-rest-1.0) for Shifts APIs, which are listed under **Shift management**.

> [!NOTE]
> The `MS-APP-ACTS-AS` header is required in requests and must contain the ID (GUID) of the user your app is acting on behalf of. We recommend you use the user ID of a team owner when updating the schedule.

The following diagram shows the flow of data.

:::image type="content" source="media/shifts-custom-integration-update-to-shifts.png" alt-text="Diagram that shows the flow for syncing data from your WFM system to Shifts." lightbox="media/shifts-custom-integration-update-to-shifts.png":::

#### Initial sync

For the first sync, the connector should read data in your WFM system and write the data to Shifts. We recommend you sync two weeks of future data.

#### After the initial sync

After the first sync, you can choose to:

- **Synchronously update Shifts with changes in your WFM system**: Send an update to Shifts for every change made in your WFM system.
- **Asynchronously update Shifts with changes in your WFM system**: Perform a periodic sync by writing all changes that occurred in your WFM system within a certain timeframe (for example, 10 minutes) to Shifts.

    All write operations to Shifts, including write operations initiated by the connector, trigger a call to the connector’s /update endpoint. We recommend you include the `X-MS-WFMPassthrough: workforceIntegratonId` header to all write calls so the connector can identify and handle them appropriately. For example, if your WFM system initiated the change, approve it without applying an update to your WFM system.

  > [!NOTE]
  > If you're setting up your connector for a two-way sync of data between your WFM system and Shifts, exclude changes initiated from Shifts in the periodic sync. These changes are already written in Shifts.

## Step 2: Register an app in the Microsoft Entra admin center

Follow these steps to register an app for your connector in the Microsoft identity platform, configure permissions for the app to access Microsoft Graph, and get an access token.

1. Sign in to the Microsoft Entra admin center as at least a [Cloud Application Administrator](/entra/identity/role-based-access-control/permissions-reference#cloud-application-administrator).
1. Register your app. For steps, see [Register an application with the Microsoft identity platform](/graph/auth-register-app-v2).
1. Assign the *Schedule.ReadWrite.All* [application permissions](/graph/permissions-overview?tabs=http#application-permissions) to the app for app-only access and get an access token.

      For step-by-step guidance, see [Get access without a user](/graph/auth-v2-service?view=graph-rest-1.0).

      The access token verifies that your app is authorized to [call Microsoft Graph using its own identity](/graph/auth/auth-concepts#access-scenarios) using the *Schedule.ReadWrite.All* permission. It must be included in the Authorization header of requests.

## Step 3: Create teams and schedules for syncing

Set up the teams in Teams that you want to sync. You can use existing teams or create new teams.

1. Set up teams in Teams to correspond with the teams and locations in your WFM system. Ensure you add the following people to each team:

    - Frontline managers as team owners. Make sure you add the user in the `MS-APP-ACTS-AS` header as a team owner of each respective team.
    - Frontline workers as team members.
1. Create a schedule in Shifts for each team. To learn more, see [Create or replace schedule](/graph/api/team-put-schedule?view=graph-rest-1.0).
1. Add schedule groups to the schedule on each team. Schedule groups are used to group employees based on common characteristics within a team. For example, schedule groups can be departments or job types. To learn more, see [schedulingGroup resource type](/graph/api/resources/schedulinggroup?view=graph-rest-1.0).
1. Add employees to each schedule group. To learn more, see [Replace schedulingGroup](/graph/api/schedulinggroup-put?view=graph-rest-1.0).

> [!NOTE]
> You can also use the Teams admin center to set up your teams and deploy Shifts to the teams. To learn more, see:
>
>- [Deploy frontline dynamic teams at scale](deploy-dynamic-teams-at-scale.md)
>- [Deploy Shifts to your frontline teams at scale](deploy-shifts-at-scale.md)

## Step 4: Register and enable the workforce integration

A workforce integration defines the encryption settings for communication between Shifts and the connector, the URL for callbacks from Shifts, and the types of entities to sync.

To register and enable the workforce integration, complete the following steps:

- [Step 4a: Register the workforce integration](#step-4a-register-the-workforce-integration-in-your-tenant)
- [Step 4b: Enable the workforce integration for your team schedules](#step-4b-enable-the-workforce-integration-for-your-team-schedules)

### Step 4a: Register the workforce integration in your tenant

You must be a Global Administrator to perform this step.

Use the [Create workforceIntegration](/graph/api/workforceintegration-post?view=graph-rest-1.0&tabs=http) API to register your workforce integration in your tenant. 

Here's an example of a request.

```http
POST https://graph.microsoft.com/v1.0/teamwork/workforceIntegrations/
{ 
  "displayName": "Contoso integration", 
  "apiVersion": 1, 
  "encryption": { 
    "protocol": "sharedSecret", 
    "secret": "secret-value" 
  }, 
  "isActive": true, 
  "url": "https://contosoconnector.com/wfi", 
  "supportedEntities": "Shift,SwapRequest,UserShiftPreferences,Openshift,OpenShiftRequest,OfferShiftRequest”,
}
```

See the following table for details. To learn more, see [workforceIntegration resource type](/graph/api/resources/workforceintegration?view=graph-rest-1.0).

|Property  |More information|
|---------|---------|
|apiVersion|API version for the callback URL. Your [base URL](#step-1a-sync-changes-made-in-shifts-to-your-wfm-system) is comprised of the **url** property and this property.|
|encryption|Set **protocol** to `sharedSecret`. The **secret** value must be exactly 64 characters. <br><br>Use the secret to decrypt the encrypted JSON payloads that are sent to your connector's endpoint from Shifts. The payload is encrypted using AES-256-CBC-HMAC-SHA256. Your app should safely persist this secret. For example, in a key vault.|
|supportedEntities|Specify the Shifts entities you want the connector to support for syncing. Shifts calls your connector's [/update](#post-teamsteamidupdate) endpoint when any of these entities change so that you can approve or reject the change. For the list of the possible values, see [workforceIntegration resource type](/graph/api/resources/workforceintegration?view=graph-rest-1.0)<br><br>**Note** This list is an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). You must use the `Prefer: include-unknown-enum-members` request header to get all the values.|
|eligibilityFilteringEnabledEntities|**Note**: As of October 2024, this endpoint is supported only in the beta version of the Microsoft Graph API.<br><br>Specify the Shifts entities that you want to connector to support for eligibility filtering. Possible values are:<ul><li>`none`: Empty list</li><li>`SwapRequests`: Shifts calls your connector's [/read](#post-teamsteamidread) endpoint to get a filtered list of shifts a user can choose from for a swap request.</li><li>`TimeOffReasons`: Shifts calls your connector's [/read](#post-teamsteamidread) endpoint to get a filtered list of time-off reasons a user can choose from when they request time off. </li></ul>**Note** This list is an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). You must use the `Prefer: include-unknown-enum-members` request header to get all the values.|
|url|The workforce integration URL for callbacks from Shifts. Your [base URL](#step-1a-sync-changes-made-in-shifts-to-your-wfm-system) is comprised of this property and the **apiVerson** property.|

### Step 4b: Enable the workforce integration for your team schedules

Enable your workforce integration on the schedules you want to manage. To do this, use the [Create or replace schedule](/graph/api/team-put-schedule?view=graph-rest-1.0) API to create or update the schedule for your teams.

Here's an example of a request.

```http
POST https://graph.microsoft.com/v1.0/teams/{teamId}/schedule
{
  enabled: true,
  timezone: “America/New_York”,
  workforceIntegrationIds: [ “workforceIntegrationId”]
}
```

- Specify the workforceIntegrationId that was generated when you [registered the workforce integration](#step-4a-register-the-workforce-integration-in-your-tenant).
- You can enable a maximum of one workforce integration on a schedule. If you include more than one workforceIntegrationId in the request, the first one is used.

## Troubleshooting

### Connector

#### When the connector responds to a request from Shifts, what happens if it returns a response code other than 200? Does it make a difference if it returns a status other than 200 in the response body?

There's a difference between these two scenarios.

- If the connector returns a response code other than 200, Shifts attempts to retry the /read and /update endpoints multiple times. Eventually, Shifts displays a "Something went wrong. The workforce integration setup on your team has responded with invalid data." error message.
- If the connector returns a status other than 200 in the response body, Shifts displays a "Something went wrong. Sorry, your change couldn’t be completed," error message and stops retrying the endpoints.

#### What happens if the connector returns invalid data in the response body?

Shifts attempts to retry the /read and /update endpoints multiple times. Eventually, Shifts displays a "Something went wrong. The workforce integration set up on your team has responded with invalid data." error message.

#### How do I identify whether the request was originally made in Shifts or in the WFM system to prevent an infinite loop?

Add the `X-MS-WFMPassthrough: workforceIntegratonId` header to all write and update calls to identify/ignore the changes triggered by connector. This header is used to indicate that the request is made because of a preceding call that was made by the connector to Graph API to sync data from your WFM system to Shifts.

### Workforce integration registration

#### I registered the workforce integration and specified "eligibilityFilteringEnabledEntities" including "SwapRequest, OfferShiftRequest, and TimeOffReason' but the response body doesn't show the "eligibilityFilteringEnabledEntities" list.

Eligibility filtering is currently supported through the `https://graph.microsoft.com/beta` endpoint, not the `https://graph.microsoft.com/v1` endpoint.

#### I registered the workforce integration and added "supportedEntities" but receive a 400 Bad Request response and an "Invalid payload: Requested value 'shift, ....' was not found." message

Make sure that every Shifts entity in the `supportedEntities` list request body starts with an uppercase letter. For example,
`"supportedEntities":"Shift,SwapRequest,OpenShift"`.

#### I registered the workforce integration and implemented the /connect, /update, and /read endpoints, but the webhook isn't working.

Make sure your workforce integration is enabled for your team schedule. Additionally, check that the **url** and **apiVersion** properties are correct.

## Endpoint reference

### Request

#### ConnectRequest

|Property  |Type |Description |
|---------|---------|---------|
|tenantId|String|ID of the tenant for the workforce integration|
|userId|String|ID of the user for the workforce integration|

```http
{
  "tenantId": "string",
  "userId": "string"
}
```

#### WfiRequestContainer

|Property  |Type |Description |
|---------|---------|---------|
|requests|WfiRequest collection|List of WfiRequests|

```http
{
  "requests": [
    {
      "id": "string",
      "method": "string",
      "url": "string",
      "headers": {
        "X-MS-Transaction-ID": "string",
        "X-MS-Expires": "string (DateTime)"
      },
      "body": "ShiftsEntity"
    }
  ]
}
```

Number of elements in a request:

- In most cases, a request has one element.
- Some requests, such as swap shift request approvals, have five elements: one PUT swap request, two DELETE shifts (existing shifts), and two POST shifts (new shifts).

#### WfiRequest

|Property  |Type |Description |
|---------|---------|---------|
|id  |String|ID of the entity|
|method |String|The method invoked on the item. For example, `POST`, `PUT`, `GET`, `DELETE`. |
|url |String|Indicates the type of entity and operation details.|
|headers|WfiRequestHeader |Headers|
|body|ShiftsEntity |Body of the entity related to the request.|

##### For POST /teams/{teamId}/update

|Property  |Type |Description |
|---------|---------|---------|
|id  |String|ID of the entity|
|method |String|`POST` to create an entity, `PUT` to update an entity, `DELETE` to delete an entity. |
|url|String|The format is `/{EntityType}/{EntityId}`. Possible values for `{EntityType}` are `shifts`, `swapRequests`, `timeoffReasons`, `openshifts`, `openshiftrequests`, `offershiftrequests`, `timesoff`, `timeOffRequests`. For example, `/shifts/SHFT_12345678-1234-1234-1234-1234567890ab`.|
|header|WfiRequestHeader |Header|
|body|ShiftsEntity |Must match `{EntityType}` in the **url** property. Use one of [shift](/graph/api/resources/shift?view=graph-rest-1.0), [swapShiftsChangeRequest](/graph/api/resources/swapshiftschangerequest?view=graph-rest-1.0), [timeOffReason](/graph/api/resources/timeoffreason?view=graph-rest-1.0), [openshift](/graph/api/resources/openshift?view=graph-rest-1.0), [openShiftChangeRequest](/graph/api/resources/openshiftchangerequest?view=graph-rest-beta), [offerShiftRequests](/graph/api/resources/offershiftrequest?view=graph-rest-1.0), [timeOff](/graph/api/resources/timeoff?view=graph-rest-1.0), [timeOffRequest](/graph/api/resources/timeoffrequest?view=graph-rest-1.0). For example, `/shifts/SHFT_12345678-1234-1234-1234-1234567890ab`.|

##### For POST /teams/{teamsId}/read  

|Property  |Type |Description |
|---------|---------|---------|
|id  |String|ID of the entity|
|method |String|Is always `GET`.|
|url|String|<ul><li>**TimeOffReasons**: The format is `/users/{userId}/timeOffReasons?requestType=TimeOffReason`. For example, `/users/aa162a04-bec6-4b81-ba99-96caa7b2b24d/timeOffReasons?requestType=TimeOffReason`.</li><li>**SwapRequest**: The format is `/shifts/{ShiftsId}/requestableShifts?requestType=SwapRequest\u0026startTime={startTime}\u0026endTime={endTime}`. For example, `shifts/SHFT_1132430e-365e-4dc5-b8b0-b800592a81a8/requestableShifts?requestType=SwapRequest\u0026startTime=2024-10-01T07:00:00.0000000Z\u0026endTime=2024-11-01T06:59:59.9990000Z`. </li></ul>|
|header|WfiRequestHeader |Header|
|body|ShiftsEntity |Is always `null`.|

#### WfiRequestHeader

|Property  |Type |Description |
|---------|---------|---------|
|X-MS-Transaction-ID |String|Transaction ID|
|X-MS-Expires|String (DateTime)|Transaction expiration DateTime|

`X-MS-WFMPassthrough: workforceIntegratonId` won't be included in WfiRequestHeader. It should be extracted from the HttpRequest.

### Response

#### WfiResponseContainer

|Property  |Type |Description |
|---------|---------|---------|
|responses |WfiResponse collection|List of WfiResponses|

```http
{
  "responses": [
    {
      "id": "string",
      "status": "string",
      "body": {
        "eTag": "string",
        "error": {
          "code": "string",
          "message": "string"
        },
        "data": ["string1", "string2"]
      }
    }
  ]
}
```

#### WfiResponse

|Property  |Type |Description |
|---------|---------|---------|
|id|String|ID of the entity|
|status|String|Result of the operation|
|body|WfiResponseBody|WfiResponseBody|

#### WfiResponseBody

|Property  |Type |Description |
|---------|---------|---------|
|eTag |String|eTag|
|error|WfiResponseError|Details about the error|
|data|String|The requested data (for read requests)|

#### WfiResponseError

|Property  |Type |Description |
|---------|---------|---------|
|code|String|Error code|
|message|String|Error message|

## Related articles

- [Shifts for your frontline organization](shifts-for-teams-landing-page.md)
- [Shifts connectors](shifts-connectors.md)
