---
title: "Get started with automated investigation and response in Microsoft Defender for Office 365"
keywords: AIR, autoIR, ATP, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.date: 11/04/2020
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
description: "Get started using automated investigation and response capabilities in Microsoft Defender for Office 365."
ms.custom: 
- air
- seo-marvel-mar2020
---

# Get started using automated investigation and response (AIR) in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

[Microsoft Defender for Office 365](office-365-atp.md) includes powerful automated investigation and response (AIR) capabilities that can save your security operations team time and effort. As alerts are triggered, it's up to your security operations team to review, prioritize, and respond to those alerts. Keeping up with the volume of incoming alerts can be overwhelming. Automating some of those tasks can help. With AIR, your security operations team can focus on higher-priority tasks without losing sight of important alerts that are triggered.

This article describes:
- The [overall flow of AIR](#the-overall-flow-of-air);
- [How to get AIR](#how-to-get-air); and 
- The [required permissions](#required-permissions-to-use-air-capabilities) to configure or use AIR capabilities. 

## The overall flow of AIR

An alert is triggered, and a security playbook starts an automated investigation, which results in findings and recommended actions. Here's the overall flow of AIR, step by step:

1. An automated investigation is initiated in one of the following ways:

   - An [alert](https://docs.microsoft.com/microsoft-365/compliance/alert-policies) is triggered by something suspicious in email (such as a message, attachment, or URL). An incident is created. Depending on the type of incident, a [security playbook](automated-investigation-response-office.md#security-playbooks) runs, and an automated investigation begins. 

     --- or ---
   
   - A security analyst [starts an automated investigation](automated-investigation-response-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer) while using [Threat Explorer](threat-explorer.md).

2. While an automated investigation runs, it gathers additional data about the email in question and entities related to that email. Such entities can include files, URLs, and recipients.  The investigation's scope can increase as new and related alerts are triggered.

3. During and after an automated investigation, [details and results](air-view-investigation-results.md) are available to view. Results include [recommended actions](air-remediation-actions.md) that can be taken to respond to and remediate any threats that were found. In addition, a [playbook log](air-view-investigation-results.md#playbook-log) is available that tracks all investigation activity.

    If your organization is using a custom reporting solution or a third-party solution, you can [use the Office 365 Management Activity API](air-custom-reporting.md) to view information about automated investigations and threats.

4. Your security operations team reviews the [investigation results and recommendations](air-view-investigation-results.md), and [approves or rejects remediation actions](air-review-approve-pending-completed-actions.md). 

    As pending remediation actions are approved (or rejected), the automated investigation completes.

> [!IMPORTANT]
> In Microsoft Defender for Office 365, no remediation actions are taken automatically. Remediation actions are taken only upon approval by your organization's security team. However, AIR capabilities save your security operations team time by identifying remediation actions and providing the details needed to make an informed decision.

During and after each automated investigation, your security operations team can:

- [View details about an alert related to an investigation](air-view-investigation-results.md#view-details-about-an-alert-related-to-an-investigation)

- [View the results details of an investigation](air-view-investigation-results.md#view-details-of-an-investigation)

- [Review and approve actions as a result of an investigation](air-review-approve-pending-completed-actions.md)

> [!TIP]
> For more details, see [How AIR works](https://docs.microsoft.com/microsoft-365/security/office-365-security/automated-investigation-response-office).

## How to get AIR

AIR capabilities are included in [Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp#office-365-atp-plan-1-and-plan-2), provided your policies and alerts are configured. 

- Follow the guidance in [Protect against threats](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats). 
   - [Turn on audit logging](https://docs.microsoft.com/microsoft-365/compliance/turn-audit-log-search-on-or-off?view=o365-worldwide)
   - [Set up your antimalware policies](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?view=o365-worldwide#part-1---anti-malware-protection)
   - [Set up your antiphishing protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?view=o365-worldwide#part-2---anti-phishing-protection)
   - [Set up your antispam protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?view=o365-worldwide#part-3---anti-spam-protection)
   - [Set up your Safe Links and Safe Attachments policies](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?view=o365-worldwide#part-4---protection-from-malicious-urls-and-files-safe-links-and-safe-attachments-in-defender-for-office-365)
   - [Verify that Safe Attachements is turned on for SharePoint, OneDrive, and Microsoft Teams](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?view=o365-worldwide#part-5---verify-atp-for-sharepoint-onedrive-and-microsoft-teams-is-turned-on)
   - [Verify zero-hour auto purge for email is set up](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats?view=o365-worldwide#zero-hour-auto-purge-for-email-in-eop)

-  in order for AIR to work as expected. In addition, make sure to review and potentially configure your organization's [alert policies](https://docs.microsoft.com/microsoft-365/compliance/alert-policies). 

Microsoft 365 provides many built-in alert policies that help identify Exchange admin permissions abuse, malware activity, potential external and internal threats, and information governance risks. Several of the [default alert policies](https://docs.microsoft.com/microsoft-365/compliance/alert-policies#default-alert-policies) can trigger automated investigations. These include the following:

- A potentially malicious URL click is detected

- An email message is reported by a user as phish

- Email messages containing malware are removed after delivery

- Email messages containing phish URLs are removed after delivery

- Suspicious email sending patterns are detected

- A user is restricted from sending email

## Required permissions to use AIR capabilities

Permissions are granted through certain roles, such as those that are described in the following table: 

|Task |Role(s) required |
|--|--|
|To set up AIR features |One of the following roles: <br/>- Global Administrator<br/>- Security Administrator <br/>These roles can be assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) or in the [Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center). |
|To approve or reject recommended actions|One of the following roles, assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) or in the [Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center)):<br/>- Global Administrator <br/>- Security Administrator<br/>- Security Reader <br/>--- and ---<br/>- Search and Purge (this role is assigned only in the [Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center). You might have to create a new role group there and add the Search and Purge role to that new role group.)

[Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp#office-365-atp-plan-1-and-plan-2) licenses should be assigned to:
- Security administrators (including global administrators)
- Your organization's security operations team (including security readers and those with the Search and Purge role)
- End users

In addition, [Microsoft Defender for Office 365 policies](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp#configure-atp-policies) must be defined and applied in order for protection to be in place.

## Next steps

- [See details and results of an automated investigation](https://docs.microsoft.com/microsoft-365/security/office-365-security/air-view-investigation-results#view-details-of-an-investigation)

- [Review and approve pending actions](https://docs.microsoft.com/microsoft-365/security/office-365-security/air-remediation-actions)

## Related articles

- [Automated investigation and remediation in Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Automated investigation and response in Microsoft 365 Defender](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir)
