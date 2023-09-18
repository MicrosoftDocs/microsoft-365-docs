---
title: Get browser extensions permission info
description: Retrieves a list of all permissions required for a browser extension
keywords: apis, graph api, supported apis, get, browser extension information, Microsoft Defender for Endpoint, Microsoft Defender Vulnerability Management
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 06/01/2022
---

# Get browser extensions permission information

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink).

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

[!include[Prerelease information](../../includes/prerelease.md)]

## API description

Retrieves a list of all the permissions requested by a specific browser extension. This is a static data description and would mainly be used to enhance the data returned by the [Export browser extensions assessment API](get-assessment-browser-extensions.md).

By combining these APIs you'll be able to see a description of the permissions requested by the browser extensions that come up in the [Export browser extensions assessment](get-assessment-browser-extensions.md) results.

<br>Supports [OData V4 queries](https://www.odata.org/documentation/).
<br>OData supported operators:
<br>```$filter``` on:  ```id```, ```name```, ```description```, ```cvssV3```, ```publishedOn```, ```severity```, and ```updatedOn``` properties.
<br>```$top``` with max value of 10,000.
<br>```$skip```.
<br>See examples at [OData queries with Microsoft Defender for Endpoint](exposed-apis-odata-samples.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md) for details.

Permission type|Permission|Permission display name
:---|:---|:---
Application|Software.Read.All|'Read Threat and Vulnerability Management software information'
Delegated (work or school account)|Software.Read|'Read Threat and Vulnerability Management software information'

## HTTP request

```http
GET api/browserextensions/permissionsinfo
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful, this method returns 200 OK with the list of all permissions requested by a browser extension in the body.

## Example

### Request example

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/browserextensions/permissionsinfo
```

### Response example

Here is an example of the response.

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#BrowserExtension",
    "value": [
{
  "value": [
    {
      "key": "audioCapture",
      "permissionName": "Capture audio from attached mic or webcam",
      "description": "Capture audio from attached mic or webcam. Could be used to listen in on use."
    },
    {
      "key": "app.window.fullscreen.overrideEsc",
      "permissionName": "Prevent escape button from exiting fullscreen",
      "description": "Can prevent escape button from exiting fullscreen."
    },
    {
      "key": "browsingData",
      "permissionName": "Clear browsing data",
      "description": "Clears browsing data which could result in a forensics/logging issues."
    },
    {
      "key": "content_security_policy",
      "permissionName": "Can manipulate default Content Security Policy (CSP)",
      "description": "CSP works as a block/allow listing mechanism for resources loaded or executed by your extensions. Can manipulate default CSP."
    }

            ]
}
    ]
```

## See also

- [Get browser extensions permission info](get-assessment-browser-extensions.md)
- [Browser extensions assessment](../defender-vulnerability-management/tvm-browser-extensions.md)

## Other related

- [Vulnerability management](../defender-vulnerability-management/defender-vulnerability-management.md)
- [Vulnerabilities in your organization](../defender-vulnerability-management/tvm-weaknesses.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
