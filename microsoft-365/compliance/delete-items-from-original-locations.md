---
title: "Delete items from their original location"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
ms.audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: "This article describes how to use the new Data Investigations (preview) tool in the Security & Compliance Center to delete items from their original locations."
ms.custom: seo-marvel-apr2020
---

# Delete items from their original location (Preview)

The feature to delete items from their original location is in Preview.

Using data investigations, you can delete items from their original locations. This means you can delete items from  Exchange mailboxes, SharePoint sites, and OneDrive accounts across your organization. Because you collected items as evidence, you have copies of the items retained in the evidence set for further investigation or keep as reference.

## Before you delete items

- To delete items, you have to be assigned the **Search And Purge** role in the Security & Compliance Center. This role is assigned by default to the built-in Data Investigator role group.

- The procedure in this topic assumes that you have run a search associated with an investigation and added the search results to an evidence set. After the search results are in evidence, you can select one or more items to delete. For more information, see [Search for data in an investigation](search-for-data.md).

- It's important to keep in mind that only the items in the original content locations (such as Exchange mailboxes, SharePoint sites, and OneDrive accounts) are deleted. These items aren't deleted from the evidence set. That's because the items in an evidence set are copies of the original. These items are copied when you added the results of a search to an evidence set.

## Delete items

Perform the following steps to delete items from their original location:

1. In the **Data Investigations** tool, open the data investigation that contains the items you want to delete, and then click the **Evidence** tab.

2. Select the items that you want to delete. You can select all items in the evidence set or select just a subset of items.

   > [!NOTE]
   > If you select the attachments of an email or a file attached to a document in SharePoint and OneDrive, the parent item will be also be selected and deleted when the item is deleted from its original location. Similarly, if you select an item that has attachments, the parent item item and all attachments are deleted.
 
2. Click **Action** and then click **Delete items from original locations**.

   ![Click Action and then click Delete items from original locations](../media/DataInvestigationsDeleteItems1.png)

3. On the flyout page, verify the number of items and related child documents that will be deleted, and then click **Delete**.

   ![The flyout page displays the number of items and any attached documents that are selected for deletion](../media/DataInvestigationsDeleteItems2.png)

   > [!NOTE]
   > In the previous screenshot, the number of items indicates the number of items that are selected for deletion. The number of documents indicates to total number of items including any files that are attached to a parent item. For example, if you select one email message and that message has an attached Word document, the number of items and documents displayed under **Selected documents only** would be **1 items (2 documents)**.

You can track the progress of the **Delete items from original locations** job on the **Jobs** tab. Click the job to display the flyout page.

![Flyout page for Delete items from original locations job](../media/DataInvestigationsDeleteItems3.png)

When the items in the job are deleted, the job status is set to **Successful**. The time and date of the completed job is also displayed.

![Completed delete items job](../media/DataInvestigationsDeleteItems4.png)

> [!NOTE]
> You may receive a status of **Partially Successful** for the **Delete items from original locations** job. There are a number of situations that result in this job status. For more information, see the [Partially successful deletions](#partially-successful-deletions) section in this article.

## What happens when you delete items

At this time, when you delete items from their original content location, the items are *soft-deleted*. This means that items are moved to special location and retained until the deleted item retention period expires and an item is marked for permanent deletion from Microsoft 365. Soft-deleting items means that users can still recover these items until the retention period expires. Here are descriptions about what happens when items are soft-deleted from Exchange mailboxes and SharePoint and OneDrive for Business sites, and what users can do after items are deleted from their original locations.

- **Mailboxes:** When a mailbox item is soft-deleted, it's moved to the Recoverable Items folder in the mailbox. This behavior is similar to when a user deletes an item from the Deleted Items folder or permanently deletes an item by pressing Shift + Delete. At this point, the user can recover the item up until the deleted item retention period expires. In Microsoft 365, the deleted item retention period is 14 days by default, but an admin can increase the retention period to 30 days. After the retention period expires, the item is moved to a hidden folder (called the *Purges* folder). The item is permanently removed from Microsoft 365 the next time the mailbox is processed. Mailboxes are processed once every seven days).

- **SharePoint and OneDrive sites:** When a file or document on a site is soft-deleted, it's moved to the site's Recycle Bin (also called the *first-stage* Recycle Bin). The item remains in the Recycle Bin for 93 days (the deleted item retention period for sites in Microsoft 365). During the 93-day period, deleted items can still be recovered by a site collection administrator in SharePoint or by the user or admin in OneDrive. Items can also be deleted from the first-stage recycle bin. When that happens, the items are moved to the Recycle Bin for the site collection, which is called the *second-stage* Recycle Bin. The retention period is 93 days for both the first-stage and second-stage recycle bins. That means the second-stage Recycle Bin retention starts when the item is initially deleted. That means the total maximum retention time is 93 days for both recycle bins. If an item is deleted from the second-stage Recycle Bin (either manually by an admin or automatically when the retention period expires), it's no longer accessible by an admin.

## What happens if a content location is on hold

In Microsoft 365, mailboxes and sites can be placed on hold or assigned to a retention policy. This means that nothing is permanently removed until the retention period for an item expires or until the hold is removed. Even if you delete an item from its original location, the item may not be permanently removed from Office 365. For example, if a mailbox is on hold, soft-deleted items are eventually moved to Purges or DiscoveryHold subfolders in the Recoverable Items folder and retained until the hold duration or retention period expires. For sites, a copy of the item that's moved to the Recycle Bin is copied to the Preservation Hold library that's created when a hold or retention policy is placed on a site.

## Partially successful deletions

After the **Delete items from original locations** job has completed running, you may received a job status of **Partially Successful**. In general, this status indicates that the job ran successfully, but not all items were soft-deleted. Here's a list of reasons that result in partially successful deletions:

- A mailbox item was already located in the Recoverable Items folder in the source mailbox.

- A mailbox item was purged from the Recoverable Items folder in the source mailbox.

- A document was already located in the first-stage Recycle Bin in a SharePoint or OneDrive site.

- A document was moved to a different SharePoint site after it was added to the evidence set. In this case, the document isn't moved to the Recycle Bin in the site it was moved to.

- A document was permanently deleted in SharePoint or OneDrive (moved to the second-stage Recycle Bin) after it was added to the evidence set.
