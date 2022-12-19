---
title: Overview of unstructured document processing in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.custom: intro-overview
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about the unstructured document processing model in Microsoft Syntex.
---

# Overview of unstructured document processing in Microsoft Syntex

> [!NOTE]
> *Unstructured document processing* was known as *document understanding* in previous releases.

Use the unstructured document processing model ([teaching method](create-syntex-model.md#train-a-custom-model)) to automatically classify files and extract information. It works best for unstructured documents, such as letters or contracts. 

The unstructured document processing model (formerly known as *document understanding model*) uses artificial intelligence (AI) to process documents. These documents must have text that can be identified based on phrases or patterns. The identified text designates both the type of file it is (its classification) and what you'd like to extract (its extractors).

</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CSu7]

</br>

> [!NOTE]
> For more information about how to use Syntex and scenario examples, see [Get started driving adoption of Microsoft Syntex](./adoption-getstarted.md) and [Scenarios and use cases for Microsoft Syntex](./adoption-scenarios.md).

Unstructured document processing models are created and managed in a type of SharePoint site called a [content center](create-a-content-center.md). When applied to a SharePoint document library, the model is associated with a content type has columns to store the information being extracted. The content type you create is stored in the SharePoint content type gallery. You can also choose to use existing content types to use their schema.

> [!NOTE]
> Read-only or sealed content types can't be updated, so they can't be used in a model.

Add [classifiers](create-a-classifier.md) and [extractors](create-an-extractor.md) to your unstructured document processing models to do the following actions:

- Classifiers are used to identify and classify documents that are uploaded to the document library. For example, a classifier can be "trained" to identify all *contract renewal* documents that are uploaded to the library. The contract renewal content type is defined by you when you create your classifier.

- Extractors pull information from these documents. For example, for each contract renewal document identified in your document library, columns will display that show the *Service Start Date* and *Client* for each document. 

You can use example files to train and test your classifiers and extractors in your model. Example files provide your model examples of what to look for when trying to identify and extract data from files. For example, you would train your contract renewal classifiers and extractors with examples of contract renewal documents your company works with. You can also use example files to test the effectiveness of your model.

After publishing your model, use the content center to apply it to any SharePoint document library that you have access to.  

## Requirements

For information about requirements to consider when choosing this model, see [Requirements and limitations for models in Microsoft Syntex](requirements-and-limitations.md#unstructured-document-processing).

## See also

[Compare custom models](difference-between-document-understanding-and-form-processing-model.md)

