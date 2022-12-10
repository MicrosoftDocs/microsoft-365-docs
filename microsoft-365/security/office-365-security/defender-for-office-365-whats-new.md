---
title: What's new in Microsoft Defender for Office 365
description: Learn about the new features and functionality available in the latest release of Microsoft Defender for Office 365.
keywords: what's new in Microsoft Defender for Office 365, ga, generally available, capabilities, available, new
search.appverid: met150
ms.sitesec: library
ms.pagetype: security
f1.keywords: NOCSH
ms.author: tracyp
author: msfttracyp
ms.localizationpriority: medium
ms.date: 09/20/2022
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365initiative-defender-office365
ms.topic: conceptual
ms.custom: seo-marvel-apr2020
ms.reviewer: vippand
ms.subservice: mdo
ms.service: microsoft-365-security
---

# What's new in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to:**

- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

This article lists new features in the latest release of Microsoft Defender for Office 365. Features that are currently in preview are denoted with **(preview)**.

Learn more by watching [this video](https://www.youtube.com/watch?v=Tdz6KfruDGo&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=3).

For more information on what's new with other Microsoft Defender security products, see:

- [What's new in Microsoft 365 Defender](../defender/whats-new.md)
- [What's new in Microsoft Defender for Endpoint](../defender-endpoint/whats-new-in-microsoft-defender-endpoint.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Defender for Cloud Apps](/cloud-app-security/release-notes)

## October 2022

- **[Manage your allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md):**
  - With **allow expiry management** (currently in private preview), if Microsoft has not learned from the allow, Microsoft will automatically extend the expiry time of allows, which are going to expire soon, by 30 days to prevent legitimate email from going to junk or quarantine again.
  - Customers in the government cloud environments will now be able to create allow and block entries for URLs and attachments in the Tenant Allow/Block List using the admin URL and email attachment submissions. The data submitted through the submissions experience will not leave the customer tenant, thus satisfying the data residency commitments for government cloud clients.
- **Enhancement in URL click alerts:**
  - With the new lookback scenario, the "A potentially malicious URL click was detected" alert will now include any clicks during the _past 48 hours_ (for emails) from the time the malicious URL verdict is identified. 

## September 2022

**Automatic redirection from Office 365 Security & Compliance Center to Microsoft 365 Defender portal:** Automatic redirection begins for users accessing the security solutions in Office 365 Security & Compliance center (protection.office.com) to the appropriate solutions in Microsoft 365 Defender portal (security.microsoft.com). This is for all security workflows like: Alerts, Threat Management, and Reports. 

- Redirection URLs:
  - GCC Environment:
    - From Office 365 Security & Compliance Center URL: protection.office.com
    - To Microsoft 365 Defender URL: security.microsoft.com
  - GCC-High Environment:
    - From Office 365 Security & Compliance Center URL: scc.office365.us
    - To Microsoft 365 Defender URL: security.microsoft.us
  - DoD Environment:
    - From Office 365 Security & Compliance Center URL: scc.protection.apps.mil
    - To Microsoft 365 Defender URL: security.apps.mil
- Items in the Office 365 Security & Compliance Center that are not related to security aren't redirected to Microsoft 365 Defender. For compliance solutions redirection to Microsoft 365 Compliance Center, see Message Center post 244886. 
- This is a continuation of [Microsoft 365 Defender delivers unified XDR experience to GCC, GCC High and DoD customers - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/public-sector-blog/microsoft-365-defender-delivers-unified-xdr-experience-to-gcc/ba-p/3263702), announced in March 2022.
- This change enables users to view and manage additional Microsoft 365 Defender security solutions in one portal.
- This change impacts all customers who use the Office 365 Security & Compliance Center (protection.office.com), including Microsoft Defender for Office (Plan 1 or Plan 2), Microsoft 365 E3 / E5, Office 365 E3/ E5, and Exchange Online Protection. For the full list, see [Security & Compliance Center - Service Descriptions | Microsoft Docs](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)
- This change impacts all users who log in to the Office 365 Security and Compliance portal (protection.office.com), including security teams and end-users who access the Email Quarantine experience, at the **Microsoft Defender Portal** > **Review** > **Quarantine**.
- Redirection is enabled by default and impacts all users of the Tenant.
- Global Administrators and Security Administrators can turn on or off redirection in the Microsoft 365 Defender portal by navigating to **Settings** > **Email & collaboration** > **Portal redirection** and switch the redirection toggle.
- **Built-in protection**: A profile that enables a base level of Safe Links and Safe Attachments protection that's on by default for all Defender for Office 365 customers. To learn more about this new policy and order of precedence, see [Preset security policies](preset-security-policies.md) and to learn about the specific Safe Links and Safe Attachment controls set, see [Safe Attachments settings](recommended-settings-for-eop-and-office365.md#safe-attachments-settings) and [Safe Links settings](recommended-settings-for-eop-and-office365.md#safe-links-settings).
- **Bulk Complaint Level** is now available in the EmailEvents table in Advanced Hunting with numeric BCL values from 0 to 9. A higher BCL score indicates that bulk message is more likely to generate complaints and is more likely to be spam.

## July 2022

- [Introducing actions into the email entity page](mdo-email-entity-page.md): Admins can take preventative, remediation and submission actions from email entity page.

## June 2022

- [Use the Microsoft 365 Defender portal to create allow entries for spoofed senders in the Submissions portal](tenant-allow-block-list-email-spoof-configure.md#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-spoofed-senders-in-the-submissions-portal): Create allowed spoofed sender entries using the Tenant Allow/Block List.

- [Impersonation allows using admin submission](tenant-allow-block-list-email-spoof-configure.md#about-impersonated-domains-or-senders): Add allows for impersonated senders using the Submissions page in Microsoft 365 Defender.

- [View converted admin submission from user reported messages](submissions-admin.md#convert-user-reported-messages-in-the-reporting-mailbox-into-admin-submissions): Configure a reporting mailbox to intercept user-reported messages without sending the messages to Microsoft for analysis.

- [View associated alert for user and admin submissions](submissions-admin.md#view-associated-alert-for-user-and-admin-email-submissions): View the corresponding alert for each user reported phish message and admin email submission.

- [Configurable impersonation protection custom users and domains and increased scope within Preset policies](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/configurable-impersonation-protection-and-scope-for-preset/ba-p/3294459):
  - (Choose to) Apply Preset Strict/Standard policies to entire organization and avoid the hassle of selecting specific recipient users, groups, or domains, thereby securing all recipient users of your organization.
  - Configure impersonation protection settings for custom users and custom domains within Preset Strict/Standard policies and automatically protect your targeted users and targeted domain against impersonation attacks.

- [Simplifying the quarantine experience (part two) in Microsoft 365 Defender for office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/simplifying-the-quarantine-experience-part-two/ba-p/3354687): Highlights additional features to make the quarantine experience even easier to use.

- [Introducing differentiated protection for priority accounts in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/introducing-differentiated-protection-for-priority-accounts-in/ba-p/3283838): Introducing GCC, GCC-H, and DoD availability of differentiated protection for priority accounts.

## April 2022

- [Introducing the URLClickEvents table in Microsoft 365 Defender Advanced Hunting](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/introducing-the-urlclickevents-table-in-advanced-hunting-with/ba-p/3295096): Introducing the UrlClickEvents table in advanced hunting with Microsoft Defender for Office 365.
- [Manual email remediation enhancements](/microsoft-365/security/office-365-security/remediate-malicious-email-delivered-office-365): Bringing manual email purge actions taken in Microsoft Defender for Office 365 to the Microsoft 365 Defender (M365D) unified Action Center using a new action-focused investigation.
- [Introducing differentiated protection for priority accounts in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/introducing-differentiated-protection-for-priority-accounts-in/ba-p/3283838): Introducing the general availability of differentiated protection for priority accounts.

## March 2022

- [Streamlined the submission experience in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/streamlining-the-submissions-experience-in-microsoft-defender/ba-p/3152080): Introducing the new unified and streamlined submission process to make your experience simpler.

## January 2022

- [Updated Hunting and Investigation Experiences for Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/updated-hunting-and-investigation-experiences-for-microsoft/ba-p/3002015): Introducing the email summary panel for experiences in Defender for Office 365, along with experience updates for Threat Explorer and Real-time detections.

## October 2021

- [Advanced Delivery DKIM enhancement](skip-filtering-phising-simulations-sec-ops-mailboxes.md): Added support for DKIM domain entry as part of third-party phishing simulation configuration.
- [Secure by Default](secure-by-default.md): Extended Secure by Default for Exchange mail flow rules (also known as transport rules).

## September 2021

- [Improved reporting experience in Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/improving-the-reporting-experience-in-microsoft-defender-for/ba-p/2760898)
- [Quarantine policies](quarantine-policies.md): Admins can configure granular control for recipient access to quarantined messages and customize end-user spam notifications.
  - [Video of admin experience](https://youtu.be/vnar4HowfpY)
  - [Video of end-user experience](https://youtu.be/s-vozLO43rI)
  - Other new capabilities coming to the quarantine experience are described in this blog post: [Simplifying the Quarantine experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/simplifying-the-quarantine-experience/ba-p/2676388).
- Portal redirection by default begins, redirecting users from Security & Compliance to Microsoft 365 Defender <https://security.microsoft.com>. For more on this, see: [Redirecting accounts from Office 365 Security & Compliance Center to Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-security-mdo-redirection)

## August 2021

- [Admin review for reported messages](admin-review-reported-message.md): Admins can now send templated messages back to end users after they review reported messages. The templates can be customized for your organization and based on your admin's verdict as well.
- ou can now add allow entries to the Tenant Allow/Block List if the blocked message was submitted as part of the admin submission process. Depending on the nature of the block, the submitted URL, file, and/or sender allow will be added to the Tenant Allow/Block List. In most cases, the allows are added to give the system some time and allow it naturally if warranted. In some cases, Microsoft manages the allow for you. For more information, see:
  - [Use the Microsoft 365 Defender portal to create allow entries for URLs in the Submissions portal](tenant-allow-block-list-urls-configure.md#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-urls-in-the-submissions-portal)
  - [Use the Microsoft 365 Defender portal to create allow entries for files in the Submissions portal](tenant-allow-block-list-files-configure.md#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-files-in-the-submissions-portal)
  - [Use the Microsoft 365 Defender portal to create allow entries for domains and email addresses in the Submissions portal](tenant-allow-block-list-email-spoof-configure.md#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-domains-and-email-addresses-in-the-submissions-portal)

## July 2021

- [Email analysis improvements in automated investigations](email-analysis-investigations.md)
- [Advanced Delivery](skip-filtering-phising-simulations-sec-ops-mailboxes.md): Introducing a new capability for configuring the delivery of third-party phishing simulations to users and unfiltered messages to security operation mailboxes.
- [Safe Links for Microsoft Teams](safe-links-about.md#safe-links-settings-for-microsoft-teams)
- New alert policies for the following scenarios: compromised mailboxes, Forms phishing, malicious mails delivered due to overrides and rounding out ZAP
  - Suspicious email forwarding activity
  - User restricted from sharing forms and collecting responses
  - Form blocked due to potential phishing attempt
  - Form flagged and confirmed as phishing
  - [New alert policies for ZAP](../../compliance/new-defender-alert-policies.md)
- Microsoft Defender for Office 365 alerts are now integrated into Microsoft 365 Defender - [Microsoft 365 Defender Unified Alerts Queue and Unified Alerts Queue](../defender/investigate-alerts.md)
- [User Tags](user-tags-about.md) are now integrated into Microsoft Defender for Office 365 alerting experiences, including: the alerts queue and details in Office 365 Security & Compliance, and scoping custom alert policies to user tags to create targeted alert policies.
  - Tags are also available in the unified alerts queue in the Microsoft 365 Defender portal (Microsoft Defender for Office 365 Plan 2)

## June 2021

- New first contact safety tip setting within anti-phishing policies. This safety tip is shown when recipients first receive an email from a sender or don't often receive email from a sender. For more information on this setting and how to configure it, see the following articles:
  - [First contact safety tip](anti-phishing-policies-about.md#first-contact-safety-tip)
  - [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md)
  - [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md)

## April/May 2021

- [Email entity page](mdo-email-entity-page.md): A unified 360-degree view of an email with enriched information around threats, authentication and detections, detonation details, and a brand-new email preview experience.
- [Office 365 Management API](/office/office-365-management-api/office-365-management-activity-api-schema#email-message-events): Updates to EmailEvents (RecordType 28) to add delivery action, original and latest delivery locations, and updated detection details.
- [Threat Analytics for Defender for Office 365](/microsoft-365/security/defender/threat-analytics): View active threat actors, popular techniques and attack surfaces, along with extensive reporting from Microsoft researchers around ongoing campaigns.

## February/March 2021

- Alert ID integration (search using Alert ID and Alert-Explorer navigation) in [hunting experiences](threat-explorer-about.md)
- Increasing the limits for Export of records from 9990 to 200,000 in [hunting experiences](threat-explorer-about.md)
- Extending the Explorer (and Real-time detections) data retention and search limit for trial tenants from 7 (previous limit) to 30 days in [hunting experiences](threat-explorer-about.md)
- New hunting pivots called **Impersonated domain** and **Impersonated user** within the Explorer (and Real-time detections) to search for impersonation attacks against protected users or domains. For more information, see [details](threat-explorer-about.md#view-phishing-emails-sent-to-impersonated-users-and-domains). (Microsoft Defender for Office 365 Plan 1 or Plan 2)

## Microsoft Defender for Office 365 Plan 1 and Plan 2

Did you know that Microsoft Defender for Office 365 is available in two plans? [Learn more about what each plan includes](defender-for-office-365.md#whats-the-difference-between-microsoft-defender-for-office-365-plan-1-and-plan-2).

## See also

- [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap)
- [Microsoft Defender for Office 365 Service Description](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description)
