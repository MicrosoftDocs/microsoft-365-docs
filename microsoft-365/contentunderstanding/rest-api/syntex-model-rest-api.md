---
title: SharePoint Syntex document understanding model REST API
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
description: Overview of the SharePoint Syntex document understanding model REST API.
---

# SharePoint Syntex document understanding model REST API

You can use the SharePoint REST interface to create a document understanding model, apply or remove the model to one or more libraries, and obtain or update information about the model. 

The SharePoint Online (and SharePoint 2016 and later on-premises) REST service supports combining multiple requests into a single call to the service by using the OData $batch query option. 

For details and links to code samples, see [Make batch requests with the REST APIs](/sharepoint/dev/sp-add-ins/make-batch-requests-with-the-rest-apis.md).

## Prerequisites

Before you get started, make sure that you're familiar with the following:

- [Get to know the SharePoint REST service](/sharepoint/dev/sp-add-ins/get-to-know-the-sharepoint-rest-service.md) 
- [Complete basic operations using SharePoint REST endpoints](/sharepoint/dev/sp-add-ins/complete-basic-operations-using-sharepoint-rest-endpoints.md)

## REST commands

The following REST commands are available for working with Syntex document understanding models:

- [CreateModel](rest-createmodel-method.md) – Creates a model and its associated content type.
- [GetModelById](rest-getbyuniqueid-method.md) – Gets or updates information about a SharePoint Syntex document understanding model.
- [GetModelByTitle](rest-getbytitle-method.md) – Gets or updates information about a SharePoint Syntex document understanding model using the model title.
- [ApplyModel](rest-applymodel-method.md) – Applies (or syncs) a trained document understanding model to one or more libraries.
- [GetModelAndLibraryInfo](rest-getmodelandlibraryinfo.md) – Gets information about a model and the library where it has been applied.
- [UpdateModelSettings](rest-updatemodelsettings-method.md) – Updates available models settings (associated retention label and model description) for a SharePoint Syntex document understanding model.
- [RemoveModel](rest-removemodel-method.md) – Removes an applied document understanding model from one or more libraries.
- [Create classification request] (rest-createclassificationrequest.md) – Creates a request to classify a specified file or files using the applied model.

## Scenarios

Note the following scenario examples that are not intuitive from the method name. See each article for more details.

The create model method only creates the model object and its associated content type. You will need to first train the model in the content center before it can be applied to a library.

The apply model method is use to configure the model on the target library to classify documents and optionally extract additional information. This API also support batch applying the model to multiple libraries.

The remove model method just removes the model from one or more libraries where it was previously applied. If you wish to delete the model it must first be removed from all the libraries where it was applied.


## See also

- [Document understanding overview](document-understanding-overview.md)

