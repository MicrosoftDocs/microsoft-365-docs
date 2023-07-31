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
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 12/18/2020
---

# Handling REST API errors 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

HTTP error responses are divided into two categories:
* Client error (400-code level) – the client sent an invalid request or the request isn't in accordance with definitions.
* Server error (500-level) – the server temporarily failed to fulfill the request or a server error occurred. Try sending the HTTP request again.

The error codes listed in the following table may be returned by an operation on any of Microsoft Defender for Endpoint APIs.
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
OsPlatformNotSupported|BadRequest (400)|OS Platform {the client OS Platform} isn't supported for this action.
ClientVersionNotSupported|BadRequest (400)|{The requested action} is supported on client version {supported client version} and above.
Unauthorized|Unauthorized (401)|Unauthorized (invalid or expired authorization header).
Forbidden|Forbidden (403)|Forbidden (valid token but insufficient permission for the action).
DisabledFeature|Forbidden (403)|Tenant feature isn't enabled.
DisallowedOperation|Forbidden (403)|{the disallowed operation and the reason}.
NotFound|Not Found (404)|General Not Found error message.
ResourceNotFound|Not Found (404)|Resource {the requested resource} wasn't found.
TooManyRequests|Too Many Requests (429)|Response represents reaching quota limit either by number of requests or by CPU.
InternalServerError|Internal Server Error (500)|(No error message, retry the operation.)

## Throttling   
The HTTP client may receive a 'Too Many Requests error (429)' when the number of HTTP requests in a given time frame exceeds the allowed number of calls per API.

The HTTP client should delay resubmitting further HTTPS requests and then submit them in a way that complies with the rate limitations. A Retry-After in the response header indicating how long to wait (in seconds) before making a new request

Ignoring the 429 response or trying to resubmit HTTP requests in a shorter time frame gives a return of the 429 error code.

## Body parameters are case-sensitive

The submitted body parameters are currently case-sensitive.

If you experience an **InvalidRequestBody** or **MissingRequiredParameter** errors, it might be caused from a wrong parameter capital or lower-case letter.

Review the API documentation page and check that the submitted parameters match the relevant example.

## Correlation request ID

Each error response contains a unique ID parameter for tracking.

The property name of this parameter is "target".

When contacting us about an error, attaching this ID helps find the root cause of the problem.

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
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
