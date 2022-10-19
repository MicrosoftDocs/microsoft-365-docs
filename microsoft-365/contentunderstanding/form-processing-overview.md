---
title: Overview of structured document processing in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to use AI Builder to create structured document processing models in Microsoft Syntex.
---

# Overview of structured document processing in Microsoft Syntex

> [!NOTE]
> *Structured document processing* was known as *form processing* in previous releases.

Use the structured document processing model ([layout method](create-syntex-model.md#train-a-custom-model)) to automatically identify field and table values. It works best for structured or semi-structured documents, such as forms and invoices.

Microsoft Syntex uses Microsoft Power Apps [AI Builder](/ai-builder/form-processing-model-overview) document processing (formerly known as form processing) to create structured document processing models within SharePoint document libraries.
<!---
 ![AI Builder.](../media/content-understanding/ai-builder.png)
--->
You can use AI Builder document processing to create structured document processing models that use machine learning technology to identify and extract key-value pairs and table data from structured or semi-structured documents, such as forms and invoices.

Organizations often receive invoices in large quantities from various sources, such as mail, fax, and email. Processing these documents and manually entering them into a database can take a considerable amount of time. By using AI to extract the text, key-value pairs, and tables from your documents, Syntex automates this process. 

> [!NOTE]
> For more ideas about how to use these models in your organization, see [Get started driving adoption](adoption-getstarted.md) and [Scenarios and use cases](adoption-scenarios.md).

For example, you can create a structured document processing model that identifies all documents that are uploaded to the document library. From each document, you can then extract and display specific data that is important to you, such as *Name*, and other relevant information.

![Screenshot showing the document library view.](../media/content-understanding/doc-lib-done.png)  

You use example files to train your model and define the information to be extracted from your form. The layout of your document is learned by training your model. You only need five form documents to get started. Syntex will analyze your example files for key-value pairs, and you can also manually identify ones that might not have been detected.  AI builder lets you test the accuracy of your model on your example files.

You can only create a structured document processing model in SharePoint document libraries for which it's enabled. If it has been enabled, you're able to see the **Classify and extract** option in your document library. 

![Screenshot showing the AI Builder model.](../media/content-understanding/create-ai-builder-model2.png)

If you need it enabled on your document library, contact your Microsoft 365 admin.

## Requirements

For information about requirements to consider when choosing this model, see [Requirements and limitations for models in Microsoft Syntex](requirements-and-limitations.md#structured-document-processing).

## See also

[Compare custom models](difference-between-document-understanding-and-form-processing-model.md)

[Train a structured document processing model](create-a-form-processing-model.md)

[Power Automate documentation](/power-automate/)

[Training: Improve business performance with AI Builder](/training/paths/improve-business-performance-ai-builder/?source=learn)
