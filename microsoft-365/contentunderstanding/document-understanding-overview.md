---
title: "Document understanding overview (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 08/1/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Get an overview of the document understanding in Project Cortex."
---

# Document understanding overview (Preview)
> [!Note] 
> Project Cortex is currently in Preview. [Find out more about Project Cortex](https://aka.ms/projectcortex).

</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CSu7] 

</br>

Document understanding uses AI models to automate classification of files and extraction of information. It works best with unstructured documents, like letters or contracts. The documents should have text that can be identified based on phrases or patterns. The identified text can designate both the type of file it is (its classification) and what you'd like to extract (its extractors).

Document understanding models are created and managed in a type of SharePoint site called a content center. When applied to a SharePoint document library, the model is associated with a content type which has columns to store the information extracted. The content type you create is stored in the SharePoint content type gallery. You can also choose to use existing content types in order to use their schema.

You can add *classifiers* and *extractors* to your document understanding models to do the following: 

- Classifiers are used to identify and classify documents that are uploaded to the document library. For example, a classifier can be "trained" to identify all *contract renewal* documents that are uploaded to the library. The contract renewal content type is defined by you when you create your classifier.

- Extractors pull information from these documents. For example, for all contract renewal documents that are identified in your document library, columns will display in your view that will also show the *Service Start Date* and  *Client* for each contract renewal document. 

You use example files to train and test your classifiers and extractors in your model. Example files provide your model examples of what to look for when trying to identify and extract data from files. For example, you would train your contract renewal classifiers and extractors with examples of contract renewal documents your company works with. You can also use example files to test the effectiveness of your model.

After publishing your model, use the content center to apply it to any SharePoint document library that you have access to.  


## See Also
[Create a classifier](create-a-classifier.md)</br>
[Create an extractor](create-an-extractor.md)</br>
[Create a content center](create-a-content-center.md)
[Create a form processing model](create-a-form-processing-model.md)</br>
[Apply a model](apply-a-model.md)   
[Difference between a document understanding and a form processing model](difference-between-document-understanding-and-form-processing-model.md)  
[Form processing overview](form-processing-overview.md)




