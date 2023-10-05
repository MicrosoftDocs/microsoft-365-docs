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
description: Is Microsoft Defender for Office 365 worth it? Let's find out.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 9/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Microsoft Defender for Office 365 overview

> [!IMPORTANT]
> **If Safe Links pages is blocking your access**, go here for info: [Advanced Outlook.com security for Microsoft 365 subscribers](https://support.microsoft.com/office/advanced-outlook-com-security-for-microsoft-365-subscribers-882d2243-eab9-4545-a58a-b36fee4a46e2?storagetype=live).

**Microsoft Defender for Office 365 is a seamless integration into your Office 365 subscription** that protects against threats in email, links (URLS), attachments, or collaboration tools.

For email threats that are identified after the fact, Zero-hour autopurge (ZAP) can remove those messages from user mailboxes. Automated Investigation and Response (AIR) allows you to automate monitoring and remediation, making it more efficient for security operations (SecOps) teams. The deep integration with Office 365 and robust reporting ensures that you're always on top of security operations.

Defender for Office 365 safeguards organizations against malicious threats by providing admins and SecOps teams a wide range of capabilities. Users, admins, and SecOps personnel benefit from these features from the beginning of the organization. For example:

- **[Preset security policies can configure everything for you](preset-security-policies.md)**: The protection policies included in Standard and Strict preset security policies contain our recommended settings. All you need to do is decide who gets the protection (by user, group, domain, or all recipients) and specify the entries and optional exceptions for user and domain impersonation protection. For instructions, see [Use the Microsoft 365 Defender portal to assign Standard and Strict preset security policies to users](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users).

- **[Threat protection policies](#defender-for-office-protection-365-policies)**: Define threat-protection policies so admins can set the right level of protection for the organization.

- **[Reports](#view-microsoft-defender-for-office-365-reports)**: SecOps personnel can view real-time reports to monitor Defender for Office 365 performance in the organization.

- **[Threat investigation and response capabilities](#best-of-class-threat-investigation-and-response-capabilities)**: These tools are leading-edge and allow you to investigate, understand, simulate, and prevent threats.

- **[Automated investigation and response capabilities](air-about.md)**: Save time and effort investigating and mitigating threats by automating what you can.

## Interactive guide to Defender for Office 365

If you need more information, this interactive guide shows why Defender for Office 365 is worth it, and give examples on how to safeguard your organization.

You can also see how Defender for Office 365 can help you define protection policies, analyze threats to your organization, and respond to attacks.

[Check out the interactive guide](https://aka.ms/MSDO-IG)

## What is the difference between Plan 1 and Plan 2 Defender for Office 365?

For more information on what's included in Microsoft 365 Plan 1 and Plan 2, see [this article](mdo-security-comparison.md). Not only does this article quickly spell out what makes up the two products, but it also  describes the ***emphasis*** of each part of *Defender for Office 365* using a familiar structure: *Protect*, *Detect*, *Investigate*, and *Respond*.

Graphics and short, scannable paragraphs answer questions like:

- What is *Plan 1* optimized to do for you?
- What's the biggest benefit to your company in *Plan 2*?
- Who has *Exchange Online Protection* and what's it optimized to do?

So, don't miss it!

## How do you get started?

There are two methods to enhance the default protection that's provided in Defender for Office 365:

- **Preset security policies**: We **recommended** that you turn on and use the Standard and/or strict [preset security policies](preset-security-policies.md). The Standard and Strict profiles contain anti-malware, anti-spam, anti-phishing, Safe Links, and Safe Attachments policies that are pre-configured with our recommended standard and strict settings based on observations from the Microsoft datacenters.

  For a quick comparison of the differences between Standard and Strict, see the table at [Policy settings in preset security policies](preset-security-policies.md#policy-settings-in-preset-security-policies). For a complete comparison of all policy values, see the tables in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

  And, we can tune the protection in preset security policies automatically if the security landscape changes (for example, we might change an action from deliver to Junk to quarantine if the threat level increases). For more information and set up instructions, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md#preset-security-policies-in-eop-and-microsoft-defender-for-office-365).

- **Manual setup**: Most of the policy settings in preset security policies are locked down. If your organization requires security settings that are *different* from or *undefined* in preset security policies, you can go manual. Keep in mind that anti-malware, anti-spam, anti-phishing, outbound spam, and connection filtering have default policies that are always on and apply to all recipients (and you can change any of the settings). The settings and values in the default policies are described in the tables in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

  You can also create custom policies to meet your business needs. For a discussion about when or why to use preset vs. custom policies, see [Determine your security policy strategy](mdo-deployment-guide.md#determine-your-security-policy-strategy).

> [!TIP]
> Defender for Office 365 comes in two different licenses:
>
> - You have **Plan 1** if you have **Real-time detections** at <https://security.microsoft.com/realtimereports>.
> - You have **Plan 2**, if you have **Threat Explorer** (also called *Explorer*) at <https://security.microsoft.com/threatexplorer> and **Attack simulation training** at <https://security.microsoft.com/attacksimulator>.
>
> Your license influences the tools you see, so be sure that you're aware of your license as you learn.

## Defender for Office 365 protection policies

The protection policies that are configured in your organization determine the behavior and protection level from threats.

Policy options are flexible. For example, your organization's security team can set fine-grained threat protection at the user, group, and domain level for both preset security policies and custom policies. It's important to use the [configuration analyzer](configuration-analyzer-for-security-policies.md) regularly to *review the settings in the default and any custom policies*, because new threats and challenges emerge regularly.

### Anti-phishing policies

In addition to [anti-spoofing protection](anti-phishing-policies-about.md#spoof-settings) that's available in anti-phishing policies in EOP, anti-phishing policies in Defender for Office 365 also contain [additional impersonation protection features](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) for specified users and domains. Machine learning models and advanced impersonation-detection algorithms are applied to these users and domains to avert phishing attacks.

Anti-phishing policies with spoofing and impersonation protection are included in the Standard and Strict preset security policies. There's also a default anti-phishing policy, and you can create custom policies as needed. You need to configure the entries and optional exceptions for user and domain impersonation protection in any of these policies.

### Safe Attachments policies

[Safe Attachments](safe-attachments-about.md) provides zero-day protection for email by checking message attachments for malicious content *in addition to* the regular malware scanning in EOP. Safe Attachments opens all attachments in virtual environment to see what happens (a process known as _detonation_). If no suspicious activity is detected, the message is delivered to the mailbox.

Safe Attachments protection is on by default for all recipients thanks to the [Built-in protection preset security policy](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-add-exclusions-to-the-built-in-protection-preset-security-policy), but you can specify exceptions.

Safe Attachments policies are also included in the Standard and Strict preset security policies, and you can create custom policies as needed.

### Safe Attachments for SharePoint, OneDrive, and Microsoft Teams

[Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)**: Protects your organization when users collaborate and share files, by identifying and blocking malicious files in Teams sites and document libraries. To turn it on, see [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-configure.md).

### Safe Links policies

[Safe Links](safe-links-about.md) provides time-of-click verification of URLs in email messages, supported Office files, and Microsoft Teams. Protection is ongoing and applies across your messaging and Office environment. Links are scanned for each click. Benign links remain accessible, but malicious links are dynamically blocked.

Safe Links protection is on by default for all recipients thanks to the [Built-in protection preset security policy](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-add-exclusions-to-the-built-in-protection-preset-security-policy), but you can specify exceptions.

Safe Links policies are also included in the Standard and Strict preset security policies, and you can create custom policies as needed.

## View Defender for Office 365 reports

Defender for Office 365 includes [reports](reports-defender-for-office-365.md) to monitor Defender for Office 365. You can access the reports in the Microsoft 365 Defender portal at <https://security.microsoft.com> at **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. You can also go directly to the **Email and collaboration reports** page using <https://security.microsoft.com/securityreports>.

Reports update in real-time, providing you with the latest insights. These reports also provide recommendations and alert you to imminent threats. Available predefined reports include:

- [Threat Explorer (or real-time detections)](threat-explorer-about.md)
- [Threat protection status report](reports-defender-for-office-365.md#threat-protection-status-report)
- ... and several more.

## Best of class threat investigation and response capabilities

Defender for Office 365 Plan 2 includes best-of-class [threat investigation and response tools](office-365-ti.md) that enable your organization's security team to anticipate, understand, and prevent malicious attacks.

### Threat Trackers on the latest threats

- **[Threat trackers](threat-trackers.md)** provide the latest intelligence on prevailing cybersecurity issues. For example, you can view information about the latest malware, and take countermeasures before it becomes an actual threat to your organization. Available trackers include [Noteworthy trackers](threat-trackers.md#noteworthy-trackers), [Trending trackers](threat-trackers.md#trending-trackers), [Tracked queries](threat-trackers.md#tracked-queries), and [Saved queries](threat-trackers.md#saved-queries).

### Threat Explorer or Real-Time Detections

- **[Threat Explorer in Plan 2 (or real-time detections in Plan 1)](threat-explorer-about.md)** (also referred to as Explorer) is a real-time report that allows you to identify and analyze recent threats. You can configure Explorer to show data for custom periods.

### Attack simulation training for user readiness

- **[Attack simulation training](attack-simulation-training-simulations.md)** in Defender for Office 365 Plan 2 allows you to run realistic simulated attacks in your organization to identify vulnerabilities and offer training.

## Save time with automated investigation and response

When SecOps is investigating a potential cyberattack, time is of the essence. The sooner you can identify and mitigate threats, the better off your organization will be.

[Automated investigation and response](air-about.md) (AIR) capabilities include a set of security playbooks that can be launched automatically, such as when an alert is triggered, or manually, such as from a view in Explorer.

AIR can save your security operations team time and effort in mitigating threats effectively and efficiently. To learn more, see [AIR in Office 365](air-about.md).

## Permissions needed to use Defender for Office 365 features

To access Defender for Office 365 features, you *must* be assigned an appropriate role. The following table includes some examples:

|Role or role group|Resources to learn more|
|---|---|
|Global Administrator (or Organization Management)|You can assign this role in Azure Active Directory or in the Microsoft 365 Defender portal. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).|
|Security Administrator|You can assign this role in Azure Active Directory or in the Microsoft 365 Defender portal. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).|
|Organization Management in Exchange Online|[Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo) <p> [Exchange Online PowerShell](/powershell/exchange/exchange-online-powershell)|
|Search and Purge|This role is available only in the Microsoft 365 Defender portal or the Microsoft Purview compliance portal. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md) and [Permissions in the Microsoft Purview compliance portal](/purview/microsoft-365-compliance-center-permissions).|

## Where can you get MDefender for Office 365?

Defender for Office 365 is included in certain subscriptions. For example, Microsoft 365 E5, Office 365 E5, Office 365 A5, and Microsoft 365 Business Premium.

### What if your subscription doesn't include Defender for Office 365

If your subscription doesn't include Defender for Office 365, you can get Defender for Office 365 as an add-on. To learn more, take a look at the following resources:

- [Microsoft Defender for Office 365 availability](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#office-365-advanced-threat-protection-atp-availability) for a list of subscriptions that include Defender for Office 365 plans.

- [Feature availability across Microsoft Defender for Office 365 plans](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans) for a list of features included in Plan 1 and 2.

- [Get the right Microsoft Defender for Office 365](https://products.office.com/exchange/advance-threat-protection#pmg-allup-content) to compare plans and purchase Defender for Office 365.

- [Start a free trial](https://go.microsoft.com/fwlink/p/?LinkID=698279)

## What new features are coming for Defender for Office 365?

New features are continually added to Defender for Office 365 continually. To learn more, see the following resources:

- [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=Microsoft%2CDefender%2Cfor%2COffice%2C365) provides a list of new features in development and rolling out.

- [Microsoft Defender for Office 365 Service Description](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#whats-new-in-office-365-advanced-threat-protection-atp) describes features and availability across Defender for Office 365 plans.

## See also

- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)
- [Automated investigation and response (AIR) in Microsoft 365 Defender](../defender/m365d-autoir.md)
