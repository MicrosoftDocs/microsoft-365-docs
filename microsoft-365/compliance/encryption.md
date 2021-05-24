---
title: "Encryption in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 8/15/2019
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 0a322724-08ca-43db-b69a-afbfa20484cd
ms.collection:
- M365-security-compliance
- Strat_O365_IP
- m365solution-mip
- m365initiative-compliance
description: "With Office 365, your content is encrypted at rest and in transit with the strongest encryption, protocols, and technologies available. Get an overview of encryption in Office 365."
---

# Encryption

Encryption is an important part of your file protection and information protection strategy. This article provides an overview of encryption for Office 365. Get help with encryption tasks like how to set up encryption for your organization and how to password-protect Office documents.
  
- For information about certificates and technologies like TLS, see [Technical reference details about encryption in Office 365](technical-reference-details-about-encryption.md).

- For information about how to configure or set up encryption for your organization, see [Set up encryption in Office 365 Enterprise](set-up-encryption.md).

## What is encryption, and how does it work in Office 365?

The encryption process encodes your data (referred to as plaintext) into ciphertext. Unlike plaintext, ciphertext can't be used by people or computers unless and until the ciphertext is decrypted. Decryption requires an encryption key that only authorized users have. Encryption helps ensure that only authorized recipients can decrypt your content. Content includes files, email messages, calendar entries, and so on.
  
Encryption by itself doesn't prevent content interception. Encryption is part of a larger information protection strategy for your organization. By using encryption, you help ensure that only authorized parties can use the encrypted data.
  
You can have multiple layers of encryption in place at the same time. For example, you can encrypt email messages and also the communication channels through which your email flows. With Office 365, your data is encrypted at rest and in transit, using several strong encryption protocols, and technologies that include Transport Layer Security/Secure Sockets Layer (TLS/SSL), Internet Protocol Security (IPSec), and Advanced Encryption Standard (AES).
  
## Encryption for data at rest and data in transit

 **Examples of data at rest** include files that you've uploaded to a SharePoint library, Project Online data, documents that you've uploaded in a Skype for Business meeting, email messages and attachments that you've stored in folders in your mailbox, and files you've uploaded to OneDrive for Business.
  
 **Examples of data in transit** include mail messages that are in the process of being delivered, or conversations that are taking place in an online meeting. In Office 365, data is in transit whenever a user's device is communicating with a Microsoft server, or when a Microsoft server is communicating with another server.
  
With Office 365, multiple layers and kinds of encryption work together to secure your data. The following table includes some examples, with links to additional information.
  
|**Kinds of Content**|**Encryption Technologies**|**Resources to learn more**|
|:-----|:-----|:-----|
|Files on a device. These files can include email messages saved in a folder, Office documents saved on a computer, tablet, or phone, or data saved to the Microsoft cloud.  <br/> |BitLocker in Microsoft datacenters. BitLocker can also be used on client machines, such as Windows computers and tablets  <br/> Distributed Key Manager (DKM) in Microsoft datacenters  <br/> Customer Key for Microsoft 365  <br/> |[Windows IT Center: BitLocker](/windows/device-security/bitlocker/bitlocker-overview) <br/> [Microsoft Trust Center: Encryption](https://www.microsoft.com/TrustCenter/Security/Encryption) <br/> [Cloud security controls series: Encrypting Data at Rest](https://blogs.microsoft.com/microsoftsecure/2015/09/10/cloud-security-controls-series-encrypting-data-at-rest) <br/> [How Exchange Online secures your email secrets](exchange-online-secures-email-secrets.md) <br/> [Service encryption with Customer Key](customer-key-overview.md) <br/> |
|Files in transit between users. These files can include Office documents or SharePoint list items shared between users.  <br/> |TLS for files in transit  <br/> |[Data Encryption in OneDrive for Business and SharePoint Online](data-encryption-in-odb-and-spo.md) <br/> [Skype for Business Online: Security and Archiving](/office365/servicedescriptions/skype-for-business-online-service-description/skype-for-business-online-features) <br/> |
|Email in transit between recipients. This email includes email hosted by Exchange Online.  <br/> |Office 365 Message Encryption with Azure Rights Management, S/MIME, and TLS for email in transit  <br/> |[Office 365 Message Encryption (OME)](ome.md) <br/> [Email encryption in Office 365](email-encryption.md) <br/> [How Exchange Online uses TLS to secure email connections in Office 365](exchange-online-uses-tls-to-secure-email-connections.md) <br/> |
|Chats, messages, and files in transit between recipients using Microsoft Teams. <br/> |Teams uses TLS and MTLS to encrypt instant messages. Media traffic is encrypted using Secure RTP (SRTP). Teams uses FIPS (Federal Information Processing Standard) compliant algorithms for encryption key exchanges. <br/> |[Encryption for Teams](/microsoftteams/teams-security-guide#encryption-for-teams) <br/> |

## What if I need more control over encryption to meet security and compliance requirements?

Microsoft 365 provides Microsoft-managed solutions for volume encryption, file encryption, and mailbox encryption in Office 365. In addition, Microsoft provides encryption solutions that you can manage and control. These encryption solutions are built on Azure.
  
To learn more, see the following resources:
  
- [What is Azure Rights Management?](/information-protection/understand-explore/what-is-azure-rms)

- [Activate Rights Management in the admin center](../enterprise/activate-rms-in-microsoft-365.md)

- [Set up Information Rights Management (IRM) in SharePoint admin center](set-up-irm-in-sp-admin-center.md)

- [Service encryption with Customer Key in Office 365](customer-key-overview.md)

- [Double Key Encryption for Microsoft 365](double-key-encryption.md)

## How do I...

|**To do this task**|**See these resources**|
|:-----|:-----|
|Set up encryption for my organization  <br/> |[Set up encryption in Office 365 Enterprise](set-up-encryption.md) <br/> |
|View details about certificates, technologies, and TLS cipher suites <br/> |[Technical details about encryption](technical-reference-details-about-encryption.md) <br/> |
|Work with encrypted messages on a mobile device  <br/> |[View encrypted messages on your Android device](https://support.office.com/article/83d60f17-2305-407a-a762-7d518401fdeb) <br/> [View encrypted messages on your iPhone or iPad](https://support.microsoft.com/en-us/office/view-protected-messages-on-your-iphone-or-ipad-4d631321-0d26-4bcc-a483-d294dd0b1caf) <br/> |
|Encrypt a document using password protection  <br/><br/>  Password protection isn't supported in a browser. Use desktop versions of Word, Excel, and PowerPoint for password protection. |[Add or remove protection in your document, workbook, or presentation](https://support.office.com/article/05084cc3-300d-4c1a-8416-38d3e37d6826) <br/> Choose an **Add protection** section, and then see **Encrypt with Password**.  |
|Remove encryption from a document  <br/> |[Add or remove protection in your document, workbook, or presentation](https://support.office.com/article/05084cc3-300d-4c1a-8416-38d3e37d6826) <br/> Choose a **Remove protection** section, and then see **Remove password encryption**.  |


## Related topics

[Plan for Microsoft 365 security and information protection capabilities](plan-for-security-and-compliance.md)

[Top 10 ways to secure Microsoft 365 for business plans](/office365/admin/security-and-compliance/secure-your-business-data)

[Microsoft Stream Video level encryption and playback flow](/stream/network-overview#video-level-encryption-and-playback-flow)