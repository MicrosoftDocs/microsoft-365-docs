---
title: SharePoint Syntex document understanding model REST API
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: m365initiative-syntex
localization_priority: Priority
description: Overview of the SharePoint Syntex document understanding model REST API.
---

# SharePoint Syntex document understanding model REST API

You can use the SharePoint REST interface to create a document understanding model, apply or remove the model to one or more libraries, and obtain or update information about the model. 

The SharePoint Online (and SharePoint 2016 and later on-premises) REST service supports combining multiple requests into a single call to the service by using the OData $batch query option. 

For details and links to code samples, see [Make batch requests with the REST APIs](../../sp-add-ins/make-batch-requests-with-the-rest-apis.md).

## Prerequisites

Before you get started, make sure that you're familiar with the following:

- [Get to know the SharePoint REST service](../../sp-add-ins/get-to-know-the-sharepoint-rest-service.md) 
- [Complete basic operations using SharePoint REST endpoints](../../sp-add-ins/complete-basic-operations-using-sharepoint-rest-endpoints.md)

## REST commands

The following REST commands are available for working with Syntex document understanding models:

- [CreateModel](rest-createmodel-method.md) &ndash; Creates a model and its associated content type.
- [GetById](rest-getmodelbyid-method.md) &ndash; Gets or updates information about a SharePoint Syntex document understanding model.
- [GetByTitle](rest-getmodelbytitle-method.md) &ndash; Gets or updates information about a SharePoint Syntex document understanding model using the model title.
- [ApplyModel](rest-applymodel-method.md) &ndash; Applies (or syncs) a trained document understanding model to one or more libraries.
- [Get model and library information] (rest-getmodelandlibraryinfo-method.md) &ndash; Use to get information about a model and the library where it has been applied.
- [UpdateModelSettings] (rest-updatemodelsettings-method.md) &ndash; Updates available models settings (associated retention label and model description) for a SharePoint Syntex document understanding model.
- [Remove model] (rest-removemodel-method.md) &ndash; Removes an applied document understanding model from one or more libraries.
- [Delete model] (rest-deletemodelbyidorfilename-method.md) &ndash; Deletes a model by a unique ID or its file name.
- [Create classification work item] (rest-createmodelworkitem-method.md) &ndash; Create a single or batch work item to process the applied model to one or more files.

## Scenarios

Note the following scenario examples that are not intuitive from the method name. See each article for more details.

The create model method only creates the model object and its associated content type. You will need to first train the model in the content center before it can be applied to a library.

The apply model method is use to configure the model on the target library to classify documents and optionally extract additional information. This API also support batch applying the model to multiple libraries.

The remove model method just removes the model from one or more libraries where it was previously applied. If you wish to delete the model it must first be removed from all the libraries where it was applied.



## See also

- [Document understanding overview](document-understanding-overview.md)

