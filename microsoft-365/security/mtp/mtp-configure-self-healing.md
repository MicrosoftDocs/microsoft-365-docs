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

## Steps to configure self-healing capabilities

1. [Review the prerequisites](#prerequisites-for-self-healing-in-microsoft-threat-protection).

2. [Make sure Microsoft Threat Protection is turned on](#make-sure-microsoft-threat-protection-is-turned-on).

3. [Review or change the automation level for device groups](#review-or-change-the-automation-level-for-device-groups).

## Prerequisites for self-healing in Microsoft Threat Protection

|Requirement |Details |
|--|--|
|Subscription requirements |One of the following: <br/>- Microsoft 365 E5 <br/>- Microsoft 365 A5 <br/>- Microsoft 365 E5 Security<br/>- Microsoft 365 A5 Security<br/>- Office 365 E5 plus Enterprise Mobility + Security E5 plus Windows E5<br/><br/>See [Microsoft Threat Protection licensing requirements](https://docs.microsoft.com/microsoft-365/security/mtp/prerequisites?#licensing-requirements).|
|Network requirements |- [Azure ATP](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp) enabled<br/>- [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) configured<br/>- [Microsoft Cloud App Security integrated with Azure ATP](https://docs.microsoft.com/cloud-app-security/aatp-integration) |
|Windows machine requirements |- Windows 10, version 1709 or later installed (See [Windows 10 release information](https://docs.microsoft.com/windows/release-information/)) with the following threat protection services configured:<br/>- [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints) <br/>- [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features) |
|Protection for email content and Office files |[Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp#configure-atp-policies) configured |
|Permissions |- To configure self-healing capabilities, you must have the Global Administrator or Security Administrator role assigned in either Azure Active Directory ([https://portal.azure.com](https://portal.azure.com)) or in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)).<br/><br/>- To work with self-healing capabilities, such as reviewing, approving, or rejecting pending actions, refer to [Required permissions for Action center tasks](mtp-action-center.md#required-permissions-for-action-center-tasks). |

## Make sure Microsoft Threat Protection is turned on

1. Go to the Microsoft 365 security center ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, look for **Incidents**, **Action center**, and **Hunting**, as shown in the following image:<br/>![Image of Microsoft 365 security center navigation pane with Microsoft Threat Protection features](../../media/mtp-enable/mtp-on.png)

   - If you see **Incidents**, **Action center**, and **Hunting**, Microsoft Threat Protection is turned on. Proceed to the next procedure, [Review or change the automation level for self-healing](#review-or-change-the-automation-level-for-self-healing).

   - If you do *not* see **Incidents**, **Action center**, or **Hunting**, then Microsoft Threat Protection might not be turned on. In this case, proceed to the next step.

3. In the navigation pane, choose **Settings** > **Microsoft Threat Protection**. Confirm that Microsoft Threat Protection is turned on. 

   Need help? See [Turn on Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-enable).

## Review or change the automation level for device groups

Whether automated investigations run, and whether remediation actions are taken automatically or only upon approval depend on how certain settings, such as your device group policies, are configured. 

This task includes reviewing and potentially changing your organization's security settings.

### Review your device group settings

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in.

2. Go to **Settings** > **Permissions** > **Device groups**. 

3. Review your device groups. In particular, look at the **Remediation level** column. We recommend using **Full - remediate threats automatically**.  To learn more, see the following articles:

   - [How threats are remediated](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations#how-threats-are-remediated)
   
   - [Create and manage device groups](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/machine-groups) 

## Review al