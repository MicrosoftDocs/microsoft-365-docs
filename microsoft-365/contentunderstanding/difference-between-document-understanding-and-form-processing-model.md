---
title: "Difference between document understanding and form processing models (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 07/21/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
description: "Describes key difference between document understanding and form processing models."
---

# Difference between document understanding and form processing models (Preview)

> [!Note] 
> The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex](https://aka.ms/projectcortex).

Content Understanding in Project Cortex allows you to identify and classify documents that are uploaded to SharePoint document libraries, as well as extracting relevant information from each file.  For example, as files are uploaded to a SharePoint document library, all files that are identified as *Purchase Orders* are classified as such and displayed in a custom document library view in which they are displayed. Additionally, you can pull specific information from each file (for example, *PO Number* and *Total*) and display it in a column in your document library view. 


Content Understanding lets you create *models* to identify and extract the information you need.  There are two types of models that can be used:

- [Document understanding models](document-understanding-overview.md)
- [Form processing models](form-processing-overview.md)

While both models are used for generally the same purpose, there are key differences that will affect which ones you may choose to use.


## Structured versus unstructured and semi-structured content

Use document understanding models to identify and extract data from unstructured documents, such as letters or contracts, where the text entities you want to extract reside in sentences or specific regions of the document. For example, an unstructured document could be a contract renewal letters that can be written in different ways. However, there is information that is consistently in the body of each contract renewal document, such as the text string "Service start date of" followed by an actual date.   

Use form processing models to identify files and extract data from structured or semi-structured documents, such as forms or invoices, where you have clear key-value pairs (for example, *Date: 10/1/2020*)* or table data. As an example, a good candidate for form processing would be a company's order request form in which clients need to provide their information for specific fields which are located in the same area of the document layout, such as *Name*, *Phone Number*, *Total Cost*, etc.   

## Where they are created

Document understanding models are created and managed in a SharePoint content center site. You must have access to a content center site to create a document understanding model or to apply one to a SharePoint document library. 

When you create a document understanding model, you create a new [SharePoint content type](https://support.microsoft.com/office/use-content-types-to-manage-content-consistently-on-a-site-48512bcb-6527-480b-b096-c03b7ec1d978) that is saved to the SharePoint Content Types gallery. You can optionally use existing content types to define your model if needed.

Form processing models are created in PowerApps [AI Builder](https://docs.microsoft.com/ai-builder/overview), but the creation is initiated directly from a SharePoint Document library. Form processing model creation needs to be enabled on your document library in order for a user to create a form processing model for it, and an admin can do this in the [Knowledge Management admin settings](manage-knowledge-network.md).

Form processing models also create new [SharePoint content types](https://support.microsoft.com/office/use-content-types-to-manage-content-consistently-on-a-site-48512bcb-6527-480b-b096-c03b7ec1d978), which are also stored in the SharePoint Content Types gallery.

## Where they can be applied

Document understanding models can be applied to different SharePoint document libraries that you have access to. You can use the content center to not only create a document understanding model, but also to apply it to different document libraries.

Form processing models can currently only be applied to the SharePoint document library from which they were created.




 ## See Also
[Training: Improve business performance with AI Builder](https://docs.microsoft.com/learn/paths/improve-business-performance-ai-builder/?source=learn)</br>
[Create a classifier](create-a-classifier.md)</br>
[Create an extractor](create-an-extractor)</br>
[Apply a Document understanding model](apply-a-model.md)</br>
[Create a form processing model](create-a-form-processing-model.md)</br>



  
  



