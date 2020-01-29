---
title: "Office 365 Advanced Threat Protection"
f1.keywords:
- CSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 12/04/2019
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
- MOE150
ms.assetid: e100fe7c-f2a1-4b7d-9e08-622330b83653
ms.collection:
- M365-security-compliance
description: "Office 365 Advanced Threat Protection includes safe attachments, safe links, advanced anti-phishing tools, reporting tools and threat intelligence capabilities."
---
# Office 365 Advanced Threat Protection

> [!IMPORTANT]
> This article is intended for business customers who have [Office 365 Advanced Threat Protection](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description). If you are using Outlook.com, Office 365 Home, or Office 365 Personal, and you're looking for information about Safe Links or Safe Attachments in Outlook, see [Advanced Outlook.com security for Office 365 subscribers](https://support.office.com/article/882d2243-eab9-4545-a58a-b36fee4a46e2).

## Overview

Office 365 Advanced Threat Protection (ATP) safeguards your organization against malicious threats posed by email messages, links (URLs) and collaboration tools. ATP includes:

- **[Threat protection policies](#configure-atp-policies)**: Define threat-protection policies to set the appropriate level of protection for your organization.

- **[Reports](#view-office-365-atp-reports)**: View real-time reports to monitor ATP performance in your organization.

- **[Threat investigation and response capabilities](#use-threat-investigation-and-response-capabilities)**: Use leading-edge tools to investigate, understand, simulate, and prevent threats.

- **[Automated investigation and response capabilities](#save-time-with-automated-investigation-and-response)**: Save time and effort investigating and mitigating threats.

## Office 365 ATP Plan 1 and Plan 2

The following table summarizes what's included in each plan.

|Office 365 ATP Plan 1 |Office 365 ATP Plan 2|
|---------|---------|
|Configuration, protection, and detection capabilities:<br/>- [Safe Attachments](atp-safe-attachments.md)<br/>- [Safe Links](atp-safe-links.md)<br/>- [ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md)<br/>- [Advanced antiphishing protection](atp-anti-phishing.md)<br/>- [Real-time detections](threat-explorer.md)     |Office 365 ATP Plan 1 capabilities<br/>--- plus ---<br/>Automation, investigation, remediation, and education capabilities:<br/>- [Threat Trackers](threat-trackers.md)<br/>- [Threat Explorer](threat-explorer.md)<br/>- [Automated investigation and response](automated-investigation-response-office.md)<br/>- [Attack Simulator](attack-simulator.md)|

- Office 365 ATP Plan 2 is included in Office 365 E5, Office 365 A5, and Microsoft 365 E5.

- Office 365 ATP Plan 1 is included in Microsoft 365 Business.

- Office 365 ATP Plan 1 and Office 365 ATP Plan 2 are each available as an add-on for certain subscriptions. To learn more, see [Feature availability across ATP plans](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

- If your current subscription does not include Office 365 ATP, [contact sales to start a trial](https://go.microsoft.com/fwlink/p/?LinkId=518644), and see how ATP can work for your organization.

> [!TIP]
> Do you have Microsoft 365 E5 or Microsoft 365 E3 together with Identity & Threat Protection? Consider trying [Microsoft Threat Protection](../mtp/microsoft-threat-protection.md).

## Configure ATP policies

With Office 365 ATP, your organization's security team can configure protection by defining policies in the Office 365 Security & Compliance Center (Go to [https://protection.office.com](https://protection.office.com) > **Threat management** > **Policy**.)

> [!TIP]
> For a quick list of policies to define, see [Protect against threats](protect-against-threats.md).

The policies that are defined for your organization determine the behavior and protection level for predefined threats. Policy options are extremely flexible. For example, your organization's security team can set fine-grained threat protection at the user, organization, recipient, and domain level. It is important to review your policies regularly because new threats and challenges emerge daily.

- **[ATP Safe Attachments](atp-safe-attachments.md)**: Provides zero-day protection to safeguard your messaging system, by checking email attachments for malicious content. It routes all messages and attachments that do not have a virus/malware signature to a special environment, and then uses machine learning and analysis techniques to detect malicious intent. If no suspicious activity is found, the message is forwarded to the mailbox. To learn more, see [Set up Office 365 ATP Safe Attachments policies](set-up-atp-safe-attachments-policies.md).

- **[ATP Safe Links](atp-safe-links.md)**: Provides time-of-click verification of URLs, for example, in emails messages and Office files. Protection is ongoing and applies across your messaging and Office environment. Links are scanned for each click: safe links remain accessible and malicious links are dynamically blocked. To learn more, see [Set up Office 365 ATP Safe Links policies](set-up-atp-safe-links-policies.md).

- **[ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md)**: Protects your organization when users collaborate and share files, by identifying and blocking malicious files in team sites and document libraries. To learn more, see [Turn on Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams](turn-on-atp-for-spo-odb-and-teams.md).

- **[ATP anti-phishing protection](atp-anti-phishing.md)**: Detects attempts to impersonate your users and custom domains. It applies machine learning models and advanced impersonation-detection algorithms to avert phishing attacks. To learn more, see [Set up Office 365 ATP anti-phishing and anti-phishing policies](set-up-anti-phishing-policies.md).

## View Office 365 ATP reports

Office 365 ATP includes an advanced [reporting dashboard](view-reports-for-atp.md) to monitor your ATP performance. You can access it at **Reports** > **Dashboard** in the Security & Compliance Center.

Reports update in real-time, providing you with the latest insights. These reports also provide recommendations and alert you to imminent threats. Predefined reports include the following:

- [Threat Explorer (or real-time detections)](threat-explorer.md)

- [Threat Protection Status report](view-reports-for-atp.md#threat-protection-status-report)

- [ATP File Types report](view-reports-for-atp.md#atp-file-types-report)

- [ATP Message Disposition report](view-reports-for-atp.md#atp-message-disposition-report)

- ... and several more.

## Use threat investigation and response capabilities

Office 365 ATP Plan 2 includes best-of-class [threat investigation and response tools](office-365-ti.md) that enable your organization's security team to anticipate, understand, and prevent malicious attacks.

- **[Threat trackers](threat-trackers.md)** provide the latest intelligence on prevailing cybersecurity issues. For example, you can view information about the latest malware, and take countermeasures before it becomes an actual threat to your organization. Available trackers include [Noteworthy trackers](threat-trackers.md#noteworthy-trackers), [Trending trackers](threat-trackers.md#trending-trackers), [Tracked queries](threat-trackers.md#tracked-queries), and [Saved queries](threat-trackers.md#saved-queries).

- **[Threat Explorer (or real-time detections)](threat-explorer.md)** (also referred to as Explorer) is a real-time report that allows you to identify and analyze recent threats. You can configure Explorer to show data for custom periods.

- **[Attack Simulator](attack-simulator.md)** allows you to run realistic attack scenarios in your organization to identify vulnerabilites. Simulations of current types of attacks are available, including a [display name spear-phishing attack](attack-simulator.md#display-name-spear-phishing-attack), a [password-spray attack](attack-simulator.md#password-spray-attack), a [brute-force password attack](attack-simulator.md#brute-force-password-attack), and more.

## Save time with automated investigation and response

(**NEW!**) When you are investigating a potential cyberattack, time is of the essence. The sooner you can identify and mitigate threats, the better off your organization will be. [Automated investigation and response](automated-investigation-response-office.md) (AIR) capabilities include a set of security playbooks that can be launched automatically, such as when an alert is triggered, or manually, such as from a view in Explorer. AIR can save your security operations team time and effort in mitigating threats effectively and efficiently. To learn more, see [AIR in Office 365](automated-investigation-response-office.md).

## Permissions required to use ATP features

To access ATP features in the Security & Compliance Center, you must be assigned an appropriate role. The following table includes some examples:

|Role or role group|Resources to learn more|
|---------|---------|
|Office 365 Global Administrator (this can be assigned in either Azure Active Directory or in the Office 365 Security & Compliance Center) |[About Office 365 admin roles](https://docs.microsoft.com/office365/admin/add-users/about-admin-roles)|
|Security Administrator (this can be assigned in either Azure Active Directory or the Office 365 Security & Compliance Center) |[Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)<br><br/>[Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md)|
|Exchange Online Organization Management (this is assigned in Exchange Online)|[Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/permissions-exo)<br><br> [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/exchange-online-powershell)|
|Search and Purge (this is assigned only in the Office 365 Security & Compliance Center) |[Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md|

For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## Get Office 365 ATP

Office 365 ATP is included in certain subscriptions, such as Microsoft 365 E5, Office 365 E5, Office 365 A5, and Microsoft 365 Business. If your subscription does not include Office 365 ATP, you can purchase ATP Plan 1 or ATP Plan 2 as an add-on to certain subscriptions. To learn more, see the following resources:

- [Office 365 Advanced Threat Protection availability](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#office-365-advanced-threat-protection-atp-availability) for a list of subscriptions that include ATP plans.

- [Feature availability across Advanced Threat Protection (ATP) plans](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans) for a list of features included in Plan 1 and 2.

- [Get the right Office 365 Advanced Threat Protection](https://products.office.com/exchange/advance-threat-protection#pmg-allup-content) to compare plans and purchase Office 365 ATP.

- [Start a free trial](https://go.microsoft.com/fwlink/p/?LinkID=698279)

## New features in Office 365 ATP

New features are added to Office 365 ATP continually. To learn more, see the following resources:

- [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=advanced%2Cthreat%2Cprotection) provides a list of new features in development and rolling out.

- [Office 365 Advanced Threat Protection Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#whats-new-in-office-365-advanced-threat-protection-atp) describes features and availability across ATP plans.

## See also

- [Microsoft Threat Protection](../mtp/microsoft-threat-protection.md)

- [Automated investigation and response (AIR) in Microsoft Threat Protection](../mtp/mtp-autoir.md)
