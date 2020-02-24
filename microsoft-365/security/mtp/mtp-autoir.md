---
title: Automated investigation and response in Microsoft Threat Protection 
description: Get an overview of automated investigation and response capabilities in Microsoft Threat Protection
keywords: automated, investigation, alert, trigger, action, remediation
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
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

# Automated investigation and response (AIR) in Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

## Your virtual analyst

As security alerts are triggered, it’s up to your security operations team to look into those alerts and take steps to protect your organization. Prioritizing and investigating alerts can be very time consuming, especially when new alerts keep coming in while an investigation is going on. Security operations teams can feel overwhelmed by the sheer volume of threats they must monitor and protect against. 

Imagine having a virtual analyst in your Tier 1 / Tier 2 security operations team. The virtual analyst mimics the ideal steps that security operations would take to investigate and remediate threats. The virtual assistant could work 24x7, with unlimited capacity, and take on a significant load of investigations and threat remediation. Such a virtual assistant could significantly reduce the time to respond, freeing up your security operations team for other important strategic projects. If this scenario sounds like science fiction, it’s not! Such a virtual analyst is part of your Microsoft Threat Protection suite, and its name is *automated investigation and response* (AIR).

AIR enables your security operations team to dramatically increase your organization's capacity to deal with security alerts and incidents. With AIR, you can reduce the cost of dealing with investigation and remediation activities and get the most out of your threat protection suite. AIR helps your security operations team by:

1. Determining whether a threat requires action;
2. Performing (or recommending) any necessary remediation actions;
3. Determining what additional investigations should occur; and
4. Repeating the process as necessary for other alerts.

## The automated investigation process

**Alert** > **incident** > **automated investigation** > **verdict** > **remediation action**

A triggered alert creates an incident, which can start an automated investigation. That investigation can result in one or more remediation actions. In Microsoft Threat Protection, each automated investigation correlates signals across Azure Advanced Threat Protection (Azure ATP), Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP), and Office 365 Advanced Threat Protection (Office 365 ATP), as summarized in the following table: 

|Entities |Threat protection services  |
|---------|---------|
|Devices (also referred to as endpoints)     |[Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)<br/>[Azure ATP](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp) |      
|Email content (files and messages in mailboxes)     |[Office 365 ATP](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp)         |

Each investigation generates verdicts (*Malicious*, *Suspicious*, or *Clean*) for each piece of evidence investigated. Depending on the type of threat and resulting verdict, remediation actions occur automatically or upon approval by your organization’s security operations team. Pending and completed actions are listed in the [Action center](mtp-action-center.md).

> [!TIP]
> If you think something was missed or wrongly detected by automated investigation and response features in Microsoft Threat Protection, let us know! See [How to report false positives/negatives in automated investigation and response (AIR) capabilities in Microsoft Threat Protection](mtp-autoir-report-false-positives-negatives.md).

While an investigation is running, any other related alerts that arise are added to the investigation until it completes. If an incriminated entity is seen elsewhere, the automated investigation will expand its scope to include that entity, and a general security playbook will run. 

> [!NOTE]
> Not every alert triggers an automated investigation, and not every investigation results in automated remediation actions; this all depends on how AIR is configured for your organization. 

## Requirements for AIR in Microsoft Threat Protection

| | |
|--|--|
|Subscription requirements |- Microsoft 365 E5 or Microsoft 365 E3 together with Identity & Threat Protection<br/>- See [Microsoft 365 plans](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview#plans)|
|Network requirements |- [Azure ATP](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp) enabled<br/>- [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) (MCAS) configured<br/>- [MCAS integrated with Azure ATP](https://docs.microsoft.com/cloud-app-security/aatp-integration) |
|Windows machine requirements |- Windows 10, version 1709 or later installed (See [Windows 10 release information](https://docs.microsoft.com/windows/release-information/))<br/>- [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints) configured <br/>- [Windows Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features) configured |
|Permissions |- To *configure* AIR, you must have the **Global Administrator** or **Security Administrator** role assigned in either Azure Active Directory ([https://portal.azure.com](https://portal.azure.com)) or in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)).<br/><br/>- To *use* AIR capabilities, see [Required permissions for Action center tasks](mtp-action-center.md#required-permissions-for-action-center-tasks). |

## Next steps

- [Approve or reject actions related to automated investigation and response](mtp-autoir-actions.md)
- [Learn more about the Action center](mtp-action-center.md)
