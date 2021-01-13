---
title: "Service Encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.date: 10/3/2019
localization_priority: None
search.appverid:
- MET150
ms.collection: Strat_O365_Enterprise
description: "Summary: Understand data resiliency in Microsoft Office 365."
---

# Service Encryption

In addition to using volume-level encryption, Exchange Online, Teams, SharePoint Online, and OneDrive for Business also use Service Encryption to encrypt customer data. Service Encryption allows for two key management options:

## Microsoft-managed keys
Microsoft manages all cryptographic keys including the root keys for service encryption. This option is currently enabled by default for Exchange Online, SharePoint Online, OneDrive for Business. Microsoft-managed keys provide default service encryption unless you decide to onboard using Customer Key. If, at a later date, you decide to stop using Customer Key without following the data purge path, then your data stays encrypted using the Microsoft-managed keys. Your data is always encrypted at this default level at a minimum. 

## Customer Key
You supply root keys used with service encryption and you manage these keys using Azure Key Vault. Microsoft manages all other keys. This option is called Customer Key, and it is currently available for Exchange Online, SharePoint Online, and OneDrive for Business. (Previously referred to as Advanced Encryption with BYOK. See [Enhancing transparency and control for Office 365 customers](https://blogs.office.com/2015/04/21/enhancing-transparency-and-control-for-office-365-customers/) for the original announcement.)

Service encryption provides multiple benefits:

- Provides an added layer of protection on top of BitLocker.

- Provides separation of Windows operating system administrators from access to application data stored or processed by the operating system.

- Includes a Customer Key option that enables multi-tenant services to provide per-tenant key management.

- Enhances the ability of Microsoft 365 to meet the demands of customers that have specific compliance requirements regarding encryption.

Using Customer Key, you can generate your own cryptographic keys using either an on-premises Hardware Service Module (HSM) or Azure Key Vault (AKV). Regardless of how you generate the key, you use AKV to control and manage the cryptographic keys used by Office 365. Once your keys are stored in AKV, they can be used as the root of one of the keychains that encrypts your mailbox data or files.

Another benefit of Customer Key is the control you have over the ability of Microsoft to process your data. If you want to remove data from Office 365, such as if you want to terminate service with Microsoft or remove a portion of your data stored in the cloud, you can do so and use Customer Key as a technical control. Removing data ensures that no one, including Microsoft, can access or process the data. Customer Key is in addition and complementary to Customer Lockbox that you use to control access to your data by Microsoft personnel.

To learn how to set up Customer Key for Microsoft 365 for Exchange Online, Teams, SharePoint Online, including Team Sites, and OneDrive for Business, see these articles:

- [Service encryption with Customer Key](customer-key-overview.md)

- [Set up Customer Key](customer-key-set-up.md)

- [Manage Customer Key](customer-key-manage.md)

- [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md)

- [Understand the availability key](customer-key-availability-key-understand.md)

