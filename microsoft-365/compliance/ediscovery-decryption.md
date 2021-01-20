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

To make it easier to manage encrypted content in the eDiscovery workflow, Microsoft 365 eDiscovery tools now incorporate decryption of encrypted files that are attached to email messages and sent in Exchange Online. Additionally, encrypted documents stored in SharePoint Online and OneDrive for Business are decrypted in Advanced eDiscovery. 

Prior to this new capability, only the content of an email message protected by rights management (and not attached files) were decrypted. Encrypted documents in SharePoint and OneDrive couldn't be decrypted during the eDiscovery workflow. Now, if a file that's encrypted with a Microsoft encryption technology is attached to an email message or located on a SharePoint or OneDrive account, those encrypted items are decrypted when the search results are prepared for preview, added to a review set in Advanced eDiscovery, and exported. This allows eDiscovery managers to view the content of encrypted email attachments and site documents when previewing search results, and review them after they have been added to a review set in Advanced eDiscovery.

## Supported encryption technologies

Microsoft eDiscovery tools support items encrypted with Microsoft encryption technologies. These technologies include Office Message Encryption, Azure Rights Management, and Microsoft Information Protection (specifically sensitivity labels). For more information about Microsoft encryption technologies, see [Encryption](encryption.md). Content encrypted by third-party encryption technologies isn't supported. For example, previewing or exporting content encrypted with non-Microsoft technologies isn't supported.

## eDiscovery activities that support encrypted items

The following table identifies the supported tasks that can be performed in Microsoft 365 eDiscovery tools on encrypted files attached to email massages and encrypted documents in SharePoint and OneDrive. These supported tasks can be performed on an encrypted files that match the criteria of a search. A value of "N/A" indicates the functionality isn't available in the corresponding eDiscovery tool.

|eDiscovery task  |Content search  |Core eDiscovery  |Advanced eDiscovery  |
|:---------|:---------|:---------|:---------|
|Search for content in encrypted files in email and sites     |Yes      |Yes      |Yes      |
|Preview encrypted files attached to email     |Yes      |Yes     |Yes       |
|Preview encrypted documents in SharePoint and OneDrive|No      |No    |Yes       |
|Review encrypted files in a review set    |N/A      |N/A        | Yes        |
|Export encrypted files attached to email    |Yes       |Yes  |Yes    |
|Export encrypted documents in SharePoint and OneDrive    |No       |No  |Yes    |
|||||

## Requirements for decryption in eDiscovery

You have to be assigned the RMS Decrypt role to preview, review, and export files encrypted with Microsoft encryption technologies. You also have to be assigned this role to review and query encrypted files that are added to a review set in Advanced eDiscovery.

This role is assigned by default to the eDiscovery Manager role group on the **Permissions** page in the Office 365 Security & Compliance Center. For more information about the RMS Decrypt role, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md#rms-decrypt).
