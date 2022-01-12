---
title: Use a prebuilt model to classify documents in Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to create and configure a prebuilt model in SharePoint Syntex.

---

# Use a prebuilt model to classify documents in Microsoft SharePoint Syntex

Prebuilt models are pretrained to recognize documents and the structured information in the documents. You can immediately apply prebuilt models to libraries as they are. They don't need additional training or labeling.

You can also customize a prebuilt model, review it to see how it works on your documents, and customize the names to match your documents or naming conventions. 

Currently, there are two prebuilt models available: invoice and receipt. Additional prebuilt models will be available in future releases.

> [!NOTE]
> You can use retention labels in these prebuilt models. However, sensitivity labels are not supported at this time.

## Create a prebuilt model

Follow these steps to create a prebuilt model to classify documents in SharePoint Syntex.

1. From the **Models** page, select **Create a model**.

    ![Screenshot of the Models page showing the Create a model button.](../media/content-understanding/prebuilt-create-model-button.png) 

2. On the **Create a model** panel, in the **Name** field, type the name of the model.

    ![Screenshot of the New document understanding model panel showing the model types available.](../media/content-understanding/prebuilt-create-panel.png) 

3. In the **Model type** section, select one of the prebuilt models:
   - **Invoice processing prebuilt**
   - **Receipt processing prebuilt**

   If you want to create a traditional, untrained document understanding model instead of a prebuilt model, select **Custom document understanding**.

4. Select **Create**.

## Analyze the prebuilt model

1. On the **Models** page, in the **Add a file to analyze** section, select **Add file**.

    ![Screenshot of the new models page showing the Add a file to analyze section.](../media/content-understanding/prebuilt-add-file-to-analyze.png) 

2. On the **Files to analyze the model** page, select **Add** to find the file you want to use.

    ![Screenshot of the Files to analyze the model page showing the Add button.](../media/content-understanding/prebuilt-add-file-button.png) 

3. On the **Add a file from the training files library** page, select the file, and then select **Add**.

    ![Screenshot of the Add a file from the training files library page.](../media/content-understanding/prebuilt-add-file-from-training-library.png) 

6. On the **Files to analyze the model** page, select **Next**.

## Select extractors for your model

On the extractor details page, you will see the sample file and the list of extractors that are in the file.

   ![Screenshot of the Add a file from the training files library page.](../media/content-understanding/prebuilt-extractor-details-page.png) 






