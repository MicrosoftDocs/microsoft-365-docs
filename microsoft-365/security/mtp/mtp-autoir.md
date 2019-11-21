---
title: Automated investigation and remediation in Microsoft Threat Protection 
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

# Automated investigation and remediation in Microsoft Threat Protection

When security alerts are triggered, it’s up to your security operations team to look into those alerts and take steps to protect your organization. Prioritizing and investigating alerts can be very time consuming, especially when new alerts keep coming in while an investigation is going on. 

Imagine having a virtual analyst in your Tier 1 / Tier 2 security operations team. The virtual analyst mimics the ideal steps that security operations would take to investigate and remediate threats. The virtual assistant could work 24x7, with unlimited capacity, and take on a significant load of investigations and threat remediation. Such a virtual assistant could significantly reduce the time to respond, freeing up your security operations team for other important strategic projects. If this all sounds like science fiction, it’s not! Such a virtual analyst is part of your Microsoft Threat Protection suite, and its name is Automated Investigation and Remediation (AIR). 

AIR takes steps that include:

1.	Determining whether a threat requires action;

2.	Performing necessary remediation actions;

3.	Determining what additional investigations should occur; and

4.	Repeating the process as necessary for other alerts.

Investigations can be done on devices (also referred to as endpoints), user accounts (also referred to as user identities), and mailboxes (email). AIR does this by correlating signals across [Azure Advanced Threat Protection](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp) (Azure ATP), [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations) (Defender ATP), and [Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp) (Office 365 ATP). 

AIR enables your security operations team to:

- Dramatically increase your organization's capacity to deal with security alerts and incidents;

- Reduce the cost of dealing with investigation and remediation activities; and 

- Get the most out of your threat protection suite.

## How AIR works

An automated investigation begins when an alert is triggered, and an incident is created. Security playbooks go into effect, and the automated investigation process begins. Depending on the type of threat and resulting verdict, remediation actions occur automatically or upon approval by your organization’s security operations team. Not every alert will trigger an automated investigation, and not every investigation results in automated remediation actions; this all depends on how AIR is configured for your organization. 

Once an automated investigation is triggered, the process begins immediately. In line with security operations best practices, an automated investigation typically includes the following steps:

1. Gather information about the type of threat and where it came from

2. Identify who and what devices are affected by the threat

3. Find out whether and where other instances of the threat exist in your work environment, and what other investigations should be done

4. Determine verdicts and remediation actions

While an investigation is running, any other related alerts that are generated are added to the investigation until it completes. If the same threat is seen on other entities (such as identities, files, processes, services, drivers, etc.), those entities are added to the investigation. If an incriminated entity is seen in elsewhere, the automated investigation will expand its scope to include that entity, and a general security playbook will run.

## Requirements for AIR in Microsoft Threat Protection

- Subscription requirements: 
    - Either Microsoft 365 E5, or Microsoft 365 E3 together with Identity & Threat Protection
    - See [Microsoft 365 plans](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview#plans).

- Network requirements:
    - [Azure ATP](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp) enabled
    - [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) (MCAS) configured
    - [MCAS integrated with Azure ATP](https://docs.microsoft.com/cloud-app-security/aatp-integration)

- Identity requirements:
    - [User accounts synced to Azure Active Directory](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-sync-whatis)
    - [Azure Identity Protection](https://docs.microsoft.com/azure/active-directory/identity-protection/overview) enabled
    - [User risk policy](https://docs.microsoft.com/azure/active-directory/identity-protection/howto-user-risk-policy) configured

- Windows machine requirements:  
    - Windows 10, version 1709 or later installed (To learn more, see [Windows 10 release information](https://docs.microsoft.com/windows/release-information/).)
    - [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints) configured
    - [Windows Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features) configured

- Permissions:
    - To *configure* AIR, you must be a global administrator or security administrator.
    - To *use* AIR capabilities, you must be a global administrator, security administrator, security operator, or security reader.
    - See [Permissions in the Microsoft 365 compliance center and Microsoft 365 security center](https://docs.microsoft.com/office365/securitycompliance/permissions-microsoft-365-compliance-security) 

## Next steps

[Approve or reject actions related to automated investigation and remediation in Microsoft 365](mtp-autoir-actions.md)

[Learn more about the Action center in Microsoft Threat Protection](mtp-action-center.md)