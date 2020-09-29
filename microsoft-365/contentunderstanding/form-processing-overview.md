---
title: "Form processing overview"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 8/1/2020
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
localization_priority: Priority
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn about form processing in Microsoft SharePoint Syntex"
---

# Form Processing overview (Preview)


Project Cortex uses Microsoft PowerApps [AI Builder](https://docs.microsoft.com/ai-builder/overview) form processing to create models within SharePoint document libraries.

You can use AI Builder form processing to create AI models that use machine learning technology to identify and extract key-value pairs and table data from structured or semi-structured  documents, like forms and invoices.

Use AI Builder form processing to create AI models that utilize machine learning (ML) technology to identify and extract key-value pairs and table data from structured or semi-structured documents, such as form and invoices.

Organizations often receive invoices in large quantities from a variety of sources, such as mail, fax, email, etc. Processing these documents and manually entering them into a database can take a considerable amount of time. By using AI to extract the text, key/value pairs, and tables from your documents, form processing automates this process. 

For example, you can create a form processing model that identifies all purchase order documents that are uploaded to the document library. From each purchase order you can then extract and display specific data that is important to you, such as *PO Number*, *Date*, or *Total Cost*.

You can also use sample files to train your model and define the information to be extracted from your form. The layout of your document is learned by training your model. You need a minimum of five form documents to get started. AI building analyzes your sample files for key-value pairs, and then manually identifies the ones that may not have been detected.  AI builder lets you test the accuracy of your model on your sample files.

After you train and publish your model, use it to create a [Power Automate Flow](https://docs.microsoft.com/power-automate/getting-started) that runs after a file is uploaded to the SharePoint document library. It then extracts data that has been identified in the model. The extracted data will display in columns in your model's document library view.

You use sample files to train your model and define the information to be extracted from your form. The layout of your document is learned by training your model. You only need five form documents to get started. AI Builder will analyze your sample files for key-value pairs, and you can also manually identify ones that may not have been detected.  AI builder lets you test the accuracy of your model on your sample files.

After you train and publish your model, to use it you create a [Power Automate Flow](https://docs.microsoft.com/power-automate/getting-started). The flow runs when a file is uploaded to the SharePoint document library and will extract data that has been identified in the model. The extracted data will display in columns in your model's document library view.

An Office 365 admin needs to [enable Form processing](https://docs.microsoft.com/microsoft-365/contentunderstanding/set-up-content-understanding#to-set-up-content-understanding) for the SharePoint document library for users to be able to [create a form processing model](create-a-form-processing-model.md) in it.

## See Also
  
[Power Automate documentation](https://docs.microsoft.com/power-automate/)</br>
[Create a form processing model](create-a-form-processing-model.md)</br>
[Document understanding overview](document-understanding-overview.md)</br>
[Training: Improve business performance with AI Builder](https://docs.microsoft.com/learn/paths/improve-business-performance-ai-builder/?source=learn)</br>
