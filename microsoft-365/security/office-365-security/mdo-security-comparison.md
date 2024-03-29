---
title: Office 365 Security including Microsoft Defender for Office 365 and Exchange Online Protection
ms.author: chrisda
author: chrisda
manager: deniseb
audience: Admin
ms.topic: conceptual
ms.localizationpriority: high
search.appverid: 
  - MET150
  - MOE150
ms.collection: 
  - m365-security
  - m365initiative-defender-office365
  - EngageScoreSep2022
  - ContentEngagementFY23
  - tier1
description: Security in Office 365, from EOP to Defender for Office 365 Plans 1 and 2, Standard vs. Strict security configurations, and more. Understand what you have, and how to secure your properties.
ms.subservice: mdo
ms.service: microsoft-365-security
adobe-target: true
ms.date: 3/28/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
---

# Microsoft Defender for Office 365 security comparison

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

This article explains the _protection ladder_ in Microsoft 365 organizations. The protection ladder starts with Exchange Online Protection (EOP) and continues through to Microsoft Defender for Office 365 Plan 1 and Microsoft Defender for Office 365 Plan 2. This article is intended for Security Operations (SecOps) personnel and admins in Microsoft 365.

> [!TIP]
> If you're using **Outlook.com**, **Microsoft 365 Family**, or **Microsoft 365 Personal**, and need information about _Safelinks_ or _advanced attachment scanning_, see [Advanced Outlook.com security for Microsoft 365 subscribers](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).
>
> If you're new to your Microsoft 365 subscription and would like to know your licenses before you begin, go the **Your products** page in the Microsoft 365 admin center at <https://admin.microsoft.com/Adminportal/Home#/subscriptions>.

All Microsoft 365 subscriptions include built-in security and protection features. The goals and available actions of these features vary. In Microsoft 365, there are three main security services (or products):

1. **Exchange Online Protection (EOP)**: Included in any subscription that includes Exchange Online mailboxes.
2. **Microsoft Defender for Office 365 365 Plan 1**: Included in some Microsoft 365 subscriptions with Exchange Online mailboxes that cater to small to medium-sized businesses (for example, Microsoft 365 Business Premium).
3. **Microsoft Defender for Office 365 365 Plan 2**: Included in some Microsoft 365 subscriptions with Exchange Online mailboxes that cater to enterprise organizations (for example, Microsoft 365 E5, Microsoft 365 A5, and Microsoft 365 GCC G5).

Defender for Office 365 Plan 1 contains a subset of the features that are available in Plan 2. Defender for Office 365 Plan 2 contains many features that aren't available in Plan 1.

Defender for Office 365 always includes EOP. Standalone EOP subscriptions are available to [protect on-premises email environments](/exchange/standalone-eop/standalone-eop). Defender for Office 365 subscriptions are available as add-ins to most Microsoft 365 organizations with Exchange Online mailboxes, or you can add Defender for Office 365 to standalone EOP.

> [!TIP]
> Use the following article to determine if Defender for Office 365 Plan 1 or Plan 2 licenses are included in a Microsoft 365 subscription: [Product names and service plan identifiers for licensing](/entra/identity/users/licensing-service-plan-reference).
>
> If your subscription is neither Microsoft 365 E3 or E5, you can use [this page](https://www.microsoft.com/microsoft-365/exchange/advance-threat-protection#coreui-contentrichblock-x07wids) to see if you can upgrade to Defender for Office 365.

EOP and Defender for Office 365 can be summarized with the following descriptions:

- **EOP** prevents broad, volume-based, known email attacks.
- **Defender for Office 365 Plan 1** protects email and collaboration features from zero-day malware, phishing, and business email compromise (BEC).
- **Defender for Office 365 Plan 2** adds post-breach investigation, hunting, and response, as well as automation, and phishing simulations.

However, you can also think about the _architecture_ of EOP and Defender for Office 365 as _cumulative layers of security_, with each layer having a different _security emphasis_. This security emphasis is shown in the following diagram:

:::image type="content" source="../../media/eop-mdop1-mdop2-comparison.png" alt-text="EOP and Defender for Office 365 and their relationships to one another with service emphasis, including a note for email authentication." lightbox="../../media/eop-mdop1-mdop2-comparison.png":::

It's important to reiterate that the diagram describes the security _emphasis_ for EOP and Defender for Office 365. All three of the services are capable of protecting, detecting, investigating, and responding to threats. But as you move up the protection ladder, the _available features_ and _automation_ increase.

Whether you're using the onmicrosoft.com domain only or custom domains for email in Microsoft 365, it's important to configure email authentication for your used and unused domains. SPF, DKIM, and DMARC records in DNS allow Microsoft 365 to more accurately protect against spoofing attacks. For more information, see [Email authentication in Microsoft 365](email-authentication-about.md).

## The Microsoft 365 security ladder from EOP to Defender for Office 365

It can be difficult to identity the advantages of Defender for Office 365 over EOP. The following subsections describe the capabilities of each product using the following security emphases:

- Preventing and detecting threats.
- Investigating threats.
- Responding to threats.

### EOP capabilities

The capabilities of **EOP** are summarized in the following table:

|Prevent/Detect|Investigate|Respond|
|---|---|---|
|<ul><li>[Anti-malware protection](anti-malware-protection-about.md)<sup>\*</sup></li><li>[Anti-spam protection](anti-spam-protection-about.md)<sup>\*</sup>, including [bulk email protection](anti-spam-spam-vs-bulk-about.md)</li><li>[Anti-phishing (spoofing) protection](anti-phishing-protection-spoofing-about.md)<sup>\*</sup>, including the [Spoof intelligence insight](anti-spoofing-spoof-intelligence.md)</li><li>[Outbound spam filtering](outbound-spam-protection-about.md)</li><li>[Connection filtering](connection-filter-policies-configure.md)</li><li>[Quarantine](quarantine-about.md) and [quarantine policies](quarantine-policies.md)</li><li>False positives and false negative reporting by [admin submissions to Microsoft](submissions-admin.md) and [user reported messages](submissions-user-reported-messages-custom-mailbox.md)</li><li>[Allow and block entries in the Tenant Allow/Block List](tenant-allow-block-list-about.md) for: <ul><li>Domains and email addresses</li><li>Spoof</li><li>URLs</li><li>Files</li></ul></li></ul>|<ul><li>[Audit log search](audit-log-search-defender-portal.md)</li><li>[Message Trace](message-trace-defender-portal.md)</li><li>[Email security reports](reports-email-security.md)</li></ul>|<ul><li>[Zero-hour auto purge (ZAP) for email](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-email-messages)</li><li>Refine and test entries in the [Tenant Allow/Block List](tenant-allow-block-list-about.md)</li></ul>|

<sup>\*</sup> The associated protection polices are available in default policies, custom policies, and [the Standard and Strict preset security policies](preset-security-policies.md). For help with deciding which method to use, see [Determine your protection policy strategy](mdo-deployment-guide.md#determine-your-protection-policy-strategy).

For more information about EOP, see [Exchange Online Protection overview](eop-about.md).

### Defender for Office 365 Plan 1 capabilities

Defender for Office 365 Plan 1 expands on the _prevention_ and _detection_ capabilities of EOP.

The additional features that you get in **Defender for Office 365 Plan 1** on top of EOP are described in the following table:

|Prevent/Detect|Investigate|Respond|
|---|---|---|
|<ul><li>The following [additional features in anti-phishing policies](anti-phishing-protection-about.md#additional-anti-phishing-protection-in-microsoft-defender-for-office-365): <ul><li>User and domain impersonation protection</li><li>Mailbox intelligence impersonation protection (contact graph)</li><li>Advanced phishing thresholds</li></ul></li><li>[Safe Attachments in email](safe-attachments-about.md)</li><li>[Safe Attachments for files in SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)</li><li>[Safe Links in email, Office clients, and Teams](safe-links-about.md)</li><li>Email & collaboration alerts at <https://security.microsoft.com/viewalertsv2><li>SIEM integration API for **alerts**</li></ul>|<ul><li>[Real-time detections](threat-explorer-real-time-detections-about.md)<sup>\*</sup></li><li>[The Email entity page](mdo-email-entity-page.md)</li><li>SIEM integration API for **detections**</li><li>[URL trace](../defender-endpoint/investigate-domain.md)</li><li>[Defender for Office 365 reports](reports-defender-for-office-365.md)</li></ul>|<ul><li>Same</li></ul>|

<sup>\*</sup> The presence of **Email & collaboration** \> **Real-time detections** in the Microsoft Defender portal is a quick way to confirm that you have Defender for Office 365 Plan 1.

:::image type="content" source="../../media/te-rtd-select-real-time-detections.png" alt-text="Screenshot of the Real-time detections selection in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-real-time-detections.png":::

### Defender for Office 365 Plan 2 capabilities

Defender for Office 365 Plan 2 expands on the _investigation_ and _response_ capabilities of Plan 1 and EOP, including the addition of _automation_.

The additional features that you get in **Defender for Office 365 Plan 2** on top of Defender for Office 365 Plan 1 and EOP are described in the following table:

|Prevent/Detect|Investigate|Respond|
|---|---|---|
|<ul><li>[Attack simulation training](attack-simulation-training-get-started.md)</li>|<li>[Threat Explorer (Explorer)](threat-explorer-real-time-detections-about.md) instead of Real-time detections.<sup>\*</sup></li><li>[Threat Trackers](threat-trackers.md)</li><li>[Campaigns](campaigns.md)</li></ul>|<ul><li>[Automated Investigation and Response (AIR)](air-about.md): <ul><li>AIR from Threat Explorer</li><li>AIR for compromised users</li></ul></li><li>SIEM Integration API for **Automated Investigations**</li></ul>|

<sup>\*</sup> The presence of **Email & collaboration** \> **Explorer** in the Microsoft Defender portal is a quick way to differentiate between Defender for Office 365 Plan 2 and Plan 1.

:::image type="content" source="../../media/te-rtd-select-threat-explorer.png" alt-text="Screenshot of the Explorer selection in the Email & collaboration section in the Microsoft Defender portal." lightbox="../../media/te-rtd-select-threat-explorer.png":::

## Defender for Office 365 Plan 1 vs. Plan 2 cheat sheet

This quick-reference section summarizes the different capabilities between Defender for Office 365 Plan 1 and Plan 2 that aren't included in EOP.

|Defender for Office 365 Plan 1|Defender for Office 365 Plan 2|
|---|---|
|Prevent and detect capabilities: <ul><li>[Safe Attachments](safe-attachments-about.md), including [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)</li><li>[Safe Links](safe-links-about.md)</li><li>[Anti-phishing policies with impersonation protection and Advanced phishing thresholds](anti-phishing-policies-about.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)</li></ul> <br/> Investigate and respond capabilities: <ul><li>[Real-time detections](threat-explorer-real-time-detections-about.md)</li><li>[The Email entity page](mdo-email-entity-page.md)</li></ul>|Everything in Defender for Office 365 Plan 1 capabilities <br/><br/> --- plus --- <br/><br/> Prevent and detect capabilities: <ul><li>[Attack simulation training](attack-simulation-training-simulations.md)</li></ul> <br/> Investigate and respond capabilities: <ul><li>[Threat Explorer (Explorer)](threat-explorer-real-time-detections-about.md)</li><li>[Threat Trackers](threat-trackers.md)</li><li>[AIR](air-about.md)</li><li>[Proactively hunt for threats with advanced hunting in Microsoft Defender XDR](../defender/advanced-hunting-overview.md)</li><li>[Investigate incidents in Microsoft Defender XDR](../defender/investigate-incidents.md)</li><li>[Investigate alerts in Microsoft Defender XDR](../defender/investigate-alerts.md)</li></ul>|

- For more information, see [Feature availability across Defender for Office 365 plans](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability).
- [Safe Documents](safe-documents-in-e5-plus-security-about.md) is available to users with the Microsoft 365 A5 or Microsoft 365 E5 Security licenses (not included in Defender for Office 365 plans).
- If your current subscription doesn't include Defender for Office 365 Plan 2, you can [try Defender for Office 365](try-microsoft-defender-for-office-365.md) free for 90 days. Or, [contact sales to start a trial](https://info.microsoft.com/ww-landing-M365SMB-web-contact.html).
- Defender for Office 365 P2 customers have access to **Microsoft Defender XDR integration** to efficiently detect, review, and respond to incidents and alerts.

## Where to go next

[Get started with Microsoft Defender for Office 365](mdo-deployment-guide.md)

[Microsoft Defender for Office 365 Security Operations Guide](mdo-sec-ops-guide.md)

[Migrate from a third-party protection service or device to Microsoft Defender for Office 365](migrate-to-defender-for-office-365.md)

[What's new in Microsoft Defender for Office 365)](defender-for-office-365-whats-new.md)
