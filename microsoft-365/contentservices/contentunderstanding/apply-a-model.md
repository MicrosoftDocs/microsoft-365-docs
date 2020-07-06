---
title: "Apply a model"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 6/29/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
description: "Learn how to apply a published model to a SharePoint document library."
---

# Apply a model

After publishing your content understanding model, you can apply it to a SharePoint document library in your Microsoft 365 tenant.

> [!Note]
> You will only be able to apply the model to document libraries that you have access to.


## Apply your model to a document library.

To apply your model to to a SharePoint document library:

1. On the model home page, on the **Apply model to libraries** tile, select **Publish model**. You can also select  **+Add Library** in the **Libraries with this model** section. 
2. You can then select the SharePoint site that contains the document library that you want to apply the model to. If the site does not show in the list, use the search box to find it.
> [!Note]
> You must have *Manage List* permissions or *Edit* rights to the document library you are applying the model to. 
3. Since the model is associated to a content type, when you apply it to the library it’ll create a view for that content type with the labels you extracted showing as columns. This view will be the library's default view by default, but you can optionally choose to not have it be the default view by selecting **Advanced settings** and deselecting **Set this new view as default**.
4. Select **Add** to apply the model to the library. 
5. On the model home page, in the **Libraries with this model** section, you will see the URL to the SharePoint site listed.



After applying the model to the document library, you can begin uploading documents to the site and see the results.

1. In the SharePoint document library, in the menu bar select **All Documents** and under **View**, select the view you created by applying the model. By default, it will have the same name as your model. 
2. In the new view, select upload, and then select files you want to move to the document library.
3. The model will identify any files with model’s associated content type and will list them in your view. If your model has any extractors, the view will display columns for the data you are extracting from each file.





## See Also
  




