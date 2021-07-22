---
title: "Decryption in eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
description: "Learn about how Microsoft 365 eDiscovery tools handle encrypted documents attached to email messages and stored in SharePoint Online and OneDrive for Business."
---

# Decryption in Microsoft 365 eDiscovery tools

Encryption is an important part of your file protection and information protection strategy. Organizations of all types use encryption technology to protect sensitive content within their organization and ensure that only the right people have access to that content.

To execute common eDiscovery tasks on encrypted content, eDiscovery managers were required to decrypt email message content as it was exported from content searches, Core eDiscovery cases, and Advanced eDiscovery cases. Content encrypted with Microsoft encryption technologies wasn't available for review until after it was exported.

To make it easier to manage encrypted content in the eDiscovery workflow, Microsoft 365 eDiscovery tools now incorporate the decryption of encrypted files attached to email messages and sent in Exchange Online.<sup>1</sup> Additionally, encrypted documents stored in SharePoint Online and OneDrive for Business are decrypted in Advanced eDiscovery.

Prior to this new capability, only the content of an email message protected by rights management (and not attached files) were decrypted. Encrypted documents in SharePoint and OneDrive couldn't be decrypted during the eDiscovery workflow. Now, files that are encrypted with a Microsoft encryption technology is located on a SharePoint or OneDrive account are searchable and decrypted when the search results are prepared for preview, added to a review set in Advanced eDiscovery, and exported. Additionally, encrypted documents in SharePoint and OneDrive that are attached to an email message are searchable. This decryption capability allows eDiscovery managers to view the content of encrypted email attachments and site documents when previewing search results, and review them after they have been added to a review set in Advanced eDiscovery.

## Supported encryption technologies

Microsoft eDiscovery tools support items encrypted with Microsoft encryption technologies. These technologies are Azure Rights Management and Microsoft Information Protection (specifically sensitivity labels). For more information about Microsoft encryption technologies, see [Encryption](encryption.md). Content encrypted by third-party encryption technologies isn't supported. For example, previewing or exporting content encrypted with non-Microsoft technologies isn't supported.

## eDiscovery activities that support encrypted items

The following table identifies the supported tasks that can be performed in Microsoft 365 eDiscovery tools on encrypted files attached to email messages and encrypted documents in SharePoint and OneDrive. These supported tasks can be performed on encrypted files that match the criteria of a search. A value of `N/A` indicates the functionality isn't available in the corresponding eDiscovery tool.

|eDiscovery task  |Content search  |Core eDiscovery  |Advanced eDiscovery  |
|:---------|:---------|:---------|:---------|
|Search for content in encrypted files in email and sites<sup>1</sup>     |Yes      |Yes      |Yes      |
|Preview encrypted files attached to email     |Yes      |Yes     |Yes       |
|Preview encrypted documents in SharePoint and OneDrive|No      |No    |Yes       |
|Review encrypted files in a review set    |N/A      |N/A        | Yes        |
|Export encrypted files attached to email    |Yes       |Yes  |Yes    |
|Export encrypted documents in SharePoint and OneDrive    |No       |No  |Yes    |
|||||

> [!NOTE]
> <sup>1</sup> Encrypted files that are located on a local computer (and not stored on a SharePoint or OneDrive site) aren't indexed for eDiscovery. That means if an encrypted local file is attached to an email message, the file won't be returned by a keyword search query, even if the file contains keywords that match the search query. However, email messages with local encrypted file can be returned by an eDiscovery search if an email property (such as sent date, sender, recipient, or subject) matches the search query.

### Decryption limitations with sensitivity labels

eDiscovery doesn't support encrypted files in SharePoint and OneDrive when a sensitivity label that applied the encryption is configured with either of the following settings:

- Users can assign permissions when they manually apply the label to a document. This is sometimes referred to as *user-defined permissions*.

- User access to the document has an expiration setting that is set to a value other than **Never**.

For more information about these settings, see the "Configure encryption settings" section in [Restrict access to content by using sensitivity labels to apply encryption](encryption-sensitivity-labels.md#configure-encryption-settings).

Documents encrypted with the previous settings can still be returned by an eDiscovery search. This may happen when a document property (such as the title, author, or modified date) matches the search criteria. Although these documents might be included in search results, they can't be previewed or reviewed. These documents will also remain encrypted when they're exported in Advanced eDiscovery.

## Requirements for decryption in eDiscovery

You have to be assigned the RMS Decrypt role to preview, review, and export files encrypted with Microsoft encryption technologies. You also have to be assigned this role to review and query encrypted files that are added to a review set in Advanced eDiscovery.

This role is assigned by default to the eDiscovery Manager role group on the **Permissions** page in the Office 365 Security & Compliance Center. For more information about the RMS Decrypt role, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md#rms-decrypt).
