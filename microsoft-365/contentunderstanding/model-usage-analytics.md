---
title: "Document understanding model usage analytics"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 10/1/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to apply a retention label to a document understanding model."
---

# Document understanding model usage analytics


</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CSoL]

</br>

You Microsoft SharePoint Syntex content center provides you model usage analytics to give you more information about how your models are being used.



### To add a retention label to a document understanding model

1. On the model home page, select **Model settings**.</br>
2. In **Model settings**, in the **Security and compliance** section, select the **Retention label** menu to see a list of retention labels that are available for your to apply to the model.</br>
Image
3. Select the retention label you want to apply to the model, and then select **Save**.</br>

After applying the retention label to your model, you are able to:
- Apply the updated model to a new document library.
- Apply the updated model to a document library to which the model is already applied.
 
### Apply the retention label to a document library to which the model is already applied

If your document understanding model has already been applied to a document library, you can do the following to sync your retention label update to apply it to the document library:</br>

1. On your model home page, in the **Libraries with this model** section, select the document library to which you want to apply the retention label update. </br> Image
2. Select **Sync**. </br>
Image 


After applying the update, you can confirm that it has been applied by selecting your document library link and checking your document library view. In your document library view, select the information icon to check the model properties.  In the **Active models** list, select your updated model, and in the **Retention label** section you will see the name of the applied retention label.

Image

Select the link to your document library. On the view page, a new **Retention label** column will display in your library view page.  As your model classifies files it identifies as belonging to it's content type and lists them in the library view, the Retention label column will also display the name of the retention label that has been applied to it through the model.


For example, all *Insurance notice* documents that your model identifies will also have the *Business* retention label applied to them, preventing them from being deleted from the document library for five months. If an attempt is made to delete the file from the document library, an error will display saying it is not allowed because of the applied retention label.

image



## See Also
[Create a classifier](create-a-classifier.md)</br>
[Create an extractor](create-an-extractor.md)</br>
[Document Understanding overview](document-understanding-overview.md)</br>
[Create a form processing model](create-a-form-processing-model.md)  




