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

In a nutshell, a triggered **alert** creates an **incident** that can start an **automated investigation** that can result in **remediation actions**.

An automated investigation begins when an alert is triggered, and an incident is created. Security playbooks go into effect, and the automated investigation process begins. Depending on the type of threat and resulting verdict, remediation actions occur automatically or upon approval by your organization’s security operations team. Not every alert will trigger an automated investigation, and not every investigation results in automated remediation actions; this all depends on how AIR is configured for your organization. 

Once an automated investigation is triggered, the process begins immediately. In line with security operations best practices, an automated investigation typically includes the following steps:
- Gather information about the type of threat and where it came from
- Identify who and what devices are affected by the threat
- Find out whether and where other instances of the threat exist in your work environment, and what other investigations should be done
- Determine verdicts and remediation actions

While an investigation is running, any other related alerts that are generated are added to the investigation until it completes. If the same threat is seen on other entities (such as identities, files, processes, services, drivers, etc.), those entities are added to the investigation. If an incriminated entity is seen in elsewhere, the automated investigation will expand its scope to include that entity, and a general security playbook will run.

## Next steps

[Approve or reject actions related to automated investigation and remediation in Microsoft 365](mtp-autoir-actions.md)

[Learn more about the Action center in Microsoft Threat Protection](mtp-action-center.md)