---
title: "Records Management in Microsoft 365"
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
- m365solution-mig
- m365initiative-compliance
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
- seo-marvel-jun2020
description: With records management in Microsoft 365, you can apply your retention schedules into a file plan that manages retention, records declaration, and disposition.
---

# Learn about records management in Microsoft 365

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Organizations of all types require a records-management solution to manage regulatory, legal, and business-critical records across their corporate data. Records management in Microsoft 365 helps an organization manage their legal obligations, provides the ability to demonstrate compliance with regulations, and increases efficiency with regular disposition of items that are no longer required to be retained, no longer of value, or no longer required for business purposes.

Use the following capabilities to support your records management solution in Microsoft 365:

- **Label content as a record**. Create and configure retention labels to mark content as a [record](#records) that can then be applied by users or automatically applied by identifying sensitive information, keywords, or content types.

- **Migrate and manage your retention requirements with file plan**. By using a [file plan](file-plan-manager.md), you can bring in an existing retention plan to Microsoft 365, or build a new one for enhanced management capabilities.

- **Configure retention and deletion settings with retention labels**. Configure [retention labels](retention.md#retention-labels) with the retention periods and actions based on various factors that include the date last modified or created.

- **Start different retention periods when an event occurs** with [event-based retention](event-driven-retention.md).

- **Review and validate disposition** with [disposition reviews](disposition.md#disposition-reviews) and proof of [records deletion](disposition.md#disposition-of-records).

- **Export information about all disposed items** with the [export option](disposition.md#filter-and-export-the-views).

- **Set specific permissions** for records manager functions in your organization to [have the right access](../security/office-365-security/permissions-in-the-security-and-compliance-center.md).

Using these capabilities, you can incorporate your organization's retention schedules and requirements into a records management solution that manages retention, records declaration, and disposition, to support the full lifecycle of your content.

In addition to the online documentation, you might find it useful to listen to the [webinar recording](https://aka.ms/MIPC/Video-RecordsManagementWebinar) for records management, and download the accompanying [deck with FAQs](https://aka.ms/MIPC/Blog-RecordsManagementWebinar).

## Records

When content is declared a record:

- Restrictions are placed on the items in terms of what [actions are allowed or blocked](#compare-restrictions-for-what-actions-are-allowed-or-blocked).

- Additional activities about the item are logged.

- You have proof of disposition when the items are deleted at the end of their retention period.

You use [retention labels](retention.md#retention-labels) to mark content as a **record**, or a **regulatory record**. The difference between these two are explained in the next section. You can either publish those labels so that users and administrators can manually apply them to content, or auto-apply those labels to content that you want to mark as a record or a regulatory record.

By using retention labels to declare records, you can implement a single and consistent strategy for managing records across your Microsoft 365 environment.

### Compare restrictions for what actions are allowed or blocked

Use the following table to identify what restrictions are placed on content as a result of applying a standard retention label, and retention labels that mark content as a record or regulatory record. 

A standard retention label has retention settings and actions but doesn't mark content as a record or a regulatory record.

>[!NOTE] 
> For completeness, the table includes columns for a locked and unlocked record, which is applicable to SharePoint and OneDrive, but not Exchange. The ability to lock and unlock a record uses [record versioning](record-versioning.md) that isn't supported for Exchange items. So for all Exchange items that are marked as a record, the behavior maps to the **Record - locked** column, and the **Record - unlocked column** is not relevant.


|Action| Retention label |Record - locked| Record - unlocked| Regulatory record |
|:-----|:-----|:-----|:-----|:-----|:-----|
|Edit contents|Allowed | **Blocked** | Allowed | **Blocked**|
|Edit properties, including rename|Allowed |Allowed | Allowed| **Blocked**|
|Delete|Allowed <sup>1</sup> |**Blocked** |**Blocked**| **Blocked**|
|Copy|Allowed |Allowed | Allowed| Allowed|
|Move within container <sup>2</sup>|Allowed |Allowed | Allowed| Allowed|
|Move across containers <sup>2</sup>|Allowed |Allowed if never unlocked | **Blocked** | **Blocked**|
|Open/Read|Allowed |Allowed | Allowed| Allowed|
|Change label|Allowed |Allowed - container admin only | Allowed - container admin only| **Blocked**
|Remove label|Allowed |Allowed - container admin only | Allowed - container admin only| **Blocked**

Footnotes:

<sup>1</sup>
Supported by OneDrive and Exchange by retaining a copy in a secured location, but blocked by SharePoint.

When you apply a retention label to a list item that has a document attachment, that document doesn't inherit the retention settings and can be deleted from the list item. In comparison, if that list item was declared a record with a retention label, the document attachment would inherit the retention settings and couldn't be deleted. 

<sup>2</sup>
Containers include SharePoint document libraries, OneDrive accounts, and Exchange mailboxes.

>[!IMPORTANT] 
> The most important difference for a regulatory record is that after it is applied to content, nobody, not even a global administrator, can remove the label. 
>
> Retention labels configured for regulatory records also have the following admin restrictions:
> - The retention period can't be made shorter after the label is saved, only extended.
> - These labels aren't supported by auto-labeling policies, and must be applied by using [retention label policies](create-apply-retention-labels.md). 
>
> In addition, a regulatory label can't be applied to a document that's checked out in SharePoint.
> 
> Because of the restrictions and irreversible actions, make sure you really do need to use regulatory records before you select this option for your retention labels. To help prevent accidental configuration, this option is not available by default but must first be enabled by using PowerShell. Instructions are included in [Declare records by using retention labels](declare-records.md).

## Configuration guidance

See [Get started with records management](get-started-with-records-management.md). This article has information about subscriptions, permissions, and links to end-to-end configuration guidance for records management scenarios.