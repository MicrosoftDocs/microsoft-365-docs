---
title: Delete a model in Microsoft SharePoint Syntex
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
ms.localizationpriority:  medium
description: Learn how and why to delete a document understanding model in Microsoft SharePoint Syntex.
---

# Delete a model in Microsoft SharePoint Syntex

At some point, you might want to delete a document understanding model. For example, 

Deleting a model does not delete the associated content type 
A model must be removed from all libraries where it has been applied prior to deleting it
A model can be removed from libraries either (a) by removing all libraries where it has been applied from the model home page; (b) from the library (automate > view applied models > remove from library)

Reference: 

> [!IMPORTANT]
> You can only delete a document understanding model after it has been removed from all libraries where it has been applied.



## Delete a model

Follow these steps to rename a document understanding model.

1. From the content center, select **Models** to see your models list.

2. On the **Models** page, select the model you want to rename.

3. By using either the ribbon or the **Show actions** button (next to the model name), select **Delete**. </br>

    ![Screenshot of the Models page showing a selected model with the Rename options highlighted.](../media/content-understanding/select-model-rename-both.png) </br>

4. On the **Rename model** panel:

   a. Under **New name**, enter the new name of the model that you want to rename.</br>

    ![Screenshot showing the Rename model panel.](../media/content-understanding/rename-model-panel.png) </br>

   b. (Optional) Under **Advanced settings**, select whether you want to associate an existing [content type](/sharepoint/governance/content-type-and-workflow-planning#content-type-overview). If you choose **Use an existing content type**, the model will be renamed to match the selected content type.

5. Select **Delete**.

## See also

[Document understanding overview](document-understanding-overview.md)

[Explanation types](explanation-types-overview.md)

[Apply a model](apply-a-model.md) 
