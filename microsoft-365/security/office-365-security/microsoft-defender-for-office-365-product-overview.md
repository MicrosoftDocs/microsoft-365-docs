---
title: Office 365 Security including Microsoft Defender for Office 365 and Exchange Online Protection
ms.author: tracyp
author: msfttracyp
manager: dansimp
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
ms.date: 06/09/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
---

# Microsoft Defender for Office 365 security product overview

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

This article will introduce you to your new Microsoft Defender for Office 365 security properties in the Cloud. Whether you're part of a Security Operations Center, you're a Security Administrator new to the space, or you want a refresher, let's get started.

> [!CAUTION]
> If you're using **Outlook.com**, **Microsoft 365 Family**, or **Microsoft 365 Personal**, and need *Safe Links* or *Safe Attachments* info, ***click this link***: [Advanced Outlook.com security for Microsoft 365 subscribers](https://support.microsoft.com/office/advanced-outlook-com-security-for-office-365-subscribers-882d2243-eab9-4545-a58a-b36fee4a46e2).

## What is Defender for Office 365 security

Every Office 365 subscription comes with security capabilities. The goals and actions that you can take depend on the focus of these different subscriptions. In Office 365 security, there are three main security services (or products) tied to your subscription type:

1. Exchange Online Protection (EOP)
1. Microsoft Defender for Office 365 Plan 1 (Defender for Office P1)
1. Microsoft Defender for Office 365 Plan 2 (Defender for Office P2)

> [!NOTE]
> If you bought your subscription and need to roll out security features *right now*, skip to the steps in the [Protect Against Threats](protect-against-threats.md) article. If you're new to your subscription and would like to know your license before you begin, browse Billing > Your Products in the [Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal/#/homepage).

Office 365 security builds on the core protections offered by EOP. EOP is present in any subscription where Exchange Online mailboxes can be found (remember, all the security products discussed here are Cloud-based).

You may be accustomed to seeing these three components discussed in this way:

|EOP|Microsoft Defender for Office 365 P1|Microsoft Defender for Office 365 P2|
|---|---|---|
|Prevents broad, volume-based, known attacks.|Protects email and collaboration from zero-day malware, phish, and business email compromise.|Adds post-breach investigation, hunting, and response, as well as automation, and simulation (for training).|

But in terms of architecture, let's start by thinking of each piece as cumulative layers of security, each with a security emphasis. More like this:

:::image type="content" source="../../media/tp_GraphicEOPATPP1P2_2.png" alt-text="The EOP and Microsoft Defender for Office 365 and their relationships to one another with service emphasis, including a note for email authentication" lightbox="../../media/tp_GraphicEOPATPP1P2_2.png":::

Though each of these services emphasizes a goal from among Protect, Detect, Investigate, and Respond, ***all*** the services can carry out ***any*** of the goals of protecting, detecting, investigating, and responding.

The core of Office 365 security is EOP protection. Microsoft Defender for Office 365 P1 contains EOP in it. Defender for Office 365 P2 contains P1 and EOP. The structure is cumulative. That's why, when configuring this product, you should start with EOP and work to Defender for Office 365.

Though email authentication configuration takes place in public DNS, it's important to configure this feature to help defend against spoofing. *If you have EOP,* ***you should [configure email authentication](email-authentication-about.md)***.

If you have an Office 365 E3, or below, you have EOP, but with the option to buy standalone Defender for Office 365 P1 through upgrade. If you have Office 365 E5, you already have Defender for Office 365 P2.

> [!TIP]
> If your subscription is neither Office 365 E3 or E5, you can still check to see if you have the option to upgrade to Microsoft Defender for Office 365 P1. If you're interested, [this webpage](https://www.microsoft.com/microsoft-365/exchange/advance-threat-protection#coreui-contentrichblock-x07wids) lists subscriptions eligible for the Microsoft Defender for Office 365 P1 upgrade (check the end of the page for the fine-print).

## The Office 365 security ladder from EOP to Microsoft Defender for Office 365

> [!IMPORTANT]
> Learn the details on these pages: [Exchange Online Protection](eop-about.md), and [Defender for Office 365](defender-for-office-365.md).

What makes adding Microsoft Defender for Office 365 plans an advantage to pure EOP threat management can be difficult to tell at first glance. To help sort out if an upgrade path is right for your organization, let's look at the capabilities of each product when it comes to:

- preventing and detecting threats
- investigating
- responding

starting with **Exchange Online Protection**:
<p>

|Prevent/Detect|Investigate|Respond|
|---|---|---|
|Technologies include:<ul><li>spam</li><li>phish</li><li>malware</li><li>bulk mail</li><li>spoof intelligence</li><li>impersonation detection</li><li>Admin Quarantine</li><li>False positives and false negative reporting by admin submissions and user reported messages</li><li>Allow and block entries for URLs and files in the Tenant Allow/Block List</li><li>Reports</li></ul>|<li>Audit log search</li><li>Message Trace</li>|<li>Zero-hour auto purge (ZAP)</li><li>Refinement and testing of entries in the Tenant Allow/Block List</li>|

If you want to dig in to EOP, **[jump to this article](eop-about.md)**.

Because these products are cumulative, if you evaluate Microsoft Defender for Office 365 P1 and decide to subscribe to it, you'll add these abilities.

Gains with **Defender for Office 365, Plan 1** (to date):
<p>

|Prevent/Detect|Investigate|Respond|
|---|---|---|
|Technologies include everything in EOP plus:<ul><li>Safe attachments</li><li>Safe links<li>Microsoft Defender for Office 365 protection for workloads (ex. SharePoint Online, Teams, OneDrive for Business)</li><li>Time-of-click protection in email, Office clients, and Teams</li><li>anti-phishing in Defender for Office 365</li><li>User and domain impersonation protection</li><li>Alerts, and SIEM integration API for alerts</li>|<li>SIEM integration API for detections</li><li>**Real-time detections tool**</li><li>URL trace</li>|<li>Same</li></ul>

So, Microsoft Defender for Office 365 P1 expands on the ***prevention*** side of the house, and adds extra forms of ***detection***.

Microsoft Defender for Office 365 P1 also adds **Real-time detections** for investigations. This threat hunting tool's name is in bold because having it is clear means of *knowing* you have Defender for Office 365 P1. It doesn't appear in Defender for Office 365 P2.

Gains with **Defender for Office 365, Plan 2** (to date):
<p>

|Prevent/Detect|Investigate|Respond|
|---|---|---|
|Technologies include everything in EOP, and Microsoft Defender for Office 365 P1 plus:<ul><li>Same</li>|<li>**Threat Explorer**</li><li>Threat Trackers</li><li>Campaign views</li>|<li>Automated Investigation and Response (AIR)</li><li>AIR from Threat Explorer</li><li>AIR for compromised users</li><li>SIEM Integration API for Automated Investigations</li>

So, Microsoft Defender for Office 365 P2 expands on the ***investigation and response*** side of the house, and adds a new hunting strength. Automation.

In Microsoft Defender for Office 365 P2, the primary hunting tool is called **Threat Explorer** rather than Real-time detections. If you see Threat Explorer when you navigate to the Microsoft 365 Defender portal, you're in Microsoft Defender for Office 365 P2.

To get into the details of Microsoft Defender for Office 365 P1 and P2, **[jump to this article](defender-for-office-365.md)**.

> [!TIP]
> EOP and Microsoft Defender for Office 365 are also different when it comes to end-users. In EOP and Defender for Office 365 P1, the focus is *awareness*, and so those two services include the *Report message Outlook add-in* so users can report emails they find suspicious, for further analysis. <p> In Defender for Office 365 P2 (which contains everything in EOP and P1), the focus shifts to *further training* for end-users, and so the Security Operations Center has access to a powerful *Threat Simulator* tool, and the end-user metrics it provides.

## Microsoft Defender for Office 365 Plan 1 vs. Plan 2 cheat sheet

This quick-reference will help you understand what capabilities come with each Microsoft Defender for Office 365 subscription. When combined with your knowledge of EOP features, it can help business decision makers determine what Microsoft Defender for Office 365 is best for their needs.

|Defender for Office 365 Plan 1|Defender for Office 365 Plan 2|
|---|---|
|Configuration, protection, and detection capabilities: <ul><li>[Safe Attachments](safe-attachments-about.md)</li><li>[Safe Links](safe-links-about.md)</li><li>[Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)</li><li>[Anti-phishing protection in Defender for Office 365](anti-phishing-policies-about.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)</li><li>[Real-time detections](threat-explorer-about.md)</li></ul>|Defender for Office 365 Plan 1 capabilities <p> --- plus --- <p> Automation, investigation, remediation, and education capabilities: <ul><li>[Threat Trackers](threat-trackers.md)</li><li>[Threat Explorer](threat-explorer-about.md)</li><li>[Automated investigation and response](air-about.md)</li><li>[Attack simulation training](attack-simulation-training-simulations.md)</li><li>[Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](../defender/advanced-hunting-overview.md)</li><li>[Investigate incidents in Microsoft 365 Defender](../defender/investigate-incidents.md)</li><li>[Investigate alerts in Microsoft 365 Defender](../defender/investigate-alerts.md)</li></ul>|

- Microsoft Defender for Office 365 Plan 2 is included in Office 365 E5, Office 365 A5, and Microsoft 365 E5.

- Microsoft Defender for Office 365 Plan 1 is included in Microsoft 365 Business Premium.

- Microsoft Defender for Office 365 Plan 1 and Defender for Office 365 Plan 2 are each available as an add-on for certain subscriptions. To learn more, here's another link [Feature availability across Microsoft Defender for Office 365 plans](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

- The [Safe Documents](safe-documents-in-e5-plus-security-about.md) feature is only available to users with the Microsoft 365 A5 or Microsoft 365 E5 Security licenses (not included in Microsoft Defender for Office 365 plans).

- If your current subscription doesn't include Microsoft Defender for Office 365 and you want it, [contact sales to start a trial](https://info.microsoft.com/ww-landing-M365SMB-web-contact.html), and find out how Microsoft Defender for Office 365 can work for in your organization.

- Microsoft Defender for Office 365 P2 customers have access to **Microsoft 365 Defender integration** to efficiently detect, review, and respond to incidents and alerts.

> [!TIP]
> ***Insider tip***. You can use the Microsoft Learn table of contents to learn about EOP and Microsoft Defender for Office 365. Navigate back to this page, [Office 365 Security overview](index.yml), and you'll notice that table of contents organization in the side-bar. It begins with Deployment (including migration) and then continues into prevention, detection, investigation, and response. <p> This structure is divided so that **Security Administration** topics are followed by **Security Operations** topics. If you're a new member of either job role, use the link in this tip, and your knowledge of the table of contents, to help learn the space. Remember to use *feedback links* and *rate articles* as you go. Feedback helps us improve what we offer you.

## Where to go next

If you're a Security Admin, you may need to configure DKIM or DMARC for your mail. You may want to roll out 'Strict' security presets for your priority users, or look for what's new in the product. Or if you're with Security Ops, you may want to leverage Real-time detections or Threat Explorer to investigate and respond, or train end-user detection with Attack Simulator. Either way, here are some additional recommendations for what to look at next.

[Email Authentication, including SPF, DKIM, and DMARC (with links to setup of all three)](email-authentication-about.md)

[See the specific recommended 'golden' configs](recommended-settings-for-eop-and-office365.md) and [use their recommended presets to configure security policies quickly](preset-security-policies.md)

Catch up on [what's new in Microsoft Defender for Office 365 (including EOP developments)](defender-for-office-365-whats-new.md)

[Use Threat Explorer or Real-time detections](threat-explorer-about.md)

Use [Attack simulation training](attack-simulation-training-simulations.md)
