---
title: How to report false positives or false negatives in AIR in Microsoft Threat Protection 
description: Was something missed or wrongly detected by AIR in Microsoft Threat Protection? Learn how to submit false positives or false negatives to Microsoft for analysis.
keywords: automated, investigation, alert, trigger, action, remediation, false positive, false negative
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
ms.topic: conceptual
ms.custom: autoir
---

# How to report false positives/negatives in automated investigation and response capabilities

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

Did [automated investigation and response capabilities](mtp-autoir.md) in Microsoft Threat Protection miss or wrongly detect something? You can report it to Microsoft or adjust your alerts (if needed). Use the following table as a guide: 


|Item  |Detected by  |How to report it  |
|---------|---------|---------|
|Email message <br/>Email attachment <br/>URL in an email message or Office file      |[Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp)        |[Submit suspected spam, phish, URLs, and files to Microsoft for Office 365 scanning](https://docs.microsoft.com/microsoft-365/security/office-365-security/admin-submission)         |
|File or app on a device    |[Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection)         |[Submit a file to Microsoft for malware analysis](https://www.microsoft.com/wdsi/filesubmission)         |
|Alert triggered by legitimate use <br/>Inaccurate alert    |[Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security)<br/> or <br/>[Azure Advanced Threat Detection](https://docs.microsoft.com/azure/security/fundamentals/threat-detection)         |[Manage alerts in the Cloud App Security portal](https://docs.microsoft.com/cloud-app-security/managing-alerts)         |


## Next steps

- [Approve or reject actions related to automated investigation and response](mtp-autoir-actions.md)
- [Learn more about the Action center](mtp-action-center.md)
- [Proactively hunt for threats with advanced hunting in Microsoft Threat Protection](advanced-hunting-overview.md)
