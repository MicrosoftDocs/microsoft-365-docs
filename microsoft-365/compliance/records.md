---
title: "Learn about records"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Learn about records to help you implement a records management solution in Microsoft 365."
---

# Learn about records

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Managing records in Microsoft 365 helps your organization comply with corporate policies and legal or regulatory obligations, while also reducing risk and legal liability.

When content is marked as a record:

- Restrictions are placed on the items in terms of what [actions are allowed or blocked](#compare-restrictions-for-what-actions-are-allowed-or-blocked).

- Additional activities about the item are logged.

- You have proof of disposition when the items are deleted at the end of their retention period.

You use [retention labels](retention.md#retention-labels) to mark content as a record. You can either publish those labels so that users and administrators can manually apply them to content, or auto-apply those labels to content that you want to mark as a record.

By using retention labels to mark content as records, you can implement a single and consistent strategy for managing records across your Microsoft 365 environment.

## Compare restrictions for what actions are allowed or blocked

Use the following table to identify what restrictions are placed on content as a result of applying a standard retention label, and retention labels that mark content as a record. 

A standard retention label has the configuration to retain data without marking content as a record.

>[!NOTE] 
> For completeness, the table includes columns for a locked and unlocked record, which is applicable to SharePoint and OneDrive, but not Exchange. The ability to lock and unlock a record uses [record versioning](record-versioning.md) that isn't supported for Exchange items. So for all Exchange items that are marked as a record, the behavior maps to the **Record - locked** column, and the **Record - unlocked column** is not relevant.


|Action| Retention label |Record - locked| Record - unlocked|
|:-----|:-----|:-----|:-----|:-----|
|Edit contents|Allowed | **Blocked** | Allowed|
|Edit properties, including rename|Allowed |Allowed | Allowed|
|Delete|Allowed <sup>1</sup> |**Blocked** | **Blocked**|
|Copy|Allowed |Allowed | Allowed|
|Move within container <sup>2</sup>|Allowed |Allowed | Allowed|
|Move across containers <sup>2</sup>|Allowed |Allowed if never unlocked | Allowed|
|Open/Read|Allowed |Allowed | Allowed|
|Change label|Allowed |Allowed - container admin only | Allowed - container admin only|
|Remove label|Allowed |Allowed - container admin only | Allowed - container admin only|

Footnotes:

<sup>1</sup>
Supported by OneDrive and Exchange by retaining a copy in a secured location, but blocked by SharePoint.

Message a user sees if they try to delete a labeled document in SharePoint:

![Message that item wasn't deleted from SharePoint](../media/d0020726-1593-4a96-b07c-89b275e75c49.png)


<sup>2</sup>
Containers include SharePoint document libraries and Exchange mailboxes.

## Next steps

If you don't yet have retention labels to use for records management, see [Get started with retention policies and retention labels](get-started-with-retention.md).

To declare records, see [Declare records by using retention labels](declare-records.md).
