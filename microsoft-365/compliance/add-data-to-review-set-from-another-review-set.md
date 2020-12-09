---
title: "Add data from one review set to another review set"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 
description: "Learn how to select documents from one review set and work with them individually in another set in an Advanced eDiscovery case."
ms.custom: 
- seo-marvel-mar2020
- seo-marvel-apr2020
---

# Add data to a review set from another review set

In some cases, it may be necessary to select documents from one review set and work with them individually in another review set. This is especially useful if you've culled content in a review set and want to run analytics on the subset of data.

Follow the workflow in this article to add content from one review set to another.

## Create a review set

Before you start, you'll need to create a review set to add the data to.  A new review set can be added on the **Review sets** tab of the case. For more information, see [Create a review set](managing-review-sets.md#create-a-review-set).

## Step 1: Identify content to add to another review set

You can add content from one review set to another one by selecting specific documents in the source review set or by selecting all items returned by review set query. If you're adding selected items, select the items, select **Action**, and then select **Add to another review set**.

![Add to another review set in the Action menu](../media/64f2a4d4-eba3-4ab3-a3ba-d519feea3142.png)

## Step 2: Specify options for adding to another review set

In the **Add to another review set options** flyout page, choose the review set you want to add the items to. Choose whether to add **All search results** or **Selected items**.  **Additional information** provides options to include all metadata from the items and whether to include the tags (by selecting the **Labels** check box) from the source review set when the documents are added to the new review set.  

![Options for adding data to another review set](../media/6440ee44-68fd-44d7-b43a-3a477345525c.png)

After you click **Ok**, a new job (named **Adding data to another review set**) is created to add the content to another review set. You can go to the **Jobs** tab and monitor the progress of this job. For more information, see [Manage jobs](managing-jobs-ediscovery20.md).
