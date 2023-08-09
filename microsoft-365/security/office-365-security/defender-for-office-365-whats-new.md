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
ms.date: 7/5/2023
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
ms.custom: seo-marvel-apr2020
ms.reviewer: vippand
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# What's new in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

This article lists new features in the latest release of Microsoft Defender for Office 365. Features that are currently in preview are denoted with **(preview)**.

Learn more by watching [this video](https://www.youtube.com/watch?v=Tdz6KfruDGo&list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf&index=3).

For more information on what's new with other Microsoft Defender security products, see:

- [What's new in Microsoft 365 Defender](../defender/whats-new.md)
- [What's new in Microsoft Defender for Endpoint](../defender-endpoint/whats-new-in-microsoft-defender-endpoint.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Defender for Cloud Apps](/cloud-app-security/release-notes)

## July 2023

- Use anti-phishing policies to control what happens to messages where the sender fails explicit [DMARC](email-authentication-dmarc-configure.md) checks and the DMARC policy is set to `p=quarantine` or `p=reject`. For more information, see [Spoof protection and sender DMARC policies](anti-phishing-policies-about.md#spoof-protection-and-sender-dmarc-policies).
- [User tags](user-tags-about.md) are now fully integrated with Defender for Office 365 reports, including:
  - [Threat protection status report](reports-email-security.md#threat-protection-status-report)
  - [Compromised users report](reports-email-security.md#compromised-users-report)
  - [Top senders and recipients report](reports-email-security.md#top-senders-and-recipients-report)
  - [URL protection report](reports-email-security.md#url-protection-report)

## May 2023

- Built-in reporting in Outlook on the web supports reporting messages from shared mailboxes or other mailboxes by a delegate.
  - Shared mailboxes require Send As or Send On Behalf permission for the user.
  - Other mailboxes require Send As or Send On Behalf permission _and_ Read and Manage permissions for the delegate.

## April 2023

- [Using machine learning to drive more effective simulations in Attack Simulation and Training](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/attack-simulation-training-using-machine-learning-to-drive-more/ba-p/3791023): Make use of intelligent predicted compromise rate (PCR) and Microsoft Defender for Office 365 payload recommendations for utilizing high-quality payloads in your simulation.
- [Training only campaigns available with an expanded library](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/training-only-campaign-is-now-available-with-an-expanded/ba-p/3795237): You can now directly assign training content to your organization without needing to tie training to a phishing simulation campaign. We have also expanded our training module library to more than 70 different modules.

## March 2023

- **Collaboration security for Microsoft Teams**: With the increased use of collaboration tools like Microsoft Teams, the possibility of malicious attacks using URLs and messages has increased as well. Microsoft Defender for Office 365 is extending its [Safe Links](safe-links-about.md) protection with increased capabilities for zero-hour auto purge (ZAP), quarantine, and end user reporting of potential malicious messages to their admins. For more information, see [Microsoft Defender for Office 365 support for Microsoft Teams (Preview)](mdo-support-teams-about.md).
- **Built-in protection: Safe Links time of click protection enabled for email**: By default, Microsoft now protects URLs in email messages at time of click as part of this update to Safe Links settings (_EnableSafeLinksForEmail_) within the Built-in protection preset security policy. To learn about the specific Safe Links protections in the Built-in protection policy, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).
- **Quarantine notifications enabled in preset security policies**: If your organization has enabled or will enable the Standard or Strict preset security policies, the policies will be automatically updated to use the new DefaultFullAccessWithNotificationPolicy quarantine policy (notifications enabled) wherever the DefaultFullAccessPolicy (notifications disabled) was used. To learn more about quarantine notifications, see [Quarantine notifications](quarantine-quarantine-notifications.md). For more information about specific settings in preset security policies, see [Microsoft recommendations for EOP and Defender for Office 365 security settings](recommended-settings-for-eop-and-office365.md).

## January 2023

- [Automatic Tenant Allow/Block List expiration management is now available in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/automatic-tenant-allow-block-list-expiration-management-is-now/ba-p/3723447): Microsoft now automatically removes allow entries from the Tenant Allow/Block List once the system has learned from it. Alternatively, Microsoft extends the expiration time of the allows if the system hasn't learned yet. This behavior prevents legitimate email from going to junk or quarantine.
- **Configuring third-party phishing simulations in Advanced Delivery:** We've expanded "Simulation URLs to allow" limit to 30 URLs. To learn how to configure, see [Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes](skip-filtering-phishing-simulations-sec-ops-mailboxes.md)
- [Enhanced user telemetry in the simulation reports in Attack Simulation Training](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/attack-simulation-training-new-insights-into-targeted-user/ba-p/3673105): As part of our enhanced user telemetry, administrators can now view additional details about how their targeted users are interacting with the phishing payload from phishing simulation campaigns.

## December 2022

- The new Microsoft 365 Defender role-based access control (RBAC) model, with support for Microsoft Defender for Office, is now available in public preview. For more information, see [Microsoft 365 Defender role-based access control (RBAC)](../defender/manage-rbac.md).

- [Use the built-in Report button in Outlook on the web](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web): Use the built-in Report button in Outlook on the web to report messages as phish, junk, and not junk.

## October 2022

- [Automated Investigations email cluster action deduplication](air-review-approve-pending-completed-actions.md): We have added additional checks. If the same investigation cluster is already approved during the past hour, new duplicate remediation isn't processed again.

- [Manage allows and blocks in the Tenant Allow/Block List](tenant-allow-block-list-about.md):
  - With **allow expiry management** (currently in Private Preview), if Microsoft hasn't learned from the allow, Microsoft automatically extends the expiry time of allows, which are going to expire soon, by 30 days to prevent legitimate email from going to junk or quarantine again.
  - Customers in government cloud environments are now able to create allow and block entries for URLs and attachments in the Tenant Allow/Block List using admin submissions for URLs and email attachments. The data submitted through the submissions experience doesn't leave the customer tenant, thus satisfying the data residency commitments for government cloud clients.
- **Enhancement in URL click alerts:**
  - With the new lookback scenario, the "A potentially malicious URL click was detected" alert now includes any clicks during the _past 48 hours_ (for email) from the time the malicious URL verdict is identified.

## September 2022

- **Anti-spoofing enhancement for internal domains and senders:**
  - For spoofing protection, the allowed senders or domains defined in the [anti-spam policy](anti-spam-policies-configure.md) and within user allow lists must now pass authentication in order for the allowed messages to be honored. The change only impacts messages that are considered to be internal (the sender or sender's domain is in an accepted domain in the organization). All other messages will continue to be handled as they are today.

- **Automatic redirection from Office action center to unified action center:** The action center in the Email & Collaboration section **Email & Collaboration** > **Review** > **Action center** (https://security.microsoft.com/threatincidents) is automatically redirected to **Actions & Submissions** > **Action center** > **History** (https://security.microsoft.com/action-center/history).

- **Automatic redirection from Office 365 Security & Compliance Center to Microsoft 365 Defender portal:** Automatic redirection begins for users accessing the security solutions in Office 365 Security & Compliance center (protection.office.com) to the appropriate solutions in Microsoft 365 Defender portal (security.microsoft.com). This change is for all security workflows like (for example, Alerts, Threat Management, and Reports).

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
- Items in the Office 365 Security & Compliance Center that aren't related to security aren't redirected to Microsoft 365 Defender. For compliance solutions redirection to Microsoft 365 Compliance Center, see Message Center post 244886.
- This change is a continuation of [Microsoft 365 Defender delivers unified XDR experience to GCC, GCC High and DoD customers - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/public-sector-blog/microsoft-365-defender-delivers-unified-xdr-experience-to-gcc/ba-p/3263702), announced in March 2022.
- This change enables users to view and manage additional Microsoft 365 Defender security solutions in one portal.
- This change impacts all customers who use the Office 365 Security & Compliance Center (protection.office.com), including Microsoft Defender for Office (Plan 1 or Plan 2), Microsoft 365 E3 / E5, Office 365 E3/ E5, and Exchange Online Protection. For the full list, see [Microsoft 365 guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)
- This change impacts all users who sign in to the Office 365 Security and Compliance portal (protection.office.com), including security teams and end-users who access the Email Quarantine experience, at the **Microsoft Defender Portal** \> **Review** \> **Quarantine**.
- Redirection is enabled by default and impacts all users of the Tenant.
- Global Administrators and Security Administrators can turn on or off redirection in the Microsoft 365 Defender portal by navigating to **Settings** \> **Email & collaboration** > **Portal redirection** and switch the redirection toggle.
- **Built-in protection**: A profile that enables a base level of Safe Links and Safe Attachments protection that's on by default for all Defender for Office 365 customers. To learn more about this new policy and order of precedence, see [Preset security policies](preset-security-policies.md). To learn about the specific Safe Links and Safe Attachment controls that are set, see [Safe Attachments settings](recommended-settings-for-eop-and-office365.md#safe-attachments-settings) and [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).
- **Bulk Complaint Level** is now available in the EmailEvents table in Advanced Hunting with numeric BCL values from 0 to 9. A higher BCL score indicates that bulk message is more likely to generate complaints and is more likely to be spam.

## July 2022

- [Introducing actions into the email entity page](mdo-email-entity-page.md): Admins can take preventative, remediation, and submission actions from the email entity page.

## June 2022

- [Create allow entries for spoofed senders](tenant-allow-block-list-email-spoof-configure.md#create-allow-entries-for-spoofed-senders): Create allowed spoofed sender entries using the Tenant Allow/Block List.

- [Impersonation allows using admin submission](tenant-allow-block-list-email-spoof-configure.md#about-impersonated-domains-or-senders): Add allows for impersonated senders using the **Submissions** page in Microsoft 365 Defender.

- [Submit user reported messages to Microsoft for analysis](submissions-admin.md#submit-user-reported-messages-to-microsoft-for-analysis): Configure a reporting mailbox to intercept user-reported messages without sending the messages to Microsoft for analysis.

- View the associated alerts for [user reported messages](submissions-admin.md#actions-for-user-reported-messages-in-defender-for-office-365-plan-2) and [admin submissions](submissions-admin.md#actions-for-admin-submissions-in-defender-for-office-365-plan-2): View the corresponding alert for each user reported phish message and admin email submission.

- [Configurable impersonation protection custom users and domains and increased scope within Preset policies](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/configurable-impersonation-protection-and-scope-for-preset/ba-p/3294459):
  - (Choose to) Apply Preset Strict/Standard policies to entire organization and avoid the hassle of selecting specific recipient users, groups, or domains, thereby securing all recipient users of your organization.
  - Configure impersonation protection settings for custom users and custom domains within Preset Strict/Standard policies and automatically protect your targeted users and targeted domain against impersonation attacks.

- [Simplifying the quarantine experience (part two) in Microsoft 365 Defender for office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/simplifying-the-quarantine-experience-part-two/ba-p/3354687): Highlights additional features to make the quarantine experience even easier to use.

- [Introducing differentiated protection for priority accounts in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/introducing-differentiated-protection-for-priority-accounts-in/ba-p/3283838): Introducing GCC, GCC-H, and DoD availability of differentiated protection for priority accounts.

## April 2022

- [Introducing the URLClickEvents table in Microsoft 365 Defender Advanced Hunting](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/introducing-the-urlclickevents-table-in-advanced-hunting-with/ba-p/3295096): Introducing the UrlClickEvents table in advanced hunting with Microsoft Defender for Office 365.
- [Manual email remediation enhancements](remediate-malicious-email-delivered-office-365.md): Bringing manual email purge actions taken in Microsoft Defender for Office 365 to the Microsoft 365 Defender (M365D) unified Action Center using a new action-focused investigation.
- [Introducing differentiated protection for priority accounts in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/introducing-differentiated-protection-for-priority-accounts-in/ba-p/3283838): Introducing the general availability of differentiated protection for priority accounts.

## March 2022

- [Streamlined the submission experience in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/streamlining-the-submissions-experience-in-microsoft-defender/ba-p/3152080): Introducing the new unified and streamlined submission process to make your experience simpler.

## January 2022

- [Updated Hunting and Investigation Experiences for Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/updated-hunting-and-investigation-experiences-for-microsoft/ba-p/3002015): Introducing the email summary panel for experiences in Defender for Office 365, along with experience updates for Threat Explorer and Real-time detections.

## October 2021

- [Advanced Delivery DKIM enhancement](skip-filtering-phishing-simulations-sec-ops-mailboxes.md): Added support for DKIM domain entry as part of third-party phishing simulation configuration.
- [Secure by Default](secure-by-default.md): Extended Secure by Default for Exchange mail flow rules (also known as transport rules).

## September 2021

- [Improved reporting experience in Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/improving-the-reporting-experience-in-microsoft-defender-for/ba-p/2760898)
- [Quarantine policies](quarantine-policies.md): Admins can configure granular control for recipient access to quarantined messages and customize end-user spam notifications.
  - [Video of admin experience](https://youtu.be/vnar4HowfpY)
  - [Video of end-user experience](https://youtu.be/s-vozLO43rI)
  - Other new capabilities coming to the quarantine experience are described in this blog post: [Simplifying the Quarantine experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/simplifying-the-quarantine-experience/ba-p/2676388).
- Portal redirection by default begins, redirecting users from Security & Compliance to Microsoft 365 Defender <https://security.microsoft.com>. For more on this, see: [Redirecting accounts from Office 365 Security & Compliance Center to Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-security-mdo-redirection)

## August 2021

- [Admin review for reported messages](submissions-admin-review-user-reported-messages.md): Admins can now send templated messages back to end users after they review reported messages. The templates can be customized for your organization and based on your admin's verdict as well.
- You can now add allow entries to the Tenant Allow/Block List if the blocked message was submitted as part of the admin submission process. Depending on the nature of the block, the submitted URL, file, and/or sender allow will be added to the Tenant Allow/Block List. In most cases, the allows are added to give the system some time and allow it naturally if warranted. In some cases, Microsoft manages the allow for you. For more information, see:
  - [Report good URLs to Microsoft](submissions-admin.md#report-good-urls-to-microsoft)
  - [Report good email attachments to Microsoft](submissions-admin.md#report-good-email-attachments-to-microsoft)
  - [Report good email to Microsoft](submissions-admin.md#report-good-email-to-microsoft)

## July 2021

- [Email analysis improvements in automated investigations](email-analysis-investigations.md)
- [Advanced Delivery](skip-filtering-phishing-simulations-sec-ops-mailboxes.md): Introducing a new capability for configuring the delivery of third-party phishing simulations to users and unfiltered messages to security operation mailboxes.
- [Safe Links for Microsoft Teams](safe-links-about.md#safe-links-settings-for-microsoft-teams)
- New alert policies for the following scenarios: compromised mailboxes, Forms phishing, malicious mails delivered due to overrides and rounding out ZAP
  - Suspicious email forwarding activity
  - User restricted from sharing forms and collecting responses
  - Form blocked due to potential phishing attempt
  - Form flagged and confirmed as phishing
  - [New alert policies for ZAP](../../compliance/new-defender-alert-policies.md)
- Microsoft Defender for Office 365 alerts is now integrated into Microsoft 365 Defender - [Microsoft 365 Defender Unified Alerts Queue and Unified Alerts Queue](../defender/investigate-alerts.md)
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
