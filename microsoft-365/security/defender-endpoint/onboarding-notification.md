---
title: Create an onboarding or offboarding notification rule
description: Get a notification when a local onboarding or offboarding script is used.
keywords: onboarding, offboarding, local, script, notification, rule
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
ms.date: 12/18/2020
---

# Create a notification rule when a local onboarding or offboarding script is used

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


Create a notification rule so that when a local onboarding or offboarding script is used, you'll be notified.

## Before you begin

You'll need to have access to:

- Power Automate (Per-user plan at a minimum). For more information, see [Power Automate pricing page](https://make.powerautomate.com/pricing/).
- Azure Table or SharePoint List or Library / SQL DB.

## Create the notification flow

1. In [make.powerautomate.com](https://make.powerautomate.com/).

2. Navigate to **My flows > New > Scheduled - from blank**.

   :::image type="content" source="images/new-flow.png" alt-text="The flow" lightbox="images/new-flow.png":::


3. Build a scheduled flow.
   1. Enter a flow name.
   2. Specify the start and time.
   3. Specify the frequency. For example, every 5 minutes.

   :::image type="content" source="images/build-flow.png" alt-text="The notification flow" lightbox="images/build-flow.png":::

4. Select the + button to add a new action. The new action will be an HTTP request to the Defender for Endpoint device(s) API. You can also replace it with the out-of-the-box "WDATP Connector" (action: "Machines - Get list of machines").

   :::image type="content" source="images/recurrence-add.png" alt-text="The recurrence and add action" lightbox="images/recurrence-add.png":::

5. Enter the following HTTP fields:

   - Method: "GET" as a value to get the list of devices.
   - URI: Enter `https://api.securitycenter.microsoft.com/api/machines`.
   - Authentication: Select "Active Directory OAuth".
   - Tenant: Sign-in to https://portal.azure.com and navigate to **Azure Active Directory > App Registrations** and get the Tenant ID value.
   - Audience: `https://securitycenter.onmicrosoft.com/windowsatpservice\`
   - Client ID: Sign-in to https://portal.azure.com and navigate to **Azure Active Directory > App Registrations** and  get the Client ID value.
   - Credential Type: Select "Secret".
   - Secret: Sign-in to https://portal.azure.com and navigate to **Azure Active Directory > App Registrations** and get the Tenant ID value.

    :::image type="content" source="images/http-conditions.png" alt-text="The HTTP conditions" lightbox="images/http-conditions.png":::

6. Add a new step by selecting **Add new action** then search for **Data Operations** and select
**Parse JSON**.

   :::image type="content" source="images/data-operations.png" alt-text="The data operations entry" lightbox="images/data-operations.png":::

7. Add Body in the **Content** field.

   :::image type="content" source="images/parse-json.png" alt-text="The parse JSON section" lightbox="images/parse-json.png":::

8. Select the **Use sample payload to generate schema** link.

   :::image type="content" source="images/parse-json-schema.png" alt-text="The parse JSON with payload" lightbox="images/parse-json-schema.png":::

9. Copy and paste the following JSON snippet:

    ```json
    {
        "type": "object",
        "properties": {
            "@@odata.context": {
                "type": "string"
            },
            "value": {
                "type": "array",
                "items": {
                    "type": "object",
                    "properties": {
                        "id": {
                            "type": "string"
                        },
                        "computerDnsName": {
                            "type": "string"
                        },
                        "firstSeen": {
                            "type": "string"
                        },
                        "lastSeen": {
                            "type": "string"
                        },
                        "osPlatform": {
                            "type": "string"
                        },
                        "osVersion": {},
                        "lastIpAddress": {
                            "type": "string"
                        },
                        "lastExternalIpAddress": {
                            "type": "string"
                        },
                        "agentVersion": {
                            "type": "string"
                        },
                        "osBuild": {
                            "type": "integer"
                        },
                        "healthStatus": {
                            "type": "string"
                        },
                        "riskScore": {
                            "type": "string"
                        },
                        "exposureScore": {
                            "type": "string"
                        },
                        "aadDeviceId": {},
                        "machineTags": {
                            "type": "array"
                        }
                    },
                    "required": [
                        "id",
                        "computerDnsName",
                        "firstSeen",
                        "lastSeen",
                        "osPlatform",
                        "osVersion",
                        "lastIpAddress",
                        "lastExternalIpAddress",
                        "agentVersion",
                        "osBuild",
                        "healthStatus",
                        "rbacGroupId",
                        "rbacGroupName",
                        "riskScore",
                        "exposureScore",
                        "aadDeviceId",
                        "machineTags"
                    ]
                }
            }
        }
    }

    ```

10. Extract the values from the JSON call and check if the onboarded device(s) is / are already registered at the SharePoint list as an example:

    - If yes, no notification will be triggered
    - If no, will register the new onboarded device(s) in the SharePoint list and a notification will be sent to the Defender for Endpoint admin

    :::image type="content" source="images/flow-apply.png" alt-text="The application of the flow to each element" lightbox="images/flow-apply.png":::

    :::image type="content" source="images/apply-to-each.png" alt-text="The application of the flow to the Get items element" lightbox="images/apply-to-each.png":::

11. Under **Condition**, add the following expression: "length(body('Get_items')?['value'])" and set the condition to equal to 0.

    :::image type="content" source="images/apply-to-each-value.png" alt-text="The application of the flow to each condition" lightbox="images/apply-to-each-value.png":::
    :::image type="content" source="images/conditions-2.png" alt-text="The condition-1" lightbox="images/conditions-2.png":::
    :::image type="content" source="images/condition3.png" alt-text="The condition-2" lightbox="images/condition3.png":::
    :::image type="content" source="images/send-email.png" alt-text="The Send an email section" lightbox="images/send-email.png":::

## Alert notification

The following image is an example of an email notification.

:::image type="content" source="images/alert-notification.png" alt-text="The email notification screen" lightbox="images/alert-notification.png":::

## Tips

- You can filter here using lastSeen only:
  - Every 60 min:
    - Take all devices last seen in the past 7 days.

- For each device:
  - If last seen property is on the one hour interval of [-7 days, -7days + 60 minutes] -> Alert for offboarding possibility.
  - If first seen is on the past hour -> Alert for onboarding.

In this solution you will not have duplicate alerts:
There are tenants that have numerous devices. Getting all those devices might be very expensive and might require paging.

You can split it to two queries:

1. For offboarding take only this interval using the OData $filter and only notify if the conditions are met.
2. Take all devices last seen in the past hour and check first seen property for them (if the first seen property is on the past hour, the last seen must be there too).
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
