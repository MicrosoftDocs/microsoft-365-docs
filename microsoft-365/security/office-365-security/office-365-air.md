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
---

# Automated investigation and response (AIR) in Office 365

[Office 365 Advanced Threat Protection](office-365-atp.md) Plan 2 includes powerful automated investigation and response (AIR) capabilities that can save your security operations team time and effort. When certain alerts are triggered, one or more security playbooks initiate, and the automated investigation process begins. This empowers your security operations team to focus on high-priority tasks without losing sight of alerts that are triggered. 

## The overall flow of AIR

At a high level, the AIR flow works like this:

|Step  |What happens  |
|---------|---------|
|1     |An alert is triggered by an Office event and a [security playbook](automated-investigation-response-office.md#security-playbooks) initiates an automated investigation for selected alerts. <br/><br/>Alternately, a security analyst can [trigger an automated investigation](automated-investigation-response-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer) while using [Threat Explorer](threat-explorer.md).        |
|2     |While an automated investigation runs, it gathers additional data about the email and the entities related to that email – files, URLs, and recipients.  The investigation's scope can increase, as new related alerts are triggered.         |
|3     |During and after an automated investigation, [details and results](air-view-investigation-results.md) are available to view. Results include [recommended actions](air-remediation-actions.md) that can be taken to respond and remediate any threats that were found. In addition, a [playbook log](air-view-investigation-results.md#playbook-log) is available that tracks all investigation activity.<br/><br/>If your organization is using a custom reporting solution or a third-party solution, you can [use the Office 365 Management Activity API](air-custom-reporting.md) to view information about automated investigations and threats.         |
|4     |Your security operations team reviews the [investigation results and recommendations](air-view-investigation-results.md), and [approves remediation actions](air-remediation-actions.md#approve-or-reject-pending-actions). In Office 365, no actions are taken automatically. Remediation actions are taken only upon approval by your organization's security team.         |

During and after an automated investigation process, your security team can do the following:

- [View details about an alert related to an investigation](air-view-investigation-results.md#view-details-about-an-alert-related-to-an-investigation)
- [View the results details of an investigation](air-view-investigation-results.md#view-details-of-an-investigation)
- [Review and approve actions as a result of an investigation](air-remediation-actions.md#approve-or-reject-pending-actions)

To learn more, see [How AIR works](https://docs.microsoft.com/microsoft-365/security/office-365-security/automated-investigation-response-office).

## How to get AIR

Office 365 AIR is included in the following subscriptions:

- Microsoft 365 E5
- Office 365 E5
- Microsoft Threat Protection
- Office 365 Advanced Threat Protection Plan 2

If you don't have any of these subscriptions, [start a free trial](https://go.microsoft.com/fwlink/p/?LinkID=698279&culture=en-US&country=US).

To learn more about feature availability, visit the [Feature availability across Advanced Threat Protection (ATP) plans](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

## Required permissions to use AIR capabilities

Permissions are granted through certain roles, such as those that are described in the following table: 

|Task |Role(s) required |
|--|--|
|To set up AIR features |One of the following roles: <br/>- **Global Administrator**<br/>- **Security Administrator** <br/>These roles can be assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) or in the [Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center). |
|To approve or reject recommended actions|One of the following roles, assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) or in the [Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center)):<br/>- **Global Administrator** <br/>- **Security Administrator**<br/>- **Security Reader** <br/>--- and ---<br/>- **Search and Purge** (this role is assigned only in the [Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center). You might have to create a new role group there and add the Search and Purge role to that new role group.)

## Related articles

- [Automated investigation and response in Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir)

- [Automated investigation and remediation in Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)