---
title: Automated investigation and response in Microsoft Threat Protection 
description: Get an overview of automated investigation and response capabilities, also called self-healing, in Microsoft Threat Protection
keywords: automated, investigation, alert, trigger, action, remediation, self-healing
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
ms.date: 09/16/2020 
ms.reviewer: evaldm, isco
---

# Automated investigation and response in Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

As security alerts are triggered, it's up to your security operations team to look into those alerts and take steps to protect your organization. Prioritizing and investigating alerts can be very time consuming, especially when new alerts keep coming in while an investigation is going on. Security operations teams can feel overwhelmed by the sheer volume of threats they must monitor and protect against. Automated investigation and response capabilities, with self-healing, in Microsoft Threat Protection can help.

## Self-healing in Microsoft Threat Protection

Watch the following video to see how self-healing works:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4BzwB]

In Microsoft Threat Protection, automated investigation and response with self-healing capabilities works across your devices, email & content, and identities. Microsoft Threat Protection brings together capabilities from: 
- [Automated investigation and remediation in Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)
- [Automated investigation and response in Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air)
- [Azure advanced threat detection](https://docs.microsoft.com/azure/security/fundamentals/threat-detection)
- [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security)
 
Read this article to learn more about how automated investigation and response works. 

To configure these capabilities, see [Configure automated investigation and response capabilities in Microsoft Threat Protection](mtp-configure-auto-investigation-response.md).

## Your virtual analyst

Imagine having a virtual analyst in your Tier 1 / Tier 2 security operations team. The virtual analyst mimics the ideal steps that security operations would take to investigate and remediate threats. The virtual assistant could work 24x7, with unlimited capacity, and take on a significant load of investigations and threat remediation. Such a virtual assistant could significantly reduce the time to respond, freeing up your security operations team for other important strategic projects. If this scenario sounds like science fiction, it's not! Such a virtual analyst is part of your Microsoft Threat Protection suite, and its name is *automated investigation and response*.

Automated investigation and response enables your security operations team to dramatically increase your organization's capacity to deal with security alerts and incidents. With automated investigation and response, you can reduce the cost of dealing with investigation and remediation activities and get the most out of your threat protection suite. automated investigation and response helps your security operations team by:

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

Each investigation generates verdicts (*Malicious*, *Suspicious*, or *No threats found*) for each piece of evidence investigated. Depending on the type of threat and resulting verdict, remediation actions occur automatically or upon approval by your organization's security operations team. Pending and completed actions are listed in the [Action center](mtp-action-center.md).

While an investigation is running, any other related alerts that arise are added to the investigation until it completes. If an incriminated entity is seen elsewhere, the automated investigation will expand its scope to include that entity, and a general security playbook will run. 

> [!NOTE]
> Not every alert triggers an automated investigation, and not every investigation results in automated remediation actions; this all depends on how automated investigation and response is configured for your organization. See [Configure automated investigation and response capabilities in Microsoft Threat Protection](mtp-configure-auto-investigation-response.md).


## Next steps

- [See the prerequisites for automated investigation and response in Microsoft Threat Protection](mtp-configure-auto-investigation-response.md#prerequisites-for-automated-investigation-and-response-in-microsoft-threat-protection)
- [Configure automated investigation and response for your organization](mtp-configure-auto-investigation-response.md)
- [Approve or reject actions related to automated investigation and response](mtp-autoir-actions.md)
- [Learn more about the Action center](mtp-action-center.md)
