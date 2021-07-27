---
title: Use model discovery in Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: ssquires
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
localization_priority: Priority
description: Learn how and why to duplicate a model in Microsoft SharePoint Syntex.
---

# Use model discovery in Microsoft SharePoint Syntex

You can make your trained document understanding models available for others to view and use directly from the SharePoint document library. This feature is not yet available for form processing models.

You can also find and evaluate trained models in other content centers that were created by others in your organization. You can then select the model that is most useful for classifying your files or extracting specific information from them. You can evaluate up to 10 models against your content to help you find the most appropriate one.

## Make your model discoverable to others

To make your trained model available for others to use:

1. On the **Models** page, select **Model settings**.

2. On the **Model settings** pane, in the **Where this model is visible** section, select where you want the model to be visible for other users to apply:

   - **Not visible** – The model will not be available for others to use.
   - **On all sites** – The model will be available in the content type gallery for others to use.
   - **Only on specific sites** – You can choose which site or sites in which the model to be available. If you select this option, click in the text box to choose which sites you want the model applied.

## Discover other trained models

To find trained models that might be suitable for your content:

1. In the document library for your model, select **Automate** > **AI Builder** > **View document understanding models**.

2. On the **Review models and apply new ones** page:

   - On the **Applied** tab, see the models that have been applied to your library.
   - On the **Available** tab, see the additional models that are available to be applied to your library.

### Get a recommendation for a trained model

If you are unsure which model is the best fit for your files, you can ask for a recommendation.

1. On the **Review models and apply new ones** page, select the **Available** tab.

2. On the first tile, select **Get recommendation**.

3. On the **Select one or more models** page, select the models that you think might be the best fit, and then select **Next**.

4. On the **Select a file** page, select a file of the same or similar type that will be stored in your library.

5. On the **Review recommendation results** page, under **Our recommendation**, you'll see the recommended file. You don't have to apply the recommended model. You can choose to apply another model if you think it's a better fit.

6. Select the model that you think will get you the best results, and then select **Apply to library**.

### Remove an applied model

To remove an applied model from your document library:

1. On the **Review models and apply new ones** page, on the **Applied** tab, see the models that have been applied to your library.

2. Select the model you want to remove, and then select **Remove from library**.


## See also

[Apply a document understanding model](apply-a-model.md)

