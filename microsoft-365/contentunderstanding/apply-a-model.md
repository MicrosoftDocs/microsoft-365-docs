---
title: Apply a document understanding model in Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.service: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to apply a published a model to a SharePoint document library in Microsoft SharePoint Syntex.
---

# Apply a document understanding model in Microsoft SharePoint Syntex

</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CSoL]

</br>

After publishing your document understanding model, you can apply it to one or more SharePoint document libraries in your Microsoft 365 tenant.

> [!NOTE]
> You are only able to apply the model to document libraries that you have access to.


## Apply your model to a document library

To apply your model to a SharePoint document library:

1. On model home page, on the **Apply model to libraries** tile, select **Apply model**. Or, in the **Where the model is applied** section, select **+Add library**.

    ![Screenshot of Where the model is applied section with the Add library option highlighted.](../media/content-understanding/apply-to-library.png)

2. You can then select the SharePoint site that contains the document library that you want to apply the model to. If the site doesn't show in the list, use the search box to find it.

    ![Select a site.](../media/content-understanding/site-search.png)

    > [!NOTE]
    > You must have *Manage List* permissions or *Edit* rights to the document library you are applying the model to.

3. After selecting the site, select the document library to which you want to apply the model. In the sample, select the *Documents* document library from the *Contoso Case Tracking* site.

    ![Select a doc library.](../media/content-understanding/select-doc-library.png)

4. Because the model is associated to a content type, when you apply it to the library it will add the content type and update the default view with the labels you extracted showing as columns. However, you can select **Advanced settings** to optionally choose to retain the current library view or to use a new view with model information and file thumbnails. If you choose to keep the current library view, the new views with model information are still available under the library's view menu.

    ![Screenshot of the Advanced settings showing the library views.](../media/content-understanding/library-view.png)

    For more information, see [Change the view in a document library](#change-the-view-in-a-document-library) later in this article.

5. Select **Add** to apply the model to the library.

6. On the model home page, in the **Where the model is applied** section, you should see the name of the SharePoint site listed.

7. Go to your document library and make sure you are in the model's document library view. Select **Automate** > **View document understanding models**.

8. On the **Review models and apply new ones** page, select the **Applied** tab to see the models that are applied to the document library.

    ![Screenshot showing the Applied tab selected and the applied models.](../media/content-understanding/applied-models.png) 

9. Select **View model details** to see information about a model, such as a description of the model, who published the model, and if the model applies retention or sensitivity labels to the files it classifies.

After applying the model to the document library, you can begin uploading documents to the site and see the results.

The model identifies any files and folders with the model’s associated content type and lists them in your view. If your model has any extractors, the view displays columns for the data you're extracting from each file or folder.

> [!NOTE]
> If two or more document understanding models are applied to the same library, the uploaded file is classified using the model that has the highest average confidence score. The extracted entities will be from the applied model only. <br><br>If a custom form processing model and document understanding model are applied to the same library, the file is classified using the document understanding model and any trained extractors for that model. If there are any empty columns that match the form processing model, the columns will be populated using those extracted values.

## Sync changes to one or more libraries

When you publish a model to multiple document libraries and then update the model, such as adding or removing an extractor, you need to push the update to all the libraries that the model has been applied.

To sync changes to all applied libraries:

1. On model home page, in the **Where the model is applied** section, select **Sync all**.

    ![Screenshot showing the Where the model is applied section and the Sync all button highlighted.](../media/content-understanding/sync-all-button.png) 

To sync changes to one or only selected libraries:

1. On model home page, in the **Where the model is applied** section, select the library or libraries you want to apply the changes to.

2. Select **Sync**.

    ![Screenshot showing the Where the model is applied section and the Sync button highlighted.](../media/content-understanding/sync-button.png) 

## Apply the model to files and folder content already in the document library

While an applied model processes all files and folder content uploaded to the document library after it's applied, you can also do the following to run the model on files and folder content that already exist in the document library prior to the model being applied:

1. In your document library, select the files and folders that you want to be processed by your model.

2. After selecting your files and folders, **Classify and extract** will appear in the document library ribbon. Select **Classify and extract**.

      ![Screenshot showing the Classify and extract option.](../media/content-understanding/extract-classify.png) 

3. The files and folders you selected will be added to the queue to be processed.

    > [!NOTE]
    > You'll receive a message indicating how long classification might take. If you've selected only files, classification might take up to 30 minutes. If you've selected one or more folders, classification might take up to 24 hours.

### Classification Date field

When a SharePoint Syntex document understanding model (or a form processing model) is applied to a document library, the **Classification Date** field is included in the library schema. By default, this field is empty. However, when documents are processed and classified by a model, this field is updated with a date-time stamp of completion. 

   ![Screenshot of a document library showing the Classification Date column.](../media/content-understanding/class-date-column.png) 

The **Classification Date** field is used by the [**When a file is classified by a content understanding model**](/connectors/sharepointonline/#when-a-file-is-classified-by-a-content-understanding-model) trigger to run a Power Automate flow after a model has finished processing the contents of a file or folder and has updated the **Classification Date** field.

   ![Flow trigger.](../media/content-understanding/trigger.png)

The **When a file is classified by a content understanding model** trigger can then be used to start a flow using any extracted information from the file or folder.

As an example, when a model is stamped with the **Classification Date**, you can use the **Send an email after SharePoint Syntex processes a file** flow to notify users that a new file has been processed and classified by a model in the SharePoint document library.

To run the flow:

1. Select a file, and then select **Integrate** > **Power Automate** > **Create a flow**.

2. On the **Create a flow** panel, select **Send an email after SharePoint Syntex processes a file**.

    ![Screenshot showing the Create a flow panel and flow option highlighted.](../media/content-understanding/integrate-create-flow.png) 

## Change the view in a document library

[!INCLUDE [Change the view in a document library](../includes/change-library-view.md)]

## See also

[Create a classifier](create-a-classifier.md)

[Create an extractor](create-an-extractor.md)

[Document Understanding overview](document-understanding-overview.md)
