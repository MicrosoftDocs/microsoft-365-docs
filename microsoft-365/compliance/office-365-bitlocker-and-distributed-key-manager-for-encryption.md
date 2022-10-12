---
title: "BitLocker for encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: null
search.appverid:
- MET150
ms.collection:
- Strat_O365_Enterprise
- purview-compliance
- Strat_O365_Enterprise
description: Learn about how Office 365 uses BitLocker encryption, reducing the potential for data theft due to lost or stolen computers and disks.
ms.custom: seo-marvel-apr2020
---

# BitLocker and Distributed Key Manager (DKM) for Encryption

Microsoft servers use BitLocker to encrypt the disk drives containing customer data at rest at the volume-level. BitLocker encryption is a data protection feature that is built into Windows. BitLocker is one of the technologies used to safeguard against threats in case there are lapses in other processes or controls (e.g., access control or recycling of hardware) that could lead to someone gaining physical access to disks containing customer data. In this case, BitLocker eliminates the potential for data theft or exposure because of lost, stolen, or inappropriately decommissioned computers and disks.

BitLocker is deployed with Advanced Encryption Standard (AES) 256-bit encryption on disks containing customer data in Exchange Online, SharePoint Online, and Skype for Business. Disk sectors are encrypted with a Full Volume Encryption Key (FVEK), which is encrypted with the Volume Master Key (VMK), which in turn is bound to the Trusted Platform Module (TPM) in the server. The VMK directly protects the FVEK and therefore, protecting the VMK becomes critical. The following figure illustrates an example of the BitLocker key protection chain for a given server (in this case, using an Exchange Online server).

The following table describes the BitLocker key protection chain for a given server (in this case, an Exchange Online server).

| KEY PROTECTOR | GRANULARITY | HOW GENERATED? | WHERE IS IT STORED? | PROTECTION |
|--------------------------------------------------------------------------------|-------------------------------------------------|----------------|-------------------------|--------------------------------------------------------------------------------------------------|
| AES 256-bit External Key | Per Server | BitLocker APIs | TPM or Secret Safe | Lockbox / Access Control |
|  |  |  | Mailbox Server Registry | TPM encrypted |
| 48-digit Numerical Password | Per Disk | BitLocker APIs | Active Directory | Lockbox / Access Control |
| X.509 Certificate as Data Recovery Agent (DRA) also called Public Key Protector | Environment (e.g., Exchange Online multitenant) | Microsoft CA | Build System | No one user has the full password to the private key. The password is under physical protection. |


BitLocker key management involves the management of recovery keys that are used to unlock/recover encrypted disks in a Microsoft datacenter. Microsoft 365 stores the master keys in a secured share, only accessible by individuals who have been screened and approved. The credentials for the keys are stored in a secured repository for access control data (what we call a "secret store"), which requires a high level of elevation and management approvals to access using a just-in-time access elevation tool.

BitLocker supports keys which fall into two management categories:

- BitLocker-managed keys, which are generally short-lived and tied to the lifetime of an operating system instance installed on a server or to a given disk. These keys are deleted and reset during server reinstallation or disk formatting.

- BitLocker recovery keys, which are managed outside of BitLocker but used for disk decryption. BitLocker uses recovery keys for the scenario in which an operating system is reinstalled, and encrypted data disks already exist. Recovery keys are also used by Managed Availability monitoring probes in Exchange Online where a responder may need to unlock a disk.

BitLocker-protected volumes are encrypted with a full volume encryption key, which in turn is encrypted with a volume master key. BitLocker uses FIPS-compliant algorithms to ensure that encryption keys are never stored or sent over the wire in the clear. The Microsoft 365 implementation of customer data-at-rest-protection does not deviate from the default BitLocker implementation.
