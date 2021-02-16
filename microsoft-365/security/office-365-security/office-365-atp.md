---
title: Microsoft Defender for Office 365
f1.keywords: 
  - CSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 
audience: Admin
ms.topic: conceptual

localization_priority: Priority
search.appverid: 
  - MET150
  - MOE150
ms.assetid: e100fe7c-f2a1-4b7d-9e08-622330b83653
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom: 
  - seo-marvel-apr2020
description: Microsoft Defender for Office 365 includes safe attachments, safe links, advanced anti-phishing tools, reporting tools and threat intelligence capabilities.
ms.technology: mdo
ms.prod: m365-security
---
# Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!IMPORTANT]
> This article is intended for business customers who have [Microsoft Defender for Office 365](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description). If you are using Outlook.com, Microsoft 365 Family, or Microsoft 365 Personal, and you're looking for information about Safe Links or Safe Attachments in Outlook, see [Advanced Outlook.com security for Microsoft 365 subscribers](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Microsoft Defender for Office 365 safeguards your organization against malicious threats posed by email messages, links (URLs), and collaboration tools. Defender for Office 365 includes:

- **[Threat protection policies](#configure-microsoft-defender-for-office-365-policies)**: Define threat-protection policies to set the appropriate level of protection for your organization.

- **[Reports](#view-microsoft-defender-for-office-365-reports)**: View real-time reports to monitor Defender for Office 365  performance in your organization.

- **[Threat investigation and response capabilities](#use-threat-investigation-and-response-capabilities)**: Use leading-edge tools to investigate, understand, simulate, and prevent threats.

- **[Automated investigation and response capabilities](office-365-air.md)**: Save time and effort investigating and mitigating threats.

## Interactive guide to Microsoft Defender for Office 365
In this interactive guide you'll learn how to safeguard your organization with Microsoft Defender for Office 365. You'll see how Defender for Office 365 can help you define protection policies, analyze threats to your organization, and respond to attacks.

> [!VIDEO https://aka.ms/MSDO-IG]

## Getting Started

If you're new to Microsoft Defender for Office 365 or learn best by *doing*, you may benefit from breaking initial Defender for Office 365 configuration into chunks, investigating, and viewing reports using this article as a reference. Here are logical early configuration chunks:

- Configure everything with '*anti*' in the name.
  - anti-malware
  - anti-phishing
  - anti-spam
- Set up everything with '*safe*' in the name.
  - safe links
  - safe attachments
- Defend the workloads (ex. SharePoint Online, OneDrive, and Teams)
- Protect with Zero-Hour auto purge

To learn by doing, [click this link](protect-against-threats.md).

> [!NOTE]
> Microsoft Defender for Office 365 comes in two different Plan types. You can tell if you have **Plan 1** if you have 'Real-time Detections', and **Plan 2**, if you have Threat Explorer. The Plan you have influences the tools you will see, so be certain that you're aware of your Plan as you learn.

## Microsoft Defender for Office 365 Plan 1 and Plan 2

The following table summarizes what's included in each plan.

****

|Microsoft Defender for Office 365 Plan 1|Microsoft Defender for Office 365 Plan 2|
|---|---|
|Configuration, protection, and detection capabilities: <ul><li>[Safe Attachments](atp-safe-attachments.md)</li><li>[Safe Links](atp-safe-links.md)</li><li>[Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md)</li><li>[Anti-phishing in Defender for Office 365 protection](set-up-anti-phishing-policies.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)</li><li>[Real-time detections](threat-explorer.md)</li></ul>|Microsoft Defender for Office 365 Plan 1 capabilities <br>--- plus ---<br> Automation, investigation, remediation, and education capabilities:<ul><li>[Threat Trackers](threat-trackers.md)</li><li>[Threat Explorer](threat-explorer.md)</li><li>[Automated investigation and response](office-365-air.md)</li><li>[Attack Simulator](attack-simulator.md)</li><li>[Campaign Views](campaigns.md)</li></ul>|
|

- Microsoft Defender for Office 365 Plan 2 is included in Office 365 E5, Office 365 A5, Microsoft 365 E5 Security, and Microsoft 365 E5.

- Microsoft Defender for Office 365 Plan 1 is included in Microsoft 365 Business Premium.

- Microsoft Defender for Office 365 Plan 1 and Microsoft Defender for Office 365 Plan 2 are each available as an add-on for certain subscriptions. To learn more, see [Feature availability across Microsoft Defender for Office 365 plans](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

- The [Safe Documents](safe-docs.md) feature is only available to users with the Microsoft 365 E5 or Microsoft 365 E5 Security licenses (not included in Microsoft Defender for Office 365 plans).

- If your current subscription does not include Microsoft Defender for Office 365, [contact sales to start a trial](https://go.microsoft.com/fwlink/p/?LinkId=518644), and see how Defender for Office 365 can work for your organization.

## Configure Microsoft Defender for Office 365 policies

With Microsoft Defender for Office 365, your organization's security team can configure protection by defining policies in the Security & Compliance Center (Go to <https://protection.office.com> \> **Threat management** \> **Policy**.)

> [!TIP]
> For a quick list of policies to define, see [Protect against threats](protect-against-threats.md).

## Defender for Office 365 Policies

The policies that are defined for your organization determine the behavior and protection level for predefined threats. Policy options are extremely flexible. For example, your organization's security team can set fine-grained threat protection at the user, organization, recipient, and domain level. It is important to review your policies regularly because new threats and challenges emerge daily.

- **[Safe Attachments](atp-safe-attachments.md)**: Provides zero-day protection to safeguard your messaging system, by checking email attachments for malicious content. It routes all messages and attachments that do not have a virus/malware signature to a special environment, and then uses machine learning and analysis techniques to detect malicious intent. If no suspicious activity is found, the message is forwarded to the mailbox. To learn more, see [Set up Safe Attachments policies](set-up-atp-safe-attachments-policies.md).

- **[Safe Links](atp-safe-links.md)**: Provides time-of-click verification of URLs, for example, in emails messages and Office files. Protection is ongoing and applies across your messaging and Office environment. Links are scanned for each click: safe links remain accessible and malicious links are dynamically blocked. To learn more, see [Set up Safe Links policies](set-up-atp-safe-links-policies.md).

- **[Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md)**: Protects your organization when users collaborate and share files, by identifying and blocking malicious files in team sites and document libraries. To learn more, see [Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams](turn-on-atp-for-spo-odb-and-teams.md).

- **[Anti-phishing protection in Defender for Office 365](set-up-anti-phishing-policies.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)**: Detects attempts to impersonate your users and internal or custom domains. It applies machine learning models and advanced impersonation-detection algorithms to avert phishing attacks. To learn more, see [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-atp-anti-phishing-policies.md).

## View Microsoft Defender for Office 365 reports

Microsoft Defender for Office 365 includes an advanced [reporting dashboard](view-reports-for-atp.md) to monitor your Defender for Office 365  performance. You can access it at **Reports** \> **Dashboard** in the Security & Compliance Center.

Reports update in real-time, providing you with the latest insights. These reports also provide recommendations and alert you to imminent threats. Predefined reports include the following:

- [Threat Explorer (or real-time detections)](threat-explorer.md)

- [Threat protection status report](view-reports-for-atp.md#threat-protection-status-report)

- [Defender for Office 365 file types report](view-reports-for-atp.md#defender-for-office-365-file-types-report)

- [Defender for Office 365 message disposition report](view-reports-for-atp.md#defender-for-office-365-message-disposition-report)

- ... and several more.

## Use threat investigation and response capabilities

Microsoft Defender for Office 365 Plan 2 includes best-of-class [threat investigation and response tools](office-365-ti.md) that enable your organization's security team to anticipate, understand, and prevent malicious attacks.

- **[Threat trackers](threat-trackers.md)** provide the latest intelligence on prevailing cybersecurity issues. For example, you can view information about the latest malware, and take countermeasures before it becomes an actual threat to your organization. Available trackers include [Noteworthy trackers](threat-trackers.md#noteworthy-trackers), [Trending trackers](threat-trackers.md#trending-trackers), [Tracked queries](threat-trackers.md#tracked-queries), and [Saved queries](threat-trackers.md#saved-queries).

- **[Threat Explorer (or real-time detections)](threat-explorer.md)** (also referred to as Explorer) is a real-time report that allows you to identify and analyze recent threats. You can configure Explorer to show data for custom periods.

- **[Attack Simulator](attack-simulator.md)** allows you to run realistic attack scenarios in your organization to identify vulnerabilities. Simulations of current types of attacks are available, including spear phishing credential harvest and attachment attacks, and password spray and brute force password attacks.

## Save time with automated investigation and response

(**NEW!**) When you are investigating a potential cyberattack, time is of the essence. The sooner you can identify and mitigate threats, the better off your organization will be. [Automated investigation and response](office-365-air.md) (AIR) capabilities include a set of security playbooks that can be launched automatically, such as when an alert is triggered, or manually, such as from a view in Explorer. AIR can save your security operations team time and effort in mitigating threats effectively and efficiently. To learn more, see [AIR in Office 365](office-365-air.md).

## Permissions required to use Microsoft Defender for Office 365 features

To access Microsoft Defender for Office 365 features in the Security & Compliance Center, you must be assigned an appropriate role. The following table includes some examples:

|Role or role group|Resources to learn more|
|---|---|
|global administrator (this can be assigned in either Azure Active Directory or in the Security & Compliance Center)|[About Microsoft 365 admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles)|
|Security Administrator (this can be assigned in either Azure Active Directory or the Security & Compliance Center)|[Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles) <p> [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md)|
|Exchange Online Organization Management (this is assigned in Exchange Online)|[Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/permissions-exo) <p> [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online-powershell)|
|Search and Purge (this is assigned only in the Security & Compliance Center)|[Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md)|

For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## Get Microsoft Defender for Office 365

Microsoft Defender for Office 365 is included in certain subscriptions, such as Microsoft 365 E5, Office 365 E5, Office 365 A5, and Microsoft 365 Business Premium. If your subscription does not include Defender for Office 365, you can purchase Defender for Office 365 Plan 1 or Defender for Office 365 Plan 2 as an add-on to certain subscriptions. To learn more, see the following resources:

- [Microsoft Defender for Office 365 availability](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#office-365-advanced-threat-protection-atp-availability) for a list of subscriptions that include Defender for Office 365 plans.

- [Feature availability across Microsoft Defender for Office 365 plans](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans) for a list of features included in Plan 1 and 2.

- [Get the right Microsoft Defender for Office 365](https://products.office.com/exchange/advance-threat-protection#pmg-allup-content) to compare plans and purchase Defender for Office 365.

- [Start a free trial](https://go.microsoft.com/fwlink/p/?LinkID=698279)

## New features in Microsoft Defender for Office 365

New features are added to Microsoft Defender for Office 365 continually. To learn more, see the following resources:

- [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=advanced%2Cthreat%2Cprotection) provides a list of new features in development and rolling out.

- [Microsoft Defender for Office 365 Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#whats-new-in-office-365-advanced-threat-protection-atp) describes features and availability across Defender for Office 365 plans.

## See also

- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

- [Automated investigation and response (AIR) in Microsoft 365 Defender](../mtp/mtp-autoir.md)
