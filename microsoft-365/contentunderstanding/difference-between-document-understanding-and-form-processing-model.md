---
title: "Difference between document understanding and form processing models"
ms.author: efrene
author: efrene
manager: pamgreen
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
localization_priority: Priority
description: "Describes key difference between document understanding and form processing models"
---

# Difference between document understanding and form processing models 


Content understanding in Microsoft SharePoint Syntex allows you to identify and classify documents that are uploaded to SharePoint document libraries, and extract relevant information from each file.  For example, as files are uploaded to a SharePoint document library, all files that are identified as *Purchase Orders* are classified as such, and then displayed in a custom document library view. Additionally, you can pull specific information from each file (for example, *PO Number* and *Total*) and display it as a column in your document library view. 

Content understanding lets you create *models* to identify and extract the information you need. Models have value in helping to resolve business issues for search, business processes, compliance, and many others.

There are two model types that you can use:

- [Document understanding models](document-understanding-overview.md)
- [Form processing models](form-processing-overview.md)

While both models are generally used for the same purpose, the key differences listed below affect which ones you can use.

> [!NOTE]
> See the [SharePoint Syntex adoption: Get started guide](./adoption-getstarted.md) for more information about form processing and document understanding scenario examples.


## Structured versus unstructured and semi-structured content

Use document understanding models to identify and extract data from unstructured documents, such as letters or contracts, where the text entities you want to extract is in sentences or specific regions of the document. For example, an unstructured document could be a contract renewal letter that can be written in different ways. However, information exists consistently in the body of each contract renewal document, such as the text string *Service start date of* followed by an actual date.

Use form processing models to identify files and extract data from structured or semi-structured documents, such as forms or invoices. Form processing models are trained to understand the layout of your form from example documents, and learn to look for the data you need to extract from similar locations. Forms usually have a more structured layout where entities are in the same location (for example, a social security number in a tax form).

> [!NOTE]
> You must have access to a content center site to create a document understanding model or to apply one to a SharePoint document library. 


## Where models are created

Document understanding models are created and managed in a SharePoint content center site. 

> [!NOTE]
> For more information about input documents, see [Form processing model requirements and limitations](/ai-builder/form-processing-model-requirements). 

Form processing models are created in PowerApps [AI Builder](/ai-builder/overview), but the creation starts directly from a SharePoint document library. A document library must have form processing model creation enabled before a user can create a form processing model for it. Admins can enable form processing model creation in the content understanding admin settings. Form processing models use PowerAutomate flows to process files when they're uploaded to the document library.

When you create a document understanding model, you create a new [SharePoint content type](https://support.microsoft.com/office/use-content-types-to-manage-content-consistently-on-a-site-48512bcb-6527-480b-b096-c03b7ec1d978) that is saved to the SharePoint Content Types gallery. Or you can use existing content types to define your model if needed.

Form processing models also create new [SharePoint content types](https://support.microsoft.com/office/use-content-types-to-manage-content-consistently-on-a-site-48512bcb-6527-480b-b096-c03b7ec1d978), and are also stored in the SharePoint Content Types gallery.

## Where they can be applied

You can apply document understanding models to SharePoint document libraries that you have access to. Use the content center to create a document understanding model, and apply it to different document libraries. The content center gives you a more central control for how document understanding models are used and where they're applied. Note this information must also roll up to a content center.

Form processing models can currently only be applied to the SharePoint document library from which you created them. This allows licensed users with access to the site to create a form processing model. Note that an admin needs to enable form processing on a SharePoint document library for it to be available to licensed users.

## Comparison of forms processing and document understanding

Use the following table to understand when to use forms processing and when to use document understanding:

| Feature | Forms processing | Document understanding |
| ------- | ------- | ------- |
| Model Type  - when to use each | Used for semi-structured file formats, for example PDFs for forms content such as invoices or purchase orders where the layout and formatting is similar.  | Used for semi-structured file formats – for example, Office documents where there are differences in the layout, but still similar information to be extracted. |
| Model creation | Model created in AI builder with seamless access from SharePoint document library.| Model created in SharePoint in a new site, the content center. |
| Classification type| Settable classifier is used to give clues to the system on what data to extract.| Trainable classifier with optional extractors using machine teaching to assign document location on what data to extract.|
| Locations | Trained for a single document library.| Can be applied to multiple libraries.|
| Supported file types| Train on PDF, JPG, PNG format, total 50 MB and 500 pages.| Train on 5-10 PDF, Office, or email files, including negative examples.<br>Office files are truncated at 64k characters. OCR-scanned files are limited to 20 pages.|
| Integrate with Managed Metadata | No | Yes, by training entity extractor referencing a configured managed metadata field.|
| Compliance feature integration when Microsoft Information Protection is enabled | Set published Retention labels.<br>Set Sensitivity labels is coming. | Set published Retention labels.<br>Set Sensitivity labels is coming. |
| Supported regions| Form processing relies on Power Platform. For information about global availability for Power Platform and AI Builder, see [Power Platform availability](https://dynamics.microsoft.com/geographic-availability/). | Available in all regions.|
| Transactional cost | Uses AI Builder credits.<br>Credits can be purchased in batches of 1M.<br>1M credits are included when 300+ SharePoint Syntex licenses are purchased.<br>1M credits will allow processing of 2000 file pages.<br>| N/A |
| Capacity | Uses the default Power Platform environment (custom environments with Dataverse database supported). | Does not have capacity restrictions.|
| Supported languages| English <br>Coming later in 2021: Latin alphabet languages | Models work on all latin alphabet languages. In addition to English: German, Swedish, French, Spanish, Italian, and Portuguese.|

## See Also
[Training: Improve business performance with AI Builder](/learn/paths/improve-business-performance-ai-builder/?source=learn)



[Document understanding overview](document-understanding-overview.md)

[Form processing overview](form-processing-overview.md)

[Introduction to SharePoint Syntex](index.md)