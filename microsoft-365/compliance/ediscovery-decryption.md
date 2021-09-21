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

> [!NOTE]
> The decryption of email messages sent with an [Office 365 Message Encryption (OME) custom branding template](add-your-organization-brand-to-encrypted-messages.md) is not supported by Microsoft eDiscovery tools. When using an OME custom branding template, email messages are delivered to the OME portal instead of the recipient's mailbox. Therefore, you won't be able to use eDiscovery tools to search for OME-encrypted messages because those messages are never received by the recipient's mailbox.

## eDiscovery activities that support encrypted items

The following table identifies the supported tasks that can be performed in Microsoft 365 eDiscovery tools on encrypted files attached to email messages and encrypted documents in SharePoint and OneDrive. These supported tasks can be performed on encrypted files that match the criteria of a search. A value of `N/A` indicates the functionality isn't available in the corresponding eDiscovery tool.

|eDiscovery task  |Content search  |Core eDiscovery  |Advanced eDiscovery  |
|:---------|:---------|:---------|:---------|
|Search for content in encrypted files in sites and email attachments<sup>1</sup>     |No      |No      |Yes      |
|Preview encrypted files attached to email     |Yes      |Yes     |Yes       |
|Preview encrypted documents in SharePoint and OneDrive|No      |No    |Yes       |
|Review encrypted files in a review set    |N/A      |N/A        | Yes        |
|Export encrypted files attached to email    |Yes       |Yes  |Yes    |
|Export encrypted documents in SharePoint and OneDrive    |No       |No  |Yes    |
|||||

> [!NOTE]
> <sup>1</sup> Encrypted files located on a local computer and cloud attachments copied to an email message aren't decrypted and indexed for eDiscovery. For more information and a workaround for these scenarios, see the [Decryption limitations with email attachments](#decryption-limitations-with-email-attachments) section in this article.

## Decryption limitations with sensitivity labels in SharePoint and OneDrive

eDiscovery doesn't support encrypted files in SharePoint and OneDrive when a sensitivity label that applied the encryption is configured with either of the following settings:

- Users can assign permissions when they manually apply the label to a document. This is sometimes referred to as *user-defined permissions*.

- User access to the document has an expiration setting that is set to a value other than **Never**.

For more information about these settings, see the "Configure encryption settings" section in [Restrict access to content by using sensitivity labels to apply encryption](encryption-sensitivity-labels.md#configure-encryption-settings).

Documents encrypted with the previous settings can still be returned by an eDiscovery search. This may happen when a document property (such as the title, author, or modified date) matches the search criteria. Although these documents might be included in search results, they can't be previewed or reviewed. These documents will also remain encrypted when they're exported in Advanced eDiscovery.

## Decryption limitations with email attachments

The following scenarios describe limitations in the decryption of files attached to email messages. These scenario descriptions also include workarounds to mitigate these limitations.

- If a file that's located on a local computer (and not stored in a SharePoint site or OneDrive account) is attached to an email message, and a sensitivity label that applies encryption is applied to the email message, the attached file can't be decrypted by eDiscovery. That means that if you run a keyword search query of the recipient's mailbox, the encrypted file attachment won't be returned by a keyword search query.

  The workaround for this limitation is to search the sender's mailbox for the same file attachment. That's because the encryption applied by the sensitivity label is applied during transport of the email message. This means the attachment is encrypted when the email message is sent. The result is the instance of the attached file in the sender's mailbox is unencrypted, even though the same file in the recipient's mailbox is encrypted.

- Similarly, cloud attachments (files stored in a SharePoint site or OneDrive account) that are copied to an email message (by using the **Attach as copy** option in Outlook) can't be decrypted by eDiscovery. This is also because the encryption that applied by a sensitivity label is applied when the email message is sent. Searching the sender's mailbox for the unencrypted instance of the copy of the cloud attachment is also the workaround for this limitation.

In both these scenarios, email messages with encrypted file attachments can be returned by an eDiscovery search if an email property (such as sent date, sender, recipient, or subject) matches the search query.

## Requirements for decryption in eDiscovery

You have to be assigned the RMS Decrypt role to preview, review, and export files encrypted with Microsoft encryption technologies. You also have to be assigned this role to review and query encrypted files that are added to a review set in Advanced eDiscovery.

This role is assigned by default to the eDiscovery Manager role group on the **Permissions** page in the Microsoft 365 compliance center. For more information about the RMS Decrypt role, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md#rms-decrypt).
