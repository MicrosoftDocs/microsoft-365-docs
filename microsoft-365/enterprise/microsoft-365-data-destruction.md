---
title: "Microsoft 365 Data Destruction"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: "An overview of Microsoft policies about recycling, disposal, or destruction of Microsoft 365 data center disk drives and servers."
---

# Microsoft 365 Data Destruction

## Physical data destruction

Microsoft has Data Handling Standard policies that addresses recycle and disposal of disk drives and failed or retiring servers. Before reusing any Microsoft 365 disk drives, Microsoft performs a physical sanitization process consistent with National Institute of Standards and Technology Special Publication 800-88 ([NIST SP 800-88 Guidelines for Media Sanitization](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-88r1.pdf)). Since all disk drives in Microsoft 365 are encrypted using BitLocker volume level encryption, NIST SP 800-88-compliant erasure isn't technically necessary. Nonetheless, Microsoft performs this process.

Failed disks used within Microsoft 365 datacenters are physically destroyed and audited through the ISO process. Asset type determines the appropriate means of disposal. For hard drives that can't be wiped, Microsoft uses a destruction process to destroy the media and render the recovery of information impossible. For example, disks are physically destroyed, pulverized, or incinerated. Microsoft retains all records of the destruction and performs a similar sanitization process on servers reused within Microsoft 365. These guidelines encompass both electronic and physical sanitization.

Each datacenter uses an on-site physical destruction process to dispose of its disks. Secure bins for storage media designated for disk disposal are in each area of the datacenter. Each secure bin station has video monitoring surveillance. Once a disposal bin reaches approximately 50% capacity, the Site Services team contacts the Physical Security team to coordinate removal. Site Services personnel and a Security Office remove the secure disposal bin and place it in a designated secured storage area. Policies and procedures governing the handling of data bearing devices during disposal are routinely tested, including procedures to ensure the condition of machinery approved for destruction.

In the data destruction process, disks are erased in a manner compliant with NIST 800-88 (if possible) and then placed into an industrial shredder and physically demolished. Microsoft maintains accountability for assets leaving the datacenter using NIST SP 800-88 consistent cleansing/purging, asset destruction, encryption, accurate inventorying, tracking, and protection of chain of custody during transport. This process is monitored via closed-circuit television and a Certificate of Destruction is issued upon completion.

Microsoft uses data erasure units from [Extreme Protocol Solutions](https://www.enterprisedataerasure.com/) (EPS). EPS software supports NIST SP 800-88 requirements for cleansing and purging/secure erasure. Before cleansing or destruction, an inventory is created by the Microsoft asset manager. If a vendor is used for destruction, the vendor provides a certificate of destruction for each asset destroyed, which is validated by the asset manager.

## Virtual data destruction

Microsoft has data handling policies and procedures that address effective virtual destruction of data to protect against the possibility of data being inappropriately shared between service tenants, or being accessible after hard deletion in the service. Data deleted from the service in one tenant is not accessible to another service tenant, even if any of the underlying physical storage is reassigned. This is an outcome of the compounded effects of multiple virtualization and fragmentation technologies used to scale virtual environments, the active delete behaviors of applications within each service tenant (such as [page zeroing](https://docs.microsoft.com/office365/securitycompliance/office-365-exchange-online-data-deletion#page-zeroing)), and the required media and application content encryption processes.