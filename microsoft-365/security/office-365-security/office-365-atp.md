---
title: "Office 365 Advanced Threat Protection"
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 10/03/2019
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
> This article is intended for business customers who have [Office 365 Advanced Threat Protection](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description). If you are using Outlook.com, Office 365 Home, or Office 365 Personal, and you're looking for information about Safe Links in Outlook, see [Advanced Outlook.com security](https://support.office.com/article/advanced-outlook-com-security-for-office-365-subscribers-882d2243-eab9-4545-a58a-b36fee4a46e2).

## Overview

Office 365 Advanced Threat Protection (ATP) safeguards your organization against malicious threats posed by email messages, links (URLs) and collaboration tools. ATP includes:

- [Threat protection policies](#configure-atp-policies): Define threat-protection policies to set the appropriate level of protection for your organization. 

- [Reports](#view-atp-reports): View real-time reports to monitor ATP performance in your organization. 

- [Threat investigation and response capabilities](#use-threat-investigation-and-response-capabilities): Use leading-edge tools to investigate, understand, simulate, and prevent threats. 

- [Automated investigation and response capabilities](#save-time-with-automated-investigation-and-response): Save time and effort investigating and mitigating threats.

## Office 365 ATP Plan 1 and Plan 2

ATP is included in Office 365 E5; however, ATP Plan 1 and ATP Plan 2 are each available as an add-on for certain subscriptions. To learn more, see [Feature availability across ATP plans](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans).

## Configure ATP policies

Office 365 ATP provides numerous tools to set an appropriate level of protection for your organization. 

Your organization's security team must define policies for each ATP tool in the Office 365 Security & Compliance Center. Go to **Threat management** > **Policy** to access policy options. For more information, see [Protect against threats](protect-against-threats.md).

The policies that are defined for your organization determine the behavior and protection level for predefined threats. Policy options are extremely flexible. For example, your organization's security team can set fine-grained threat protection at the user, organization, recipient, and domain level. It is important to review your policies regularly because new threats and challenges emerge daily.  

- [ATP Safe Attachments](atp-safe-attachments.md): Provides zero-day protection to safeguard your messaging system, by checking email attachments for malicious content. It routes all messages and attachments that do not have a virus/malware signature to a special environment, and then uses machine learning and analysis techniques to detect malicious intent. If no suspicious activity is found, the message is forwarded to the mailbox. To learn more, see [Set up Office 365 ATP Safe Attachments policies](set-up-atp-safe-attachments-policies.md).

- [ATP Safe Links](atp-safe-links.md): Provides time-of-click verification of URLs, for example, in emails messages and Office files. Protection is ongoing and applies across your messaging and Office environment. Links are scanned for each click: safe links remain accessible and malicious links are dynamically blocked. To learn more, see [Set up Office 365 ATP Safe Links policies](https://docs.microsoft.com/office365/securitycompliance/set-up-atp-safe-links-policies). 

- [ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md): Protects your organization when users collaborate and share files, by identifying and blocking malicious files in team sites and document libraries. To learn more, see [Turn on Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams](turn-on-atp-for-spo-odb-and-teams.md). 

- [ATP anti-phishing protection](atp-anti-phishing.md): Detects attempts to impersonate your users and custom domains. It applies machine learning models and advanced impersonation-detection algorithms to avert phishing attacks. To learn more, see [Set up Office 365 ATP anti-phishing and anti-phishing policies](set-up-anti-phishing-policies.md).

## View ATP reports

Office 365 ATP includes an advanced [reporting dashboard](view-reports-for-atp.md) to monitor your ATP performance. You can access it at **Reports > Dashboard** in the Security & Compliance Center. 

Reports update in real-time, providing you with the latest insights. These reports also provide recommendations and alert you to imminent threats. Predefined reports include the following: 

- [Threat Explorer (or real-time detections)](threat-explorer.md)

- [Threat Protection Status report](view-reports-for-atp.md#threat-protection-status-report)

- [ATP File Types report](view-reports-for-atp.md#atp-file-types-report)

- [ATP Message Disposition report](view-reports-for-atp.md#atp-message-disposition-report)

- ... and more. 

## Use threat investigation and response capabilities

Office 365 ATP Plan 2 includes best-of-class [threat investigation and response tools](office-365-ti.md) that enable your organization's security team to anticipate, understand, and prevent malicious attacks. 

- [Threat trackers](threat-trackers.md) provide the latest intelligence on prevailing cybersecurity issues. For example, you can view information about the latest malware, and take countermeasures before it becomes an actual threat to your organization. Available trackers include [Noteworthy trackers](threat-trackers.md#noteworthy-trackers), [Trending trackers](threat-trackers.md#trending-trackers), [Tracked queries](threat-trackers.md#tracked-queries), and [Saved queries](threat-trackers.md#saved-queries).

- [Threat Explorer (or real-time detections)](threat-explorer.md) (also referred to as Explorer) is a real-time report that allows you to identify and analyze recent threats. You can configure Explorer to show data for custom periods.

- [Attack Simulator](attack-simulator.md) allows you to run realistic attack scenarios in your organization to identify vulnerabilites. Simulations of current types of attacks are available, including a [display name spear-phishing attack](attack-simulator.md#display-name-spear-phishing-attack), a [password-spray attack](attack-simulator.md#password-spray-attack), a [brute-force password attack](attack-simulator.md#brute-force-password-attack), and more.
    
## Save time with automated investigation and response

(**NEW!**) When you are investigating a potential cyberattack, time is of the essence. The sooner you can identify and mitigate threats, the better off your organization will be. The subscriptions listed below now include [automated investigation and response (AIR)](automated-investigation-response-office.md) capabilities. (If you don't have these capabilities yet, you'll have them soon if you have one of these subscriptions.)

Office 365 AIR is included in the following subscriptions:

- Microsoft 365 E5
- Microsoft 365 E5 Security
- Office 365 E5
- Office 365 Advanced Threat Protection Plan 2

AIR includes a set of security playbooks that can be launched automatically, such as when an alert is triggered, or manually, such as from a view in Explorer. AIR can save your security operations team time and effort in mitigating threats effectively and efficiently. To learn more, see [Automated Investigation and Response (AIR) with Office 365](automated-investigation-response-office.md).

## Permissions required to use ATP features

To access ATP features in the Security & Compliance Center, you must be assigned an appropriate role. The following table includes some examples:

|Role or role group  |Resources to learn more  |
|---------|---------|
|Office 365 Global Administrator |[About Office 365 admin roles](https://docs.microsoft.com/office365/admin/add-users/about-admin-roles)|
|Security Administrator |[Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Exchange Online Organization Management |[Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/permissions-exo) <br>and<br> [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/exchange-online-powershell?view=exchange-ps)|

For more information, see:

- [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md) 

- [Give users access to the Security & Compliance Center](grant-access-to-the-security-and-compliance-center.md)

## Get Office 365 ATP

Office 365 ATP Plan 2 is included in Office 365 Enterprise E5, Office 365 Education A5, and Microsoft 365 Business. If your subscription does not include Office 365 ATP, you can purchase ATP Plan 1 or ATP Plan 2 as an add-on to certain subscriptions. To learn more, see the following resources:

- See [Office 365 Advanced Threat Protection (ATP) availability](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#office-365-advanced-threat-protection-atp-availability) for a list of subscriptions that include ATP plans.

- See [Feature availability across Advanced Threat Protection (ATP) plans](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#feature-availability-across-advanced-threat-protection-atp-plans) for a list of features included in Plan 1 and 2.

- See [Get the right Office 365 Advanced Threat Protection](https://products.office.com/exchange/advance-threat-protection#pmg-allup-content) to compare plans and purchase Office 365 ATP.

## New features in Office 365 ATP

New features are added to Office 365 ATP continually. To learn more, see the following resources:

- The [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=advanced%2Cthreat%2Cprotection) provides a list of new features in development and rolling out.

- The [Office 365 Advanced Threat Protection Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#whats-new-in-office-365-advanced-threat-protection-atp) describes features and availability across ATP plans.
