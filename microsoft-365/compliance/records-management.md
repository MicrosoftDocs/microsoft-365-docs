---
title: "Records management for documents and emails in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date:
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- purview-compliance
- tier1
- highpri
search.appverid:
- MOE150
- MET150
ms.custom:
- admindeeplinkCOMPLIANCE
- seo-marvel-apr2020
- seo-marvel-jun2020
description: Learn how Microsoft Purview Records Management supports high-value items for business, legal, or regulatory record-keeping requirements.
---

# Learn about records management

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)*

A records management system, also known as records and information management, is a solution for organizations to manage regulatory, legal, and business-critical records. Records management for Microsoft Purview helps you achieve your organization's legal obligations, provides the ability to demonstrate compliance with regulations, and increases efficiency with regular disposition of items that are no longer required to be retained, no longer of value, or no longer required for business purposes.

Use the following capabilities to support your records management solution for Microsoft 365 data:

- **Label content as a record**. Create and configure retention labels to mark content as a [record](#records) that can then be applied by users or automatically applied by identifying sensitive information, keywords, or content types.

- **Migrate and manage your retention requirements with file plan**. By using a [file plan](file-plan-manager.md), you can bring in an existing retention plan to Microsoft 365, or build a new one for enhanced management capabilities.

- **Configure retention and deletion settings with retention labels**. Configure [retention labels](retention.md#retention-labels) with the retention periods and actions based on various factors that include the date last modified or created.

- **Start different retention periods when an event occurs** with [event-based retention](event-driven-retention.md).

- **Review and validate disposition** with [disposition reviews](disposition.md#disposition-reviews) and proof of [records deletion](disposition.md#disposition-of-records).

- **Export information about all disposed items** with the [export option](disposition.md#filter-and-export-the-views).

- **Set specific permissions** for records manager functions in your organization to [have the right access](../security/office-365-security/permissions-in-the-security-and-compliance-center.md).

Using these capabilities, you can incorporate your organization's retention schedules and requirements into a records management solution that manages retention, records declaration, and disposition, to support the full lifecycle of your content.

In addition to the online documentation, you might find it useful to download a [deck with FAQs](https://aka.ms/MIPC/Blog-RecordsManagementWebinar) from a records management webinar. The recording of the actual webinar is no longer available.

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

> [!NOTE]
> For completeness, the table includes columns for a locked and unlocked record, which is applicable to SharePoint and OneDrive, but not Exchange. The ability to lock and unlock a record uses [record versioning](record-versioning.md) that isn't supported for Exchange items. So for all Exchange items that are marked as a record, the behavior maps to the **Record - locked** column, and the **Record - unlocked column** is not relevant.


|Action| Retention label |Record - locked| Record - unlocked| Regulatory record |
|:-----|:-----|:-----|:-----|:-----|:-----|
|Edit contents|Allowed | **Blocked** | Allowed | **Blocked**|
|Edit properties, including rename|Allowed |Allowed <sup>1</sup> | Allowed | **Blocked**|
|Delete|Allowed <sup>2</sup> |**Blocked** |**Blocked**| **Blocked**|
|Copy|Allowed |Allowed | Allowed| Allowed|
|Move within container <sup>3</sup>|Allowed |Allowed | Allowed| Allowed|
|Move across containers <sup>3</sup>|Allowed |Allowed if never unlocked | **Blocked** | **Blocked**|
|Open/Read|Allowed |Allowed | Allowed| Allowed|
|Change label|Allowed |Allowed - container admin only | **Blocked**| **Blocked**
|Remove label|Allowed |Allowed - container admin only | **Blocked**| **Blocked**

Footnotes:

<sup>1</sup>
Editing properties for a locked record is allowed by default but can be blocked by a tenant setting in the [Microsoft Purview compliance portal](https://compliance.microsoft.com/) > **Records management** > **Records management settings** > **Retention labels** > **Allow editing of record properties**.

<sup>2</sup>
Deleting labeled items in SharePoint and OneDrive can be blocked as a tenant setting in the [Microsoft Purview compliance portal](https://compliance.microsoft.com/) > **Records management** > **Records management settings** > **Retention labels** > **Deletion of items**.

When you apply a retention label to a list item that has a document attachment, that document doesn't inherit the retention settings and can be deleted from the list item. In comparison, if that list item was declared a record with a retention label, the document attachment would inherit the retention settings and couldn't be deleted.

<sup>3</sup>
Containers include SharePoint document libraries, OneDrive accounts, and Exchange mailboxes.

> [!IMPORTANT]
> The most important difference for a regulatory record is that after it is applied to content, nobody, not even a global administrator, can remove the label.
>
> Retention labels configured for regulatory records also have the following admin restrictions:
>
> - The retention period can't be made shorter after the label is saved, only extended.
> - These labels aren't supported by auto-labeling policies, and must be applied by using [retention label policies](create-apply-retention-labels.md).
>
> In addition, a regulatory label can't be applied to a document that's checked out in SharePoint.
>
> Because of the restrictions and irreversible actions, make sure you really do need to use regulatory records before you select this option for your retention labels. To help prevent accidental configuration, this option is not available by default but must first be enabled by using PowerShell. Instructions are included in [Declare records by using retention labels](declare-records.md).

## Validating migrated records

If you're migrating records to SharePoint or OneDrive, you might need to validate these records haven't been altered and retain their immutability status. For example, you're using a migration solution and need to meet the chain of custody requirements for your records. Typical file properties and methods often used for this type of validation, such as file size or file hash, might not be sufficient because SharePoint automatically updates the metadata for a file when it's uploaded.

Instead, to validate your migrated records, you can use the value of the `vti_writevalidationtoken` property, which is a base64-encoded XOR hash of the file before it is modified by SharePoint. Use the following steps:

1. Generate the XOR hash of the original file by using the QuickXorHash algorithm. For more information, see the [QuickXorHash Algorithm code snippet](/onedrive/developer/code-snippets/quickxorhash).

2. Base64-encode the XOR hash. For more information, see the [Base64Encode method documentation](/windows/win32/seccrypto/utilities-base64encode).

3. After the file is migrated, retrieve the value of the `vti_writevalidationtoken` property from the uploaded file.

4. Compare the value generated in step 2 with the value retrieved in step 3. These two values should match. If they do, you've validated that the record hasn't changed.


## Configuration guidance

See [Get started with records management](get-started-with-records-management.md). This article has information about subscriptions, permissions, and links to end-to-end configuration guidance for records management scenarios.
