---
title: "Document understanding overview"
ms.author: efrene
author: efrene
manager: pamgreen
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: enabler-strategic
localization_priority: Priority
description: "Get an overview of the document understanding in Microsoft SharePoint Syntex."
---

# Document understanding overview


</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CSu7] 

</br>

Document understanding uses artificial intelligence (AI) models to automate classification of files and extraction of information. It works best with unstructured documents, such as letters or contracts. These documents must have text that can be identified based on phrases or patterns. The identified text designates both the type of file it is (its classification) and what you'd like to extract (its extractors).

> [!NOTE]
> See the [SharePoint Syntex adoption: Get started guide](https://docs.microsoft.com/microsoft-365/contentunderstanding/adoption-getstarted#document-understanding-scenario-example) for more information about document understanding scenario examples.

Document understanding models are created and managed in a type of SharePoint site called a *content center*. When applied to a SharePoint document library, the model is associated with a content type has columns to store the information being extracted. The content type you create is stored in the SharePoint content type gallery. You can also choose to use existing content types to use their schema.

> [!NOTE]
> Read-only or sealed content types cannot be updated, so they cannot be used in a model.

Add *classifiers* and *extractors* to your document understanding models to do the following: 

- Classifiers are used to identify and classify documents that are uploaded to the document library. For example, a classifier can be "trained" to identify all *contract renewal* documents that are uploaded to the library. The contract renewal content type is defined by you when you create your classifier.

- Extractors pull information from these documents. For example, for all contract renewal documents identified in your document library, columns display in your view that also show the *Service Start Date* and  *Client* for each contract renewal document. 

You can use example files to train and test your classifiers and extractors in your model. Example files provide your model examples of what to look for when trying to identify and extract data from files. For example, you would train your contract renewal classifiers and extractors with examples of contract renewal documents your company works with. You can also use example files to test the effectiveness of your model.

> [!NOTE]
> If you use optical character recognition (OCR) technology to scan documents, Syntex has a 15-page limit for model training.

After publishing your model, use the content center to apply it to any SharePoint document library that you have access to.  

## See Also
[Create a classifier](create-a-classifier.md)

[Create an extractor](create-an-extractor.md)

[Create a content center](create-a-content-center.md)

[Create a form processing model](create-a-form-processing-model.md)

[Apply a model](apply-a-model.md)   

[Difference between a document understanding and a form processing model](difference-between-document-understanding-and-form-processing-model.md)
  
[Form processing overview](form-processing-overview.md)
