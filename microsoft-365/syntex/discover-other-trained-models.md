---
title: Discover other trained models in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 01/10/2025
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to find trained models that have been applied to other content centers in Microsoft Syntex.
---

# Discover other trained models in Microsoft Syntex

<sup>**Applies to:**  &ensp; &#10003; All custom models &ensp; | &ensp; &#10003; All prebuilt models</sup>

Before you create a new model, you might consider whether to reuse an existing one. You can find and evaluate trained models that were created by others in your organization. This might include shared enterprise models trained in a content center or other local models created in the same site. Select the model that is most useful for classifying your files or extracting specific information from them. 

## Discover other trained models

To find trained models that might be suitable for your content:

1. In the document library for your model, select **Classify and extract**.

2. On the **Review models and apply new ones** page, you can review the applied models and the models that are available to be applied to your document library.

    ![Screenshot of the Review models and apply new ones page showing the Applied and Available tabs.](../media/content-understanding/review-models-apply-new-ones.png)

   - On the **Applied** tab, see the models that have been applied to your library. Select **View model details** to see information about the model, such as description, extractors, and other settings.
   
   - On the **Available** tab, see the trained models that are available to be applied to your library.

## Apply a trained model to your library

You can evaluate trained models against your content to help you find the most appropriate one. To select a model that you want to apply to your library:

1. On the **Review models and apply new ones** page, select the **Available** tab to review the models in the list.

    ![Screenshot of the Review models and apply new ones page showing the models on the Available tab.](../media/content-understanding/available-models-to-apply.png)

2. Choose the model that you think will get you the best results, select **View model details**, and then select **Apply to library**.

## Get a recommendation for a trained model

If you're unsure which model is the best fit for your files, you can ask for a recommendation. Your recommendation could include up to 10 models.

1. On the **Review models and apply new ones** page, select the **Available** tab.

2. On the first tile, select **Get recommendation**.

    ![Screenshot of the Review models and apply new ones page showing the Get recommendation option on the Available tab.](../media/content-understanding/get-recommendation.png)

3. On the **Select one or more models for analysis** page, select the models that you think might be the best fit, and then select **Next**.

    ![Screenshot of the Select one or more models page showing the recommended models with two models selected.](../media/content-understanding/recommendation-results.png)

4. On the **Select a file to analyze** page, select a file of the same or similar type that will be stored in your library. Then choose **Select**.

    ![Screenshot of the Select a file to analyze page showing the files available with one file selected.](../media/content-understanding/file-to-analyze.png)

5. On the **Review results and select a model** page, under **Our recommendation**, you'll see the recommended file. You don't have to apply the recommended model. You can choose to apply another model if you think it's a better fit.

    ![Screenshot of the Review results and select a model page showing the recommended models.](../media/content-understanding/review-results.png)

6. For the model you think will get you the best results, select **View model details**, and then select **Apply to library**.

7. If there are no recommended models based on the selected file, you can go back and select another file or select different models.

## Remove an applied model

> [!NOTE]
> A model has to be removed from all SharePoint document libraries before it can be [deleted](delete-a-model.md) or [renamed](rename-a-model.md).

To remove an applied model from your document library:

1. On the **Review models and apply new ones** page, on the **Applied** tab, see the models that have been applied to your library.

2. On the model you want to remove, select **View model details**, and then select **Remove from library**.

