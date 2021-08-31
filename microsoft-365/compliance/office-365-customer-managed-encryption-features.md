---
title: "Customer-managed encryption features"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: None
search.appverid:
- MET150
ms.collection: Strat_O365_Enterprise
ms.custom:
- seo-marvel-mar2020
description: In this article, you'll learn about encryption technologies that you can manage and configure in Microsoft 365.
---

# Customer-managed encryption features

Along with the encryption technologies in Microsoft 365 managed by Microsoft, Microsoft 365 also works with additional encryption technologies that you can manage and configure, such as:

- [Azure Rights Management](/azure/information-protection/what-is-azure-rms)

- [Secure Multipurpose Internet Mail Extension](https://blogs.technet.com/b/exchange/archive/2014/12/15/how-to-configure-s-mime-in-office-365.aspx)

- [Office 365 Message Encryption](https://products.office.com/en-us/exchange/office-365-message-encryption)

- [Secure mail flow with a partner organization](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-for-secure-mail-flow-with-a-partner)

For additional information about these technologies, see the [Microsoft 365 service descriptions](/office365/servicedescriptions/office-365-service-descriptions-technet-library).

## Azure Rights Management

[Azure Rights Management](/azure/information-protection/what-is-azure-rms) (Azure RMS) is the protection technology used by [Azure Information Protection](/information-protection/understand-explore/what-is-information-protection). It uses encryption, identity, and authorization policies to help secure your files and email across multiple platforms and devices—phones, tablets, and PCs. Information can be protected both within and outside your organization because protection remains with the data. Azure RMS provides persistent protection of all file types, protects files anywhere, supports business-to-business collaboration, and a wide range of Windows and non-Windows devices. Azure RMS protection can also augment [data loss prevention (DLP) policies](/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention). For more information about which applications and services can use the Azure Rights Management service from Azure Information Protection, see [How applications support the Azure Rights Management service](/information-protection/understand-explore/applications-support).

Azure RMS is integrated with Microsoft 365 and available to all customers. To configure Microsoft 365 to use Azure RMS, see [Configure IRM to use Azure Rights Management and Set up Information Rights Management (IRM) in SharePoint admin center](../enterprise/activate-rms-in-microsoft-365.md). If you operate on-premises Active Directory (AD) RMS server then you can also [configure IRM to use an on-premises AD RMS server](/office365/SecurityCompliance/configure-irm-to-use-an-on-premises-ad-rms-server), but we strongly recommend you to [migrate to Azure RMS](/azure/information-protection/migrate-from-ad-rms-to-azure-rms) to use new features like secure collaboration with other organizations.

When you protect customer data with Azure RMS, Azure RMS uses a 2048-bit RSA asymmetric key with SHA-256 hash algorithm for integrity to encrypt the data. The symmetric key for Office documents and email is AES 128-bit. For each document or email that is protected by Azure RMS, Azure RMS creates a single AES key (the "content key"), and that key is embedded in the document, and persists through editions of the document. The content key is protected with the organization's RSA key (the "Azure Information Protection tenant key") as part of the policy in the document, and the policy is also signed by the author of the document. This tenant key is common to all documents and emails that are protected by Azure RMS for the organization and this key can only be changed by an Azure Information Protection administrator if the organization is using a tenant key that is customer-managed. For more information about the cryptographic controls used by Azure RMS, see [How does Azure RMS work? Under the hood](/information-protection/understand-explore/how-does-it-work).

In a default Azure RMS implementation, Microsoft generates and manages the root key that is unique for each tenant. Customers can manage the lifecycle of their root key in Azure RMS with Azure Key Vault Services by using a key management method called [Bring Your Own Key (BYOK)](/azure/information-protection/plan-implement-tenant-key) that allows you to generate your key in on-premises HSMs (hardware security modules), and stay in control of this key after transfer to Microsoft's FIPS 140-2 Level 2-validated HSMs. Access to the root key is not given to any personnel as the keys cannot be exported or extracted from the HSMs protecting them. In addition, you can access a near real-time log showing all access to the root key at any time. For more information, see [Logging and Analyzing Azure Rights Management Usage](/azure/information-protection/log-analyze-usage).

Azure Rights Management helps mitigates threats such as wire-tapping, man-in-the-middle attacks, data theft, and unintentional violations of organizational sharing policies. At the same time, any unwarranted access of customer data in-transit or at rest by an unauthorized user who does not have appropriate permissions is prevented via policies that follow that data, thereby mitigating the risk of that data falling in the wrong hands either knowingly or unknowingly and providing data loss prevention functions. If used as part of Azure Information Protection, Azure RMS also provides Data Classification and labeling capabilities, content marking, document access tracking and access revocation capabilities. To learn more about these capabilities, see [What is Azure Information Protection](/information-protection/understand-explore/what-is-information-protection), [Azure Information Protection deployment roadmap](/information-protection/plan-design/deployment-roadmap), and [Quick start tutorial for Azure Information Protection](/information-protection/get-started/infoprotect-quick-start-tutorial).

## Secure Multipurpose Internet Mail Extension

Secure/Multipurpose Internet Mail Extensions (S/MIME) is a standard for public key encryption and digital signing of MIME data. S/MIME is defined in RFCs 3369, 3370, 3850, 3851, and others. It allows a user to encrypt an email and digitally sign an email. An email that is encrypted using S/MIME can only be decrypted by the recipient of the email using their private key, which is only available to that recipient. As such the emails cannot be decrypted by anybody other than the recipient of the email.

[Microsoft supports S/MIME](https://blogs.technet.com/b/exchange/archive/2014/12/15/how-to-configure-s-mime-in-office-365.aspx). Public certificates are distributed to the customer's on-premises Active Directory and stored in attributes that can be replicated to an Microsoft 365 tenant. The private keys that correspond to the public keys remain on-premises and are never transmitted to Office 365. Users can compose, encrypt, decrypt, read, and digitally sign emails between two users in an organization using Outlook, Outlook on the web, and Exchange ActiveSync clients. For more information, see [S/MIME encryption now in Office 365](https://blogs.office.com/2014/02/26/smime-encryption-now-in-office-365/).

## Office 365 Message Encryption

[Office 365 Message Encryption](https://products.office.com/exchange/office-365-message-encryption) (OME) built on top of [Azure Information Protection](/information-protection/understand-explore/what-is-information-protection) (AIP) enables you to send encrypted and rights-protected mail to anyone. OME mitigates threats such as wire-tapping and man-in-the-middle attacks, and other threats, such as unwarranted access of data by an unauthorized user who does not have appropriate permissions. We have made investments that provide you with a simpler, more intuitive, secure email experience built on top of Azure Information Protection. You can protect messages sent from Microsoft 365 to anyone inside or outside your organization. These messages can be viewed across a diverse set of mail clients using any identity, including Azure Active Directory, Microsoft Account, and Google IDs. For more information on how your organization can use encrypted messages, see [Office 365 Message Encryption](./ome.md).

## Transport Layer Security

If you want to ensure secure communication with a partner, you can use inbound and outbound connectors to provide security and message integrity. You can configure forced inbound and outbound TLS on each connector, using a certificate. Using an encrypted SMTP channel can prevent data from being stolen via a man-in-the-middle attack. For more information, see [How Exchange Online uses TLS to secure email connections](./exchange-online-uses-tls-to-secure-email-connections.md).

## Domain Keys Identified Mail

Exchange Online Protection (EOP) and Exchange Online support inbound validation of Domain Keys Identified Mail (DKIM) messages. DKIM is a method for validating that a message was sent from the domain it says it originated from and that it was not spoofed by someone else. It ties an email message to the organization responsible for sending it, and is part of a larger paradigm of email encryption. For more information about the three parts of this paradigm, see:

- [Set up SPF to help prevent spoofing](/office365/SecurityCompliance/set-up-spf-in-office-365-to-help-prevent-spoofing)

- [Use DKIM to validate outbound email sent from your custom domain](/office365/SecurityCompliance/use-dkim-to-validate-outbound-email)

- [Use DMARC to validate email](/office365/SecurityCompliance/use-dmarc-to-validate-email)