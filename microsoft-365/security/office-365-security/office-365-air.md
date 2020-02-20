---
title: "Automatically investigate and respond to threats in Office 365"
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

# Automatically investigate and respond to threats in Office 365

[Office 365 Advanced Threat Protection](office-365-atp.md) Plan 2 includes powerful automated investigation and response (AIR) capabilities that can save your security operations team time and effort. When certain alerts are triggered, one or more security playbooks initiate, and the automated investigation process begins. This empowers your security operations team to focus on high-priority tasks without losing sight of alerts that are triggered. 

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