---
title: How automated investigation and response works in Microsoft Defender for Office 365
f1.keywords:
- NOCSH
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
- MET150
- MOE150
ms.collection:
- m365-security
- tier2
keywords: automated incident response, investigation, remediation, threat protection
ms.date: 06/09/2023
description: See how automated investigation and response capabilities work in Microsoft Defender for Office 365
ms.custom:
- air
- seo-marvel-mar2020
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# How automated investigation and response works in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

As security alerts are triggered, it's up to your security operations team to look into those alerts and take steps to protect your organization. Sometimes, security operations teams can feel overwhelmed by the volume of alerts that are triggered. Automated investigation and response (AIR) capabilities in Microsoft Defender for Office 365 can help.

AIR enables your security operations team to operate more efficiently and effectively. AIR capabilities include automated investigation processes in response to well-known threats that exist today. Appropriate remediation actions await approval, enabling your security operations team to respond to detected threats.

This article describes how AIR works through several examples. When you're ready to get started using AIR, see [Automatically investigate and respond to threats](air-about.md).

- [Example 1: A user-reported phish message launches an investigation playbook](#example-a-user-reported-phish-message-launches-an-investigation-playbook)
- [Example 2: A security administrator triggers an investigation from Threat Explorer](#example-a-security-administrator-triggers-an-investigation-from-threat-explorer)
- [Example 3: A security operations team integrates AIR with their SIEM using the Office 365 Management Activity API](#example-a-security-operations-team-integrates-air-with-their-siem-using-the-office-365-management-activity-api)

## Example: A user-reported phish message launches an investigation playbook

Suppose that a user in your organization receives an email that they think is a phishing attempt. The user, trained to report such messages, uses the [Microsoft Report Message or Report Phishing add-ins](submissions-users-report-message-add-in-configure.md) to send it to Microsoft for analysis. The submission is also sent to your system and is visible in Explorer in the **Submissions** view (formerly referred to as the **User-reported** view). In addition, the user-reported message now triggers a system-based informational alert, which automatically launches the investigation playbook.

During the root investigation phase, various aspects of the email are assessed. These aspects include:

- A determination about what type of threat it might be;
- Who sent it;
- Where the email was sent from (sending infrastructure);
- Whether other instances of the email were delivered or blocked;
- An assessment from our analysts;
- Whether the email is associated with any known campaigns;
- and more.

After the root investigation is complete, the playbook provides a list of recommended actions to take on the original email and the _entities_ associated with it (for example, files, URLs, and recipients).

Next, several threat investigation and hunting steps are executed:

- Similar email messages are identified via email cluster searches.
- The signal is shared with other platforms, such as [Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection).
- A determination is made on whether any users have clicked through any malicious links in suspicious email messages.
- A check is done across [Exchange Online Protection](eop-about.md) (EOP) and [Microsoft Defender for Office 365](defender-for-office-365.md) to see if there are any other similar messages reported by users.
- A check is done to see if a user has been compromised. This check leverages signals across Office 365, [Microsoft Defender for Cloud Apps](/cloud-app-security), and [Azure Active Directory](/azure/active-directory), correlating any related user activity anomalies.

During the hunting phase, risks and threats are assigned to various hunting steps.

Remediation is the final phase of the playbook. During this phase, remediation steps are taken, based on the investigation and hunting phases.

## Example: A security administrator triggers an investigation from Threat Explorer

In addition to automated investigations that are triggered by an alert, your organization's security operations team can trigger an automated investigation from a view in [Threat Explorer](threat-explorer-about.md). This investigation also creates an alert, so Microsoft 365 Defender incidents and external SIEM tools can see that this investigation was triggered.

For example, suppose that you are using the **Malware** view in Explorer. Using the tabs below the chart, you select the **Email** tab. If you select one or more items in the list, the **+ Actions** button activates.

:::image type="content" source="../../media/Explorer-Malware-Email-ActionsInvestigate.png" alt-text="The Explorer with selected messages" lightbox="../../media/Explorer-Malware-Email-ActionsInvestigate.png":::

Using the **Actions** menu, you can select **Trigger investigation**.

:::image type="content" source="../../media/explorer-malwareview-selectedemails-actions.jpg" alt-text="The Actions menu for selected messages" lightbox="../../media/explorer-malwareview-selectedemails-actions.jpg":::

Similar to playbooks triggered by an alert, automatic investigations that are triggered from a view in Explorer include a root investigation, steps to identify and correlate threats, and recommended actions to mitigate those threats.

## Example: A security operations team integrates AIR with their SIEM using the Office 365 Management Activity API

AIR capabilities in Microsoft Defender for Office 365 include [reports & details](air-view-investigation-results.md) that security operations teams can use to monitor and address threats. But you can also integrate AIR capabilities with other solutions. Examples include a security information and event management (SIEM) system, a case management system, or a custom reporting solution. These kinds of integrations can be done by using the [Office 365 Management Activity API](/office/office-365-management-api/office-365-management-activity-api-reference).

For example, recently, an organization set up a way for their security operations team to view user-reported phish alerts that were already processed by AIR. Their solution integrates relevant alerts with the organization's SIEM server and their case-management system. The solution greatly reduces the number of false positives so that their security operations team can focus their time and effort on real threats. To learn more about this custom solution, see [Tech Community blog: Improve the Effectiveness of your SOC with Microsoft Defender for Office 365 and the O365 Management API](https://techcommunity.microsoft.com/t5/microsoft-security-and/improve-the-effectiveness-of-your-soc-with-office-365-atp-and/ba-p/1525185).

## Next steps

- [Get started using AIR](air-about.md)
- [View pending or completed remediation actions](air-review-approve-pending-completed-actions.md)
