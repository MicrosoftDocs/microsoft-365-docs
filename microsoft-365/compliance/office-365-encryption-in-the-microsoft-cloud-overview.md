---
title: "Encryption in the Microsoft Cloud"
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
ms.collection:
- Strat_O365_Enterprise
- M365-security-compliance
- Strat_O365_Enterprise
description: In this article, read an overview of the various forms of encryption used to keep customer data safe in the Microsoft cloud.
ms.custom: seo-marvel-apr2020
---

# Encryption in the Microsoft Cloud

Customer data within Microsoft's enterprise cloud services is protected by several technologies and processes, including various forms of encryption. (Customer data in this document includes Exchange Online mailbox content, e-mail body, calendar entries, and the content of e-mail attachments, and if applicable, Skype for Business content), SharePoint Online site content and the files stored within sites, and files uploaded to OneDrive for Business or Skype for Business.) Microsoft uses multiple encryption methods, protocols, and ciphers across its products and services to help provide a secure path for customer data to travel through our cloud services, and to help protect the confidentiality of customer data that is stored within our cloud services. Microsoft uses some of the strongest, most secure encryption protocols available to provide barriers against unauthorized access to customer data. Proper key management is also an essential element of encryption best practices, and Microsoft works to ensure that all Microsoft-managed encryption keys are properly secured.

Customer data stored within Microsoft's enterprise cloud services is protected using one or more forms of encryption. (Validation of our crypto policy and its enforcement is independently verified by multiple third-party auditors, and reports of those audits are available on the [Service Trust Portal](https://aka.ms/stp).)

Microsoft provides service-side technologies that encrypt customer data at rest and in transit. For example, for customer data at rest, Microsoft Azure uses [BitLocker](/windows/device-security/bitlocker/bitlocker-overview) and [DM-Crypt](https://en.wikipedia.org/wiki/Dm-crypt), and Microsoft 365 uses BitLocker, [Azure Storage Service Encryption](/azure/), [Distributed Key Manager](./exchange-online-secures-email-secrets.md) (DKM), and Microsoft 365 service encryption. For customer data in transit, Azure, Office 365, Microsoft Commercial Support, Microsoft Dynamics 365, Microsoft Power BI, and Visual Studio Team Services use industry-standard secure transport protocols, such as Internet Protocol Security (IPsec) and Transport Layer Security (TLS), between Microsoft datacenters and between user devices and Microsoft datacenters.

In addition to the baseline level of cryptographic security provided by Microsoft, our cloud services also include cryptography options that you can manage. For example, you can enable encryption for traffic between their Azure virtual machines (VMs) and their users. With [Azure Virtual Networks](https://azure.microsoft.com/services/virtual-network/), you can use the industry-standard IPsec protocol to encrypt traffic between your corporate VPN gateway and Azure. You can also encrypt traffic between the VMs on your virtual network. In addition, [new Office 365 Message Encryption capabilities](set-up-new-message-encryption-capabilities.md) allow you to send encrypted mail to anyone.

Following the Public Key Infrastructure Operational Security Standard, which is a component of the [Microsoft Security Policy](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=5868ecc8-50b7-4f91-b43f-640e2b99e86e&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_FAQ%20and%20White%20Papers), Microsoft uses the cryptographic capabilities included in the Windows operating system for certificates and authentication mechanisms. These mechanisms include the use of cryptographic modules that meet the U.S. government's [Federal Information Processing Standards](https://csrc.nist.gov/publications/PubsFIPS.html) (FIPS) 140-2 standard. You can search for the relevant NIST certificate numbers for Microsoft using the [Cryptographic Module Validation Program CMVP](https://csrc.nist.gov/projects/cryptographic-module-validation-program/validated-modules/search).

> [NOTE]
> To access the Microsoft Security Policy as a resource, you must sign in using your work or school account. If you don't have a subscription yet, [you can sign up for a free trial](https://servicetrust.microsoft.com/Home/TrialSubscriptions).

FIPS 140-2 is a standard designed specifically for validating product modules that implement cryptography rather than the products that use them. Cryptographic modules that are implemented within a service can be certified as meeting the requirements for hash strength, key management, and the like. The cryptographic modules and ciphers used to protect the confidentiality, integrity, or availability of data in Microsoft's cloud services meet the FIPS 140-2 standard.

Microsoft certifies the underlying cryptographic modules used in our cloud services with each new release of the Windows operating system:

- Azure and Azure U.S. Government
- Dynamics 365 and Dynamics 365 U.S. Government
- Office 365, Office 365 U.S. Government, and Office 365 U.S. Government Defense

Encryption of customer data at rest is provided by multiple service-side technologies, including BitLocker, DKM, Azure Storage Service Encryption, and service encryption in Exchange Online, Skype for Business, OneDrive for Business, and SharePoint Online. Office 365 service encryption includes an option to use customer-managed encryption keys that are stored in Azure Key Vault. This customer-managed key option, called [Customer Key](./customer-key-overview.md), is available for Exchange Online, SharePoint Online, Skype for Business, and OneDrive for Business.

For customer data in transit, all Office 365 servers negotiate secure sessions using TLS by default with client machines to secure customer data. For example, Office 365 will negotiate secure sessions to Skype for Business, Outlook, and Outlook on the web, mobile clients, and web browsers.

(All customer-facing servers negotiate to TLS 1.2 by default.)

## Related Links

- [Encryption in Azure](office-365-azure-encryption.md)
- [BitLocker and Distributed Key Manager (DKM) for Encryption](office-365-bitlocker-and-distributed-key-manager-for-encryption.md)
- [Office 365 Service Encryption](office-365-service-encryption.md)
- [Office 365 Encryption for Skype for Business, OneDrive for Business, SharePoint Online, and Exchange Online](/compliance/assurance/assurance-encryption-for-microsoft-365-services) 
- [Encryption for Data in Transit](/compliance/assurance/assurance-encryption-in-transit)
- [Customer-Managed Encryption Features](office-365-customer-managed-encryption-features.md)
- [Encryption Risks and Protections](office-365-encryption-risks-and-protections.md)
- [Encryption in Microsoft Dynamics 365](office-365-encryption-in-microsoft-dynamics-365.md)