---
title: Microsoft 365 Defender advanced hunting API
description: Learn how to run advanced hunting queries using Microsoft 365 Defender's advanced hunting API
keywords: Advanced Hunting, APIs, api, M365 Defender, Microsoft 365 Defender
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

# Microsoft 365 Defender Advanced hunting API

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

[Advanced hunting](advanced-hunting-overview.md) is a threat-hunting tool that uses [specially constructed queries](advanced-hunting-query-language.md) to examine the past 30 days of event data in Microsoft 365 Defender. You can use advanced hunting queries to inspect unusual activity, detect possible threats, and even respond to attacks. The advanced hunting API allows you to programatically query event data.

## Quotas and resource allocation

The following conditions relate to all queries.

1. Queries explore and return data from the past 30 days.
2. Results can return up to 100,000 rows.
3. You can make up to 15 calls per minute per tenant.
4. Queries are blocked if the tenant has reached 100% until after the next 15-minute cycle.
5. If a single request runs for more than 10 minutes, it will time out and return an error.
6. A `429` HTTP response code indicates that you've reached a quota, either by number of requests sent, or by allotted running time. Read the response body to understand the limit you have reached. 

> [!NOTE]
> All quotas listed above (for example 15 calls per min) are per tenant size. These quotas are the minimum.

## Permissions

One of the following permissions is required to call the advanced hunting API. To learn more, including how to choose permissions, see [Access the Microsoft 365 Defender Protection APIs](api-access.md)

Permission type | Permission | Permission display name
-|-|-
Application | AdvancedHunting.Read.All | Run advanced queries
Delegated (work or school account) | AdvancedHunting.Read | Run advanced queries

>[!Note]
> When obtaining a token using user credentials:
>
>- The user needs to have the 'View Data' AD role
>- The user needs to have access to the device, based on device group settings.

## HTTP request

```HTTP
POST https://api.security.microsoft.com/api/advancedhunting/run
```

## Request headers

Header | Value
-|-
Authorization | Bearer {token} **Note: required**
Content-Type | application/json

## Request body

In the request body, supply a JSON object with the following parameters:

Parameter | Type | Description
-|-|-
Query | Text | The query to run. **Note: required**

## Response

If successful, this method will return `200 OK`, and a _QueryResponse_ object in the response body.

The response object contains three top-level properties:

1. Stats - A dictionary of query performance statistics.
2. Schema - The schema of the response, a list of Name-Type pairs for each column.
3. Results - A list of advanced hunting events.

## Example

In the following example, a user sends the query below and receives an API response object containing `Stats`, `Schema`, and `Results`.

### Query

```json
{
    "Query":"DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2"
}

```

### Response object

```json
{
    "Stats": {
        "ExecutionTime": 4.621215,
        "resource_usage": {
            "cache": {
                "memory": {
                    "hits": 773461,
                    "misses": 4481,
                    "total": 777942
                },
                "disk": {
                    "hits": 994,
                    "misses": 197,
                    "total": 1191
                }
            },
            "cpu": {
                "user": "00:00:19.0468750",
                "kernel": "00:00:00.0156250",
                "total cpu": "00:00:19.0625000"
            },
            "memory": {
                "peak_per_node": 236822432
            }
        },
        "dataset_statistics": [
            {
                "table_row_count": 2,
                "table_size": 102
            }
        ]
    },
    "Schema": [
        {
            "Name": "Timestamp",
            "Type": "DateTime"
        },
        {
            "Name": "FileName",
            "Type": "String"
        },
        {
            "Name": "InitiatingProcessFileName",
            "Type": "String"
        }
    ],
    "Results": [
        {
            "Timestamp": "2020-08-30T06:38:35.7664356Z",
            "FileName": "conhost.exe",
            "InitiatingProcessFileName": "powershell.exe"
        },
        {
            "Timestamp": "2020-08-30T06:38:30.5163363Z",
            "FileName": "conhost.exe",
            "InitiatingProcessFileName": "powershell.exe"
        }
    ]
}
```

## Related articles

- [Access the Microsoft 365 Defender APIs](api-access.md)
- [Learn about API limits and licensing](api-terms.md)
- [Understand error codes](api-error-codes.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
