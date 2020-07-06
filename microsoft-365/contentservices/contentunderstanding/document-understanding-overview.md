---
title: "Document Understanding overview (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 07/20/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
description: "Get an overview of the Document Understanding feature in Project Cortex."
---

# Document Understanding overview (Preview)
> [!Note] The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex]().

Project Cortex provides the ability to leverage AI technology to automate the classification of files and the extraction of specified metadata for files hosted in SharePoint libraries. For unstructured documents where the text entities you want to extract reside in sentences or specific regions of the document (like letters or contracts) – Project Cortex allows you to build a model using a machine learning-based service (LUIS) that can designate both the type of file it is (its classification) and specify the contents of the document you wish to extract (its extractors). This model is preserved as a special content type in SharePoint – and can be subsequently published to other libraries in one’s tenant. Like the AI Builder form processing model, the service will write out the extracted file values to library fields at runtime.

ADD IMAGE

## Language Understanding (LUIS) and Content Understanding models

[LUIS for documents](https://www.luis.ai/home) is a machine learning-based service that enables users to categorize and extract information from unstructured documents like business documents, emails, and articles. The two methods it supports are classification, effectively assigning a tag to an entire piece of text or file and extraction, using a specific portion of the file that matches the entity or metadata you have defined. What’s unique about the approach to building these models is it can be done in an interactive process on small unlabeled training sets by content experts – and without requiring specific machine learning expertise. This approach is called machine teaching. 

The benefits of this automated classification and metadata generation include: 

- Assist human information processing tasks and provide productivity gains
- Leverage in automated business processes: the output of this metadata can be used to trigger workflow process automations configured through PowerAutomate
- Tag to improve content discovery: by adding more – and consistent – metadata to ingested content, the precision and quality of search results can be improved
- Drive governance: the classification of content – associated with content types – can be used to ensure the right information protection labels get applied (and consequently, the right security and retention policies are applied or enforced).

## Key Functionality

- A new site template (the “content center”) to host the creation and management of these models.

- An integrated management interface – for the creation, publishing, and monitoring of models.

### Known Limitations & Expected Changes

- Limited set of column data type support (and no MMS validation yet).

- Model content types and associated columns are currently created as site-level elements in the content center. We are looking to provide an automated and/or manual process to publish to the enterprise content type gallery. Conversely, no model content types are visible or can be flagged in the enterprise gallery.




## See Also
  




