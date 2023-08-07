---
title: Automated investigation and response in Microsoft Defender for Office 365
keywords: AIR, autoIR, Microsoft Defender for Endpoint, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords:
- NOCSH
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.date: 06/09/2023
ms.localizationpriority: medium
search.appverid:
- MET150
- MOE150
ms.collection:
- m365-security
- tier2
description: Get started using automated investigation and response capabilities in Microsoft Defender for Office 365.
ms.custom:
- air
- seo-marvel-mar2020
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Automated investigation and response (AIR) in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

[Microsoft Defender for Office 365](defender-for-office-365.md) includes powerful automated investigation and response (AIR) capabilities that can save your security operations team time and effort. As alerts are triggered, it's up to your security operations team to review, prioritize, and respond to those alerts. Keeping up with the volume of incoming alerts can be overwhelming. Automating some of those tasks can help.

AIR enables your security operations team to operate more efficiently and effectively. AIR capabilities include automated investigation processes in response to well-known threats that exist today. Appropriate remediation actions await approval, enabling your security operations team to respond effectively to detected threats. With AIR, your security operations team can focus on higher-priority tasks without losing sight of important alerts that are triggered.

This article describes:

- The [overall flow of AIR](#the-overall-flow-of-air);
- [How to get AIR](#how-to-get-air); and
- The [required permissions](#required-permissions-to-use-air-capabilities) to configure or use AIR capabilities.

This article also includes [next steps](#next-steps), and resources to learn more.

## The overall flow of AIR

An alert is triggered, and a security playbook starts an automated investigation, which results in findings and recommended actions. Here's the overall flow of AIR, step by step:

1. An automated investigation is initiated in one of the following ways:
   - Either [an alert is triggered](#which-alert-policies-trigger-automated-investigations) by something suspicious in email (such as a message, attachment, URL, or compromised user account). An incident is created, and an automated investigation begins; or
   - A security analyst [starts an automated investigation](air-about-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer) while using [Explorer](threat-explorer-about.md).
2. While an automated investigation runs, it gathers data about the email in question and _entities_ related to that email (for example, files, URLs, and recipients). The investigation's scope can increase as new and related alerts are triggered.

3. During and after an automated investigation, [details and results](air-view-investigation-results.md) are available to view. Results might include [recommended actions](air-remediation-actions.md) that can be taken to respond to and remediate any existing threats that were found.

4. Your security operations team reviews the [investigation results and recommendations](air-view-investigation-results.md), and [approves or rejects remediation actions](air-review-approve-pending-completed-actions.md).

5. As pending remediation actions are approved (or rejected), the automated investigation completes.

Note: If the investigation does not result in recommended actions the automated investigation will close and the details of what was reviewed as part of the automated investigation will still be available on the investigation page.

In Microsoft Defender for Office 365, no remediation actions are taken automatically. Remediation actions are taken only upon approval by your organization's security team. AIR capabilities save your security operations team time by identifying remediation actions and providing the details needed to make an informed decision.

During and after each automated investigation, your security operations team can:

- [View details about an alert related to an investigation](air-view-investigation-results.md#view-details-about-an-alert-related-to-an-investigation)
- [View the results details of an investigation](air-view-investigation-results.md#view-details-of-an-investigation)
- [Review and approve actions as a result of an investigation](air-review-approve-pending-completed-actions.md)

> [!TIP]
> For a more detailed overview, see [How AIR works](air-about-office.md).

## How to get AIR

AIR capabilities are included in [Microsoft Defender for Office 365](defender-for-office-365.md#whats-the-difference-between-microsoft-defender-for-office-365-plan-1-and-plan-2), provided your policies and alerts are configured. Need some help? Follow the guidance in [Protect against threats](protect-against-threats.md) to set up or configure the following protection settings:

- [Verify audit logging is turned on](../../compliance/audit-log-enable-disable.md)
- [Anti-malware protection](protect-against-threats.md#part-1---anti-malware-protection-in-eop)
- [Anti-phishing protection](../office-365-security/protect-against-threats.md#part-2---anti-phishing-protection-in-eop-and-defender-for-office-365)
- [Anti-spam protection](protect-against-threats.md#part-3---anti-spam-protection-in-eop)
- [Safe Links and Safe Attachments](protect-against-threats.md#part-4---protection-from-malicious-urls-and-files-safe-links-and-safe-attachments-in-defender-for-office-365)

In addition, make sure to [review your organization's alert policies](../../compliance/alert-policies.md), especially the [default policies in the Threat management category](../../compliance/alert-policies.md#default-alert-policies).

## Which alert policies trigger automated investigations?

Microsoft 365 provides many built-in alert policies that help identify Exchange admin permissions abuse, malware activity, potential external and internal threats, and information governance risks. Several of the [default alert policies](../../compliance/alert-policies.md#default-alert-policies) can trigger automated investigations. The following table describes the alerts that trigger automated investigations, their severity in the Microsoft 365 Defender portal, and how they're generated:

|Alert|Severity|How the alert is generated|
|---|---|---|
|A potentially malicious URL click was detected|**High**|This alert is generated when any of the following occurs: <ul><li>A user protected by [Safe Links](safe-links-about.md) in your organization clicks a malicious link</li><li>Verdict changes for URLs are identified by Microsoft Defender for Office 365</li><li>Users override Safe Links warning pages (based on your organization's [Safe Links policy](safe-links-policies-configure.md).</li></ul> <br/> For more information on events that trigger this alert, see [Set up Safe Links policies](safe-links-policies-configure.md).|
|An email message is reported by a user as malware or phish|**Informational**|This alert is generated when users in your organization report messages as phishing email using the [Microsoft Report Message or Report Phishing add-ins](submissions-users-report-message-add-in-configure.md).|
|Email messages containing malicious file removed after delivery|**Informational**|This alert is generated when any messages containing a malicious file are delivered to mailboxes in your organization. If this event occurs, Microsoft removes the infected messages from Exchange Online mailboxes using [zero-hour auto purge (ZAP)](zero-hour-auto-purge.md).|
|Email messages containing malware are removed after delivery|**Informational**|This alert is generated when any email messages containing malware are delivered to mailboxes in your organization. If this event occurs, Microsoft removes the infected messages from Exchange Online mailboxes using [zero-hour auto purge (ZAP)](zero-hour-auto-purge.md).|
|Email messages containing malicious URL removed after delivery|**Informational**|This alert is generated when any messages containing a malicious URL are delivered to mailboxes in your organization. If this event occurs, Microsoft removes the infected messages from Exchange Online mailboxes using [zero-hour auto purge (ZAP)](zero-hour-auto-purge.md).|
|Email messages containing phish URLs are removed after delivery|**Informational**|This alert is generated when any messages containing phish are delivered to mailboxes in your organization. If this event occurs, Microsoft removes the infected messages from Exchange Online mailboxes using [ZAP](zero-hour-auto-purge.md).|
|Suspicious email sending patterns are detected|**Medium**|This alert is generated when someone in your organization has sent suspicious email and is at risk of being restricted from sending email. The alert is an early warning for behavior that might indicate that the account is compromised, but not severe enough to restrict the user. <p> Although it's rare, an alert generated by this policy may be an anomaly. However, it's a good idea to [check whether the user account is compromised](responding-to-a-compromised-email-account.md).|
|A user is restricted from sending email|**High**|This alert is generated when someone in your organization is restricted from sending outbound mail. This alert typically results when an [email account is compromised](responding-to-a-compromised-email-account.md). <p> For more information about restricted users, see [Remove blocked users from the Restricted entities page](removing-user-from-restricted-users-portal-after-spam.md).|
|Admin triggered manual investigation of email|**Informational**|This alert is generated when an admin triggers the manual investigation of an email from Threat Explorer. This alert notifies your organization that the investigation was started.|
|Admin triggered user compromise investigation|**Medium**|This alert is generated when an admin triggers the manual user compromise investigation of either an email sender or recipient from Threat Explorer.  This alert notifies your organization that the user compromise investigation was started.|

> [!TIP]
> To learn more about alert policies or edit the default settings, see [Alert policies in the Microsoft Purview compliance portal](../../compliance/alert-policies.md).

## Required permissions to use AIR capabilities

Permissions are granted through certain roles, such as those that are described in the following table:

|Task|Role(s) required|
|---|---|
|Set up AIR features|One of the following roles: <ul><li>Global Administrator</li><li>Security Administrator</li></ul> <br/> These roles can be assigned in [Azure Active Directory](/azure/active-directory/roles/permissions-reference) or in the [Microsoft 365 Defender portal](mdo-portal-permissions.md).|
|Start an automated investigation <p> --- or --- <p> Approve or reject recommended actions|One of the following roles, assigned in [Azure Active Directory](/azure/active-directory/roles/permissions-reference) or in the [Microsoft 365 Defender portal](mdo-portal-permissions.md): <ul><li>Global Administrator</li><li>Security Administrator</li><li>Security Operator</li><li>Security Reader <br> --- and --- </li><li>Search and Purge (this role is assigned only in the [Microsoft 365 Defender portal](mdo-portal-permissions.md). You might need to create a new **Email & collaboration** role group there and add the Search and Purge role to that new role group.</li></ul>|

## Required licenses

[Microsoft Defender for Office 365 Plan 2](defender-for-office-365.md#whats-the-difference-between-microsoft-defender-for-office-365-plan-1-and-plan-2) licenses should be assigned to:

- Security administrators (including global administrators)
- Your organization's security operations team (including security readers and those with the **Search and Purge** role)
- End users

## Next steps

- [Get started using AIR](air-about.md)
- [See details and results of an automated investigation](air-view-investigation-results.md#view-details-of-an-investigation)
- [Review and approve pending actions](air-remediation-actions.md)
- [View pending or completed remediation actions](air-review-approve-pending-completed-actions.md)
