---
title: "Enable co-authoring for documents encrypted by sensitivity labels in Microsoft 365"
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
description: "Turn on a setting that enables co-authoring and AutoSave in desktop apps for labeled and encrypted documents in SharePoint and OneDrive."
---

# Enable co-authoring for files encrypted with sensitivity labels

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

> [!NOTE]
> This feature is in preview and subject to change. 
>
> We recommend that you try this feature in a test tenant rather than a production tenant because:
> - Enabling this feature makes changes to labeling metadata and not all apps on all platforms currently support this change
> - You cannot disable this feature yourself after it is enabled

Enable the setting to support [co-authoring](https://support.office.com/article/ee1509b4-1f6e-401e-b04a-782d26f564a4) for Office desktop apps so that when documents are labeled and encrypted by [sensitivity labels](sensitivity-labels.md), multiple users can edit these documents at the same time.

Without this setting enabled for your tenant, users must check out an encrypted document stored in SharePoint or OneDrive when they use Office desktop apps. As a result, they can't collaborate in real time. Or, they must use Office on the web when [sensitivity labels are enabled for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

In addition, enabling this functionality results in the [AutoSave](https://support.office.com/article/what-is-autosave-6d6bd723-ebfd-4e40-b5f6-ae6e8088f7a5) functionality being supported for these labeled and encrypted files.

## Metadata changes for sensitivity labels

> [!IMPORTANT]
> After you enable the setting for co-authoring, labeling information for unencrypted files is no longer saved in custom properties.

Before you enable the setting to support co-authoring for Office desktop apps, it's important to understand that this action makes changes to the labeling metadata that is saved to and read from Office files.

The labeling metadata includes information that identifies your tenant and applied sensitivity label. The change that this setting makes is the format and location for unencrypted files for Word, Excel, and PowerPoint. There are no labeling metadata changes for encrypted files or emails.

This change affects both files that are newly labeled and files that are already labeled. When you use apps and services that support the co-authoring setting:
- For files that are newly labeled, only the new format and location is used for the labeling metadata.
- For files that are already labeled, the next time the file is opened and saved, if the file has metadata in the old format and location, it is copied to the new format and location.

You can read more about this metadata change from the following resources:

- Blog post: [Upcoming Changes to Microsoft Information Protection Metadata Storage](https://techcommunity.microsoft.com/t5/microsoft-security-and/upcoming-changes-to-microsoft-information-protection-metadata/ba-p/1904418)

- [2.6.3 LabelInfo versus Custom Document Properties](https://docs.microsoft.com/openspecs/office_file_formats/ms-offcrypto/13939de6-c833-44ab-b213-e0088bf02341)

Do not enable this setting if you have any apps, services, scripts, or tools in your organization that reads or writes labeling metadata to the old location. If you do, some example consequences:

- A document that is labeled appears to users to be unlabeled

- A document displays an out-of-date label to users

- Inaccurate reporting for label usage

- Co-authoring and AutoSave won't work for a labeled and encrypted document if another user has it open in an Office desktop app that doesn't support the new labeling metadata

- An Exchange Online mail flow rule that [identifies labels as custom properties in Office attachments](https://docs.microsoft.com/azure/information-protection/configure-exo-rules#example-2-rule-that-applies-the-encrypt-only-option-to-emails-when-they-have-attachments-that-are-labeled-confidential--partners-and-these-emails-are-sent-outside-the-organization) fails to encrypt the email and attachment, or incorrectly encrypts them

Check the following section for a list of apps and services that support this setting and the changes to the labeling metadata.

## Prerequisites

Make sure you understand the following prerequisites before you turn on this feature.

- You must be a global admin to turn on this feature.

- Sensitivity labels must be [enabled for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md) for the tenant. If this feature isn't already enabled, it will be automatically enabled when you select the setting to turn on co-authoring for files with sensitivity labels.

- All apps, services, and operational tools in your tenant must support the new [labeling metadata](#metadata-changes-for-sensitivity-labels):
- Azure Information Protection unified labeling client: Minimum version of 2.10.xx with the documented minimum version of Microsoft 365 Apps for enterprise for Windows
- Microsoft 365 Apps for enterprise:
    - Windows: Preview: [Current Channel (Preview)](https://office.com/insider) and Preview: [Beta Channel](https://office.com/insider)
    - macOS: Preview: [Current Channel (Preview)](https://office.com/insider) and Preview: [Beta Channel](https://office.com/insider)
    - iOS: Not yet supported
    - Android: Not yet supported
- OneDrive sync app for Windows or macOS: Minimum version of 19.002.0121.0008
- Endpoint data loss prevention (Endpoint DLP): xx
- Apps and services that use the Microsoft Information Protection SDK: Minimum version of 1.7 

Microsoft 365 services automatically support the new labeling metadata when you turn on this feature. For example:

- [Auto-labeling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-policies-for-sharepoint-onedrive-and-exchange)
- [DLP policies that use sensitivity labels as conditions](dlp-sensitivity-label-as-condition.md)
- [Microsoft Cloud App Security configured to apply sensitivity labels](https://docs.microsoft.com/cloud-app-security/best-practices#discover-classify-label-and-protect-regulated-and-sensitive-data-stored-in-the-cloud)
- [Content explorer](data-classification-content-explorer.md) and [activity explorer](data-classification-activity-explorer.md)

## Limitations

Before you enable the tenant setting for co-authoring for files encrypted with sensitivity labels, make sure you understand the following limitations of this feature.

- Because of the [labeling metadata changes](#metadata-changes-for-sensitivity-labels), all apps, services, and operational tools in your tenant must support the new labeling metadata for a consistent and reliable labeling experience.

- Co-authoring and AutoSave aren't supported and don't work for labeled and encrypted Office documents that use any of the following [configurations for encryption](encryption-sensitivity-labels.md#configure-encryption-settings):
    - **Let users assign permissions when they apply the label** and the checkbox **In Word, PowerPoint, and Excel, prompt users to specify permissions** is selected. This configuration is sometimes referred to as "user-defined permissions".
    - **User access to content expires** is set to a value other than **Never**.
    - **Double Key Encryption** is selected.
    
    These features remain unsupported and don't work for Office documents that are encrypted without using sensitivity labels. For example, by directly applying rights management templates or by using Information Rights Management (IRM) options from Office apps.

- Users won't be able to apply any labels in Office for the web for Word, Excel, and PowerPoint files that are bigger than 350 MB. For these files, use the Office desktop apps.

- If you use the Azure Information Protection unified labeling client: Check the documentation for this labeling client for additional requirements or limitations. 

## Known issues for this preview

This preview version of co-authoring for files encrypted with sensitivity labels has the following known issues that are expected to be addressed by the time the feature becomes generally available:


## How to enable co-authoring for files with sensitivity labels

> [!IMPORTANT]
> Turning on this setting is a one-way action. We recommend that while the feature is in preview, test it only in a non-production environment and only after you have read and understood the metadata changes, prerequisites, limitations, and any known issues documented on this page.

1. Sign in the [Microsoft 365 compliance center](https://compliance.microsoft.com) as a global admin for your test tenant.

2. Select **Settings** > **Co-authoring for files with sensitivity labels**.

3. After you have read the summary description, prerequisites, what to expect, and the warning that you can't turn it off,  select **Turn on co-authoring for files with sensitivity labels**, and then **Apply**:
    
    ![Option to turn on co-authoring for files with sensitivity labels](../media/co-authoring-tenant-option-for-sensitivity-labels.png)

## How to disable co-authoring for files with sensitivity labels

After you've enabled co-authoring for files with sensitivity labels for your tenant, you can't disable this setting yourself. That's why it's so important that you check and understand the prerequisites, consequences, and limitations before you enable this setting. It's also why we recommend that you test this feature with a test tenant rather than a production tenant.

![Option that shows co-authoring turned on for sensitivity labels](../media/co-authoring-tenant-option-set-for-sensitivity-labels.png)

As the screenshot shows, you can contact [Microsoft Support](https://docs.microsoft.com/office365/admin/contact-support-for-business-products) and request that this setting is disabled. This request might take several days and you will need to prove that you are you global administrator for your tenant. Expect usual support charges to apply. 

If a support engineer disables this setting for your tenant:

- For apps and services that support the new labeling metadata, they now revert to the original metadata format and location when labels are read or saved.

- The new metadata format and location for Office documents that were used while the setting was enabled will not be copied to the original format and location. As a result, this labeling information for unencrypted Word, Excel, and PowerPoint files will be lost.

- Co-authoring and AutoSave no longer work in your tenant.

- Sensitivity labels remain enabled for Office files in OneDrive and SharePoint.
