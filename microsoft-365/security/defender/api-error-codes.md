---
title: Common Microsoft Defender XDR REST API error codes
description: Learn about the common Microsoft Defender XDR REST API error codes.
ms.service: defender-xdr
f1.keywords: 
  - NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
 - m365-security
 - tier3
 - must-keep
ms.topic: reference
search.appverid: 
  - MOE150
  - MET150
ms.custom: api
ms.date: 02/08/2023
---

# Common Microsoft Defender XDR REST API error codes

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR

> [!NOTE]
> **Try our new APIs using MS Graph security API**. Find out more at: [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview).

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Error codes can be returned by an operation on any of the Microsoft Defender XDR APIs. Every error response contains an error message, which can help resolve the problem. The error message column in the table section provides some sample messages. The content of actual messages varies based on the factors that triggered the response. Variable content is indicated by angle brackets (`< >`) in the following table:

## Error codes

| Error code | HTTP status code | Message |
|--|--|--|
| BadRequest | BadRequest (400) | General Bad Request error message. |
| ODataError | BadRequest (400) | Invalid OData URI query \<the specific error is specified\>. |
| InvalidInput | BadRequest (400) | Invalid input \<the invalid input\>. |
| InvalidRequestBody | BadRequest (400) | Invalid request body. |
| InvalidHashValue | BadRequest (400) | Hash value \<the invalid hash\> is invalid. |
| InvalidDomainName | BadRequest (400) | Domain name \<the invalid domain\> is invalid. |
| InvalidIpAddress | BadRequest (400) | IP address \<the invalid IP\> is invalid. |
| InvalidUrl | BadRequest (400) | URL \<the invalid URL\> is invalid. |
| MaximumBatchSizeExceeded | BadRequest (400) | Maximum batch size exceeded. Received: \<batch size received\>, allowed: {batch size allowed}. |
| MissingRequiredParameter | BadRequest (400) | Parameter \<the missing parameter\> is missing. |
| OsPlatformNotSupported | BadRequest (400) | OS Platform \<the client OS Platform\> isn't supported for this action. |
| ClientVersionNotSupported | BadRequest (400) | \<The requested action\> is supported on client version \<supported client version\> and later. |
| Unauthorized | Unauthorized (401) | Unauthorized <br /><br />*This error is usually caused by an invalid or expired authorization header.* |
| Forbidden | Forbidden (403) | Forbidden <br /><br />*This error can occur with a valid token but insufficient permission for the action*. |
| DisabledFeature | Forbidden (403) | Tenant feature isn't enabled. |
| DisallowedOperation | Forbidden (403) | \<the disallowed operation and the reason\>. |
| NotFound | Not Found (404) | General Not Found error message. |
| ResourceNotFound | Not Found (404) | Resource \<the requested resource\> wasn't found. |
| InternalServerError | Internal Server Error (500) | *If there's no error message, retry the operation. [Contact Microsoft](../../admin/get-help-support.md) if it doesn't get resolved*. |

## Examples

```json
{
    "error": {
        "code": "ResourceNotFound",
        "message": "Machine 123123123 was not found",
        "target": "43f4cb08-8fac-4b65-9db1-745c2ae65f3a"
    }
}
```

```json
{
    "error": {
        "code": "InvalidRequestBody",
        "message": "Request body is incorrect",
        "target": "1fa66c0f-18bd-4133-b378-36d76f3a2ba0"
    }
}
```

## Body parameters

> [!IMPORTANT]
> Body parameters are case-sensitive.

If you experience an *InvalidRequestBody* or *MissingRequiredParameter* error, it might be caused by a typo. Review the API documentation and check that the submitted parameters match the relevant example.

## Tracking ID

Each error response contains a unique ID parameter for tracking. The property name of this parameter is *target*. If you contact Microsoft about an error, attaching your tracking ID helps Microsoft find the root cause of the problem.

## Related articles

- [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview)
- [Microsoft Defender XDR APIs overview](api-overview.md)
- [Supported Microsoft Defender XDR APIs](api-supported.md)
- [Access the Microsoft Defender XDR APIs](api-access.md)
- [Learn about API limits and licensing](api-terms.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
