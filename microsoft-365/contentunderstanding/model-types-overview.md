---
title: Overview of model types in Microsoft SharePoint Syntex
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
description: Learn about custom models and prebuilt models in Microsoft SharePoint Syntex.
---

# Overview of model types in Microsoft SharePoint Syntex

Content understanding in SharePoint Syntex starts with models. Models let you identify and classify documents that are uploaded to SharePoint document libraries, and then to extract the information you need from each file.

SharePoint Syntex uses *custom models* and *prebuilt models*. 

[Custom models](#custom-models) include:

- [Classify and extract by text pattern](#classify-and-extract-by-text-pattern)
- [Extract by layout](#extract-by-layout)
- [Extract by text pattern and layout](#extract-by-text-pattern-and-layout)

[Prebuilt models](#prebuilt-models) include:

- [Invoices](#invoice-models)
- [Receipts](#receipt-models)

[diagram]

## Custom models

The type of custom model you choose will depend on the types of files you use, the format and structure of the files, and where you want to apply the model.

To view the side-by-side differences in custom models, see [Compare custom models](./difference-between-document-understanding-and-form-processing-model.md).

### Classify and extract by text pattern

Use the **Classify and extract by text pattern** model to automatically classify documents and extract information from them. It works best with unstructured documents, such as letters or contracts. These documents must have text that can be identified based on phrases or patterns. The identified text designates both the type of file it is (its classification) and what you'd like to extract (its extractors).

For example, an unstructured document could be a contract renewal letter that can be written in different ways. However, information exists consistently in the body of each contract renewal document, such as the text string "Service start date of" followed by an actual date.

**Classify and extract by text pattern** models are created and managed in a type of SharePoint site called a [content center](create-a-content-center.md). When applied to a SharePoint document library, the model is associated with a content type has columns to store the information being extracted. The content type you create is stored in the SharePoint content type gallery. You can also choose to use existing content types to use their schema.

For more information, see [Overview of classification and extraction by text pattern](document-understanding-overview.md).

### Extract by layout

Use the **Extract by layout** model to automatically identify field and table values. It works best for structured or semi-structured documents, such as forms and invoices.

**Extract by layout** models use Microsoft Power Apps [AI Builder](/ai-builder/overview) document processing (formerly named form processing) to create models within SharePoint document libraries. You can use AI Builder document processing to create AI models that use machine learning technology to identify and extract key-value pairs and table data from documents. You can then use Power Automate flows to automatically process the files.

These models are trained to understand the layout of your form from example documents, and learn to look for the data you need to extract from similar locations. Forms usually have a more structured layout where entities are in the same location (for example, a social security number in a tax form).

For more information, see [Overview of extraction by layout](form-processing-overview.md).

### Extract by text pattern and layout

Use the **Extract by text pattern and layout** model to automatically extract information from unstructured and free-form documents such as letters and contracts.

The **Extract by text pattern and layout** models also use Microsoft Power Apps [AI Builder](/ai-builder/overview) document processing (formerly called form processing) to create models within SharePoint document libraries. You can use AI Builder document processing to create AI models that use machine learning technology to identify and extract key-value pairs and table data from documents. You can then use Power Automate flows to automatically process the files.

Because your organization receives letters and documents in large quantities from various sources, such as mail, fax, and email. Processing these documents and manually entering them into a database can take a considerable amount of time. By using AI to extract the text and and other information from these documents, this model automates this process.

For more information, see [Overview of extraction by text pattern and layout](extract-by-text-pattern-and-layout-overview.md).

## Prebuilt models

If you don't need to build a custom model, you can use a [prebuilt model](prebuilt-overview.md) that has already been trained for specific structured documents, such as invoices and receipts.

Prebuilt models are pretrained to recognize documents and the structured information in the documents. Instead of having to create a new custom model from scratch, you can iterate on an existing pretrained model to add specific fields that fit the needs of your organization.

### Invoice models

The invoice prebuilt model analyzes and extracts key information from sales invoices. The API analyzes invoices in various formats and extracts key invoice information such as customer name, billing address, due date, and amount due.

### Receipt models

The receipt prebuilt model analyzes and extracts key information from sales receipts. The API analyzes printed and handwritten receipts and extracts key receipt information such as merchant name, merchant phone number, transaction date, tax, and transaction total.

For more information about prebuilt models, see [Overview of prebuilt models](prebuilt-overview.md).


<!---
For example, as files are uploaded to a SharePoint document library, all files that are identified as *Purchase Orders* are classified as such, and then displayed in a custom document library view. Additionally, you can pull specific information from each file (for example, *PO Number* and *Total*) and display it as a column in your document library view. 

Content understanding lets you create *models* to identify and extract the information you need. Models have value in helping to resolve business issues for search, business processes, compliance, and many others.

There are two custom model types that you can use:

- [Document understanding models](document-understanding-overview.md)
- [Form processing models](form-processing-overview.md)

While both models are generally used for the same purpose, the key differences listed below affect which ones you can use.

> [!NOTE]
> To see examples of how models can used in your organization, see [Scenarios and use cases for Microsoft SharePoint Syntex](./adoption-scenarios.md).

## Structured versus unstructured and semi-structured content

Use document understanding models to identify and extract data from unstructured documents, such as letters or contracts, where the text entities you want to extract is in sentences or specific regions of the document. For example, an unstructured document could be a contract renewal letter that can be written in different ways. However, information exists consistently in the body of each contract renewal document, such as the text string `Service start date of` followed by an actual date.

Use form processing models to identify files and extract data from structured or semi-structured documents, such as forms or invoices. Form processing models are trained to understand the layout of your form from example documents, and learn to look for the data you need to extract from similar locations. Forms usually have a more structured layout where entities are in the same location (for example, a social security number in a tax form).

> [!NOTE]
> You must have access to a content center site to create a document understanding model or to apply one to a SharePoint document library. 

## Where models are created

Document understanding models are created and managed in a SharePoint content center site. 

> [!NOTE]
> For more information about input documents, see [Form processing model requirements and limitations](/ai-builder/form-processing-model-requirements). 

Form processing models are created in Power Apps [AI Builder](/ai-builder/overview), but the creation starts directly from a SharePoint document library. A document library must have form processing model creation enabled before a user can create a form processing model for it. Admins can enable form processing model creation in the content understanding admin settings. Form processing models use Power Automate flows to process files when they're uploaded to the document library.

When you create a document understanding model, you create a new [SharePoint content type](https://support.microsoft.com/office/use-content-types-to-manage-content-consistently-on-a-site-48512bcb-6527-480b-b096-c03b7ec1d978) that is saved to the SharePoint Content Types gallery. Or you can use existing content types to define your model if needed.

Once a content type is created and associated with a model, you can also reference that model from the **Site Content Type** property panel.

:::image type="content" source="../media/content-understanding/site-content-type-panel.png" alt-text="Screenshot of the Site Content Type panel showing the Document understanding model highlighted." lightbox="../media/content-understanding/site-content-type-panel.png":::

Form processing models also create new [SharePoint content types](https://support.microsoft.com/office/use-content-types-to-manage-content-consistently-on-a-site-48512bcb-6527-480b-b096-c03b7ec1d978), and are also stored in the SharePoint Content Types gallery.

## Where they can be applied

You can apply document understanding models to SharePoint document libraries that you have access to. Use the content center to create a document understanding model, and apply it to different document libraries. The content center gives you a more central control for how document understanding models are used and where they're applied. Note this information must also roll up to a content center.

Form processing models can currently be applied only to the SharePoint document library from which you created them. This allows licensed users with access to the site to create a form processing model. Note that an admin needs to enable form processing on a SharePoint document library for it to be available to licensed users.
--->

## See also

[Compare custom models in SharePoint Syntex](./difference-between-document-understanding-and-form-processing-model.md)

[Training: Improve business performance with AI Builder](/learn/paths/improve-business-performance-ai-builder/?source=learn)
