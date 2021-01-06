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

# Enable coauthoring for documents encrypted by sensitivity labels

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

> [!NOTE]
> This feature is in preview and subject to change. 

Enable the setting to support coauthoring for Office desktop apps stored in SharePoint so that when documents are labeled and encrypted by your [sensitivity labels](sensitivity-labels.md), multiple users can edit them at the same time. 

Without this setting enabled for your tenant, users must check out an encrypted document stored in SharePoint or OneDrive when they use Office desktop apps, which means that they can't collaborate in real time. Or, they must use Office on the web when [sensitivity labels are enabled for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive.md).

In addition, enabling this functionality results in the [AutoSave](https://support.office.com/article/what-is-autosave-6d6bd723-ebfd-4e40-b5f6-ae6e8088f7a5) functionality being supported for these encrypted files.

## Metadata changes for sensitivity labels

Before you enable the setting to support coauthoring for Office desktop apps, it's important to understand that this action automatically makes changes to labeling metadata in Office files that are stored in your organization's SharePoint and OneDrive locations.

The labeling metadata includes information that identifies your tenant and applied sensitivity label. The change made is the location of where this labeling metadata is stored in unencrypted files for Word, Excel, and PowerPoint. There are no labeling metadata changes for encrypted files or emails.

This is a tenant-level change that you can't reverse:

- After you enable this setting: Labeling metadata for unencrypted Office files is moved from custom document properties to an Open Packaging Conventions (OPC) package.

You can read more about this metadata change from the following resources:

- Blog post: [Upcoming Changes to Microsoft Information Protection Metadata Storage](https://techcommunity.microsoft.com/t5/microsoft-security-and/upcoming-changes-to-microsoft-information-protection-metadata/ba-p/1904418)

- [2.6.3 LabelInfo versus Custom Document Properties](https://docs.microsoft.com/en-us/openspecs/office_file_formats/ms-offcrypto/13939de6-c833-44ab-b213-e0088bf02341)

The Microsoft Information Protection (MIP) SDK version 1.7 reads and writes labeling metadata to the new location, and the latest Microsoft 365 Apps and Azure Information Protection unified labeling client will use this version of the SDK.

Do not enable this setting if you have any apps, services, or scripts in your organization that reads or writes labeling metadata to the old location. If you do, some example consequences:

- A document that is labeled appears to be unlabeled

- A document displays an out-of-date label 


