---
title: Why do I need Microsoft Defender for Office 365?
ms.author: tracyp
author: msfttracyp
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.localizationpriority: high
search.appverid:
  - MET150
  - MOE150
ms.assetid: e100fe7c-f2a1-4b7d-9e08-622330b83653
ms.collection:
  - m365-security
  - tier1
  - highpri
ms.custom:
  - seo-marvel-apr2020
  - intro-overview
  - curated-apr-2023
description: Is Microsoft Defender for Office 365 worth it? Let's find out. This article had info on the fastest and most recommended setup of Microsoft Defender for Office 365 including Safe Attachments, Safe Links, advanced anti-phishing tools, reporting tools, and threat intelligence capabilities.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Why do I need Microsoft Defender for Office 365?

> [!IMPORTANT]
> **If you are being blocked by Safe Links pages**, go here for info: [Advanced Outlook.com security for Microsoft 365 subscribers](https://support.microsoft.com/office/advanced-outlook-com-security-for-microsoft-365-subscribers-882d2243-eab9-4545-a58a-b36fee4a46e2?storagetype=live).

**Microsoft Defender for Office 365 is a seamless integration into your Office 365 subscription** that provides protection against threats that arrive in email, links (URLS), attachments, or collaboration tools like SharePoint, Teams, and Outlook. With real-time views of threats and tools like Threat Explorer, you can threat hunt and stay ahead of potential threats.

For email threats that you may discover after the fact, Zero-hour autopurge (ZAP) can remove those mails. Automated Investigation and Response (AIR) allows you to automate monitoring and remediation, making it more efficient for security operations (sec ops) teams. The deep integration with Office 365 and robust reporting ensures that you are always on top of security operations.

## Let's focus on the features of Microsoft Defender for Office 365

Microsoft Defender for Office 365 safeguards organizations against malicious threats by providing admins and sec ops teams a wide range of capabilities. These features *start* benefitting users, admins, and sec ops at the time of installation. For example:

- **[Installation by Preset can set up everything for you](preset-security-policies.md)**: This is the fastest, easiest, and the *recommended* set up, because it automates the roll-out of a secure environment (if automated policies are allowed and possible in your organization). And abbreviated steps are available too (because when *isn't* admin/sec ops in a hurry): [Just the steps for preset policy setup, please!](step-by-step-guides/ensuring-you-always-have-the-optimal-security-controls-with-preset-security-policies.md)

- **[Threat protection policies](#defender-for-office-365-policies)**: Define threat-protection policies so admins can set the right level of protection for the organization.

- **[Reports](#how-to-view-microsoft-defender-for-office-365-reports)**: Sec ops can view real-time reports to monitor Defender for Office 365 performance in the organization.

- **[Threat investigation and response capabilities](#best-of-class-threat-investigation-and-response-capabilities)**: These are leading-edge tools to investigate, understand, simulate, and prevent threats.

- **[Automated investigation and response capabilities](air-about.md)**: Save time and effort investigating and mitigating threats by automating what you can.

## Interactive guide to Microsoft Defender for Office 365

If you need more information, this interactive guide will show you why Microsoft Defender for Office 365 is worth it, and give examples on how to safeguard your organization.

You'll also see how Defender for Office 365 can help you define protection policies, analyze threats to your organization, and respond to attacks.

[Check out the interactive guide](https://aka.ms/MSDO-IG)

## What is the difference between Plan 1 and Plan 2 Defender for Office 365?

For more on what's included in Microsoft 365 Plans 1 & 2, browse over to [this document](microsoft-defender-for-office-365-product-overview.md), because that article quickly spells out what makes up the two products, and the ***emphasis*** of each part of *Microsoft Defender for Office 365* using a familiar structure: *Protect*, *Detect*, *Investigate*, and *Respond*.

Graphics and short, scannable paragraphs answer questions like:

- What is *Plan 1* optimized to do for you?
- What's the biggest benefit to your company in *Plan 2*?
- Who has *Exchange Online Protection* and what's it optimized to do?

So, don't miss it!

## How do you get started?

There are two methods to set up Microsoft Defender for Office 365 for your subscription.

### Preset security policy configuration is *recommended*

It is **recommended** that -- as much as your organization can, given its specific needs -- you configure via **preset security policies**. You can learn more about presets here: [Preset setup information and steps](preset-security-policies.md); or if you just want steps, here are just [the steps for preset policy setup](step-by-step-guides/ensuring-you-always-have-the-optimal-security-controls-with-preset-security-policies.md).

### Manual configuration for Microsoft Defender for Office 365

Though it's no longer the recommended practice, here are the initial logical configuration chunks for manual set up:

- Configure everything with '*anti*' in the name.
  - anti-malware
  - anti-phishing
  - anti-spam
- Set up everything with '*safe*' in the name.
  - Safe Links
  - Safe Attachments
- Defend the workloads (ex. SharePoint Online, OneDrive, and Teams)
- Protect with zero-hour auto purge (ZAP).

To learn by doing things manually, [click this link](protect-against-threats.md).

> [!NOTE]
> Microsoft Defender for Office 365 comes in two different Plan types. You can tell if you have **Plan 1** if you have *Real-time Detections*, and **Plan 2**, if you have *Threat Explorer* (also called Explorer). The Plan you have influences the tools you see, so be sure that you're aware of your Plan as you learn.

## Manual steps to Configure Microsoft Defender for Office 365 policies

*It's recommended that you configure with preset security policies* (if I haven't said this enough), but some organizations must configure manually.

With Microsoft Defender for Office 365, your organization's security team can configure protection by defining policies in the Microsoft 365 Defender portal at <https://security.microsoft.com> > **Email & collaboration** \> **Policies & rules** \> **Threat policies**. Or, you can go directly to the **Threat policies** page by using <https://security.microsoft.com/threatpolicy>.

> [!TIP]
> For a quick list of policies to define manually, see [Protect against threats](protect-against-threats.md).

## Defender for Office 365 Policies

The policies that are defined for your organization determine the behavior and protection level for predefined threats.

Policy options are extremely flexible. For example, your organization's security team can set fine-grained threat protection at the user, organization, recipient, and domain level. It is important to *review your policies regularly*, because new threats and challenges emerge daily.

### Safe Attachments

- **[Safe Attachments](safe-attachments-about.md)**: Provides zero-day protection to safeguard your messaging system, by checking email attachments for malicious content. It routes all messages and attachments that do not have a virus/malware signature to a special environment, and then uses machine learning and analysis techniques to detect malicious intent. If no suspicious activity is found, the message is forwarded to the mailbox. To learn more, see [Set up Safe Attachments policies](safe-attachments-policies-configure.md).

### Safe Links

- **[Safe Links](safe-links-about.md)**: Provides time-of-click verification of URLs, for example, in emails messages and Office files. Protection is ongoing and applies across your messaging and Office environment. Links are scanned for each click: safe links remain accessible and malicious links are dynamically blocked. To learn more, see [Set up Safe Links policies](safe-links-policies-configure.md).

### Safe Attachments for SharePoint, OneDrive, and Microsoft Teams

- **[Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)**: Protects your organization when users collaborate and share files, by identifying and blocking malicious files in team sites and document libraries. To learn more, see [Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-configure.md).

### Anti-phishing protection in Defender for Office 365

- **[Anti-phishing protection in Defender for Office 365](anti-phishing-policies-about.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)**: Detects attempts to impersonate your users and internal or custom domains. It applies machine learning models and advanced impersonation-detection algorithms to avert phishing attacks. To learn more, see [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md).

## How to view Microsoft Defender for Office 365 reports

Microsoft Defender for Office 365 includes [reports](reports-defender-for-office-365.md) to monitor Defender for Office 365. You can access the reports in the Microsoft 365 Defender portal at <https://security.microsoft.com> at **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. You can also go directly to the **Email and collaboration reports** page using <https://security.microsoft.com/securityreports>.

Reports update in real-time, providing you with the latest insights. These reports also provide recommendations and alert you to imminent threats. Predefined reports include the following:

- [Threat Explorer (or real-time detections)](threat-explorer-about.md)
- [Threat protection status report](reports-defender-for-office-365.md#threat-protection-status-report)
- ... and several more.

## Best of class threat investigation and response capabilities

Microsoft Defender for Office 365 Plan 2 includes best-of-class [threat investigation and response tools](office-365-ti.md) that enable your organization's security team to anticipate, understand, and prevent malicious attacks.

### Threat Trackers on the latest threats

- **[Threat trackers](threat-trackers.md)** provide the latest intelligence on prevailing cybersecurity issues. For example, you can view information about the latest malware, and take countermeasures before it becomes an actual threat to your organization. Available trackers include [Noteworthy trackers](threat-trackers.md#noteworthy-trackers), [Trending trackers](threat-trackers.md#trending-trackers), [Tracked queries](threat-trackers.md#tracked-queries), and [Saved queries](threat-trackers.md#saved-queries).

### Threat Explorer or Real-Time Detections

- **[Threat Explorer in Plan 2 (or real-time detections in Plan 1)](threat-explorer-about.md)** (also referred to as Explorer) is a real-time report that allows you to identify and analyze recent threats. You can configure Explorer to show data for custom periods.

### Attack simulation training for user readiness

- **[Attack simulation training](attack-simulation-training-simulations.md)** allows you to run realistic attack scenarios in your organization to identify vulnerabilities. Simulations of current types of attacks are available, including spear phishing credential harvest and attachment attacks, and password spray and brute force password attacks.

## Save time with automated investigation and response

When sec ops is investigating a potential cyberattack, time is of the essence. The sooner you can identify and mitigate threats, the better off your organization will be.

[Automated investigation and response](air-about.md) (AIR) capabilities include a set of security playbooks that can be launched automatically, such as when an alert is triggered, or manually, such as from a view in Explorer.

AIR can save your security operations team time and effort in mitigating threats effectively and efficiently. To learn more, see [AIR in Office 365](air-about.md).

## These are the permissions needed to use Defender for Office 365 features

To access Microsoft Defender for Office 365 features, you *must* be assigned an appropriate role. The following table includes some examples:

|Role or role group|Resources to learn more|
|---|---|
|global administrator (or Organization Management)|You can assign this role in Azure Active Directory or in the Microsoft 365 Defender portal. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).|
|Security Administrator|You can assign this role in Azure Active Directory or in the Microsoft 365 Defender portal. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).|
|Organization Management in Exchange Online|[Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo) <p> [Exchange Online PowerShell](/powershell/exchange/exchange-online-powershell)|
|Search and Purge|This role is available only in the Microsoft 365 Defender portal or the Microsoft Purview compliance portal. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md) and [Permissions in the Microsoft Purview compliance portal](../../compliance/microsoft-365-compliance-center-permissions.md).|
|||

## Where can you get Microsoft Defender for Office 365?

Microsoft Defender for Office 365 is included in certain subscriptions, such as Microsoft 365 E5, Office 365 E5, Office 365 A5, and Microsoft 365 Business Premium.

### What to do if your subscription doesn't have Defender for Office 365 but you need it

If your subscription doesn't include Defender for Office 365, you can get Defender for Office 365 Plan 1 or Plan 2 as an add-on to certain subscriptions. To learn more, take a look at the following resources:

- [Microsoft Defender for Office 365 availability](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#office-365-advanced-threat-protection-atp-availability) for a list of subscriptions that include Defender for Office 365 plans.

- [Feature availability across Microsoft Defender for Office 365 plans](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans) for a list of features included in Plan 1 and 2.

- [Get the right Microsoft Defender for Office 365](https://products.office.com/exchange/advance-threat-protection#pmg-allup-content) to compare plans and purchase Defender for Office 365.

- [Start a free trial](https://go.microsoft.com/fwlink/p/?LinkID=698279)

## What new features are coming for Microsoft Defender for Office 365?

New features are added to Microsoft Defender for Office 365 continually. To learn more, see the following resources:

- [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=Microsoft%2CDefender%2Cfor%2COffice%2C365) provides a list of new features in development and rolling out.

- [Microsoft Defender for Office 365 Service Description](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#whats-new-in-office-365-advanced-threat-protection-atp) describes features and availability across Defender for Office 365 plans.

## See also

- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)
- [Automated investigation and response (AIR) in Microsoft 365 Defender](../defender/m365d-autoir.md)
[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]