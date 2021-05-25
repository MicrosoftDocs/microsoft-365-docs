---
title: "Close or delete a case"
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
description: Learn what happens when an investigation or legal case supported by an Advanced eDiscovery case is closed or deleted.
ms.custom: seo-marvel-mar2020
---

# Close or delete an Advanced eDiscovery case

When the legal case or investigation supported by an Advanced eDiscovery case is completed, you can close or delete a case. You can also reopen a closed case.

## Close a case

Here's what happens when you close an Advanced eDiscovery case:

- If the case contains any content locations on hold, those holds will be turned off. After the hold is turned off, a 30-day grace period (called a *delay hold*) is applied to content locations that were on hold. This helps prevent content from being immediately deleted and gives admins an opportunity to search for or recover content that will be permanently deleted after the delay hold period expires. For more information, see [Removing content locations from an eDiscovery hold](create-ediscovery-holds.md#removing-content-locations-from-an-ediscovery-hold).

- Closing a case only turns off the holds that are associated with that case. If other holds are place on a content location (such as a Litigation Hold, Core eDiscovery hold, or a hold from a different Advanced eDiscovery case) those holds will still be maintained.

- The case is still listed on the eDiscovery page in the Microsoft 365 compliance center. The details, holds, searches, and members of a closed case are retained.

- You can edit a case after it's closed. For example, you can add or removing members, create searches, export search results, and prepare search results for analysis in Advanced eDiscovery. The primary difference between active and closed cases is that holds are turned off when a case is closed.

To close a case:

1. On the **Advanced eDiscovery** page, select the case that you want to close.

2. On the **Settings** tab, under **Case Information**, click **Select**.

3. At the bottom of the **Case Information** panel, you will see a "..." with more options.  

4. Click **Close case**.

   It might take up to 60 minutes for the closing process to complete.

## Reopen a closed case

When you reopen an Advanced eDiscovery case, any holds that were in place when the case was closed won't be automatically reinstated. After the case is reopened, you'll have to go to the **Holds** tab and turn on the previous holds. To turn on a hold, select it to display the flyout page, and then set the **Status** toggle to **On**.

To reopen a closed case:

1. On the **Advanced eDiscovery** page, select the case that you want to reopen.

2. On the **Settings** tab, under **Case Information**, click **Select**.

3. At the bottom of the **Case Information** panel, you will see a "..." with more options.  

4. Click **Reopen case**.

   It might take up to 60 minutes for the reopening process to complete.

## Delete a case

You can delete both active and closed Advanced eDiscovery cases. When you delete a case, all components associated with the case, such as the list of custodians, communications, searches, review sets, and export job are deleted. The case is removed from the list of cases on the **Advanced eDiscovery** page in the Microsoft 365 compliance center. You can't recover or reopen a deleted case.

> [!NOTE]
> In data spillage scenarios, the only way to remove items in a review set is to delete the Advanced eDiscovery case. Other "search and purge" methods don't remove items from a review set.

Before you can delete a case (whether it's active or closed), you must first delete *all* holds associated with the case. That includes deleting holds with a status of **Off**.

To delete holds associated with a case:

1. Go the **Holds** tab in the Advanced eDiscovery case that you want to delete.

2. Click the hold that you want to delete.

3. On the flyout page, click **Delete hold**.

To delete a case:

1. On the **Advanced eDiscovery** page, select the case that you want to delete.

2. On the **Settings** tab, under **Case Information**, click **Select**.

3. At the bottom of the **Case Information** panel, you will see a "..." with more options.  

5. Click **Delete case**.
