---
title: Configure self-healing capabilities in Microsoft Threat Protection
description: Self-healing includes automated investigation and remediation actions
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: article
ms.date: 09/16/2020 
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: M365-security-compliance.
ms.custom: autoir
ms.reviewer: evaldm, isco
f1.keywords: CSH 
---

# Configure self-healing capabilities in Microsoft Threat Protection

Microsoft Threat Protection includes power self-healing capabilities that can save your security operations team a lot of time and effort. Self-healing capabilities mimic the steps a security analyst would take to investigate and respond to threats, only faster and with more ability to scale. To learn more about self-healing, see [Self-healing in Microsoft Threat Protection](mtp-autoir.md). 

## Configure self-healing capabilities

1. 

## Prerequisites for self-healing in Microsoft Threat Protection

|Requirement |Details |
|--|--|
|Subscription requirements |One of the following: <br/>- Microsoft 365 E5 <br/>- Microsoft 365 A5 <br/>- Microsoft 365 E5 Security<br/>- Microsoft 365 A5 Security<br/>- Office 365 E5 plus Enterprise Mobility + Security E5 plus Windows E5<br/><br/>See [Microsoft Threat Protection licensing requirements](https://docs.microsoft.com/microsoft-365/security/mtp/prerequisites?#licensing-requirements).|
|Network requirements |- [Azure ATP](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp) enabled<br/>- [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) configured<br/>- [Microsoft Cloud App Security integrated with Azure ATP](https://docs.microsoft.com/cloud-app-security/aatp-integration) |
|Windows machine requirements |- Windows 10, version 1709 or later installed (See [Windows 10 release information](https://docs.microsoft.com/windows/release-information/)) with the following threat protection services configured:<br/>- [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints) <br/>- [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features) |
|Protection for email content and Office files |[Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp#configure-atp-policies) configured |
|Permissions |- To configure self-healing capabilities, you must have the Global Administrator or Security Administrator role assigned in either Azure Active Directory ([https://portal.azure.com](https://portal.azure.com)) or in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)).<br/><br/>- To work with self-healing capabilities, such as reviewing, approving, or rejecting pending actions, refer to [Required permissions for Action center tasks](mtp-action-center.md#required-permissions-for-action-center-tasks). |

## Turn on Microsoft Threat Protection

## 
