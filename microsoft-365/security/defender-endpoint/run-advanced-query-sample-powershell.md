---
title: Advanced Hunting with PowerShell API Basics
ms.reviewer: 
description: Learn the basics of querying the Microsoft Defender for Endpoint API, using PowerShell.
keywords: apis, supported apis, advanced hunting, query
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

# Advanced Hunting using PowerShell

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:** 
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

Run advanced queries using PowerShell, see [Advanced Hunting API](run-advanced-query-api.md).

In this section, we share PowerShell samples to retrieve a token and use it to run a query.

## Before you begin
You first need to [create an app](apis-intro.md).

## Preparation instructions

- Open a PowerShell window.

- If your policy does not allow you to run the PowerShell commands, you can run the following command:

  ```powershell
  Set-ExecutionPolicy -ExecutionPolicy Bypass
  ```

For more information, see [PowerShell documentation](/powershell/module/microsoft.powershell.security/set-executionpolicy)

## Get token

- Run the following:

```powershell
$tenantId = '00000000-0000-0000-0000-000000000000' # Paste your own tenant ID here
$appId = '11111111-1111-1111-1111-111111111111' # Paste your own app ID here
$appSecret = '22222222-2222-2222-2222-222222222222' # Paste your own app secret here

$resourceAppIdUri = 'https://api.security.microsoft.com'
$oAuthUri = "https://login.microsoftonline.com/$TenantId/oauth2/token"
$body = [Ordered] @{
    resource = "$resourceAppIdUri"
    client_id = "$appId"
    client_secret = "$appSecret"
    grant_type = 'client_credentials'
}
$response = Invoke-RestMethod -Method Post -Uri $oAuthUri -Body $body -ErrorAction Stop
$aadToken = $response.access_token
```

where
- $tenantId: ID of the tenant on behalf of which you want to run the query (that is, the query will be run on the data of this tenant)
- $appId: ID of your Azure AD app (the app must have 'Run advanced queries' permission to Defender for Endpoint)
- $appSecret: Secret of your Azure AD app

## Run query

Run the following query:

```powershell
$token = $aadToken
$query = 'DeviceRegistryEvents | limit 10' # Paste your own query here

$url = "https://api.security.microsoft.com/api/advancedhunting/run"
$headers = @{ 
    'Content-Type' = 'application/json'
    Accept = 'application/json'
    Authorization = "Bearer $aadToken" 
}
$body = ConvertTo-Json -InputObject @{ 'Query' = $query }
$webResponse = Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body -ErrorAction Stop
$response =  $webResponse | ConvertFrom-Json
$results = $response.Results
$schema = $response.Schema
```

- $results contain the results of your query
- $schema contains the schema of the results of your query

### Complex queries

If you want to run complex queries (or multilines queries), save your query in a file and, instead of the first line in the above sample, run the following command:

```powershell
$query = [IO.File]::ReadAllText("C:\myQuery.txt"); # Replace with the path to your file
```

## Work with query results

You can now use the query results.

To output the results of the query in CSV format in file file1.csv, run the following command:

```powershell
$results | ConvertTo-Csv -NoTypeInformation | Set-Content C:\file1.csv
```

To output the results of the query in JSON format in file file1.json, run the following command:

```powershell
$results | ConvertTo-Json | Set-Content file1.json
```


## Related topic
- [Microsoft Defender for Endpoint APIs](apis-intro.md)
- [Advanced Hunting API](run-advanced-query-api.md)
- [Advanced Hunting using Python](run-advanced-query-sample-python.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
