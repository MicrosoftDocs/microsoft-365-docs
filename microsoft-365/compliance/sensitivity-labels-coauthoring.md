---
title: "Enable co-authoring for encrypted documents"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.service: O365-seccomp
ms.date: 
ms.localizationpriority: high
ms.collection: 
- purview-compliance
- tier1
ms.topic: article
description: "Turn on a setting that enables co-authoring and AutoSave in desktop apps for labeled and encrypted documents in SharePoint and OneDrive."
---

# Enable co-authoring for files encrypted with sensitivity labels

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Enable the setting to support [co-authoring](https://support.office.com/article/ee1509b4-1f6e-401e-b04a-782d26f564a4) for Office desktop apps so that when documents are labeled and encrypted by [sensitivity labels](sensitivity-labels.md), multiple users can edit these documents at the same time.

Without this setting enabled for your tenant, users must check out an encrypted document stored in SharePoint or OneDrive when they use Office desktop apps. As a result, they can't collaborate in real time. Or, they must use Office on the web when [sensitivity labels are enabled for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

In addition, enabling this functionality results in the [AutoSave](https://support.office.com/article/what-is-autosave-6d6bd723-ebfd-4e40-b5f6-ae6e8088f7a5) functionality being supported for these labeled and encrypted files.

To read the release announcement, see the blog post [Co-authoring on Microsoft Information Protection encrypted documents is now generally available](https://techcommunity.microsoft.com/t5/security-compliance-and-identity/co-authoring-on-microsoft-information-protection-encrypted/ba-p/2693718).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Metadata changes for sensitivity labels

> [!IMPORTANT]
> After you enable the setting for co-authoring, labeling information for unencrypted files is no longer saved in custom properties.
> 
> Do not enable this setting if you use any apps, services, scripts, or tools that reads or writes labeling metadata to the old location.

Before you enable the setting to support co-authoring for Office desktop apps, it's important to understand that this action makes changes to the labeling metadata that is saved to and read from Office files.

The labeling metadata includes information that identifies your tenant and applied sensitivity label. The change that this setting makes is the metadata format and location for Word, Excel, and PowerPoint files. You don't need to take any action for encrypted files or emails because the metadata change for encrypted files is backward-compatible, and there are no changes for emails. However, you do need to be aware of the metadata changes for encrypted files that can be automatically upgraded but aren't backward-compatible.

This change affects both files that are newly labeled and files that are already labeled. When you use apps and services that support the co-authoring setting:
- For files that are newly labeled, only the new format and location is used for the labeling metadata.
- For files that are already labeled, the next time the file is opened and saved, if the file has metadata in the old format and location, that information is copied to the new format and location.

You can read more about this metadata change from the following resources:

- Blog post: [Upcoming Changes to Microsoft Information Protection Metadata Storage](https://techcommunity.microsoft.com/t5/microsoft-security-and/upcoming-changes-to-microsoft-information-protection-metadata/ba-p/1904418)

- Open Specifications: [2.6.3 LabelInfo versus Custom Document Properties](/openspecs/office_file_formats/ms-offcrypto/13939de6-c833-44ab-b213-e0088bf02341)

Because of these changes, do not enable this setting if you have any apps, services, scripts, or tools in your organization that reads or writes labeling metadata to the old location. If you do, some example consequences:

- A document that is labeled appears to users to be unlabeled.

- A document displays an out-of-date label to users.

- Co-authoring and AutoSave won't work for a labeled and encrypted document if another user has it open in an Office desktop app that doesn't support the new labeling metadata. Be aware that this scenario can also occur for users outside your organization if external users and invited guests have the file open.

- An Exchange Online mail flow rule that [identifies labels as custom properties in Office attachments](/azure/information-protection/configure-exo-rules#example-2-rule-that-applies-the-encrypt-only-option-to-emails-when-they-have-attachments-that-are-labeled-confidential--partners-and-these-emails-are-sent-outside-the-organization) fails to encrypt the email and attachment, or incorrectly encrypts them.

Check the following section for a list of apps and services that support this setting and the changes to the labeling metadata.

## Prerequisites

Make sure you understand the following prerequisites before you turn on this feature.

- You must be a global admin to turn on this feature.

- Sensitivity labels must be [enabled for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md) for the tenant. If this feature isn't already enabled, it will be automatically enabled when you select the setting to turn on co-authoring for files with sensitivity labels.

- Microsoft 365 Apps for enterprise:
    - **Windows**: Minimum version 2107 from Current Channel or Monthly Enterprise Channel, or minimum version 2202 from Semi-Annual Enterprise Channel
    - **macOS**: Minimum version 16.51
    - **iOS**: Minimum version 2.58
    - **Android**: Minimum version 16.0.14931

- All apps, services, and operational tools in your tenant must support the new [labeling metadata](#metadata-changes-for-sensitivity-labels). If you use any of the following, check the minimum versions required:
    
    - **Azure Information Protection unified labeling client and scanner:**
        - Minimum version [2.12.62.0](/information-protection/rms-client/unifiedlabelingclient-version-release-history#version-212620) that you can install from the [Microsoft Download Center](https://www.microsoft.com/en-us/download/details.aspx?id=53018)
        - For Office apps, requires minimum versions listed for Microsoft 365 Apps for enterprise
        - Additionally, you're not using [Double Key Encryption](double-key-encryption.md) in the same tenant
    
    - **OneDrive sync app for Windows or macOS:**
        - Minimum version of 19.002.0121.0008
    
    - **Endpoint data loss prevention (Endpoint DLP):**
        - Windows 10 1809 with KB 4601383
        - Windows 10 1903 and 1909 with KB 4601380
        - Windows 10 2004 with KB 4601382
        - Windows versions later than Windows 10 2004 are supported without KB updates
    
    - **Apps and services that use the Microsoft Information Protection SDK:** 
        - Minimum version of 1.7 

Microsoft 365 services automatically support the new labeling metadata when you turn on this feature. For example:

- [Auto-labeling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-policies-for-sharepoint-onedrive-and-exchange)
- [DLP policies that use sensitivity labels as conditions](dlp-sensitivity-label-as-condition.md)
- [Microsoft Defender for Cloud Apps configured to apply sensitivity labels](/cloud-app-security/best-practices#discover-classify-label-and-protect-regulated-and-sensitive-data-stored-in-the-cloud)

## Limitations

Before you enable the tenant setting for co-authoring for files encrypted with sensitivity labels, make sure you understand the following limitations of this feature.

- Because of the [labeling metadata changes](#metadata-changes-for-sensitivity-labels), all apps, services, and operational tools in your tenant must support the new labeling metadata for a consistent and reliable labeling experience.
    
    Specific to Excel: Metadata for a sensitivity label that doesn't apply encryption can be deleted from a file if somebody edits and saves that file by using a version of Excel that doesn't support the metadata changes for sensitivity labels.

- Co-authoring and AutoSave aren't supported and don't work for labeled and encrypted Office documents that use either of the following [configurations for encryption](encryption-sensitivity-labels.md#configure-encryption-settings):
    - **Let users assign permissions when they apply the label** and the checkbox **In Word, PowerPoint, and Excel, prompt users to specify permissions** is selected. This configuration is sometimes referred to as "user-defined permissions".
    - **User access to content expires** is set to a value other than **Never**.
    
    For labels with either of these encryption configurations, the labels display in Office apps. However, when users select these labels and nobody else is editing the document, they're warned that co-authoring and AutoSave won't be available. If somebody else is editing the document, users see a message that the labels can't be applied.

- If you use the Azure Information Protection unified labeling client: Check the documentation for this labeling client for [more requirements or limitations](/azure/information-protection/known-issues#known-issues-for-co-authoring). 
    > [!NOTE]
    > These limitations for the unified labeling client include a [change of dialog box](/azure/information-protection/known-issues#user-interface-changes-when-applying-labels) for users who select labels that prompt them to select permissions.

## How to enable co-authoring for files with sensitivity labels

> [!CAUTION]
> Turning on this setting is a one-way action. Enable it only after you have read and understood the metadata changes, prerequisites, limitations, and any known issues documented on this page.

1. Sign in to the [Microsoft Purview compliance portal](https://compliance.microsoft.com) as a global admin for your tenant.

2. From the navigation pane, select **Settings** > **Co-authoring for files with sensitivity files**.

2. On the **Co-authoring for files with sensitivity labels** page, read the summary description, prerequisites, what to expect, and the warning that you can't turn off this setting after you've turned it on.
    
    Then select **Turn on co-authoring for files with sensitivity labels**, and **Apply**:
    
    ![Option to turn on co-authoring for files with sensitivity labels.](../media/co-authoring-tenant-option-for-sensitivity-labels.png)

3. Wait 24 hours for this setting to replicate across your environment before you use this new feature for co-authoring.

## Contact Support if you need to disable this feature

> [!IMPORTANT]
> If you do need to disable this feature, be aware that labeling information can be lost.

After you've enabled co-authoring for files with sensitivity labels for your tenant, you can't disable this setting yourself. That's why it's so important that you check and understand the prerequisites, consequences, and limitations before you enable this setting.

![Option that shows co-authoring turned on for sensitivity labels.](../media/co-authoring-tenant-option-set-for-sensitivity-labels.png)

As you see from the screenshot when this setting has been turned on, you can contact [Microsoft Support](../admin/get-help-support.md) and request to turn off this setting. This request might take several days and you'll need to prove that you're a global administrator for your tenant. Expect usual support charges to apply. 

If a support engineer disables this setting for your tenant:

- For apps and services that support the new labeling metadata, they now revert to the original metadata format and location when labels are read or saved.

- The new metadata format and location for Office documents that were used while the setting was enabled will not be copied to the original format and location. As a result, this labeling information for unencrypted Word, Excel, and PowerPoint files will be lost.

- Co-authoring and AutoSave no longer work in your tenant for labeled and encrypted documents.

- Sensitivity labels remain enabled for Office files in OneDrive and SharePoint.
