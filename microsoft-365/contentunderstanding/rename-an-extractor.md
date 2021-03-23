---
title: "Rename an extractor in Microsoft SharePoint Syntex"
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
description: "Learn how and why to rename an extractor in Microsoft SharePoint Syntex."
---

# Rename an extractor in Microsoft SharePoint Syntex

At some point, you might need to rename an extractor if you want to refer to an extracted data field by a different name. For example, your organization decides to make changes to their contract documents, and refers to “customers” as “clients” in their documents. If you were extracting a “Customer” field in your model, you can choose to rename it to “Client.”

When you sync your updated model to your SharePoint document library, you will see a new “Client” column in your document library view. Your view will retain the “Customer” column for past activity, but will update the new “Client” column for all new documents that are processed by your model. 

> [!IMPORTANT]
>  Make sure to sync your updated model to the document libraries where you had previously applied it for the new column name to display. 

## Rename an extractor

Follow these steps to rename an entity extractor.

1. From the content center, select **Models** to see your models list.

2. On the **Models** page, in the **Name** column, select the model for which you want to rename an extractor.

3. Under **Entity extractors**, select the name of the extractor you want to rename, and then select **Rename**.</br>

    ![Screenshot of the Entity extractors section showing a selected extractor with the Rename option highlighted.](../media/content-understanding/entity-extractor-rename.png) </br>

4. On the **Rename entity extractor** panel:

   a. Under **New name**, enter the new name of the extractor.</br>

    ![Screenshot showing the Entity extractor panel.](../media/content-understanding/rename-entity-extractor-panel.png) </br>

   b. (Optional) Under **Advanced settings**, select whether you want to associate an existing site column.

5. Select **Rename**.

## See Also
[Create an extractor](create-an-extractor.md)

[Create a classifier](create-a-classifier.md)

[Rename a model](rename-a-model.md)

[Explanation types](explanation-types-overview.md)

[Leverage term store taxonomy when creating an extractor](leverage-term-store-taxonomy.md)

[Document Understanding overview](document-understanding-overview.md)

[Apply a model](apply-a-model.md) 
