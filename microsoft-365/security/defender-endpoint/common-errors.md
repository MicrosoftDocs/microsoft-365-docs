---
title: Common Microsoft Defender for Endpoint API errors
description: List of common Microsoft Defender for Endpoint API errors with descriptions.
keywords: APIs, Microsoft Defender for Endpoint API, errors, troubleshooting
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
- tier3
ms.topic: conceptual
ms.subservice: mde
ms.custom: api
search.appverid: met150
---

# Common REST API error codes



[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


* The error codes listed in the following table may be returned by an operation on any of Microsoft Defender for Endpoint APIs.
* In addition to the error code, every error response contains an error message, which can help resolve the problem.
* The message is a free text that can be changed.
* At the bottom of the page, you can find response examples.

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

Error code|HTTP status code|Message
---|---|---
BadRequest|BadRequest (400)|General Bad Request error message.
ODataError|BadRequest (400)|Invalid OData URI query (the specific error is specified).
InvalidInput|BadRequest (400)|Invalid input {the invalid input}.
InvalidRequestBody|BadRequest (400)|Invalid request body.
InvalidHashValue|BadRequest (400)|Hash value {the invalid hash} is invalid.
InvalidDomainName|BadRequest (400)|Domain name {the invalid domain} is invalid.
InvalidIpAddress|BadRequest (400)|IP address {the invalid IP} is invalid.
InvalidUrl|BadRequest (400)|URL {the invalid URL} is invalid.
MaximumBatchSizeExceeded|BadRequest (400)|Maximum batch size exceeded. Received: {batch size received}, allowed: {batch size allowed}.
MissingRequiredParameter|BadRequest (400)|Parameter {the missing parameter} is missing.
OsPlatformNotSupported|BadRequest (400)|OS Platform {the client OS Platform} is not supported for this action.
ClientVersionNotSupported|BadRequest (400)|{The requested action} is supported on client version {supported client version} and above.
Unauthorized|Unauthorized (401)|Unauthorized (invalid or expired authorization header).
Forbidden|Forbidden (403)|Forbidden (valid token but insufficient permission for the action).
DisabledFeature|Forbidden (403)|Tenant feature is not enabled.
DisallowedOperation|Forbidden (403)|{the disallowed operation and the reason}.
NotFound|Not Found (404)|General Not Found error message.
ResourceNotFound|Not Found (404)|Resource {the requested resource} was not found.
InternalServerError|Internal Server Error (500)|(No error message, retry the operation)
TooManyRequests|Too Many Requests (429)|Response will represent reaching quota limit either by number of requests or by CPU.

## Body parameters are case-sensitive

The submitted body parameters are currently case-sensitive.

If you experience an **InvalidRequestBody** or **MissingRequiredParameter** errors, it might be caused from a wrong parameter capital or lower-case letter.

Review the API documentation page and check that the submitted parameters match the relevant example.

## Correlation request ID

Each error response contains a unique ID parameter for tracking.

The property name of this parameter is "target".

When contacting us about an error, attaching this ID will help find the root cause of the problem.

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
