---
title: Common Microsoft 365 Defender REST API error codes
description: Learn about the common Microsoft 365 Defender REST API error codes
keywords: api, error, codes, common errors, Microsoft 365 Defender, api error codes
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Common Microsoft 365 Defender REST API error codes

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Error codes may be returned by an operation on any of the Microsoft 365 Defender APIs. Every error response will contain an error message, which can help resolve the problem. The error message column in the table section provides some sample messages. The content of actual messages will vary based on the factors that triggered the response. Variable content is indicated in the table by angle brackets.

## Error codes

Error code | HTTP status code | Message
-|-|-
BadRequest | BadRequest (400) | General Bad Request error message.
ODataError | BadRequest (400) | Invalid OData URI query \<the specific error is specified\>.
InvalidInput | BadRequest (400) | Invalid input \<the invalid input\>.
InvalidRequestBody | BadRequest (400) | Invalid request body.
InvalidHashValue | BadRequest (400) | Hash value \<the invalid hash\> is invalid.
InvalidDomainName | BadRequest (400) | Domain name \<the invalid domain\> is invalid.
InvalidIpAddress | BadRequest (400) | IP address \<the invalid IP\> is invalid.
InvalidUrl | BadRequest (400) | URL \<the invalid URL\> is invalid.
MaximumBatchSizeExceeded | BadRequest (400) | Maximum batch size exceeded. Received: \<batch size received\>, allowed: {batch size allowed}.
MissingRequiredParameter | BadRequest (400) | Parameter \<the missing parameter\> is missing.
OsPlatformNotSupported | BadRequest (400) | OS Platform \<the client OS Platform\> is not supported for this action.
ClientVersionNotSupported | BadRequest (400) | \<The requested action\> is supported on client version \<supported client version\> and above.
Unauthorized | Unauthorized (401) | Unauthorized <br /><br />*Note: Usually caused by an invalid or expired authorization header.*
Forbidden | Forbidden (403) | Forbidden <br /><br />*Note: Valid token but insufficient permission for the action*.
DisabledFeature | Forbidden (403) | Tenant feature is not enabled.
DisallowedOperation | Forbidden (403) | \<the disallowed operation and the reason\>.
NotFound | Not Found (404) | General Not Found error message.
ResourceNotFound | Not Found (404) | Resource \<the requested resource\> was not found.
InternalServerError | Internal Server Error (500) | *Note: No error message,  retry the operation or contact Microsoft if it does not get resolved*

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

Each error response contains a unique ID parameter for tracking. The property name of this parameter is *target*. When contacting us about an error, attaching this ID will help us find the root cause of the problem.

## Related articles

- [Microsoft 365 Defender APIs overview](api-overview.md)
- [Supported Microsoft 365 Defender APIs](api-supported.md)
- [Access the Microsoft 365 Defender APIs](api-access.md)
- [Learn about API limits and licensing](api-terms.md)
