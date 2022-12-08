---
title: "Service encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.date: 11/04/2022
ms.localizationpriority: null
search.appverid:
- MET150
ms.collection: 
- Strat_O365_Enterprise
- tier2
- purview-compliance
description: "Summary: Understand data resiliency in Microsoft Office 365."
---

# Service Encryption

In addition to using volume-level encryption, Exchange Online, Microsoft Teams, SharePoint Online, and OneDrive for Business also use Service Encryption to encrypt customer data. Service Encryption allows for two key management options:

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Microsoft-managed keys

Microsoft manages all cryptographic keys including the root keys for service encryption. This option is currently enabled by default for Exchange Online, SharePoint Online, OneDrive for Business. Microsoft-managed keys provide default service encryption unless you decide to onboard using Customer Key. If, at a later date, you decide to stop using Customer Key without following the data purge path, then your data stays encrypted using the Microsoft-managed keys. Your data is always encrypted at this default level at a minimum.

## Customer Key

You supply root keys used with service encryption and you manage these keys using Azure Key Vault. Microsoft manages all other keys. This option is called Customer Key, and it's currently available for Exchange Online, SharePoint Online, and OneDrive for Business. (Previously referred to as Advanced Encryption with BYOK.)

Service encryption provides multiple benefits:

- Provides an added layer of protection on top of BitLocker.

- Provides separation of Windows operating system administrators from access to application data stored or processed by the operating system.

- Includes a Customer Key option that enables multi-tenant services to provide per-tenant key management.

- Enhances the ability of Microsoft 365 to meet the demands of customers that have specific compliance requirements regarding encryption.

Using Customer Key, you can generate your own cryptographic keys. You can use an on-premises Hardware Service Module (HSM) or Azure Key Vault (AKV) to generate your keys. AKV lets you control and manage the cryptographic keys used by Microsoft 365. Customer Key uses the keys stored in the AKV as the root of one of the keychains that encrypts your mailbox data or files.

Customer Key provides you more control over how Microsoft processes your data. For example, You can use Customer Key as a technical control if you want to terminate service with Microsoft or remove a portion of your data stored in the cloud. Removing data ensures no one, including Microsoft, can access or process the data. Customer Key is in addition and complementary to Customer Lockbox that you use to control access to your data by Microsoft personnel.

To learn how to set up Customer Key for Exchange Online, Microsoft Teams, SharePoint Online, including Team Sites, and OneDrive for Business, see these articles:

- [Service encryption with Microsoft Purview Customer Key](customer-key-overview.md)

- [Set up Customer Key](customer-key-set-up.md)

- [Manage Customer Key](customer-key-manage.md)

- [Roll or rotate a Customer Key or an availability key](customer-key-availability-key-roll.md)

- [Understand the availability key](customer-key-availability-key-understand.md)
