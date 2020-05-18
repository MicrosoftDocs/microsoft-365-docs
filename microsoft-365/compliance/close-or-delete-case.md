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
description: Learn what happens when an investigation or legal case supported by an eDiscovery case is closed or deleted.
ms.custom: seo-marvel-mar2020
---

# Close or delete an Advanced eDiscovery case

When the legal case or investigation supported by an Advanced eDiscovery case is completed, you can close or delete a case. You can also re-open a closed case.

## Close a case

Here's what happens when you close an Advanced eDiscovery case:

- If the case contains any content locations on hold, those holds will be turned off. This might result in content being permanently deleted or purged, either by the user or by an automated process, such as a deletion policy.

- Closing a case only turns off the holds that are associated with that case. If other holds are place on a content location (such as a Litigation Hold. a Preservation Policy, or a hold from a different eDiscovery case) those holds will still be maintained.

- The case is still listed on the eDiscovery page in the Security & Compliance Center. The details, holds, searches, and members of a closed case are retained.

- You can edit a case after it's closed. For example, you can add or removing members, create searches, export search results, and prepare search results for analysis in Advanced eDiscovery. The primary difference between active and closed cases is that holds are turned off when a case is closed.

To close a case:

1. On the **Advanced eDiscovery** page, select the case that you want to close.

2. On the **Settings** tab, under **Case Information**, click **Select**.

3. Click **Close case**.

### Reopen a closed case

When you reopen an Advanced eDiscovery case, any holds that were in place when the case was closed won't be automatically reinstated. After the case is reopened, you'll have to go to the **Holds** tab and turn on the previous holds. To turn on a hold, select it to display the flyout page, and then set the **Status** toggle to **On**.

To re-open a closed case:

1. On the **Advanced eDiscovery** page, select the case that you want to delete.

2. On the **Settings** tab, under **Case Information**, click **Select**.

3. Click **Reopen case**.

   It might take up to 60 minutes for the reopening process to complete.

## Delete a case

You can delete both active and closed Advanced eDiscovery cases. When you delete a case, all searches and exports in the case are deleted, and the case is removed from the list of cases on the **Core eDiscovery** page in the Microsoft 365 compliance center. You can't reopen a deleted case.

Before you can delete a case (whether it's active or closed), you must first delete *all* eDiscovery holds associated with the case. That includes deleting holds with a status of **Off**. 

To delete an eDiscovery hold:

1. Go the **Holds** tab in the case that you want to delete.

2. Click the hold that you want to delete.

3. On the flyout page, click **Delete hold**.

To delete a case:

1. In the Microsoft 365 compliance center, click **eDiscovery** > **Core** to display the list of Core eDiscovery cases in your organization.

2. Click the name of the case that you want to delete.

3. Under **Manage case status** on the flyout page, click **Delete case**.

If the case you're trying to delete still contains eDiscovery holds, you'll receive an error message. You'll have to delete all holds associated with the case and then try again to delete the case.


To delete a case:

1. On the **Advanced eDiscovery** page, select the case that you want to delete.

2. On the **Settings** tab, under **Case Information**, click **Select**.

3. Click **Delete case**.
