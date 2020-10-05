---
title: Office 365 Security, Office 365 ATP, EOP, ATP, MSDO
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 08/13/2020
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection:
- M365-security-compliance
description: "Security in Office 365, from EOP to ATP Plans 1 and 2, Standard vs. Strict security configurations, and more, so that you can understand what you have, and how to secure your properties."
---

# Office 365 Security overview

This article will introduce you to your new security properties in the Cloud. Whether you're part of a Security Operations Center, you're a Security Administrator new to the space, or you want a refresher, let's get started.

> [!CAUTION]
> Hi. If you're using **Outlook.com**, **Microsoft 365 Family**, or **Microsoft 365 Personal**, and need *Safe Links* or *Safe Attachments* info, ***click this link***: [Advanced Outlook.com security for Microsoft 365 subscribers](https://support.microsoft.com/office/advanced-outlook-com-security-for-office-365-subscribers-882d2243-eab9-4545-a58a-b36fee4a46e2). Thanks!

## Office 365 security spelled out

Every Office 365 subscription comes with security capabilities. The goals and actions that you can take depend on the focus of these different subscriptions. In Office 365 security, there are three main security services (or products) tied to your subscription type:

1. Exchange Online Protection (EOP)
1. Advanced Threat Protection, Plan 1 (ATP P1)
1. Advanced Threat Protection, Plan 2 (ATP P2)

> [!NOTE]
> If you bought your subscription and need to roll out security features *right now*, skip to the steps in the [Protect Against Threats](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats) article. If you're new to your subscription and would like to know your license before you begin, browse Billing > Your Products in the [Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal/#/homepage).

Office 365 security builds on the core protections offered by EOP. EOP is present in any subscription where Exchange Online mailboxes can be found (remember, all the security products discussed here are Cloud-based).

You may be accustomed to seeing these three components discussed in this way:

|EOP  | ATP P1 | ATP P2  |
|---------|---------|---------|
|Prevents broad, volume-based, known attacks.    |  Protects email and collaboration from zero-day malware, phish, and business email compromise.       | Adds post-breach investigation, hunting, and response, as well as automation, and simulation (for training).         |

But in terms of architecture, let's start by thinking of each piece as cumulative layers of security, each with a security emphasis. More like this:

<!--:::image type="content" source="../../media/tp-EOPATPStack.PNG" alt-text="Placeholder graphic":::-->

:::image type="content" source="../../media/tp_GraphicEOPATPP1P2_2.png" alt-text="EOP and ATP and their relationships to one another with service emphasis, including a note for email authentication.":::

Though each of these services emphasizes a specific goal from among Protect, Detect, Investigate, and Respond, ***all*** the services can carry out ***any*** of the goals of protecting, detecting, investigating, and responding.

The core of Office 365 security is EOP protection. ATP P1 contains EOP in it. ATP P2 contains P1 and EOP. The structure is cumulative. That's why, when configuring ATP, you should start with EOP and work up through the layers.

Though email authentication configuration takes place in public DNS, it's important to configure this feature to help defend against spoofing. *If you have EOP,* ***you should [configure email authentication](https://docs.microsoft.com/microsoft-365/security/office-365-security/email-validation-and-authentication)***.

If you have an Office 365 E3, or below, you have EOP, but with the option to buy standalone ATP P1 through upgrade. If you have Office 365 E5, you already have ATP P2.

> [!TIP]
> If your subscription is neither Office 365 E3 or E5, you can still check to see if you have the option to upgrade to ATP P1. If you're interested, [this webpage](https://www.microsoft.com/microsoft-365/exchange/advance-threat-protection#coreui-contentrichblock-x07wids) lists subscriptions eligible for the ATP P1 upgrade (check the end of the page for the fine-print).

## The Office 365 security ladder from EOP to ATP

<br/>

![EOP and ATP and their security emphasis, going from Protect and Detect to Investigate and Respond. Email Authentication configuration (at least DKIM and DMARC) should be set up for EOP and up.](../../media/tp_EOPATPP1P2Take6.gif#lightbox)


> [!IMPORTANT]
> Learn the details on these pages: [Exchange Online Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/exchange-online-protection-overview), and [Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp).

What makes adding ATP plans an advantage to pure EOP threat management can be difficult to tell at first glance. To help sort out if an upgrade path is right for your organization, let's look at the capabilities of each product when it comes to:

 - preventing and detecting threats
 - investigating
 - responding

starting with **Exchange Online Protection**:
<p>

|Prevent/Detect  |Investigate  |Respond  |
|---------|---------|---------|
| Technologies include:<ul><li>spam</li><li>phish</li><li>malware</li><li>bulk mail</li><li>spoof intelligence</li><li>impersonation detection</li><li>Admin Quarantine</li><li>Admin and user submissions of False Positives and False Negatives</li><li>Allow/Block for URLs and Files</li><li>Reports</li></u1>|<li>Audit log search</li><li>Message Trace</li>|<li>Zero-hour Auto-Purge (ZAP)</li><li>Refinement and testing of Allow and Block lists</li>|

If you want to dig in to EOP, **[jump to this article](https://review.docs.microsoft.com/microsoft-365/security/office-365-security/exchange-online-protection-overview?view=o365-21vianet&branch=tp_EOPOverview)**.

Because these products are cumulative, if you evaluate ATP P1 and decide to subscribe to it, you'll add these abilities.

Gains with **Advanced Threat Protection, Plan 1** (to date):
<p>

|Prevent/Detect  |Investigate  |Respond  |
|---------|---------|---------|
| Technologies include everything in EOP plus:<u1><li>Safe attachments</li><li>Safe links<li>ATP protection for workloads (ex. SharePoint Online, Teams, OneDrive for Business)</li><li>Time-of-click protection in email, Office clients, and Teams</li><li>ATP anti-phishing</li><li>User and domain impersonation protection</li><li>Alerts, and SIEM integration API for alerts</li>|<li>SIEM integration API for detections</li><li>**Real-time detections tool**</li><li>URL trace</li>|<li>Same</li></u1>

So, ATP P1 expands on the ***prevention*** side of the house, and adds extra forms of ***detection***.

ATP P1 also adds **Real-time detections** for investigations. This threat hunting tool's name is in bold because having it is clear means of *knowing* you have ATP P1. It doesn't appear in ATP P2.

Gains with **Advanced Threat Protection, Plan 2** (to date):
<p>

|Prevent/Detect  |Investigate  |Respond  |
|---------|---------|---------|
| Technologies include everything in EOP, and ATP P1 plus:<u1><li>Same</li>|<li>**Threat Explorer**</li><li>Threat Trackers</li><li>Campaign views</li>|<li>Automated Investigation and Response (AIR)</li><li>AIR from Threat Explorer</li><li>AIR for compromised users</li><li>SIEM Integration API for Automated Investigations</li>

So, ATP P2 expands on the ***investigation and response*** side of the house, and adds a new hunting strength. Automation.

In ATP P2, the primary hunting tool is called **Threat Explorer** rather than Real-time detections. If you see Threat Explorer when you navigate to the Security center, you're in ATP P2.

To get into the details of ATP P1 and P2, **[jump to this article](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp)**.

> [!TIP]
> EOP and ATP are also different when it comes to end-users. In EOP and ATP P1, the focus is *awareness*, and so those two services include the *Report message Outlook add-in* so users can report emails they find suspicious, for further analysis. <p> In ATP P2 (which contains everything in EOP and P1), the focus shifts to *further training* for end-users, and so the Security Operations Center has access to a powerful *Threat Simulator* tool, and the end-user metrics it provides.

## Office 365 ATP Plan 1 vs. Plan 2 cheat sheet

This quick-reference will help you understand what capabilities come with each ATP subscription. When combined with your knowledge of EOP features, it can help business decision makers determine what ATP is best for their needs.

|Office 365 ATP Plan 1|Office 365 ATP Plan 2|
|---|---|
|<br/>Configuration, protection, and detection capabilities: <ul><li>[Safe Attachments](atp-safe-attachments.md)</li><li>[Safe Links](atp-safe-links.md)</li><li>[ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md)</li><li>[ATP anti-phishing protection](set-up-anti-phishing-policies.md#exclusive-settings-in-atp-anti-phishing-policies)</li><li>[Real-time detections](threat-explorer.md)</li></ul>|Office 365 ATP Plan 1 capabilities<br/>--- plus ---<br/>Automation, investigation, remediation, and education capabilities:</li><li>[Threat Trackers](threat-trackers.md)</li><li>[Threat Explorer](threat-explorer.md)</li><li>[Automated investigation and response](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air)</li><li>[Attack Simulator](attack-simulator.md)</li></ul>|
|

- Office 365 ATP Plan 2 is included in Office 365 E5, Office 365 A5, and Microsoft 365 E5.

- Office 365 ATP Plan 1 is included in Microsoft 365 Business Premium.

- Office 365 ATP Plan 1 and Office 365 ATP Plan 2 are each available as an add-on for certain subscriptions. To learn more, here's another link [Feature availability across ATP plans](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

- The [Safe Documents](safe-docs.md) feature is only available to users with the Microsoft 365 E5 or Microsoft 365 E5 Security licenses (not included in Office 365 ATP plans).

- If your current subscription doesn't include Office 365 ATP and you want it, [contact sales to start a trial](https://go.microsoft.com/fwlink/p/?LinkId=518644), and find out how ATP can work for in your organization.

> [!TIP]
> ***Insider tip***. You can use the docs.microsoft.com table of contents to learn about EOP and ATP. Navigate back to this page, [Office 365 Security overview](https://docs.microsoft.com/microsoft-365/security/office-365-security/?view=o365-worldwide), and you'll notice that table of contents organization in the side-bar. It begins with Deployment (including migration) and then continues into prevention, detection, investigation, and response. <p> This structure is divided so that **Security Administration** topics are followed by **Security Operations** topics. If you're a new member of either job role, use the link in this tip, and your knowledge of the table of contents, to help learn the space. Remember to use *feedback links* and *rate articles* as you go. Feedback helps us improve what we offer you.

## Where to go next

If you're a Security Admin, you may need to configure DKIM or DMARC for your mail, roll out 'Strict' security presets for your priority users, or you may be looking for what's new in the product. If you're with Security Ops, you may want to leverage Real-time detections or Threat Explorer to investigate and respond, or train end-user detection with Attack Simulator. Here are some additional recommendations for what to look at next.

[Email Authentication, including SPF, DKIM, and DMARC (with links to setup of all three)](https://docs.microsoft.com/microsoft-365/security/office-365-security/email-validation-and-authentication)

[See the specific recommended 'golden' configs](https://docs.microsoft.com/microsoft-365/security/office-365-security/recommended-settings-for-eop-and-office365-atp) and [use their recommended presets to configure security policies quickly](https://docs.microsoft.com/microsoft-365/security/office-365-security/preset-security-policies)

Catch up on [what's new in Office 365 ATP (including EOP developments)](https://docs.microsoft.com/microsoft-365/security/office-365-security/whats-new-in-office-365-atp)

[Use Threat Explorer or Real-time detections](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer)

Use [Attack Simulator in Office 365 ATP](https://docs.microsoft.com/microsoft-365/security/office-365-security/attack-simulator)