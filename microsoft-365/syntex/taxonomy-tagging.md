---
title: Find and manage terms using taxonomy tagging in SharePoint
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: shrganguly
ms.date: 03/13/2025
ms.topic: how-to
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
ms.custom: 
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn how to use taxonomy tagging to search, sort, filter, and manage terms in SharePoint.
---

# Find and manage terms using taxonomy tagging in SharePoint

Before you can use taxonomy tagging, you need to enable it in a document library. There are two methods you can use to do this:

- [Use an existing taxonomy column](#use-an-existing-taxonomy-column)
- [Create a new taxonomy column](#create-a-new-taxonomy-column)

## Use an existing taxonomy column

If a taxonomy column already exists in your library, use these steps to enable taxonomy tagging:

1. On the **Taxonomy** column, select **Column settings** > **Edit**.

2. On the **Edit column** panel, in the **Automatically tag documents with terms** section, toggle the switch to **Yes**.

   ![Screenshot showing the Column settings panel for the taxonomy column.](../media/content-understanding/taxonomy-tagging-edit-column-toggle.png)  
 
3. Once enabled, any new documents uploaded to the library or existing documents edited in the library are processed to tag the configured term set.

## Create a new taxonomy column

If you don't have a taxonomy column in your library, use these steps to create one:

1. From a document library, select **Column settings** > **Add a column**.

2. Select **Managed metadata**, and then select **Next**.

3. On the **Create a column** panel, name the column and select a term set or term, and then select **Save**.

   ![Screenshot showing the library view with a taxonomy column.](../media/content-understanding/taxonomy-tagging-taxonomy-column.png)  

4. Once the taxonomy column is created, any new documents uploaded or existing documents edited in the library are processed to tag the configured term set or term.
