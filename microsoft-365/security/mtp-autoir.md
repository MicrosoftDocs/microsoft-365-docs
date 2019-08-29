---
title: Automatically investigate and remediate issues using Microsoft Threat Protection 
description: Get an overview of automated investigation and remediation capabilities in Microsoft Threat Protection
keywords: automated, investigation, alert, trigger, action, remediation
search.product: eADQiWindows 10XVcnh
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
---

# Automatically investigate and remediate issues in Microsoft Threat Protection

**Applies to**:
- Microsoft 365

## Overview of automated investigation and remediation in Microsoft Threat Protection

When security alerts are triggered, it’s up to your security operations team to look into those alerts and take steps to protect your organization. Prioritizing and investigating alerts can be very time consuming. Automating some of these processes can help. Automated investigation and remediation (AIR) capabilities, such as those included in Microsoft Threat Protection, mimic the ideal steps a human would take to investigate and respond to a cyberthreat, except AIR completes these steps more efficiently and effectively. AIR steps include the following:

1.	Determining whether a threat requires action
2.	Performing necessary remediation actions
3.	Determining what additional investigations should occur
4.	Repeating the process as necessary for other alerts

In Microsoft Threat Protection, investigations can be done on devices (also referred to as endpoints), user accounts, and mailboxes. AIR capabilities in Microsoft Threat Protection correlate signals across [Azure Advanced Threat Protection](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp) (Azure ATP) for your user identities, [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations) (Defender ATP) for your devices (also referred to as endpoints), and [Office 365 Advanced Threat Protection](https://docs.microsoft.com/office365/securitycompliance/office-365-atp) (Office 365 ATP) for your Office files and email. AIR capabilities enable your security operations team to:
- Dramatically increase your organization's capacity to deal with security alerts and incidents;
- Reduce the cost of dealing with investigation and remediation activities; and 
- Get the most out of your threat protection suite.

## The automated investigation process