---
title: Collaborate with Experts on Demand using Ask Defender Experts
ms.reviewer:
description: Select Ask Defender Experts directly inside the Microsoft Defender security portal to get swift and accurate responses to all your threat hunting questions.
search.product: Windows 10
ms.service: defender-experts
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
  - essentials-get-started
ms.topic: conceptual
search.appverid: met150
ms.date: 04/18/2024
---

## Collaborate with experts on demand

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

## Ask Defender Experts

> [!NOTE]
> Ask Defender Experts is included in your Defender Experts for Hunting subscription with [monthly allocations](/microsoft-365/security/defender/before-you-begin-defender-experts#eligibility-and-licensing). However, it's not a security incident response service. It's intended to provide a better understanding of complex threats affecting your organization. Engage with your own security incident response team to address urgent security incident response issues. If you don't have your own security incident response team and would like Microsoft's help, create a support request in the [Premier Services Hub](/services-hub/).

Select **Ask Defender Experts** directly inside the Microsoft 365 security portal to get swift and accurate responses to all your threat hunting questions. Experts can provide insight to better understand the complex threats your organization might face. Ask Defender Experts can help:

- Gather additional information on alerts and incidents, including root causes and scope
- Gain clarity into suspicious devices, alerts, or incidents and take next steps if faced with an advanced attacker
- Determine risks and available protections related to threat actors, campaigns, or emerging attacker techniques

### Required permissions for submitting inquiries in the Ask Defender Experts panel

You need to select one of the following permissions before submitting inquires to our Defender experts. For more details about role-based access control (RBAC) permissions, see: [Microsoft Defender for Endpoint and Microsoft Defender XDR RBAC permissions](/microsoft-365/security/defender/compare-rbac-roles#map-defender-for-endpoint-and-defender-vulnerability-management-permissions-to-the-microsoft-defender-xdr-rbac-permissions).

|**Product name**|**Product RBAC permission**|
|---|---|---|
| Microsoft Defender for Endpoint RBAC | Manage security settings in the Security Center|
| Microsoft Defender XDR Unified RBAC | Authorization and settings \ Security settings \ Core security settings (manage)</br>Authorization and settings \ Security settings \ Detection tuning (manage) |

### Where to find Ask Defender Experts

The option to **Ask Defender Experts** is available in several places throughout the portal:

- **Device page actions menu**

   ![Screenshot of the Ask Defender Experts menu option in the Device page action menu in the Microsoft Defender portal.](../../media/mte/defenderexperts/device-page-actions-menu.png)

- **Device inventory page flyout menu**

   ![Screenshot of the Ask Defender Experts menu option in the Device inventory page flyout menu in the Microsoft Defender portal.](../../media/mte/defenderexperts/device-inventory-flyout-menu.png)

- **Alerts page flyout menu**

   ![Screenshot of the Ask Defender Experts menu option in the Alerts page flyout menu in the Microsoft Defender portal.](../../media/mte/defenderexperts/alerts-flyout-menu.png)

- **Incidents page actions menu**

   ![Screenshot of the Ask Defender Experts menu option in the Incidents page actions menu in the Microsoft Defender portal.](../../media/mte/defenderexperts/incidents-page-actions-menu.png)

### Sample questions you can ask from Defender Experts

**Alert information**

- We saw a new type of alert for a living-off-the-land binary. We can provide the alert ID. Can you tell us more about this alert and if it's related to any incident and how we can investigate it further?
- We've observed two similar attacks, which both try to execute malicious PowerShell scripts but generate different alerts. One is "Suspicious PowerShell command line" and the other is "A malicious file was detected based on indication provided by Office 365." What is the difference?
- We received an odd alert today about an abnormal number of failed logins from a high profile user's device. We can't find any further evidence for these attempts. How can Microsoft Defender XDR see these attempts? What type of logins are being monitored?
- Can you give more context or insight about the alert and any related incidents, "Suspicious behavior by a system utility was observed"?
- I observed an alert titled "Creation of forwarding/redirect rule". I believe the activity is benign. Can you tell me why I received an alert?

**Possible device compromise**

- Can you help explain why we see a message or alert for "Unknown process observed" on many devices in our organization? We appreciate any input to clarify whether this message or alert is related to malicious activity or incidents.
- Can you help validate a possible compromise on the following system, dating from last week? It's behaving similarly as a previous malware detection on the same system six months ago.

**Threat intelligence details**

- We detected a phishing email that delivered a malicious Word document to a user. The document caused a series of suspicious events, which triggered multiple alerts for a particular malware family. Do you have any information on this malware? If yes, can you send us a link?
- We recently saw a blog post about a threat that is targeting our industry. Can you help us understand what protection Microsoft Defender XDR provides against this threat actor?
- We recently observed a phishing campaign conducted against our organization. Can you tell us if this was targeted specifically to our company or vertical?

**Microsoft Defender Experts for Hunting alert communications**

- Can your incident response team help us address the Defender Experts Notification that we got?
- We received this Defender Experts Notification from Microsoft Defender Experts for Hunting. We don't have our own incident response team. What can we do now, and how can we contain the incident?
- We received a Defender Experts Notification from Microsoft Defender Experts for Hunting. What data can you provide to us that we can pass on to our incident response team?

### Next step

- [Understand the Defender Experts for Hunting report in Microsoft Defender XDR](defender-experts-report.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]