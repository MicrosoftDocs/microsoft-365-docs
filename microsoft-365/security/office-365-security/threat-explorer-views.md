---
title: Views in Threat Explorer and real-time detections
f1.keywords:
  - NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 6/20/2023
audience: ITPro
ms.topic: conceptual

ms.localizationpriority: medium
ms.collection:
  - m365-security
  - tier1
description: Learn about how to use Threat Explorer and the real-time detections report to investigate and respond to threats in the Microsoft 365 Defender portal.
ms.custom: seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Views in Threat Explorer and real-time detections

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

:::image type="content" source="../../media/explorer-new.png" alt-text="Screenshot of the Threat Explorer page." lightbox="../../media/explorer.png":::

[Threat Explorer](threat-explorer-about.md) (and the real-time detections report) is a powerful, near real-time tool to help Security Operations teams investigate and respond to threats in the Microsoft 365 Defender portal. Explorer (and the real-time detections report) displays information about suspected malware and phish in email and files in Office 365, as well as other security threats and risks to your organization.

- If you have [Microsoft Defender for Office 365](defender-for-office-365.md) Plan 2, then you have Explorer.
- If you have Microsoft Defender for Office 365 Plan 1, then you have real-time detections.

When you first open Explorer (or the real-time detections report), the default view shows email malware detections for the past 7 days. This report can also show Microsoft Defender for Office 365 detections, such as malicious URLs detected by [Safe Links](safe-links-about.md), and malicious files detected by [Safe Attachments](safe-attachments-about.md). This report can be modified to show data for the past 30 days (with a Microsoft Defender for Office 365 P2 paid subscription). Trial subscriptions will include data for the past seven days only.

|Subscription|Utility|Days of Data|
|---|---|---|
|Microsoft Defender for Office 365 P1 trial|Real-time detections|7|
|Microsoft Defender for Office 365 P1 paid|Real-time detections|30|
|Microsoft Defender for Office 365 P1 paid testing Defender for Office 365 P2 trial|Threat Explorer|7|
|Microsoft Defender for Office 365 P2 trial|Threat Explorer|7|
|Microsoft Defender for Office 365 P2 paid|Threat Explorer|30|

> [!NOTE]
> We will soon be extending the Explorer (and Real-time detections) data retention and search limit for trial tenants from 7 to 30 days. This change is being tracked as part of roadmap item no. 70544, and is currently in a roll-out phase.

Select the **View** menu using the navigation bar. Once you have selected a view, you can apply filters and set up queries to conduct further analysis. The following sections provide a brief overview of the various views available in Explorer (or real-time detections).

## All email

To view this report, in Explorer, select **All email** in the top navigation pane. This view shows emails identified as malicious due to phishing or malware, as well all other non-malicious emails like regular email, spam, and bulk mail. 

:::image type="content" source="../../media/all-email-new.png" alt-text="Screenshot of the Threat Explorer View menu." lightbox="../../media/all-email-new.png":::

> [!NOTE] 
> If you get a **Too much data to display** error, add a filter and, if necessary, narrow the date range you're viewing. 

To apply a filter, select the filter dropdown, select an item in the list, and then select **Refresh**. You can view information by sender, sender's domain, recipients, subject, attachment filename, malware family, detection technology (how the malware was detected), and more. 

You can view more details about specific email messages, such as subject line, recipient, sender, status, and so on below the chart. 

## Malware

To view this report, in Explorer, select **Malware** in the top navigation pane. This view shows information about email messages that were identified as containing malware.

:::image type="content" source="../../media/threat-explorer-malware-new.png" alt-text="Screenshot of the View data about email identified as malware." lightbox="../../media/threat-explorer-malware-new.png":::

Use this list to view data by sender, recipients, sender domain, subject, detection technology, and more. 

You can also use the **Top malware families** section to identify the malware families used most frequently to attack the users and the number of times it is used in last 30 days. 

Below the chart, view more details about specific messages. When you select an item in the list, a fly-out pane opens, where you can learn more about the item you selected.

:::image type="content" source="../../media/top-malware-families-new.png" alt-text="Screenshot of the Threat Explorer with top malware families." lightbox="../../media/top-malware-families-new.png":::

## Phish

To view this report, in Explorer (or real-time detections), select **Phish** in the top navigation pane. This view shows email messages identified as phishing attempts.

:::image type="content" source="../../media/phish-new.png" alt-text="Screenshot of the View data about email identified as phishing attempts." lightbox="../../media/phish-new.png":::

Your list of viewing options include data by sender, recipients, sender domain, sender IP, URL domain, click verdict, and more. 

For example, to see what actions were taken when people clicked on URLs that were identified as phishing attempts, select **Click verdict**, select one or more options, and then select **Refresh**.

Below the chart, view more details about specific emails, **URL clicks**, **Top URLs**, **Top clicks**, and more. 

When you select an item in the list, such as a URL that was detected, a fly-out pane opens, where you can learn more about the item you selected. 

:::image type="content" source="../../media/threat-explorer-email-phish-details-new.png" alt-text="Screenshot of the Details about a detected URL." lightbox="../../media/threat-explorer-email-phish-details-new.png":::

## Campaigns

To view this report, in Explorer, select **Campaign** in the top navigation pane. This view shows details of all the campaigns identified by Microsoft Defender for Office 365.

:::image type="content" source="../../media/threat-explorer-campaigns-new.png" alt-text="Screenshot of view data about campaigns." lightbox="../../media/threat-explorer-campaigns-new.png":::

For more information on campaigns, see [Campaigns in Microsoft Defender for Office 365](campaigns.md).

## Content Malware

To view this report, in Explorer (or real-time detections), select **Content Malware** in the top navigation pane. This view shows files that were identified as malicious by [Microsoft Defender for Office 365 in SharePoint Online, OneDrive for Business, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).

:::image type="content" source="../../media/threat-explorer-content-malware-new.png" alt-text="Screenshot of the view data about content malware." lightbox="../../media/threat-explorer-content-malware-new.png":::

You can view information by malware family, detection technology (how the malware was detected), and workload (OneDrive, SharePoint, or Teams).

Below the chart, view more details about specific files, such as attachment filename, workload, file size, who last modified the file, and more.

## URL clicks

To view this report, in Explorer, select **URL clicks** in the top navigation pane. This view shows all end user clicks on URLs in emails, Teams messages, and Office 365 apps like OneDrive and SharePoint.

:::image type="content" source="../../media/threat-explorer-url-clicks-new.png" alt-text="Screenshot of the view data about url clicks." lightbox="../../media/threat-explorer-url-clicks-new.png":::

You can view information by recipient, detection technology (how the malware was detected), and workload (Email, Office, Teams). 

You can also use the **Top clicks** and **Top targeted users** options to get more information on user click patterns and know which users are more vulnerable to external attacks.

:::image type="content" source="../../media/threat-explorer-top-clicks.png" alt-text="Screenshot of view data filtered by top clicks." lightbox="../../media/threat-explorer-top-clicks.png"::: 

## Queries and filters

Explorer (as well as the real-time detections report) has several powerful filters and querying capabilities that enable you to drill into details, such as top targeted users, top malware families, detection technology, and more. Each kind of report offers a variety of ways to view and explore data.

> [!IMPORTANT]
> Do not use wildcard characters, such as an asterisk or a question mark, in the query bar for Explorer (or real-time detections). When you search on the **Subject field** for email messages, Explorer (or real-time detections) will perform partial matching and yield results similar to a wildcard search.
