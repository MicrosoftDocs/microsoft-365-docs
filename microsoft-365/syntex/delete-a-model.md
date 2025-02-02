---
title: Delete a model in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: ssquires
ms.date: 01/10/2025
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to delete a model in Microsoft Syntex.
---

# Delete a model in Microsoft Syntex

<sup>**Applies to:**  &ensp; &#10003; All custom models &ensp; | &ensp; &#10003; All prebuilt models</sup>

You can delete a document processing model if it's no longer in use, contains inaccurate or outdated information, or is taking up too much storage space.

> [!NOTE]
> Deleting a model doesn't delete the associated content type. 

## Delete a model from the model home page

This procedure is the easiest method to use to delete a model. It deletes the model and automatically removes it from all of the document libraries where it's applied.

1. On the home page of the model, select **Model settings**.

    ![Screenshot of the Models settings button on the model home page.](../media/content-understanding/model-settings-button.png)

2. On the **Model settings** panel, at the bottom of the panel, select **Delete model**.

    ![Screenshot of the Models settings panel showing Delete model option.](../media/content-understanding/model-settings-delete-model.png)

3. To confirm you want to delete the model, on the **Delete** screen, select **Delete**.

    ![Screenshot of the Delete model confirmation page.](../media/content-understanding/delete-model-confirmation.png)

   > [!NOTE]
   > For freeform and structured models, this action doesn't delete the model in AI Builder. It only deletes it from the SharePoint document library in Syntex.

## Delete a model from the Models library

You can also delete a model from the **Models** library. However, before you delete the model, you must first remove the model from all of the document libraries where it's applied.

1. Remove the model either from the model home page or from the document library by selecting **Automate** > **View applied models** > **Remove from library**.

   > [!NOTE]
   > If you attempt to delete a model that has been applied to one or more libraries, an error message appears. This message informs you that you must first remove the model from all the libraries where it's applied.
 
2. From the **Models** library, select the model you want to delete.

3. By using either the ribbon or the **Show actions** button (next to the model name), select **Delete**. 

    ![Screenshot of the Models page showing a selected model with the Delete options highlighted.](../media/content-understanding/select-model-delete.png)

4. To confirm you want to delete the model, on the **Delete** screen, select **Delete**.


