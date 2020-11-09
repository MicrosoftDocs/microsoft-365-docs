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
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn about how Microsoft 365 eDiscovery tools handle encrypted documents attached to email messages."
---

# Decryption in Microsoft 365 eDiscovery tools

Organizations use encryption technology to protect sensitive content within their organization and ensure that only the right people have access to that content. Organizations use various types of encryption, both Microsoft encryption technologies and third-party technologies to meet their security requirements and protect their sensitive information.

To date, managing encrypted content in the eDiscovery workflow in Microsoft 365 requires special handling of encrypted items depending on the type of encryption used and the specific stage in the workflow. This was primarily achieved by decrypting email message content when it was exported from content searches, Core eDiscovery cases, and Advanced eDiscovery cases. Content encrypted with Microsoft encryption technologies couldn't be previewed until it was exported. In Advanced eDiscovery, encrypted content was flagged with a processing error, which required that you download the encrypted item, decrypt it, and then upload the decrypted file to a review set.

To make it easier to manage encrypted content in the eDiscovery workflow, Microsoft 365 eDiscovery tools can decrypt encrypted files that are attached to email messages and sent in Exchange Online. Prior to this new capability, only the content of an email message protected by rights management (and not attached files) was decrypted. Now, if a file that's encrypted with a Microsoft encryption technology is attached to an email message that matches the search criteria, the encrypted file will be decrypted when the search results are prepared for preview. This allows eDiscovery managers to view the content of encrypted email attachments when previewing search results.

## Supported encryption technologies

Microsoft eDiscovery tools support items encrypted with Microsoft encryption technologies. These technologies include Office Message Encryption, Microsoft Information Protection (sensitivity labels), and Azure Rights Management. For more information about Microsoft encryption technologies, see [Encryption](encryption.md). Content encrypted by third-party encryption technologies is not supported. This includes no support when previewing or exporting content encrypted with non-Microsoft technologies.

## eDiscovery activities that support encrypted items

The following table identifies the tasks performed in Microsoft 365 eDiscovery tools that support decryption of encrypted files attached to email massages. The support tasks can be performed on an encrypted file that's attached to an email message that matches the criteria of a search. A value of "N/A" indicates that the function isn't available in the corresponding eDiscovery tool.

|eDiscovery task  |Content search  |Core eDiscovery  |Advanced eDiscovery  |
|:---------|:---------|:---------|:---------|
|Search for content in encrypted files     |No      |No      |No      |
|Preview encrypted files     |Yes      |Yes     |Yes       |
|Review encrypted files in a review set    |N/A      |N/A        | Yes        |
|Export encrypted files    |Yes       |Yes  |Yes    |

## Requirements for decryption in eDiscovery

You have to be assigned the RMS Decrypt role to preview, review, and export attached files encrypted with Microsoft encryption technologies. You also have to be assigned this role to review and query encrypted email attachments that are added to a review set in Advanced eDiscovery.

This role is assigned by default to the eDiscovery Manager role group in the Office 365 Security & Compliance Center. For more information about the RMS Decrypt role, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md#rms-decrypt).
