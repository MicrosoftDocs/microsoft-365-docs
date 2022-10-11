---
title: Overview of Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.customer: intro-overview
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about the capabilities and features in Microsoft Syntex.
---

# Overview of Microsoft Syntex

Microsoft Syntex is a content understanding, processing, and compliance service that uses intelligent document processing, content artificial intelligence (AI), and advanced machine learning to automatically and thoughtfully find, organize, and classify documents in your SharePoint libraries.

:::row:::
   :::column span="":::      
      With Syntex, you can automate your content-based processes—capturing the information in your business documents and transforming that information into working knowledge for your organization.

      Rather than clicking and sorting through hundreds or thousands of files, Syntex extracts, analyzes, and categorizes the data for you.
   :::column-end:::
   :::column span="":::
      ![Image of computers running Syntex.](../media/content-understanding/syntex-devices-image.png)
   :::column-end:::
:::row-end:::

You can dive deeper into your content to truly understand it, and you can turn the information into meaningful insights that your organization can use to make informed business decisions.

## Models

:::row:::
   :::column span="":::
      ![Image of generic model icon.](../media/content-understanding/model-generic-image.png) 
   :::column-end:::
   :::column span="3":::
      Understanding your content with Syntex begins with models. Models let you identify and classify documents that are uploaded to your SharePoint document libraries, and then to extract the information you need from each file.

      In Syntex, you can build [custom models](model-types-overview.md) or you can use [prebuilt models](prebuilt-overview.md). 
   :::column-end:::
:::row-end:::

The type of model you choose will depend on the types of files you use, the format and structure of the files, the information you want to extract, and where you want to apply the model.

### Custom models

You build custom models to understand the layout of your files from example documents. The models learn to look for the data you need to extract from similar documents. Custom models include:

- [Unstructured document processing](document-understanding-overview.md)
- [Freeform document processing](freeform-document-processing-overview.md)
- [Structured document processing](form-processing-overview.md)

| Unstructured<br>document processing  | Freeform<br>document processing  | Structured<br>document processing  |
| ------------- | ------------- | ------------- |
|  ![Icon for unstructured document processing model.](../media/content-understanding/custom-classify-and-extract-by-text-pattern.png) | ![Icon for freeform document processing model.](../media/content-understanding/custom-extract-by-text-pattern-and-layout.png) |  ![Icon for structured document processing model.](../media/content-understanding/custom-extract-by-layout.png) |
| Use this custom model to automatically classify documents and extract information from them. Use the patterns of the text in example documents to train the model. Best for Office files and automatic classification of files. <br>[Learn more](document-understanding-overview.md) | Use this custom model to automatically extract information from unstructured documents. Use the patterns of the text or the layout in example documents to train the model. Best for a mix of both text and layout needs. <br>[Learn more](freeform-document-processing-overview.md) |  Use this custom model to automatically identify field and table values from structured or semi-structured documents like forms. Best for most languages and files that include form layouts or tables. <br>[Learn more](form-processing-overview.md) |

### Prebuilt models

If you don't need to build a custom model, you can use a [prebuilt model](prebuilt-overview.md). This type of model is pretrained to extract predefined entities from common business files. Prebuilt models include:

- [Invoice processing](prebuilt-model-invoice.md)
- [Receipt processing](prebuilt-model-receipt.md)

| Invoice processing | Receipt processing | 
| ------------- | ------------- |
| ![Icon for Invoices model.](../media/content-understanding/trained-invoices-model.png) | ![Icon for Receipts model.](../media/content-understanding/trained-receipts-model.png) |
| Use this prebuilt model to save time processing invoices. Automatically extract key information specific to invoices. <br>[Learn more](prebuilt-model-invoice.md) | Use this prebuilt model to save time processing receipts. Automatically extract key information specific to expenses. <br>[Learn more](prebuilt-model-receipt.md) | 

For more information about custom and prebuilt models, see [Overview of model types in Microsoft Syntex](model-types-overview.md).

## Content assembly

:::row:::
   :::column span="":::
      ![Image of generic document icon.](../media/content-understanding/document-assembly-image.png) 
   :::column-end:::
   :::column span="3":::
      With Syntex, you can create *modern templates* based on the business documents you use most.

      You can then use those templates to automatically generate new documents using SharePoint lists or user entries as a data source.
   :::column-end:::
:::row-end:::

 This process lets you automatically generate standard repetitive business documents, such as contracts, statements of work, service agreements, letters of consent, and correspondence. You can do all these tasks quicker, more consistently, and with fewer errors in Syntex.

For more information, see [Create documents using content assembly in Microsoft Syntex](content-assembly.md).

## Advanced metadata search

:::row:::
   :::column span="3":::
      The advanced metadata search feature in Syntex lets you perform specific metadata-based queries on SharePoint document libraries.

      You can make faster, more precise queries based on specific metadata column values, rather than just searching for keywords.    
   :::column-end:::
   :::column span="":::
      ![Image of generic search icon.](../media/content-understanding/search-generic-image.png)
   :::column-end:::
:::row-end:::

This feature is useful when you have a specific piece of information you want to search for, such as when a document was last modified, a specific person associated with a file, or a specific file type.

For more information, see [Search for metadata in document libraries in Microsoft Syntex](metadata-search.md).

--->

## Content compliance

:::row:::
   :::column span="":::
      ![Image of generic compliance icon.](../media/content-understanding/compliance-image.png) 
   :::column-end:::
   :::column span="3":::
      Understanding your content allows for better compliance control and increases management and governance options for all your data. When content is properly tagged and labeled, you have better control over your data and can follow regulations more easily. Syntex helps you ensure compliance by using retention labels and sensitivity labels to manage your documents.
   :::column-end:::
:::row-end:::

For more information, see [Apply a retention label to a model in Microsoft Syntex](apply-a-retention-label-to-a-model.md) and [Apply a sensitivity label to a model in Microsoft Syntex](apply-a-sensitivity-label-to-a-model.md).

## Premium taxonomy services

:::row:::
   :::column span="3":::
      Having one or more Syntex licenses in your organization enables the following additional term store features for admins:<br><br>
       
      - [SKOS-based term set import](import-term-set-skos.md), which lets you import a term set using a SKOS-based format.      
   :::column-end:::
   :::column span="":::
      ![Image of generic taxonomy icon.](../media/content-understanding/taxonomy-image.png)
   :::column-end:::
:::row-end:::


- [Pushing enterprise content types to a hub site](push-content-type-to-hub.md), which also adds them to the associated sites and any newly created lists or libraries.

- [Term store reports](term-store-analytics.md), which provides you insights into published term sets and their use across your organization.

## Scenarios and use cases

:::row:::
   :::column span="":::
      ![Image of generic scenario icon.](../media/content-understanding/scenarios-image.png) 
   :::column-end:::
   :::column span="3":::
      Syntex can help your organization automate business processes, improve search accuracy, and manage compliance risk.

      With content AI services and capabilities, you can build content understanding and classification directly into the content management flow.
   :::column-end:::
:::row-end:::

To prompt ideas about how you can use Syntex in your organization, see [Scenarios and use cases for Microsoft Syntex](adoption-scenarios.md).
<br><br>
> [!div class="nextstepaction"]
> [Learn more about models in Microsoft Syntex](model-types-overview.md)
