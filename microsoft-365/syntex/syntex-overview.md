---
title: Overview of Microsoft Syntex
ms.author: chucked
author: lkueter
manager: jtremper
ms.reviewer: ssquires
ms.date: 03/25/2024
audience: admin
ms.topic: overview
ms.custom: intro-overview
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - essentials-get-started
    - m365initiative-syntex
    - essentials-overview
ms.localizationpriority:  medium
description: Learn about the capabilities, services, and features in Microsoft Syntex.
---

# Overview of Microsoft Syntex

<!---</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RW15yuU] 

</br>--->

Microsoft Syntex is a content understanding, processing, and compliance service that uses intelligent document processing, content artificial intelligence (AI), and advanced machine learning to automatically and thoughtfully find, organize, and classify documents in your SharePoint libraries, Microsoft Teams, OneDrive for Business, and Exchange.

With Syntex, you can automate your content-based processes—capturing the information in your business documents and transforming that information into working knowledge for your organization. Rather than clicking and sorting through hundreds or thousands of files, Syntex extracts, analyzes, and categorizes the data for you.

You can dive deeper into your content to truly understand it, and you can turn the information into meaningful insights that your organization can use to make informed business decisions.

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

[Learn more about scenarios and use case for Microsoft Syntex.](adoption-scenarios.md)

## Syntex services

### Autofill columns

:::row:::
   :::column span="":::
      ![Image of generic autofill icon.](../media/content-understanding/autofill-image.png) 
   :::column-end:::
   :::column span="3":::
      Autofill columns automatically extract, summarize, or generate content from files uploaded to a SharePoint document library. Using large language models (LLMs), designated columns can save metadata automatically, streamlining the process of managing files and their associated information.
   :::column-end:::
:::row-end:::

[Learn more about autofill columns in Microsoft Syntex.](autofill-overview.md)

### Content assembly

:::row:::
   :::column span="3":::
      Use content assembly to automatically generate standard repetitive business documents, such as contracts, statements of work, service agreements, letters of consent, and correspondence. You can do all these tasks quicker, more consistently, and with fewer errors in Syntex.
   :::column-end:::
   :::column span="":::
      ![Image of generic document icon.](../media/content-understanding/document-assembly-image.png)
   :::column-end:::
:::row-end:::

You create *modern templates* based on the business documents you use most. You then use those templates to automatically generate new documents using SharePoint lists or user entries as a data source.

[Learn more about how to generate documents using content assembly.](content-assembly.md)

### Document processing

#### Prebuilt document processing

:::row:::
   :::column span="":::
      ![Icon for Receipts model.](../media/content-understanding/trained-receipts-model.png) 
   :::column-end:::
   :::column span="3":::
      Use a [prebuilt model](prebuilt-overview.md) to save time processing and extracting information from [contracts](prebuilt-model-contract.md), [invoices](prebuilt-model-invoice.md), and [receipts](prebuilt-model-receipt.md), and detecting and extracting [sensitive information](prebuilt-model-sensitive-info.md) from documents. Prebuilt models are pretrained to recognize common business documents and the structured information in the documents.
   :::column-end:::
:::row-end:::

Instead of having to create a new document processing model from scratch, you can use a prebuilt model to jumpstart your document project.

[Learn more about prebuilt models in Microsoft Syntex.](prebuilt-overview.md)

#### Structured and freeform document processing

:::row:::
   :::column span="":::
      ![Icon for structured document processing model.](../media/content-understanding/custom-extract-by-layout.png)
   :::column-end:::
   :::column span="3":::
      Use a [structured model](form-processing-overview.md) to automatically identify field and table values. It works best for structured or semi-structured documents, such as forms and invoices. Use a [freeform model](form-processing-overview.md) to automatically extract information from unstructured and freeform documents, such as letters and contracts where the information can appear anywhere in the document.
   :::column-end:::
:::row-end:::

Both structured and freeform models use Microsoft Power Apps AI Builder to create and train models within Syntex.

[Learn more about structured and freeform models in Microsoft Syntex.](form-processing-overview.md)

#### Unstructured document processing

:::row:::
   :::column span="":::
      ![Icon for unstructured document processing model.](../media/content-understanding/custom-classify-and-extract-by-text-pattern.png) 
   :::column-end:::
   :::column span="3":::
      Use an [unstructured model](document-understanding-overview.md) to automatically classify documents and extract information from them. It works best for documents that vary in composition, such as letters or contracts. This model type supports the widest range of file types.
   :::column-end:::
:::row-end:::

[Learn more about unstructured models in Microsoft Syntex.](document-understanding-overview.md)

### Image tagging

:::row:::
   :::column span="3":::
      Use image tagging in Syntex to find and manage images in SharePoint document libraries. Syntex automatically tags images with descriptive keywords using AI. These keywords are stored in a managed metadata column, making it easier to search, sort, filter, and manage the images.
   :::column-end:::
   :::column span="":::
      ![Image of generic image tagging icon.](../media/content-understanding/image-tagging-image.png) 
   :::column-end:::
:::row-end:::

[Learn more about image tagging in Microsoft Syntex.](image-tagging-overview.md)

### Taxonomy tagging

:::row:::
   :::column span="":::
      ![Image of generic taxonomy tagging icon.](../media/content-understanding/taxonomy-tagging-image.png)
   :::column-end:::
   :::column span="3":::
      Use taxonomy tagging in Syntex to find and manage terms in SharePoint document libraries. Syntex automatically tags documents with terms or terms sets configured in your taxonomy store using AI. These terms are stored in a managed metadata column, making the documents easier to search, sort, filter, and manage.
   :::column-end:::
:::row-end:::

[Learn more about taxonomy tagging in Microsoft Syntex.](taxonomy-tagging-overview.md)

### Document translation

:::row:::
   :::column span="3":::
      Easily create a translated copy of a document or video transcipt in a SharePoint document library. You translate the file, while preserving the original format and structure of the file. Translation is available for all supported languages and dialects.
   :::column-end:::
   :::column span="":::
      ![Image of generic translation icon.](../media/content-understanding/translation-image.png)
   :::column-end:::
:::row-end:::

[Learn more about translation in Microsoft Syntex.](translation-overview.md)


### SharePoint eSignature

:::row:::
   :::column span="":::
      ![Image of generic esignature icon.](../media/content-understanding/esignature-image.png)
   :::column-end:::
   :::column span="3":::
      Send electronic requests using SharePoint eSignature, keeping your content in Microsoft 365 while it’s being reviewed and signed. Use eSignature to quickly and securely send documents for signature to people both inside and outside of your organization.
   :::column-end:::
:::row-end:::

[Learn more about using SharePoint eSignature.](esignature-overview.md)

### Optical character recognition

:::row:::
   :::column span="3":::
      The optical character recognition (OCR) service in Syntex lets you extract printed or handwritten text from images. Syntex automatically scans the image files, extracts the relevant text, and makes the text from the images available for search and indexing. This lets you quickly and accurately find the keywords and phrases you're looking for.
   :::column-end:::
   :::column span="":::
      ![Image of generic OCR icon.](../media/content-understanding/ocr-image.png)
   :::column-end:::
:::row-end:::

[Learn more about using the OCR service in Microsoft Syntex.](ocr-overview.md)

### Microsoft 365 Archive

:::row:::
   :::column span="":::
      ![Image of generic archive icon.](../media/content-understanding/archive-image.png)
   :::column-end:::
   :::column span="3":::
      Microsoft 365 Archive is a cost-effective, long-term storage solution for inactive or historical data in SharePoint. Because the data is archived in place, the content retains Microsoft 365 security, compliance, search, and rich metadata.
   :::column-end:::
:::row-end:::

[Learn more about Microsoft 365 Archive (Preview).](archive/archive-overview.md)

### Microsoft 365 Backup (Preview)

:::row:::
   :::column span="3":::
      Microsoft 365 Backup provides modern backup and recovery capabilities for SharePoint, Exchange Online, and OneDrive for Business, keeping the data all within the Microsoft 365 security boundary. With Microsoft 365 Backup, your organization knows that your content is securely and efficiently backed up and restorable within hours rather than months.
   :::column-end:::
   :::column span="":::
      ![Image of generic backup icon.](../media/content-understanding/backup-image.png)
   :::column-end:::
:::row-end:::

[Learn more about Microsoft 365 Backup (Preview).](backup/backup-overview.md)

## Other features

### Annotations

Use the annotations feature in Syntex to add notes, comment, and collaborate with others on your content in document libraries. You can use annotations without modifying the original files, so the original records are preserved.

[Learn more about using annotations in Microsoft Syntex.](annotations.md)

<!---
:::row:::
   :::column span="":::
      ![Image of generic annotations icon.](../media/content-understanding/annotation-image.png)
   :::column-end:::
   :::column span="3":::
      Use the annotations feature in Syntex to add notes, comment, and collaborate with others on your content in document libraries. You can use annotations without modifying the original files, so the original records are preserved.
   :::column-end:::
:::row-end:::
--->


### Content query

The content query feature in Syntex lets you perform specific metadata-based queries on SharePoint document libraries. You can make faster, more precise queries based on specific metadata column values, rather than just searching for keywords.

[Learn more about how to search for metadata in document libraries in Microsoft Syntex.](metadata-search.md)

<!---
:::row:::
   :::column span="3":::
      The content query feature in Syntex lets you perform specific metadata-based queries on SharePoint document libraries.

      You can make faster, more precise queries based on specific metadata column values, rather than just searching for keywords.
   :::column-end:::
   :::column span="":::
      ![Image of generic search icon.](../media/content-understanding/search-generic-image.png)
   :::column-end:::
:::row-end:::

This feature is useful when you have a specific piece of information you want to search for, such as when a document was last modified, a specific person associated with a file, or a specific file type.
--->

### Merge and extract PDFs

Quickly combine multiple PDF files into a single PDF file, or split a larger PDF file into multiple smaller PDF files to better organize the information you want to view or share with others.

[Learn more about merging and extracting PDF files in Microsoft Syntex.](merge-extract-pdf.md)

### Processing rules

Syntex lets you build simple rules-driven actions in document libraries based on metadata. From a document library, you can create rules to automate tasks such as sending a notification when metadata changes in a file, when a new file is created in the library, or when files are moved or copied based on metadata extracted by Syntex models.

[Learn more about content processing rules in Microsoft Syntex.](content-processing-overview.md)

<!---
:::row:::
   :::column span="":::
      ![Image of generic content processing icon.](../media/content-understanding/content-processing-image.png)
   :::column-end:::
   :::column span="3":::
      Syntex lets you build simple rules-driven actions in document libraries based on metadata. From a document library, you can create rules to automate tasks such as sending a notification when metadata changes in a file, when a new file is created in the library, or when files are moved or copied based on metadata extracted by Syntex models.
   :::column-end:::
:::row-end:::
--->

### Solution accelerators

SharePoint site templates for Microsoft Syntex are prebuilt, ready-to-deploy, and customizable. Use these templates to jumpstart a professional site to manage, process, and track the status of business documents in your organization.

[Learn more about the contracts management and accounts payable accelerators.](site-templates.md)

### Content compliance

Understanding your content allows for better compliance control and increases management and governance options for all your data. When content is properly tagged and labeled, you have better control over your data and can follow regulations more easily. Syntex helps you ensure compliance by using retention labels and sensitivity labels to manage your documents.

Learn more about how to apply [retention labels](apply-a-retention-label-to-a-model.md) and [sensitivity labels](apply-a-sensitivity-label-to-a-model.md) to models in Microsoft Syntex.

<!---
:::row:::
   :::column span="3":::
      Understanding your content allows for better compliance control and increases management and governance options for all your data. When content is properly tagged and labeled, you have better control over your data and can follow regulations more easily. Syntex helps you ensure compliance by using retention labels and sensitivity labels to manage your documents.
   :::column-end:::
   :::column span="":::
      ![Image of generic compliance icon.](../media/content-understanding/compliance-image.png)
   :::column-end:::
:::row-end:::
--->

### Premium taxonomy features

Benefit from the following additional term store features for admins:

- [SKOS-based term set import](import-term-set-skos.md), which lets you import a term set using a SKOS-based format.

- [Pushing enterprise content types to a hub site](push-content-type-to-hub.md), which also adds them to the associated sites and any newly created lists or libraries.

- [Term store reports](term-store-analytics.md), which provides you with insights into published term sets and their use across your organization.

<!---
:::row:::
   :::column span="":::
      ![Image of generic taxonomy icon.](../media/content-understanding/taxonomy-image.png)
   :::column-end:::
   :::column span="3":::
      Having one or more Syntex licenses in your organization enables the following additional term store features for admins:<br><br>
   :::column-end:::
:::row-end:::
--->

<!---<br><br>
> [!div class="nextstepaction"]
> [Learn more about model types in Microsoft Syntex](model-types-overview.md)
--->
