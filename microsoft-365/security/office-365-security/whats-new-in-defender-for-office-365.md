---
title: What's new in Microsoft Defender for Office 365
description: Learn about the new features and functionality available in the latest release of Microsoft Defender for Office 365.
keywords: what's new in Microsoft Defender for Office 365, ga, generally available, capabilities, available, new
search.appverid: met150
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: msfttracyp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
ms.topic: conceptual
ms.date: 07/27/2021
ms.custom: seo-marvel-apr2020
ms.reviewer: vippand
ms.technology: mdo
ms.prod: m365-security
---

# What's new in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

This article lists new features in the latest release of Microsoft Defender for Office 365. Features that are currently in preview are denoted with **(preview)**.

Learn more by watching [this video](https://www.youtube.com/watch?v=Tdz6KfruDGo&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=3).

> [!TIP]
> Don't have Microsoft Defender for Office 365 yet? [Contact sales to start a trial](https://info.microsoft.com/ww-landing-M365SMB-web-contact.html).

For more information on what's new with other Microsoft Defender security products see:

- [What's new in Microsoft 365 Defender](../defender/whats-new.md)
- [What's new in Microsoft Defender for Endpoint](../defender-endpoint/whats-new-in-microsoft-defender-endpoint.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Cloud App Security](/cloud-app-security/release-notes)

## September 2021

- [Improved reporting experience in Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/improving-the-reporting-experience-in-microsoft-defender-for/ba-p/2760898)
- [Quarantine policies](quarantine-policies.md): Admins can configure granular control for recipient access to quarantined messages and customize end-user spam notifications.
  - [Video of admin experience](https://youtu.be/vnar4HowfpY)
  - [Video of end-user experience](https://youtu.be/s-vozLO43rI)
  - Other new capabilities coming to the quarantine experience are described in this blog post: [Simplifying the Quarantine experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/simplifying-the-quarantine-experience/ba-p/2676388).
- Portal redirection by default begins, redirecting users from Security & Compliance to Microsoft 365 Defender <https://security.microsoft.com>. For more on this, see: [Redirecting accounts from Office 365 Security and Compliance Center to Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-security-mdo-redirection)

## August 2021

- [Admin review for reported messages](admin-review-reported-message.md): Admins can now send templated messages back to end users after they review reported messages. The templates can be customized for your organization and based on your admin's verdict as well.
- [Add allows in the Tenant Allow/Block List](manage-tenant-allows.md): You can now add allow entries to the Tenant Allow/Block List if the blocked message was submitted as part of the admin submission process. Depending on the nature of the block, the submitted URL, file, and/or sender allow will be added to the Tenant Allow/Block List. In most cases, the allows are added to give the system some time and allow it naturally if warranted. In some cases, Microsoft manages the allow for you.

## July 2021

- [Email analysis improvements in automated investigations](email-analysis-investigations.md)
- [Advanced Delivery](configure-advanced-delivery.md): Introducing a new capability for configuring the delivery of third-party phishing simulations to users and unfiltered messages to security operation mailboxes.
- [Safe Links for Microsoft Teams](safe-links.md#safe-links-settings-for-microsoft-teams)
- New alert policies for the following scenarios: compromised mailboxes, Forms phishing, malicious mails delivered due to overrides and rounding out ZAP
  - Suspicious email forwarding activity
  - User restricted from sharing forms and collecting responses
  - Form blocked due to potential phishing attempt
  - Form flagged and confirmed as phishing
  - [New alert policies for ZAP](../../compliance/new-defender-alert-policies.md)
- Microsoft Defender for Office 365 alerts are now integrated into Microsoft 365 Defender - [Microsoft 365 Defender Unified Alerts Queue and Unified Alerts Queue](../defender/investigate-alerts.md)
- [User Tags](user-tags.md) are now integrated into Microsoft Defender for Office 365 alerting experiences, including: the alerts queue and details in Office 365 Security & Compliance, and scoping custom alert policies to user tags to create targeted alert policies. 
  - Tags are also available in the unified alerts queue in the Microsoft 365 Defender center (Microsoft Defender for Office 365 Plan 2)

## June 2021

- New first contact safety tip setting within anti-phishing policies. This safety tip is shown when recipients first receive an email from a sender or do not often receive email from a sender. For more information on this setting and how to configure it, see the following articles:
  - [First contact safety tip](set-up-anti-phishing-policies.md#first-contact-safety-tip)
  - [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md)
  - [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-mdo-anti-phishing-policies.md)

## April/May 2021

- [Email entity page](mdo-email-entity-page.md): A unified 360-degree view of an email with enriched information around threats, authentication and detections, detonation details, and a brand-new email preview experience.
- [Office 365 Management API](/office/office-365-management-api/office-365-management-activity-api-schema#email-message-events): Updates to EmailEvents (RecordType 28) to add delivery action, original and latest delivery locations, and updated detection details.
- [Threat Analytics for Defender for Office 365](/microsoft-365/security/defender/threat-analytics): View active threat actors, popular techniques and attack surfaces, along with extensive reporting from Microsoft researchers around ongoing campaigns.

## February/March 2021

- Alert ID integration (search using Alert ID and Alert-Explorer navigation) in [hunting experiences](threat-explorer.md)
- Increasing the limits for Export of records from 9990 to 200,000 in [hunting experiences](threat-explorer.md)
- Extending the Explorer (and Real-time detections) data retention and search limit for trial tenants from 7 (previous limit) to 30 days in [hunting experiences](threat-explorer.md)
- New hunting pivots called **Impersonated domain** and **Impersonated user** within the Explorer (and Real-time detections) to search for impersonation attacks against protected users or domains. For more information, see [details](threat-explorer.md#view-phishing-emails-sent-to-impersonated-users-and-domains). (Microsoft Defender for Office 365 Plan 1 or Plan 2)


## Microsoft Defender for Office 365 Plan 1 and Plan 2

Did you know that Microsoft Defender for Office 365 is available in two plans? [Learn more about what each plan includes](defender-for-office-365.md#microsoft-defender-for-office-365-plan-1-and-plan-2).

## See also

[Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap)

[Microsoft Defender for Office 365 Service Description](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description)
