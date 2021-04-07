---
title: "Form processing overview"
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
description: "Learn about form processing in Microsoft SharePoint Syntex"
---

# Form processing overview

 ![AI Builder](../media/content-understanding/ai-builder.png)</br>

Microsoft SharePoint Syntex uses Microsoft PowerApps [AI Builder](/ai-builder/overview) form processing to create models within SharePoint document libraries.

You can use AI Builder form processing to create AI models that use machine learning technology to identify and extract key-value pairs and table data from structured or semi-structured  documents, like forms and invoices.

Organizations often receive invoices in large quantities from a variety of sources, such as mail, fax, email, etc. Processing these documents and manually entering them into a database can take a considerable amount of time. By using AI to extract the text, key/value pairs, and tables from your documents, form processing automates this process. 

> [!NOTE]
> See the [SharePoint Syntex adoption: Get started guide](./adoption-getstarted.md) for more information about form processing scenario examples.

For example, you can create a form processing model that identifies all purchase order documents that are uploaded to the document library. From each purchase order you can then extract and display specific data that is important to you, such as *PO Number*, *Date*, or *Total Cost*.

![Doc library view](../media/content-understanding/doc-lib-done.png)</br>  

You use example files to train your model and define the information to be extracted from your form. The layout of your document is learned by training your model. You only need five form documents to get started. AI Builder will analyze your example files for key-value pairs, and you can also manually identify ones that may not have been detected.  AI builder lets you test the accuracy of your model on your example files.

After you train and publish your model, your model creates a [Power Automate Flow](/power-automate/getting-started). The flow runs when a file is uploaded to the SharePoint document library and will extract data that has been identified in the model. The extracted data will display in columns in your model's document library view.

An Office 365 admin needs to [enable Form processing](./set-up-content-understanding.md) for the SharePoint document library for users to be able to [create a form processing model](create-a-form-processing-model.md) in it. You can select the sites during setup, or after setup in your management settings.

### File limitations

When using form processing models, make sure to note the [requirements and limitations for file usage](/ai-builder/form-processing-model-requirements).

### Multi-Geo environments

When setting up SharePoint Syntex in a [Microsoft 365 Multi-Geo environment](../enterprise/microsoft-365-multi-geo.md), you can only configure it to use form processing in the central location. If you want to use form processing in a satellite location, contact Microsoft support.






## See Also
  
[Power Automate documentation](/power-automate/)

[Create a form processing model](create-a-form-processing-model.md)

[Document understanding overview](document-understanding-overview.md)

[Training: Improve business performance with AI Builder](/learn/paths/improve-business-performance-ai-builder/?source=learn)