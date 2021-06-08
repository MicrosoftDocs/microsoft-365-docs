---
title: DeleteModelByIdOrFilename
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
description: Use REST API to delete a model by a unique ID or it file name.
---

# DeleteModelByIdOrFilename

## Delete by unique ID

Deletes a model by a unique ID (see [example](rest-deletemodelbyidorfilename-method.md#examples)).

### HTTP request

```HTTP
DELETE /_api/machinelearning/models/getbyuniqueid(‘{modelUniqueId}') HTTP/1.1
```

### URI parameters

|Name |In |Required|Type|Description|
|-----|---|--------|----|-----------|
|modelUniqueId|query|True|string|ID of the Syntex model file.|

## Delete by model file name

Deletes a model by its file name (see [example](delete-a-model-by-name-or-id.md#examples)).

### HTTP request

```HTTP
DELETE /_api/machinelearning/models/getbytitle('{modelFileName') HTTP/1.1
```

### URI parameters

|Name |In |Required|Type|Description|
|-----|---|--------|----|-----------|
|modelFileName|query|True|string|Name of the Syntex model file.|


### Request headers

|Header |Value  |
|-------|-------|
|x-requestdigest|The appropriate digest of the current site.|

### Request body

For GET, no request body is needed.

### Responses

| Name   | Type  | Description|
|--------|-------|------------|
|200 OK| |Success|

### Examples

#### Get and delete the Contoso Contract model by name

In this sample, the name of the Contoso Contract document understanding model is `Contoso Contract`.

##### Sample request

```HTTP
DELETE /_api/machinelearning/models/getbytitle('{Contoso Contract') HTTP/1.1
```

##### Sample response

**Status code:** 200

#### Get and delete the Contoso Contract model by id

In this sample, the ID of the Contoso Contract document understanding model is `7645e69d-21fb-4a24-a17a-9bdfa7cb63dc`.

##### Sample request

```HTTP
DELETE /_api/machinelearning/models/getbyuniqueid(‘{7645e69d-21fb-4a24-a17a-9bdfa7cb63dc}') HTTP/1.1
```

##### Sample response

**Status code:** 200

## See also

[Syntex document understanding model REST API](syntex-model-rest-api.md)
