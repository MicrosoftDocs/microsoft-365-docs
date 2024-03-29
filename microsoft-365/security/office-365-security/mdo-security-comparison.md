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

This article explains the _protection ladder_ in Microsoft 365 organizations that starts with Exchange Online Protection (EOP) and continues in Microsoft Defender for Office 365 Plan 1 and Microsoft Defender for Office 365 Plan 2. This article is intended for Security Operations (SecOps) personnel and admins in Microsoft 365.

> [!TIP]
> If you're using **Outlook.com**, **Microsoft 365 Family**, or **Microsoft 365 Personal**, and need information about _Safelinks_ or _advanced attachment scanning_, see [Advanced Outlook.com security for Microsoft 365 subscribers](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).
>
> If you're new to your Microsoft 365 subscription and would like to know your licenses before you begin, go the **Your products** page in the Microsoft 365 admin center at <https://admin.microsoft.com/Adminportal/Home#/subscriptions>.

All Microsoft 365 subscriptions include built-in security and protection features. The goals and available actions of these features vary. In Microsoft 365, there are three main security services (or products) that are tied to your subscription type:

1. **Exchange Online Protection (EOP)**: Included in any subscription that includes Exchange Online mailboxes.
2. **Microsoft Defender for Office 365 365 Plan 1**: Included in some Microsoft 365 subscriptions with Exchange Online mailboxes (for example, Microsoft 365 Business Premium).
3. **Microsoft Defender for Office 365 365 Plan 2**: Included in some Microsoft 365 subscriptions with Exchange Online mailboxes (for example, Microsoft 365 E5).

Defender for Office 365 always includes EOP. Standalone EOP subscriptions are available to protect on-premises email systems. Defender for Office 365 subscriptions are available as add-ins to most Microsoft 365 organizations with Exchange Online mailboxes, or you can add Defender for Office 365 to standalone EOP.

Virtually all of the features in Defender for Office 365 Plan 1 are also included in Plan 2. Defender for Office 365 Plan 2 contains many features that aren't available in Plan 1.

> [!TIP]
> Use the following article to determine if Defender for Office 365 Plan 1 or Defender for Office 365 Plan to licenses are included in a Microsoft 365 subscription: [Product names and service plan identifiers for licensing](/entra/identity/users/licensing-service-plan-reference).
>
> If your subscription is neither Microsoft 365 E3 or E5, you can use [this page](https://www.microsoft.com/microsoft-365/exchange/advance-threat-protection#coreui-contentrichblock-x07wids) to see if you can upgrade to Defender for Office 365.

Although the following summary descriptions for EOP and Defender for Office 365 are valid:

- **EOP** prevents broad, volume-based, known attacks.
- **Defender for Office 365 Plan 1** protects email and collaboration from zero-day malware, phishing, and business email compromise (BEC).
- **Defender for Office 365 Plan 2** adds post-breach investigation, hunting, and response, as well as automation, and simulation (for training).

Let's start thinking about the _architecture_ of EOP and Defender for Office 365 as _cumulative layers of security_, with each layer having a different _security emphasis_ as described in the following diagram:

:::image type="content" source="../../media/eop-mdop1-mdop2-comparison.png" alt-text="EOP and Defender for Office 365 and their relationships to one another with service emphasis, including a note for email authentication." lightbox="../../media/eop-mdop1-mdop2-comparison.png":::

It's important to reiterate that the diagram describes the _security emphasis_ for EOP and Defender for Office 365. All three of the services are capable of protecting, detecting, investigating, and responding to threats. But as you move up the protection ladder, the available features and ease of use increases.

Whether you're using the onmicrosoft.com domain only or custom domains for email in Microsoft 365, it's important to configure email authentication for used and unused domains so Microsoft 365 can more accurately protect against spoofing attacks. For more information, see [Email authentication in Microsoft 365](email-authentication-about.md).

## The Microsoft 365 security ladder from EOP to Defender for Office 365

It can be difficult to identity the advantages of Defender for Office 365 over EOP. Let's look at the capabilities of each product using the following security emphases:

- Preventing and detecting threats.
- Investigating threats.
- Responding to threats

### EOP capabilities

The capabilities of **EOP** are summarized in the following table:

|Prevent/Detect|Investigate|Respond|
|---|---|---|
|<ul><li>[Anti-malware protection](anti-malware-protection-about.md)<sup>\*</sup></li><li>[Anti-spam protection](anti-spam-protection-about.md)<sup>\*</sup>, including [bulk email protection](anti-spam-spam-vs-bulk-about.md)</li><li>[Anti-phishing (spoofing) protection](anti-phishing-protection-spoofing-about.md)<sup>\*</sup>, including the [Spoof intelligence insight](anti-spoofing-spoof-intelligence.md)</li><li>[Outbound spam filtering](outbound-spam-protection-about.md)</li><li>[Connection filtering](connection-filter-policies-configure.md)</li><li>[Quarantine](quarantine-about.md) and [quarantine policies](quarantine-policies.md)</li><li>False positives and false negative reporting by [admin submissions to Microsoft](submissions-admin.md) and [user reported messages](submissions-user-reported-messages-custom-mailbox.md)</li><li>[Allow and block entries in the Tenant Allow/Block List](tenant-allow-block-list-about.md) for: <ul><li>Domains and email addresses</li><li>Spoof</li><li>URLs</li><li>Files</li></ul></li></ul>|<ul><li>[Audit log search](audit-log-search-defender-portal.md)</li><li>[Message Trace](message-trace-defender-portal.md)</li><li>[Email security reports](reports-email-security.md)</li></ul>|<ul><li>[Zero-hour auto purge (ZAP) for email](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-email-messages)</li><li>Refine and test entries in the [Tenant Allow/Block List](tenant-allow-block-list-about.md)</li></ul>|

<sup>\*</sup> The associated protection polices are available in default policies, custom policies, and [the Standard and Strict preset security policies](preset-security-policies.md). For help deciding which method to use, see [Determine your protection policy strategy](mdo-deployment-guide.md#determine-your-protection-policy-strategy).

For more information about EOP, see [Exchange Online Protection overview](eop-about.md).

### Defender for Office 365 Plan 1 capabilities

The additional features that you get in **Defender for Office 365 Plan 1** on top of EOP are described in the following table:

|Prevent/Detect|Investigate|Respond|
|---|---|---|
|<ul><li>The following [additional features in anti-phishing policies](anti-phishing-protection-about.md#additional-anti-phishing-protection-in-microsoft-defender-for-office-365): <ul><li>User and domain impersonation protection</li><li>Mailbox intelligence impersonation protection (contact graph)</li><li>Advanced phishing thresholds</li></ul></li><li>[Safe Attachments in email](safe-attachments-about.md)</li><li>[Safe Attachments for files in SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)</li><li>[Safe Links in email, Office clients, and Teams](safe-links-about.md)</li><li>Email & collaboration alerts at <https://security.microsoft.com/viewalertsv2><li>SIEM integration API for **alerts**</li></ul>|<ul><li>SIEM integration API for **detections**</li><li>Real-time detections (the [Malware](threat-explorer-real-time-detections-about.md#malware-view-in-threat-explorer-and-real-time-detections), [Phish](threat-explorer-real-time-detections-about.md#malware-view-in-threat-explorer-and-real-time-detections), and [Content malware](threat-explorer-real-time-detections-about.md#content-malware-view-in-threat-explorer-and-real-time-detections) views)</li><li>[URL trace](../defender-endpoint/investigate-domain.md)</li><li>[Defender for Office 365 reports](reports-defender-for-office-365.md)</li></ul>|Same as EOP</ul>

So, Defender for Office 365 P1 expands on the ***prevention*** side of the house, and adds extra forms of ***detection***.

Defender for Office 365 P1 also adds **Real-time detections** for investigations. The presence of **Real-time detections** as a selection in the Microsoft Defender portal means you have Defender for Office 365 P1.

### Defender for Office 365 Plan 2 capabilities

If you evaluate and ultimately purchase **Defender for Office 365 P2**, you get these additional capabilities over EOP and Defender for Office 365 P1:

|Prevent/Detect|Investigate|Respond|
|---|---|---|
|<ul><li>Attack simulation training</li>|<li>**Threat Explorer**</li><li>Threat Trackers</li><li>Campaign views</li>|<li>Automated Investigation and Response (AIR)</li><li>AIR from Threat Explorer</li><li>AIR for compromised users</li><li>SIEM Integration API for Automated Investigations</li>

So, Defender for Office 365 P2 expands on the ***investigation and response*** side of the house, and adds a new hunting strength: Automation.

In Defender for Office 365 P2, the primary hunting tool is called **Threat Explorer** rather than Real-time detections. If you see Threat Explorer when you navigate to the Microsoft Defender portal, you're in Defender for Office 365 P2.

To get into the details of Defender for Office 365 P1 and P2, **[jump to this article](defender-for-office-365.md)**.

> [!TIP]
> EOP and Defender for Office 365 are also different when it comes to users. In EOP and Defender for Office 365 P1, the focus is *awareness*. The [Microsoft Report Message and Report Phishing add-ins](submissions-users-report-message-add-in-configure.md) are available for users to report messages that they find suspicious.
>
> In Defender for Office 365 P2 (which contains everything in EOP and P1), the focus shifts to *further training* for end-users. The Security Operations Center has access to a powerful *Threat Simulator* tool, and the end-user metrics it provides.

## Defender for Office 365 Plan 1 vs. Plan 2 cheat sheet

This quick-reference helps you understand what capabilities come with each Defender for Office 365 subscription. When combined with your knowledge of EOP features, it can help business decision makers determine what Defender for Office 365 is best for their needs.

|Defender for Office 365 Plan 1|Defender for Office 365 Plan 2|
|---|---|
|Prevent and detect capabilities: <ul><li>[Safe Attachments](safe-attachments-about.md), including [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)</li><li>[Safe Links](safe-links-about.md)</li><li>[Advanced phishing thresholds and impersonation protection](anti-phishing-policies-about.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)</li><li>[Real-time detections](threat-explorer-real-time-detections-about.md)</li></ul>|Everything in Defender for Office 365 Plan 1 capabilities <br/><br/> --- plus --- <br/><br/> Prevent and detect capabilities: <ul><li>[Attack simulation training](attack-simulation-training-simulations.md)</li></ul> <br/> Automate, investigate, and respond capabilities: <ul><li>[Threat Trackers](threat-trackers.md)</li><li>[Threat Explorer](threat-explorer-real-time-detections-about.md)</li><li>[Automated investigation and response](air-about.md)</li><li>[Proactively hunt for threats with advanced hunting in Microsoft Defender XDR](../defender/advanced-hunting-overview.md)</li><li>[Investigate incidents in Microsoft Defender XDR](../defender/investigate-incidents.md)</li><li>[Investigate alerts in Microsoft Defender XDR](../defender/investigate-alerts.md)</li></ul>|

- Defender for Office 365 Plan 2 is included in Microsoft 365 E5, Microsoft 365 A5, and Microsoft 365 E5.
- Defender for Office 365 Plan 1 is included in Microsoft 365 Business Premium.
- Defender for Office 365 Plan 1 and Defender for Office 365 Plan 2 are each available as an add-on for certain subscriptions. To learn more, see [Feature availability across Defender for Office 365 plans](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).
- [Safe Documents](safe-documents-in-e5-plus-security-about.md) is available to users with the Microsoft 365 A5 or Microsoft 365 E5 Security licenses (not included in Defender for Office 365 plans).
- If your current subscription doesn't include Defender for Office 365 Plan 2, you can [try Defender for Office 365](try-microsoft-defender-for-office-365.md) free for 90 days. Or, [contact sales to start a trial](https://info.microsoft.com/ww-landing-M365SMB-web-contact.html).
- Defender for Office 365 P2 customers have access to **Microsoft Defender XDR integration** to efficiently detect, review, and respond to incidents and alerts.

> [!TIP]
> ***Insider tip***. You can use the Microsoft Learn table of contents to learn about EOP and Defender for Office 365. Navigate back to this page, [Microsoft 365 Security overview](index.yml), and you'll notice that table of contents organization in the side-bar. It begins with Deployment (including migration) and then continues into prevention, detection, investigation, and response.
>
> This structure is divided so that **Security Administration** topics are followed by **Security Operations** topics. If you're a new member of either job role, use the link in this tip, and your knowledge of the table of contents, to help learn the space. Remember to use *feedback links* and *rate articles* as you go. Feedback helps us improve what we offer you.

## Where to go next

If you're a Security Admin, you may need to configure DKIM or DMARC for your mail. You may want to roll out 'Strict' security presets for your priority users, or look for what's new in the product. Or if you're with Security Ops, you may want to use Real-time detections or Threat Explorer to investigate and respond, or train end-user detection with Attack Simulator. Either way, here are some additional recommendations for what to look at next:

[Email Authentication, including SPF, DKIM, and DMARC (with links to setup of all three)](email-authentication-about.md)

[See the specific recommended 'golden' configs](recommended-settings-for-eop-and-office365.md) and [use their recommended presets to configure security policies quickly](preset-security-policies.md)

Catch up on [what's new in Microsoft Defender for Office 365 (including EOP developments)](defender-for-office-365-whats-new.md)

[Use Threat Explorer or Real-time detections](threat-explorer-real-time-detections-about.md)

Use [Attack simulation training](attack-simulation-training-simulations.md)
