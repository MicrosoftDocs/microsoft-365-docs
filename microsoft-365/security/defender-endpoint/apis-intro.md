---
title: Access the Microsoft Defender for Endpoint APIs
ms.reviewer:
description: Learn how you can use APIs to automate workflows and innovate based on Microsoft Defender for Endpoint capabilities
keywords: apis, api, wdatp, open api, microsoft defender for endpoint api, microsoft defender atp, public api, supported apis, alerts, device, user, domain, ip, file, advanced hunting, query
ms.mktglfcycl: deploy
ms.sitesec: library
ms.service: microsoft-365-security
ms.subservice: mde
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 01/25/2022
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
- must-keep
ms.topic: reference
ms.custom: api
search.appverid: met150
---

# Access the Microsoft Defender for Endpoint APIs

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Business](../defender-business/index.yml)

> [!IMPORTANT]
> Advanced hunting capabilities are not included in Defender for Business. See [Compare Microsoft Defender for Business to Microsoft Defender for Endpoint Plans 1 and 2](../defender-business/compare-mdb-m365-plans.md#compare-defender-for-business-to-defender-for-endpoint-plan-1-and-plan-2).

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Defender for Endpoint exposes much of its data and actions through a set of programmatic APIs. Those APIs will enable you to automate workflows and innovate based on Defender for Endpoint capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

Watch this video for a quick overview of Defender for Endpoint's APIs.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4d73M]

In general, you'll need to take the following steps to use the APIs:

- Create an [AAD application](/microsoft-365/security/defender-endpoint/exposed-apis-create-app-nativeapp)
- Get an access token using this application
- Use the token to access Defender for Endpoint API

You can access Defender for Endpoint API with **Application Context** or **User Context**.

- **Application Context: (Recommended)**

  Used by apps that run without a signed-in user present. for example, apps that run as background services or daemons.

  Steps that need to be taken to access Defender for Endpoint API with application context:

  1. Create an AAD Web-Application.
  2. Assign the desired permission to the application, for example, 'Read Alerts', 'Isolate Machines'.
  3. Create a key for this Application.
  4. Get token using the application with its key.
  5. Use the token to access the Microsoft Defender for Endpoint API

     For more information, see [Get access with application context](exposed-apis-create-app-webapp.md).

- **User Context:**

  Used to perform actions in the API on behalf of a user.

  Steps to take to access Defender for Endpoint API with user context:

  1. Create AAD Native-Application.
  2. Assign the desired permission to the application, e.g 'Read Alerts', 'Isolate Machines' etc.
  3. Get token using the application with user credentials.
  4. Use the token to access the Microsoft Defender for Endpoint API

     For more information, see [Get access with user context](exposed-apis-create-app-nativeapp.md).


>[!TIP]
>When more than one query request is required to retrieve all the results, Microsoft Graph returns an `@odata.nextLink` property in the response that contains a URL to the next page of results. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).


## Related topics

- [Microsoft Defender for Endpoint APIs](exposed-apis-list.md)
- [Access Microsoft Defender for Endpoint with application context](exposed-apis-create-app-webapp.md)
- [Access Microsoft Defender for Endpoint with user context](exposed-apis-create-app-nativeapp.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
