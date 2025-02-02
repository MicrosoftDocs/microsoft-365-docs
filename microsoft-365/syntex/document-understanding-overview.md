---
title: Overview of unstructured document processing in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 01/22/2025
audience: admin
ms.topic: conceptual
ms.custom: intro-overview
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about the unstructured document processing model in Microsoft Syntex.
---

# Overview of unstructured document processing in Microsoft Syntex

> [!NOTE]
> Through June 2025, you can try out a [limited amount](promo-syntex.md#monthly-included-capacity) of unstructured document processing and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

<!---</br>

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=0362ab91-3b79-47f4-9930-9a706d55b97d]

</br>--->

Use the unstructured document processing model ([teaching method](create-syntex-model.md#create-a-custom-model)) to automatically classify files and extract information. It works best for unstructured documents, such as letters or contracts.

> [!NOTE]
> Microsoft respects the privacy and ownership of data you use to train and process models in Syntex. None of your organization's data is used or transferred by Microsoft to train AI models, large-language models, or any other models. Your data remains securely within your organization’s tenant. For more information, see [Microsoft data protection and privacy](https://www.microsoft.com/en-us/trust-center/privacy).

## Introduction to unstructured models

The unstructured document processing model (formerly known as *document understanding model*) uses artificial intelligence (AI) to process documents. These documents must have text that can be identified based on phrases or patterns. The identified text designates both the type of file it is (its classification) and what you'd like to extract (its extractors).

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

## Requirements and limitations

For information about requirements to consider when choosing this model, see the [requirements and limitations for unstructured document processing](requirements-and-limitations.md).
