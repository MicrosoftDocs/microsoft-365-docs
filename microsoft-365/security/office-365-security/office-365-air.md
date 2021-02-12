---
title: Automated investigation and response in Microsoft Defender for Office 365
keywords: AIR, autoIR, ATP, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords: 
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.date: 01/29/2021
localization_priority: Normal
search.appverid: 
- MET150
- MOE150
ms.collection: 
- M365-security-compliance
- m365initiative-defender-office365
description: Get started using automated investigation and response capabilities in Microsoft Defender for Office 365.
ms.custom: 
- air
- seo-marvel-mar2020
ms.technology: mdo
ms.prod: m365-security
---

# Automated investigation and response (AIR) in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[Microsoft Defender for Office 365](defender-for-office-365.md) includes powerful automated investigation and response (AIR) capabilities that can save your security operations team time and effort. As alerts are triggered, it's up to your security operations team to review, prioritize, and respond to those alerts. Keeping up with the volume of incoming alerts can be overwhelming. Automating some of those tasks can help.

AIR enables your security operations team to operate more efficiently and effectively. AIR capabilities include automated investigation processes in response to well-known threats that exist today. Appropriate remediation actions await approval, enabling your security operations team to respond effectively to detected threats. With AIR, your security operations team can focus on higher-priority tasks without losing sight of important alerts that are triggered.

This article describes:

- The [overall flow of AIR](#the-overall-flow-of-air);
- [How to get AIR](#how-to-get-air); and 
- The [required permissions](#required-permissions-to-use-air-capabilities) to configure or use AIR capabilities. 
- Changes that are coming soon to your security center

This article also includes [next steps](#next-steps), and resources to learn more.

## The overall flow of AIR

An alert is triggered, and a security playbook starts an automated investigation, which results in findings and recommended actions. Here's the overall flow of AIR, step by step:

1. An automated investigation is initiated in one of the following ways: 
   - Either [an alert is triggered](#which-alert-policies-trigger-automated-investigations) by something suspicious in email (such as a message, attachment, URL, or compromised user account). An incident is created, and an automated investigation begins; or
   - A security analyst [starts an automated investigation](automated-investigation-response-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer) while using [Threat Explorer](threat-explorer.md).
2. While an automated investigation runs, it gathers data about the email in question and entities related to that email. Such entities can include files, URLs, and recipients. The investigation's scope can increase as new and related alerts are triggered.
3. During and after an automated investigation, [details and results](air-view-investigation-results.md) are available to view. Results include [recommended actions](air-remediation-actions.md) that can be taken to respond to and remediate any threats that were found.
4. Your security operations team reviews the [investigation results and recommendations](air-view-investigation-results.md), and [approves or rejects remediation actions](air-review-approve-pending-completed-actions.md).
5. As pending remediation actions are approved (or rejected), the automated investigation completes.

In Microsoft Defender for Office 365, no remediation actions are taken automatically. Remediation actions are taken only upon approval by your organization's security team. AIR capabilities save your security operations team time by identifying remediation actions and providing the details needed to make an informed decision.

During and after each automated investigation, your security operations team can:

- [View details about an alert related to an investigation](air-view-investigation-results.md#view-details-about-an-alert-related-to-an-investigation)
- [View the results details of an investigation](air-view-investigation-results.md#view-details-of-an-investigation)
- [Review and approve actions as a result of an investigation](air-review-approve-pending-completed-actions.md)

> [!TIP]
> For a more detailed overview, see [How AIR works](automated-investigation-response-office.md).

## How to get AIR

AIR capabilities are included in [Microsoft Defender for Office 365](defender-for-office-365.md#microsoft-defender-for-office-365-plan-1-and-plan-2), provided your policies and alerts are configured. Need some help? Follow the guidance in [Protect against threats](protect-against-threats.md) to set up or configure the following protection settings:

- [Audit logging](https://docs.microsoft.com/microsoft-365/compliance/turn-audit-log-search-on-or-off) (should be turned on)
- [Antimalware policies](protect-against-threats.md#part-1---anti-malware-protection)
- [Antiphishing protection](protect-against-threats.md#part-2---anti-phishing-protection)
- [Antispam protection](protect-against-threats.md#part-3---anti-spam-protection)
- [Antiphishing protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?part-2---anti-phishing-protection)
- [Antispam protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?part-3---anti-spam-protection)
- [Safe Links and Safe Attachments](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?part-4---protection-from-malicious-urls-and-files-safe-links-and-safe-attachments-in-defender-for-office-365)
- [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?part-5---verify-atp-for-sharepoint-onedrive-and-microsoft-teams-is-turned-on)
- [Zero-hour auto purge for email](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?zero-hour-auto-purge-for-email-in-eop)
- [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](protect-against-threats.md#part-5---verify-safe-attachments-for-sharepoint-onedrive-and-microsoft-teams-is-turned-on)
- [Zero-hour auto purge for email](protect-against-threats.md#zero-hour-auto-purge-for-email-in-eop).

In addition, make sure to [review your organization's alert policies](https://docs.microsoft.com/microsoft-365/compliance/alert-policies), especially the [default policies in the Threat management category](https://docs.microsoft.com/microsoft-365/compliance/alert-policies?default-alert-policies).

## Which alert policies trigger automated investigations?

Microsoft 365 provides many built-in alert policies that help identify Exchange admin permissions abuse, malware activity, potential external and internal threats, and information governance risks. Several of the [default alert policies](https://docs.microsoft.com/microsoft-365/compliance/alert-policies#default-alert-policies) can trigger automated investigations. The following table describes the alerts that trigger automated investigations, their severity in the Microsoft 365 security center, and how they're generated:

|Alert|Severity|How the alert is generated|
|:---|:---|:---|
|A potentially malicious URL click was detected|**High**|This alert is generated when any of the following occurs: <ul><li>A user protected by [Safe Links](atp-safe-links.md) in your organization clicks a malicious link</li><li>Verdict changes for URLs are identified by Microsoft Defender for Office 365</li><li>Users override Safe Links warning pages (based on your organization's [Safe Links policy](set-up-atp-safe-links-policies.md)).</li></ul> <p> For more information on events that trigger this alert, see [Set up Safe Links policies](set-up-atp-safe-links-policies.md).|
|An email message is reported by a user as malware or phish|**Informational**|This alert is generated when users in your organization report messages as phishing email using the [Report Message add-in](enable-the-report-message-add-in.md) or the [Report Phishing add-in](enable-the-report-phish-add-in.md).|
|Email messages containing malware are removed after delivery|**Informational**|This alert is generated when any email messages containing malware are delivered to mailboxes in your organization. If this event occurs, Microsoft removes the infected messages from Exchange Online mailboxes using [Zero-hour auto purge](zero-hour-auto-purge.md).|
|Email messages containing phish URLs are removed after delivery|**Informational**|This alert is generated when any messages containing phish are delivered to mailboxes in your organization. If this event occurs, Microsoft removes the infected messages from Exchange Online mailboxes using [Zero-hour auto purge](zero-hour-auto-purge.md).|
|Suspicious email sending patterns are detected|**Medium**|This alert is generated when someone in your organization has sent suspicious email and is at risk of being restricted from sending email. The alert is an early warning for behavior that might indicate that the account is compromised, but not severe enough to restrict the user. <p> Although it's rare, an alert generated by this policy may be an anomaly. However, it's a good idea to [check whether the user account is compromised](responding-to-a-compromised-email-account.md).|
|A user is restricted from sending email|**High**|This alert is generated when someone in your organization is restricted from sending outbound mail. This alert typically results when an [email account is compromised](responding-to-a-compromised-email-account.md). <p> For more information about restricted users, see [Remove blocked users from the Restricted Users portal in Microsoft 365](removing-user-from-restricted-users-portal-after-spam.md).|
|

> [!TIP]
> To learn more about alert policies or edit the default settings, see [Alert policies in the Microsoft 365 compliance center](https://docs.microsoft.com/microsoft-365/compliance/alert-policies).

## Required permissions to use AIR capabilities

Permissions are granted through certain roles, such as those that are described in the following table:

|Task|Role(s) required|
|---|---|
|Set up AIR features|One of the following roles: <ul><li>Global Administrator</li><li>Security Administrator</li></ul> <p> These roles can be assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) or in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).|
|Start an automated investigation <p> --- or --- <p> Approve or reject recommended actions|One of the following roles, assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) or in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md): <ul><li>Global Administrator</li><li>Security Administrator</li><li>Security Operator</li><li>Security Reader <br> --- and --- </li><li>Search and Purge (this role is assigned only in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md). You might have to create a new role group there and add the Search and Purge role to that new role group.</li></ul>|

## Required licenses

[Microsoft Defender for Office 365 Plan 2](defender-for-office-365.md#microsoft-defender-for-office-365-plan-1-and-plan-2) licenses should be assigned to:

- Security administrators (including global administrators)
- Your organization's security operations team (including security readers and those with the **Search and Purge** role)
- End users


## Changes are coming soon in your security center

If you’re already using AIR capabilities in Microsoft Defender for Office 365, you’re about to see some changes in the [improved Microsoft 365 security center](../mtp/overview-security-center.md). 

:::image type="content" source="../../media/m3d-action-center-unified.png" alt-text="Unified Action center":::

The new and improved security center brings together AIR capabilities in [Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp) and in [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations). With these updates and improvements, your security operations team will be able to view details about automated investigations and remediation actions across your email, collaboration content, user accounts, and devices, all in one place.

> [!TIP]
> The new Microsoft 365 security center ([https://security.microsoft.com](https://security.microsoft.com)) replaces the following centers:
> - Office 365 Security & Compliance Center ([https://protection.office.com](https://protection.office.com))
> - Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com))
>
> In addition to the URL changing, there’s a new look and feel, designed to give your security team a more streamlined experience, with visibility to more threat detections in one place. 

### What to expect

The following table lists changes and improvements coming to AIR in Microsoft Defender for Office 365.

|Item  |What's changing?  |
|---------|---------|
|**Investigations** page     | The updated **Investigations** page is more consistent with what you see in [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations). You’ll see some general format and styling changes that align with the new, unified **Investigations** view. For example, the investigation graph has a more unified format.        |
|**Users** tab |The **Users** tab is now the **Mailboxes** tab. Details about users are listed on the **Mailbox** tab. |
|**Email** tab |The **Email** tab has been removed; visit the **Entities** tab to see a list of email and email cluster items. |
|**Entities** tab |	The **Entities** tab has a tab-in-tab style that includes an all-summary view, and the ability to filter by entity type. The **Entities** tab now includes a **Go hunting** option in addition to the **Open in Explorer** option. You can now use either [Threat Explorer](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer) or [advanced hunting](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview) to find entities and threats, and filter on results. | 
|**Actions** tab |The updated **Actions** tab now includes a **Pending actions** tab and an **Actions history** tab. Actions can be approved (or rejected) in a side pane that opens when you select a pending action. |
|**Evidence** tab |	A new **Evidence** tab shows the key entity findings related to actions. Actions related to each piece of evidence can be approved (or rejected) in a side pane that opens when you select a pending action. |
|**Action center** |The updated **Action center** ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) brings together pending and completed actions across email, devices, and identities. To learn more, see Action center. (To learn more, see [The Action center](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-action-center).)
|**Incidents** page |The **Incidents** page now correlates multiple investigations together to provide a better consolidated view of investigations. ([Learn more about Incidents](https://docs.microsoft.com/microsoft-365/security/mtp/incidents-overview).)


## Next steps

- [See details and results of an automated investigation](air-view-investigation-results.md#view-details-of-an-investigation)
- [Review and approve pending actions](air-remediation-actions.md)
