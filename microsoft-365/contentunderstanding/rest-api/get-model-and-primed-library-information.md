---
title: Get model and primed library information
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
localization_priority: Priority
description: REST API - info about where model applied
---

# Get model and primed library information

Use to get information about a model and the library where it has been applied. (see [example](#examples)).

## HTTP request

```HTTP
GET /_api/machinelearning/publications/getbymodeluniqueid(‘{modelUniqueId}’) HTTP/1.1
```

## URI parameters

| Name | In | Required | Type | Description |
|--------|-------|--------|------------|
|ModelUniqueId|query|True|GUID|The unique id of the model file.|

## Request headers

| Header | Value |
|--------|-------|
|Accept|application/json;odata=verbose|


## Request body

| Name | Required | Type | Description |
|--------|-------|--------|------------|
|ModelUniqueId|yes|string|The unique id of the model file.|
|TargetSiteUrl|yes|string|The full url of the target library site.|
|TargetWebServerRelativeUrl|yes|string|The server relative Url of the web for the target library.|
|TargetLibraryServerRelativeUrl|yes|string|The server relative Url of the target library.|
|TargetLibraryRemoved|yes|int|The flag which indicates if the target library has been removed or not.|

## Response

| Name   | Type  | Description|
|--------|-------|------------|
|200 OK| |Success|
|201 Created| |Note that since this API supports applying model to multiple libraries, a 201 could be returned even if there is a failure applying the model to one of the libraries.
Check the response body to understand if the model has been successfully applied to
all the specified libraries. See [Response body](#Response body) for details.|

## Example

### Get information about the contracts model and primed document library in the repository site

In this sample, the ID of the Contoso Contract document understanding model is `7645e69d-21fb-4a24-a17a-9bdfa7cb63dc`.

#### Sample request

```HTTP
GET /sites/TestCC/_api/machinelearning/publications/getbymodeluniqueid(‘{7645e69d-21fb-4a24-a17a-9bdfa7cb63dc}’) HTTP/1.1
```
#### Sample response

**Status code:** 200

```JSON
{
	"@odata.context": "https://contoso.sharepoint.com/sites/TestCC/_api/$metadata#publications",
	"value": [
		{
			"@odata.type": "#Microsoft.Office.Server.ContentCenter.SPMachineLearningPublication",
			"@odata.id": "https://contoso.sharepoint.com/sites/repository /_api/machinelearning/publications/getbyuniqueId('7645e69d-21fb-4a24-a17a-9bdfa7cb63dc')",
			"@odata.etag": "\"7645e69d-21fb-4a24-a17a-9bdfa7cb63dc,94\"",
			"@odata.editLink": " https://contoso.sharepoint.com/sites/TestCC /_api/machinelearning/publications/getbyuniqueId('7645e69d-21fb-4a24-a17a-9bdfa7cb63dc')",
			"Created": "2021-04-27T03:05:25Z",
			"CreatedBy": "i:0#.f|membership|meganb@contoso.com",
			"DriveId": "b!O-aG9qer5UiXx2jEwd8pL0221maIb9lNs9tH5vAMU-gPy9BrxT7GTrtXtdtv1Uzb",
			"ID": 26,
			"ModelId": 16,
			"ModelName": "contosocontract.classifier",
			"ModelType": 0,
			"ModelUniqueId": "7645e69d-21fb-4a24-a17a-9bdfa7cb63dc",
			"ModelVersion": "8.0",
			"Modified": "2021-03-17T17:56:42Z",
			"ModifiedBy": "i:0#.f|membership|joedoe@contoso.com",
			"ObjectId": "01ZBWEM5FZRILGLXTEB5CZ2NNNSCTWBJMQ",
			"PublicationType": 1,
			"TargetLibraryRemoved": false,
			"TargetLibraryServerRelativeUrl": "/sites/repository/contracts",
			"TargetLibraryUrl": " https://contoso.sharepoint.com/sites/repository/contracts",
			"TargetSiteUrl": "https://contoso.sharepoint.com/sites/repository",
			"TargetWebServerRelativeUrl": "/sites/repository",
			"UniqueId": "7645e69d-21fb-4a24-a17a-9bdfa7cb63dc",
			"ViewOption": "NewViewAsDefault"
		},
		{
			"@odata.type": "#Microsoft.Office.Server.ContentCenter.SPMachineLearningPublication",
			"@odata.id": "https://contoso.sharepoint.com /sites/legal/_api/machinelearning/publications/getbyuniqueId('7645e69d-21fb-4a24-a17a-9bdfa7cb63dc')",
			"@odata.etag": "\"7645e69d-21fb-4a24-a17a-9bdfa7cb63dc,101\"",
			"@odata.editLink": "https://contoso.sharepoint.com /sites/legal/_api/machinelearning/publications/getbyuniqueId('7645e69d-21fb-4a24-a17a-9bdfa7cb63dc')",
			"Created": "2021-01-27T03:17:44Z",
			"CreatedBy": "i:0#.f|membership|esherman@contoso.com ",
			"DriveId": "b!O-aG9qer5UiXx2jEwd8pL0221maIb9lNs9tH5vAMU-gPy9BrxT7GTrtXtdtv1Uzb",
			"ID": 27,
			"ModelId": 16,
			"ModelName": "dispositions.classifier",
			"ModelType": 0,
			"ModelUniqueId": "7645e69d-21fb-4a24-a17a-9bdfa7cb63dc",
			"ModelVersion": "8.0",
			"Modified": "2021-03-17T23:17:46Z",
			"ModifiedBy": "i:0#.f|membership|esherman@contoso.com ",
			"ObjectId": "01ZBWEM5B3ERSZK4PAARGLFZ7JP6GMXG2R",
			"PublicationType": 1,
			"TargetLibraryRemoved": false,
			"TargetLibraryServerRelativeUrl": "/sites/legal/dispositions",
			"TargetLibraryUrl": "https://contoso.sharepoint.com/sites/legal/dispositions",
			"TargetSiteUrl": " https://contoso.sharepoint.com/sites/legal",
			"TargetWebServerRelativeUrl": "/sites/legal",
			"UniqueId": "7645e69d-21fb-4a24-a17a-9bdfa7cb63dc",
			"ViewOption": "NewViewAsDefault"
		}
	]
}```

## See also

- [Syntex document understanding model REST API](syntex-model-rest-api.md)
