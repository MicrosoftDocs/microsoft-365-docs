---
title: Turn on Microsoft Threat Protection in Microsoft 365 security center
description: Learn how to enable Microsoft Threat Protection and start integrating your security incident and response. 
keywords: get started, MTP, Microsoft Threat Protection, M365, security, data location
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Turn on Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

[!include[Prerelease information](prerelease.md)]

Microsoft Threat Protection unifies your incident response process by integrating key capabilities across Microsoft Defender Advanced Threat Protection (ATP), Office 365 ATP, Microsoft Cloud App Security, and Azure ATP. This unified experience adds powerful features you can access on Microsoft 365 security center.

## Start using the service
Turning on the Microsoft Threat Protection service aggregates data from the various integrated services. The data will be processed and stored centrally to identify new insights and to make centralized response workflows possible. 

If Microsoft Defender ATP has been provisioned for your organization, data will be stored and processed in the same data center location you have selected for [your Microsoft Defender ATP data](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy). If you don't have without Microsoft Defender ATP, you will be asked to choose a new data center location specifically for Microsoft Threat Protection. You will need to provide consent before data is shared between services and aggregated.

To turn the Microsoft Threat Protect service on, go to **Settings** > **Microsoft Threat Protection** > **Opt-in / Opt-out** in Microsoft 365 security center.

### Getting Azure ATP data
To share Azure ATP data with Microsoft Threat Protection, ensure that Microsoft Cloud App Security and Azure ATP integration is turned on. [Learn more about this integration](https://docs.microsoft.com/cloud-app-security/aatp-integration)


## Turn off Microsoft Threat Protection
To stop using Microsoft Threat Protection, go to **Settings** > **Microsoft Threat Protection** > **Opt-in / Opt-out** in Microsoft 365 security center. Unselect **Turn on Microsoft Threat Protection** and save the changes.

Data will be permanently deleted and corresponding features will be removed from Microsoft 365 security center.

## Get assistance

Microsoft staff can help provision or deprovision the service and related resources on your tenant. For assistance, [contact premier support](https://go.microsoft.com/fwlink/?LinkID=733758).

## Related topics

- [Microsoft Defender ATP overview](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection)
- [Office 365 ATP overview](../office-365-security/office-365-atp.md)
- [Microsoft Cloud App Security overview](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security)
- [Azure ATP overview](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp)
- [Microsoft Defender ATP data storage](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy)
