---
title: Advanced hunting APIs
description: Learn how to run Advanced Hunting queries using Microsoft 365 Defender API
keywords: Advanced Hunting, APIs, api, MTP
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Advanced hunting APIs

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

>[!IMPORTANT] 
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## Limitations
1. You can only run a query on data from the last 30 days.
2. The results will include a maximum of 100,000 rows.
3. The number of executions is limited per tenant: up to 10 calls per minute, 10 minutes of running time every hour and 4 hours of running time a day.
4. The maximal execution time of a single request is 10 minutes.
5. 429 response will represent reaching quota limit either by number of requests or by CPU. The 429 response body will also indicate the time until the quota is renewed. 


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Access the Microsoft 365 Defender APIs](api-access.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	AdvancedHunting.Read.All |	'Run advanced queries'
Delegated (work or school account) | AdvancedHunting.Read | 'Run advanced queries'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have 'View Data' AD role
>- The user needs to have access to the device, based on device group settings.

## HTTP request
```
POST https://api.security.microsoft.com/api/advancedhunting/run
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content-Type	| application/json

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
Query |	Text |	The query to run. **Required**.

## Response
If successful, this method returns 200 OK, and _QueryResponse_ object in the response body. <br><br>

The response object is divided to 3 parts (properties):<br>
1) ```Stats``` - Query performance statistics.<br>
2) ```Schema``` - The schema of the response, a list of Name-Type pairs for each column. <br>
3) ```Results``` - A list of Advanced Hunting events.

## Example

Request

Here is an example of the request.


```json
{
    "Query":"DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2"
}

```

Response

Here is an example of the response.


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

## Related topic
- [Access the Microsoft 365 Defender APIs](api-access.md)
