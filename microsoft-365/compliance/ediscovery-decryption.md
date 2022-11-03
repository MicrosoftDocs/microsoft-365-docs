---
title: "Decryption in Microsoft Purview eDiscovery tools"
description: "Learn about how Microsoft 365 eDiscovery tools handle encrypted documents attached to email messages and stored in SharePoint Online and OneDrive for Business."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery 
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
---

# Decryption in Microsoft Purview eDiscovery tools

Encryption is an important part of your file protection and information protection strategy. Organizations of all types use encryption technology to protect sensitive content within their organization and ensure that only the right people have access to that content.

To run common eDiscovery tasks on encrypted content, eDiscovery managers were required to decrypt email message content as it was exported from content searches, Microsoft Purview eDiscovery (Standard) cases, and Microsoft Purview eDiscovery (Premium) cases. Content encrypted with Microsoft encryption technologies wasn't available for review until after it was exported.

To make it easier to manage encrypted content in the eDiscovery workflow, Microsoft Purview eDiscovery tools now incorporate the decryption of encrypted files attached to email messages and sent in Exchange Online.<sup>1</sup> Additionally, encrypted documents stored in SharePoint Online and OneDrive for Business are decrypted in eDiscovery (Premium)<sup>2</sup>.

Prior to this new capability, only the content of an email message protected by rights management (and not attached files) were decrypted. Encrypted documents in SharePoint and OneDrive couldn't be decrypted during the eDiscovery workflow. Now, files that are encrypted with a Microsoft encryption technology is located on a SharePoint or OneDrive account are searchable and decrypted when the search results are prepared for preview, added to a review set in eDiscovery (Premium), and exported. Additionally, encrypted documents in SharePoint and OneDrive that are attached to an email message (as a copy) are searchable. This decryption capability allows eDiscovery managers to view the content of encrypted email attachments and site documents when previewing search results, and review them after they've been added to a review set in eDiscovery (Premium).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Supported encryption technologies

For Exchange, Microsoft Purview eDiscovery tools support items encrypted with Microsoft encryption technologies. These technologies are Azure Rights Management (Azure RMS)<sup>3</sup> and Microsoft Purview Information Protection (specifically sensitivity labels). For more information about Microsoft encryption technologies, see [Encryption](encryption.md) and the various [email encryption](email-encryption.md#comparing-email-encryption-options-available-in-office-365) options available. Content encrypted by S/MIME or third-party encryption technologies isn't supported. For example, previewing or exporting content encrypted with non-Microsoft technologies isn't supported.

> [!NOTE]
> The decryption of email messages sent with an [Microsoft Purview Message Encryption custom branding template](add-your-organization-brand-to-encrypted-messages.md) is not supported by Microsoft eDiscovery tools. When using an OME custom branding template, email messages are delivered to the OME portal instead of the recipient's mailbox. Therefore, you won't be able to use eDiscovery tools to search for encrypted messages because those messages are never received by the recipient's mailbox.

For SharePoint, content labeled with SharePoint online service will be decrypted. Items labeled or encrypted in the client before uploading to SharePoint, legacy document library RMS templates or settings and S/MIME or other standards aren't supported<sup>2</sup>.

## eDiscovery activities that support encrypted items

The following table identifies the supported tasks that can be performed in Microsoft 365 eDiscovery tools on encrypted files attached to email messages and encrypted documents in SharePoint and OneDrive. These supported tasks can be performed on encrypted files that match the criteria of a search. A value of `N/A` indicates the functionality isn't available in the corresponding eDiscovery tool.

|eDiscovery task  |Content search  |eDiscovery (Standard)  |eDiscovery (Premium)  |
|:---------|:---------|:---------|:---------|
|Search for content in encrypted files in sites and email attachments<sup>1</sup>     |No      |No      |Yes      |
|Preview encrypted files attached to email     |Yes      |Yes     |Yes       |
|Preview encrypted documents in SharePoint and OneDrive|No      |No    |Yes       |
|Review encrypted files in a review set    |N/A      |N/A        | Yes        |
|Export encrypted files attached to email    |Yes       |Yes  |Yes    |
|Export encrypted documents in SharePoint and OneDrive    |No       |No  |Yes    |
|||||

## Decryption limitations with sensitivity labels in SharePoint and OneDrive

eDiscovery doesn't support encrypted files in SharePoint and OneDrive when a sensitivity label that applied the encryption is configured with either of the following settings:

- Users can assign permissions when they manually apply the label to a document. This is sometimes referred to as *user-defined permissions*.
- User access to the document has an expiration setting that is set to a value other than **Never**.

For more information about these settings, see the "Configure encryption settings" section in [Restrict access to content by using sensitivity labels to apply encryption](encryption-sensitivity-labels.md#configure-encryption-settings).

Documents encrypted with the previous settings can still be returned by an eDiscovery search. This result may happen when a document property (such as the title, author, or modified date) matches the search criteria. Although these documents might be included in search results, they can't be previewed or reviewed. These documents will also remain encrypted when they're exported in eDiscovery (Premium).

> [!IMPORTANT]
> Decryption isn't supported for files that are locally encrypted and then uploaded to SharePoint or OneDrive. For example, local files that are encrypted by the Azure Information Protection (AIP) client and then uploaded to Microsoft 365 aren't supported. Only files that are encrypted in the SharePoint or OneDrive service are supported for decryption.

## Requirements for decryption in eDiscovery

You have to be assigned the RMS Decrypt role to preview, review, and export files encrypted with Microsoft encryption technologies. You also have to be assigned this role to review and query encrypted files that are added to a review set in eDiscovery (Premium).

This role is assigned by default to the eDiscovery Manager role group on the **Permissions** page in the Microsoft Purview compliance portal. For more information about the RMS Decrypt role, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md#rms-decrypt).

### Decrypting RMS-protected email messages and encrypted file attachments using Content search or eDiscovery (Standard)

Any rights-protected (RMS-protected) email messages included in the results of a Content search will be decrypted when you export them. Additionally, any file that's encrypted with a [Microsoft encryption technology](encryption.md) and is attached to an email message that's included in the search results will be decrypted when it's exported. This decryption capability is enabled by default for members of the eDiscovery Manager role group. This is because the RMS Decrypt management role is assigned to this role group by default. Keep the following things in mind when exporting encrypted email messages and attachments:
  
- As previously explained, if you enable decryption of RMS-protected messages when you export them, you have to export the search results as individual messages. If you export search results to a PST file, RMS-protected messages will be exported as individual email messages.
- Messages that are decrypted are identified in the **ResultsLog** report. This report contains a column named **Decode Status**, and a value of **Decoded** identifies the messages that were decrypted.
- In addition to decrypting file attachments when exporting search results, you can also preview the decrypted file when previewing search results. You can only view the rights-protected email message after you export it.
- If you need to prevent someone from decrypting RMS-protect messages and encrypted file attachments, you have to create a custom role group (by copying the built-in eDiscovery Manager role group), and then remove the RMS Decrypt management role from the custom role group. Then add the person who you don't want to decrypt messages as a member of the custom role group.

## Notes

<sup>1</sup> Encrypted files located on a local computer and copied to an email message aren't decrypted and indexed for eDiscovery. For eDiscovery (Premium), encrypted email and attachments in recipient mailbox needs to be advanced indexed to be decrypted. For more information about advanced indexing, see [Advanced indexing of custodian data](indexing-custodian-data.md).

<sup>2</sup> Only items labeled in SharePoint (or uploaded to SharePoint after integration with sensitivity labels are enabled) and that have labels with admin-defined permissions and no expiration are decrypted. For more information, see [Enable sensitivity labels for Office files in SharePoint and OneDrive](/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files).

Other documents aren't decrypted, including:

- Files encrypted in the client and uploaded before sensitivity labels were integrated with SharePoint Online.
- Documents encrypted with legacy RMS templates and not labeled.
- Documents with user-defined permissions or with expiration settings (SMIME or other standards).

<sup>3</sup> Only content encrypted with RMS keys hosted in Microsoft 365 is transparently decrypted by eDiscovery (Premium).  Double Key Encryption (DKE), Bring Your Own Key (BYOK), on-premises RMS, etc. aren't supported. For more information, see [Your Azure Information Protection tenant key](/azure/information-protection/plan-implement-tenant-key#tenant-root-keys-generated-by-microsoft).
