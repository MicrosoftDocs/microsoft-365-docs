---
title: "How Exchange Online secures your email secrets"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 07/01/2019
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MET150
ms.assetid: 989ba10c-f73f-4efb-ad1b-af3322e5f376
ms.collection:
- M365-security-compliance
description: "In addition to the Office 365 Trust Center which provides Security, Privacy and Compliance Information for Microsoft 365, you might want to know how Microsoft helps protect secrets you store in its datacenters. We use a technology called Distributed Key Manager (DKM)."
---

# How Exchange Online secures your email secrets

This article describes how Microsoft secures your email secrets in its datacenters.
  
## How do we secure secret information provided by you?

In addition to the Office 365 Trust Center which provides [Security, Privacy and Compliance Information for Office 365](./get-started-with-service-trust-portal.md), you might want to know how Microsoft helps protects secrets you provide in its datacenters. We use a technology called Distributed Key Manager (DKM).
  
[Distributed Key Manager](office-365-bitlocker-and-distributed-key-manager-for-encryption.md) (DKM) is a client-side functionality that uses a set of secret keys to encrypt and decrypt information. Only members of a specific security group in Active Directory Domain Services can access those keys in order to decrypt the data that is encrypted by DKM. In Exchange Online, only certain service accounts under which the Exchange processes run are part of that security group. As part of standard operating procedure in the datacenter, no human is given credentials that are part of this security group and therefore no human has access to the keys that can decrypt these secrets.
  
For debugging, troubleshooting, or auditing purposes, a datacenter administrator must request elevated access to gain temporary credentials that are part of the security group. This process requires multiple levels of legal approval. If access is granted, all activity is logged and audited. In addition access is only granted for a set interval of time after which it automatically expires.
  
For extra protection, DKM technology includes automated key rollover and archiving. This also ensures that you can continue to access your older content without having to rely on the same key indefinitely.
  
## Where does Exchange Online make use of DKM?

Microsoft uses [Distributed Key Manager](office-365-bitlocker-and-distributed-key-manager-for-encryption.md) to encrypt your secrets in Exchange Online datacenters. For example:
  
- Email account credentials for connected accounts. Connected accounts are third-party accounts such as Hotmail, Gmail, and Yahoo! mail accounts.

- Customer key. If you are using [Service encryption with Customer Key](customer-key-overview.md), you'll use [Azure Key Vault](/azure/key-vault/key-vault-whatis) to safeguard your secrets.

## Related topics

[Encryption in Office 365](encryption.md)
  
[Technical reference details about encryption](technical-reference-details-about-encryption.md)
  
[Service assurance in the Security &amp; Compliance Center](./service-assurance.md)
