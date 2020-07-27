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

Content Understanding in Project Cortex allows you to create and use two different types of models:

- Document understanding models
- Form processing models

They have the following key difference:
- File types they are best used on
- Where they are created
- How they are applied


## Structured versus unstructured and semi-structured content

Use document understanding models to identify and extract data from unstructured documents, such as letters or contracts,  where the text entities you want to extract reside in sentences or specific regions of the document. 

Use form processing models to identify files and extract data from structured or semi-structured documents, such as forms or invoices, where you have clear key-value pairs (for example, *Date: 10/1/2020*)* or table data.

## Where they are created

Document understanding models are created and managed in a SharePoint content center site. You must have access to a content center site to create a document understanding model and to apply one to your SharePoint document library. 

New content types that you create with your document understanding model are saved to the SharePoint Content Type Gallery.

Form processing models are created in PowerApps AI Builder, but the creation is initiated directly from a SharePoint Document library. Form processing creation needs to be enabled on your document library in order for a user to create a form processing model for it, and a admin can do this in the Knowledge Management admin settings.

## Where they can be applied

Document understanding models can be applied to different SharePoint document libraries that you have access to. You can use the content center to not only create a document understanding model, but also to apply it to different document libraries.

Form processing models can only be applied to the SharePoint document library from which they were created.


 ## See Also
[Create a classifier](create-a-classifier.md)
[Create a form processing model](create-a-form-processing-model.md)



  
  



