---
title: "Automated investigation and response (AIR) in Office 365"
keywords: AIR, autoIR, ATP, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: M365-security-compliance
description: "Get started using automated investigation and response capabilities in Office 365 Advanced Threat Protection Plan 2."
ms.custom: air
---

# Automated investigation and response (AIR) in Office 365

[Office 365 Advanced Threat Protection](office-365-atp.md) Plan 2 includes powerful automated investigation and response (AIR) capabilities that can save your security operations team time and effort. As alerts are triggered, it's up to your security operations team to review, prioritize, and respond to those alerts. Keeping up with the volume of incoming alerts can be overwhelming. Automating some of this can help. With AIR, your security operations team can focus on higher-priority tasks without losing sight of alerts that are triggered.

This article provides an overview of AIR, how to get AIR, and what permissions are required. 

## The overall flow of AIR

A security playbook initiates, and an automated investigation starts. Or, a security analyst triggers an automated investigation while using Threat Explorer. The automated investigation runs, and typically, certain remediation actions are identified. Those actions are reviewed and approved by your security operations team, and the investigation completes. 

Here's the overall flow of AIR, step by step:

1. An alert is triggered by an Office event and an incident is created. Depending on the incident, a [security playbook](automated-investigation-response-office.md#security-playbooks) initiates an automated investigation. <br/>OR<br/>A security analyst [triggers an automated investigation](automated-investigation-response-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer) while using [Threat Explorer](threat-explorer.md).

2. While an automated investigation runs, it gathers additional data about the email and the entities related to that email – files, URLs, and recipients.  The investigation's scope can increase, as new, related alerts are triggered.

3. During and after an automated investigation, [details and results](air-view-investigation-results.md) are available to view. Results include [recommended actions](air-remediation-actions.md) that can be taken to respond and remediate any threats that were found. In addition, a [playbook log](air-view-investigation-results.md#playbook-log) is available that tracks all investigation activity.<br/>If your organization is using a custom reporting solution or a third-party solution, you can [use the Office 365 Management Activity API](air-custom-reporting.md) to view information about automated investigations and threats.

4. Your security operations team reviews the [investigation results and recommendations](air-view-investigation-results.md), and [approves or rejects remediation actions](air-remediation-actions.md#approve-or-reject-pending-actions). 

In Office 365, no remediation actions are taken automatically. Remediation actions are taken only upon approval by your organization's security team. During and after an automated investigation process, your security team can do the following:

- [View details about an alert related to an investigation](air-view-investigation-results.md#view-details-about-an-alert-related-to-an-investigation)
- [View the results details of an investigation](air-view-investigation-results.md#view-details-of-an-investigation)
- [Review and approve actions as a result of an investigation](air-remediation-actions.md#approve-or-reject-pending-actions)

To learn more, see [How AIR works](https://docs.microsoft.com/microsoft-365/security/office-365-security/automated-investigation-response-office).

## How to get AIR

Office 365 AIR capabilities are included in [Office 365 Advanced Threat Protection Plan 2](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp#office-365-atp-plan-1-and-plan-2). However, your [Office 365 ATP policies should be configured](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats) in order for AIR to work as expected. These include:
- [Antimalware protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/configure-anti-malware-policies)
- [Safe Attachments](https://docs.microsoft.com/microsoft-365/security/office-365-security/set-up-atp-safe-attachments-policies)
- [Safe Links](https://docs.microsoft.com/microsoft-365/security/office-365-security/set-up-atp-safe-links-policies)
- [Antiphishing protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/set-up-anti-phishing-policies)
- [Antispam protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/anti-spam-protection)
- [Mail flow rules](https://docs.microsoft.com/microsoft-365/security/office-365-security/use-transport-rules-to-configure-bulk-email-filtering) and [zero-hour auto purge](https://docs.microsoft.com/microsoft-365/security/office-365-security/zero-hour-auto-purge)
- [Audit log search](https://docs.microsoft.com/microsoft-365/compliance/turn-audit-log-search-on-or-off)

In addition to your Office 365 ATP policies, you'll want to review and potentially configure your organization's [alert policies](https://docs.microsoft.com/microsoft-365/compliance/alert-policies). Office 365 provides built-in alert policies that help identify Exchange admin permissions abuse, malware activity, potential external and internal threats, and information governance risks. Some of the [default alert policies](https://docs.microsoft.com/microsoft-365/compliance/alert-policies#default-alert-policies) can trigger automated investigations. These include the following:
- A potentially malicious URL click is detected
- An email message is reported by a user as phish
- Email messages containing malware are removed after delivery
- Email messages containing phish URLs are removed after delivery
- Suspicious email sending patterns are detected
- A user is restricted from sending email

[Learn more about alerts and AIR](https://docs.microsoft.com/microsoft-365/security/office-365-security/automated-investigation-response-office).

## Required permissions to use AIR capabilities

Permissions are granted through certain roles, such as those that are described in the following table: 

|Task |Role(s) required |
|--|--|
|To set up AIR features |One of the following roles: <br/>- **Global Administrator**<br/>- **Security Administrator** <br/>These roles can be assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) or in the [Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center). |
|To approve or reject recommended actions|One of the following roles, assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) or in the [Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center)):<br/>- **Global Administrator** <br/>- **Security Administrator**<br/>- **Security Reader** <br/>--- and ---<br/>- **Search and Purge** (this role is assigned only in the [Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center). You might have to create a new role group there and add the Search and Purge role to that new role group.)

## Related articles

- [Automated investigation and remediation in Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Automated investigation and response in Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir)
