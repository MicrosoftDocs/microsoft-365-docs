---
title: Automated investigation and response in Microsoft 365 Defender
description: Get an overview of automated investigation and response capabilities, also called self-healing, in Microsoft 365 Defender
keywords: automated, investigation, alert, trigger, action, remediation, self-healing
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
- NOCSH
ms.author: deniseb
author: denisebmsft
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance
- m365initiative-m365-defender
ms.topic: conceptual
ms.custom: autoir
ms.date: 01/29/2021 
ms.reviewer: evaldm, isco
ms.technology: m365d
---

# Automated investigation and response in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

If your organization is using [Microsoft 365 Defender](microsoft-365-defender.md), your security operations team receives an alert whenever a malicious or suspicious artifact is detected. Given the seemingly never-ending flow of threats that come in, security teams often face challenges in addressing the high volume of alerts. Fortunately, Microsoft 365 Defender includes automated investigation and remediation (AIR) capabilities that can help your security operations team address threats more efficiently and effectively.

This article provides an overview of AIR and includes links to next steps and additional resources.

> [!TIP]
> Want to experience Microsoft 365 Defender? You can [evaluate it in a lab environment](m365d-evaluation.md?ocid=cx-docs-MTPtriallab) or [run your pilot project in production](m365d-pilot.md?ocid=cx-evalpilot).

## How automated investigation and self-healing works

As security alerts are triggered, it's up to your security operations team to look into those alerts and take steps to protect your organization. Prioritizing and investigating alerts can be very time consuming, especially when new alerts keep coming in while an investigation is going on. Security operations teams can feel overwhelmed by the sheer volume of threats they must monitor and protect against. Automated investigation and response capabilities, with self-healing, in Microsoft 365 Defender can help.

Watch the following video to see how self-healing works: <p>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4BzwB]

In Microsoft 365 Defender, automated investigation and response with self-healing capabilities works across your devices, email & content, and identities.
 
> [!TIP]
> This article describes how automated investigation and response works. To configure these capabilities, see [Configure automated investigation and response capabilities in Microsoft 365 Defender](m365d-configure-auto-investigation-response.md).

## Your own virtual analyst

Imagine having a virtual analyst in your Tier 1 or Tier 2 security operations team. The virtual analyst mimics the ideal steps that security operations would take to investigate and remediate threats. The virtual assistant could work 24x7, with unlimited capacity, and take on a significant load of investigations and threat remediation. Such a virtual assistant could significantly reduce the time to respond, freeing up your security operations team for other important strategic projects. If this scenario sounds like science fiction, it's not! Such a virtual analyst is part of your Microsoft 365 Defender suite, and its name is *automated investigation and response*.

Automated investigation and response capabilities enable your security operations team to dramatically increase your organization's capacity to deal with security alerts and incidents. With automated investigation and response, you can reduce the cost of dealing with investigation and remediation activities and get the most out of your threat protection suite. Automated investigation and response capabilities help your security operations team by:

1. Determining whether a threat requires action;
2. Taking (or recommending) any necessary remediation actions;
3. Determining whether and what other investigations should occur; and
4. Repeating the process as necessary for other alerts.

## The automated investigation process

An alert creates an incident, which can start an automated investigation. The automated investigation results in a verdict for each piece of evidence. Verdicts can be:
- *Malicious*;
- *Suspicious*; or 
- *No threats found*. 

Remediation actions for malicious or suspicious entities are identified. Examples of remediation actions include:
- Sending a file to quarantine;
- Stopping a process;
- Isolating a device;
- Blocking a URL; and 
- other actions. (See [Remediation actions in Microsoft 365 Defender](m365d-remediation-actions.md).)

Depending on [how automated investigation and response capabilities are configured](m365d-configure-auto-investigation-response.md) for your organization, remediation actions are taken automatically or only upon approval by your security operations team. All actions, whether pending or completed, are listed in the [Action center](m365d-action-center.md).

While an investigation is running, any other related alerts that arise are added to the investigation until it completes. If an incriminated entity is seen elsewhere, the automated investigation expands its scope to include that entity, and the investigation process repeats. 

In Microsoft 365 Defender, each automated investigation correlates signals across Microsoft Defender for Identity, Microsoft Defender for Endpoint, and Defender for Office 365, as summarized in the following table: 

|Entities |Threat protection services  |
|:---------|:---------|
|Devices (also referred to as endpoints, and sometimes referred to as machines)     |[Microsoft Defender for Endpoint](../defender-endpoint/automated-investigations.md)<br/>[Microsoft Defender for Identity](/azure-advanced-threat-protection/what-is-atp) |      
|Email content (email messages that can contain files and URLs)     |[Microsoft Defender for Office 365](../office-365-security/defender-for-office-365.md)         |

> [!NOTE]
> Not every alert triggers an automated investigation, and not every investigation results in automated remediation actions; it depends on how automated investigation and response is configured for your organization. See [Configure automated investigation and response capabilities in Microsoft 365 Defender](m365d-configure-auto-investigation-response.md).

## Next steps

- [See the prerequisites for automated investigation and response in Microsoft 365 Defender](m365d-configure-auto-investigation-response.md#prerequisites-for-automated-investigation-and-response-in-microsoft-365-defender)
- [Configure automated investigation and response for your organization](m365d-configure-auto-investigation-response.md)
- [Learn more about the Action center](m365d-action-center.md)
