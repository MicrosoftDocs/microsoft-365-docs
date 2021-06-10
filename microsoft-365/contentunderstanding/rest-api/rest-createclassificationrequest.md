---
title: Create a classification request
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: reference
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: m365initiative-syntex
localization_priority: Priority
description: Use REST API to create a request to classify one or more files using a trained document understanding model.
---

# Create a classification request

Creates a request to classify one or more files using the applied document understanding model (see [example](rest-createclassificationrequest.md#examples)).

The SharePoint Online (and SharePoint 2016 and later on-premises) REST service supports combining multiple requests into a single call to the service by using the OData $batch query option. This can be used to enqueue classification work items for hundreds of documents one time.

## HTTP request

```
POST /_api/machinelearning/workItems HTTP/1.1
```
## URI Parameters

None

## Request headers

| Header | Value |
|--------|-------|
|Accept|application/json;odata=verbose|
|Content-Type|application/json;odata=verbose;charset=utf-8|
|x-requestdigest|The appropriate digest for current site|

## Request body

|Name    |Type   |Description |
|--------|-------|------------|
|_metadata|string |Set the object meta on the SPO. Always use the value: {"type": "Microsoft.Office.Server.ContentCenter.SPMachineLearningModelEntityData"}. |
|TargetSiteId|guid|The id of the site where the file to classify is located.|
|TargetWebId|guid|The id of the web where the file to classify is located.|
|TargetUniqueId|guid|The id of the file to classify.|

## Responses

| Name   | Type  | Description|
|--------|-------|------------|
|201 Created| |Success|

## Examples

### Enqueue a request to classify a file of id "e6cff8b7-c90c-4564-b5b8-033449090932".

#### Sample request

```
{
	"__metadata": {
		"type": "Microsoft.Office.Server.ContentCenter.SPMachineLearningModelEntityData"
	},
	"TargetSiteId": "f686e63b-aba7-48e5-97c7-68c4c1df292f",
	"TargetWebId": "66d6b64d-6f88-4dd9-b3db-47e6f00c53e8",
	"TargetUniqueId": "e6cff8b7-c90c-4564-b5b8-033449090932"
}
```

#### Sample response

**Status code:** 201

## See also

[Syntex document understanding model REST API](syntex-model-rest-api.md)
