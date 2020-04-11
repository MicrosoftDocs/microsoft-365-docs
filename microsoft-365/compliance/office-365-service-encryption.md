---
title: "Office 365 Service Encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.date: 4/8/2020
localization_priority: None
search.appverid:
- MET150
ms.collection: Strat_O365_Enterprise
description: "Summary: Understand data encryption at the service layer in Microsoft Office 365."
---

# Office 365 Service Encryption

In addition to using BitLocker for volume-level encryption, Exchange Online, Skype for Business, SharePoint Online, OneDrive for Business, and Teams also use Service Encryption to encrypt customer data. Service Encryption allows for two key management options:

- Microsoft manages all cryptographic keys. This option is currently available in SharePoint Online, OneDrive for Business, Skype for Business, and Teams chats. Your data is encrypted by default with Microsoft-managed keys.

- Your organization supplies the root keys. You manage these keys using Azure Key Vault. This option is called Customer Key. Customer Key is currently available for Exchange Online, SharePoint Online, OneDrive for Business, Skype for Business, and Teams files. If you use Customer Key, these keys replace Microsoft-managed keys to encrypt your data.

Whatever option you choose, service encryption provides multiple benefits:

- Enforces user authentication to retrieve and decrypt data requested by an authorized user.

- Provides separation of Windows operating system administrators from access to customer data stored or processed by the operating system.

- Enhances the ability of Office 365 to meet the demands of customers that have compliance requirements regarding encryption.

To learn how to set up Customer Key for Office 365 for Exchange Online, Skype for Business, SharePoint Online, OneDrive for Business, and Teams files, see these articles:

- [Service encryption with Customer Key in Office 365](customer-key-overview.md)

- [Set up Customer Key for Office 365](customer-key-set-up.md)

- [Manage Customer Key for Office 365](customer-key-manage.md)

- [Roll or rotate a customer key or an availability key](customer-key-availability-key-roll.md)

- [Understand the availability key](customer-key-availability-key-understand.md)
