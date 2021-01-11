---
title: "Enable coauthoring for documents encrypted by sensitivity labels in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.service: O365-seccomp
ms.date: 
localization_priority: Priority
ms.collection: 
- M365-security-compliance
ms.topic: article
description: "Turn on a setting that enables coauthoring in desktop apps for documents in SharePoint Online that are labeled with encryption."
---

# Enable co-authoring for files encrypted with sensitivity labels

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

> [!NOTE]
> This feature is in preview and subject to change. 
>
> Because enabling this feature makes changes to labeling metadata and not all apps on all platforms currently support this change, we recommend that you try it in a test tenant rather than a production tenant.

Enable the setting to support coauthoring for Office desktop apps stored in SharePoint so that when documents are labeled and encrypted by your [sensitivity labels](sensitivity-labels.md), multiple users can edit them at the same time. 

Without this setting enabled for your tenant, users must check out an encrypted document stored in SharePoint or OneDrive when they use Office desktop apps, which means that they can't collaborate in real time. Or, they must use Office on the web when [sensitivity labels are enabled for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

In addition, enabling this functionality results in the [AutoSave](https://support.office.com/article/what-is-autosave-6d6bd723-ebfd-4e40-b5f6-ae6e8088f7a5) functionality being supported for encrypted files.

## Metadata changes for sensitivity labels

Before you enable the setting to support coauthoring for Office desktop apps, it's important to understand that this action automatically makes changes to how and where labeling metadata is stored in Office files.

The labeling metadata includes information that identifies your tenant and applied sensitivity label. The change made is the format and location of where this labeling metadata is stored in unencrypted files for Word, Excel, and PowerPoint. There are no labeling metadata changes for encrypted files or emails.

This is a tenant-level change that you can't reverse:

- After you enable this setting: Labeling metadata for unencrypted Office files is copied from custom document properties to an Open Packaging Conventions (OPC) package.

You can read more about this metadata change from the following resources:

- Blog post: [Upcoming Changes to Microsoft Information Protection Metadata Storage](https://techcommunity.microsoft.com/t5/microsoft-security-and/upcoming-changes-to-microsoft-information-protection-metadata/ba-p/1904418)

- [2.6.3 LabelInfo versus Custom Document Properties](https://docs.microsoft.com/openspecs/office_file_formats/ms-offcrypto/13939de6-c833-44ab-b213-e0088bf02341)

The Microsoft Information Protection (MIP) SDK version 1.7 reads and writes labeling metadata to the new location, and the latest Microsoft 365 Apps and Azure Information Protection unified labeling client will use this version of the SDK.

Do not enable this setting if you have any apps, services, or scripts in your organization that reads or writes labeling metadata to the old location. If you do, some example consequences:

- A document that is labeled appears to users to be unlabeled

- A document displays an out-of-date label to users

- Inaccurate reporting for label usage

- An Exchange Online mail flow rule that [identifies labels as custom properties in Office attachments](https://docs.microsoft.com/azure/information-protection/configure-exo-rules#example-2-rule-that-applies-the-encrypt-only-option-to-emails-when-they-have-attachments-that-are-labeled-confidential--partners-and-these-emails-are-sent-outside-the-organization) fails to encrypt the email and attachment, or incorrectly encrypts them

## Prerequisites

Make sure you understand the following prerequisites before you turn on this feature.

- You must be a global admin to turn on this feature.

- Sensitivity labels must be [enabled for Office files in Share and SharePoint](sensitivity-labels-sharepoint-onedrive-files.md). If this feature isn't already enabled, it will be automatically enabled when you select the setting to turn on co-authoring for files with sensitivity labels.

- All apps, services, and operation tools in your tenant must support the new [labeling metadata](#metadata-changes-for-sensitivity-labels):
- Azure Information Protection unified labeling client: Minimum version of x
- Microsoft 365 Apps for enterprise:
    - Windows: Minimum version of x
    - MacOS: Minimum version of x
    - iOS: Not yet supported
    - Android: Not yet supported
- Apps and services that use the Microsoft Information Protection SDK: Minimum version of 1.7 



## Limitations

## How to enable co-authoring for files with sensitivity labels

> [!IMPORTANT]
> Turning on this setting is a one-way action. We recommend that while the feature is in preview, test it only in a non-production environment and only after you have read and understood the metadata changes, prerequisites, and limitations.

1. Sign in the [Microsoft 365 compliance center](https://compliance.microsoft.com ) as a global admin for your test tenant.

2. Select **Settings** > **Co-authoring for files with sensitivity labels**.

3. After you have read the summary description, prerequisites, what to expect, and the warning that you can't turn it off,  select **Turn on co-authoring for files with sensitivity labels**, and then **Apply**:
    
    ![Option to turn on co-authoring for files with sensitivity labels](../media/co-authoring-tenant-option-for-sensitivity-labels.png)


