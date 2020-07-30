---
title: "Apply a model to a document library (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 8/1/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
description: "Learn how to apply a published model to a SharePoint document library."
---

# Apply a model (Preview)

> [!Note] 
> The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex](https://aka.ms/projectcortex).

After publishing your document understanding model, you can apply it to a SharePoint document library in your Microsoft 365 tenant.

> [!Note]
> You will only be able to apply the model to document libraries that you have access to.


## Apply your model to a document library.

To apply your model to to a SharePoint document library:

1. On the model home page, on the **Apply model to libraries** tile, select **Publish model**. Or you can  select  **+Add Library** in the **Libraries with this model** section. </br>

    ![Add model to library](../media/content-understanding/apply-to-library.png)</br>

2. You can then select the SharePoint site that contains the document library that you want to apply the model to. If the site does not show in the list, use the search box to find it.</br>

    ![Select a site](../media/content-understanding/site-search.png)</br>

    > [!Note]
    > You must have *Manage List* permissions or *Edit* rights to the document library you are applying the model to.</br>

3. After selecting the site, you then need to select the document library to which you want to apply the model. In the example, we are selecting the *Documents* document library from the *Contoso Case Tracking* site.</br>

    ![Select a doc library](../media/content-understanding/select-doc-library.png)</br>

4. Since the model is associated to a content type, when you apply it to the library it will create a view for the content type with the labels you extracted showing as columns. This view will be the library's default view by default, but you can optionally choose to not have it be the default view by selecting **Advanced settings** and deselecting **Set this new view as default**.</br>

    ![Library view](../media/content-understanding/library-view.png)</br>

5. Select **Add** to apply the model to the library. 
6. On the model home page, in the **Libraries with this model** section, you will see the URL to the SharePoint site listed.</br>

    ![Library view](../media/content-understanding/selected-library.png)</br>

7. Go to your document library and make sure you are in the model's document library view. You'll notice that if you select the information button next to the document library name, a message will note that your model has been applied to the document library.

    ![Library view](../media/content-understanding/info-du.png)</br> 


After applying the model to the document library, you can begin uploading documents to the site and see the results.

The model will identify any files with model’s associated content type and will list them in your view. If your model has any extractors, the view will display columns for the data you are extracting from each file.







## See Also
[Create a classifier](create-a-classifier.md)</br>
[Create an extractor](create-an-extractor.md)</br>
[Document Understanding overview](document-understanding-overview.md)</br>
[Create a form processing model](create-a-form-processing-model.md)  




