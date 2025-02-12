---
title: Overview of structured and freeform document processing in Microsoft Syntex
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
description: Learn how to use AI Builder to create structured or freeform document processing models in Microsoft Syntex.
---

# Overview of structured and freeform document processing in Microsoft Syntex

> [!NOTE]
> Through June 2025, you can try out a [limited amount](promo-syntex.md#monthly-included-capacity) of structured and freeform document processing and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

<!---</br>

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=43234179-fd0c-47c0-96a9-0fd6bc76163b]

</br>--->

Use the structured document processing model ([layout method](create-syntex-model.md#create-a-custom-model)) to automatically identify field and table values. It works best for structured or semi-structured documents, such as forms and invoices.

Use the freeform document processing model ([freeform selection method](create-syntex-model.md#create-a-custom-model)) to automatically extract information from unstructured and freeform documents, such as letters and contracts.

> [!NOTE]
> Microsoft respects the privacy and ownership of data you use to train and process models in Syntex. None of your organization's data is used or transferred by Microsoft to train AI models, large-language models, or any other models. Your data remains securely within your organization’s tenant. For more information, see [Microsoft data protection and privacy](https://www.microsoft.com/en-us/trust-center/privacy).

## Introduction to structured and freeform models

Microsoft Syntex uses Microsoft Power Apps [AI Builder](/ai-builder/form-processing-model-overview) document processing to create structured and freeform document processing models within SharePoint document libraries.
<!---
 ![AI Builder.](../media/content-understanding/ai-builder.png)
--->
You can use AI Builder document processing to create structured or freeform document processing models that use machine learning technology to identify and extract key-value pairs and table data from structured or semi-structured documents, such as forms and invoices, and unstructured or freeform documents, such as contracts and correspondence.

Organizations often receive invoices in large quantities from various sources, such as mail, fax, and email. Processing these documents and manually entering them into a database can take a considerable amount of time. By using AI to extract the text, key-value pairs, and tables from your documents, Syntex automates this process.

> [!NOTE]
> For more ideas about how to use these models in your organization, see [Get started driving adoption](adoption-getstarted.md) and [Scenarios and use cases](adoption-scenarios.md).

For example, you can create a structured or freeform document processing model that identifies all documents that are uploaded to the document library. From each document, you can then extract and display specific data that is important to you.

![Screenshot showing the document library view.](../media/content-understanding/doc-lib-done.png)  

You use example files to train your model and define the information to be extracted from your form. The layout of your document is learned by training your model. You only need five form documents to get started. Syntex analyzes your example files for key-value pairs, and you can also manually identify ones that might not have been detected.  AI builder lets you test the accuracy of your model on your example files.

You can only create a structured or freeform document processing model in SharePoint document libraries for which it's enabled. If it's been enabled, you're able to see the **Classify and extract** option in your document library.

![Screenshot showing the AI Builder model.](../media/content-understanding/create-ai-builder-model2.png)

If you need it enabled on your document library, contact your Microsoft 365 admin.

## Requirements and limitations

For information about requirements to consider when choosing this model, see the [requirements and limitations for structured and freeform document processing](structured-freeform-requirements.md).
