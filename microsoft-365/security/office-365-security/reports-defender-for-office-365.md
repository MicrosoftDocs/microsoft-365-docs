---
title: View Defender for Office 365 reports
f1.keywords:
  - CSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: e47e838c-d99e-4c0b-b9aa-e66c4fae902f
ms.collection:
  - m365-security
  - tier2
description: Admins can learn how to find and use the Defender for Office 365 reports that are available in the Microsoft 365 Defender portal.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/21/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# View Defender for Office 365 reports in the Microsoft 365 Defender portal

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In organizations with Microsoft Defender for Office 365 Plan 1 or Plan 2 (for example, Microsoft 365 E5 or Microsoft Business Premium) a variety of security-related reports are available. If you have the [necessary permissions](#what-permissions-are-needed-to-view-the-defender-for-office-365-reports), you can view and download these reports in the Microsoft 365 Defender portal.

The reports are available in the Microsoft 365 Defender portal at <https://security.microsoft.com> on the **Email & collaboration reports** page at **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. Or, to go directly to the **Email & collaboration reports** page, use <https://security.microsoft.com/emailandcollabreport>.

Summary information for each report is available on the page. Identify the report you want to view, and then select **View details** for that report.

The rest of this article describes the reports that are exclusive to Defender for Office 365.

> [!NOTE]
>
> Email security reports that don't require Defender for Office 365 are described in [View email security reports in the Microsoft 365 Defender portal](reports-email-security.md).
>
> For reports that have been deprecated or replaced, see the table in [Email security report changes in the Microsoft 365 Defender portal](reports-email-security.md#email-security-report-changes-in-the-microsoft-365-defender-portal).
>
> Reports that are related to mail flow are now in the Exchange admin center (EAC). For more information about these reports, see [Mail flow reports in the new Exchange admin center](/exchange/monitoring/mail-flow-reports/mail-flow-reports).

Watch this short video to learn how you can use reports to understand the effectiveness of Defender for Office 365 in your organization.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWBkxB]

## Safe Attachments file types report

> [!NOTE]
> This report has been deprecated. The same information is available in the [Threat protection status report](#threat-protection-status-report).

## Safe Attachments message disposition report

> [!NOTE]
> This report has been deprecated. The same information is available in the [Threat protection status report](#threat-protection-status-report).

## Mail latency report

The **Mail latency report** shows you an aggregate view of the mail delivery and detonation latency experienced within your Defender for Office 365 organization. Mail delivery times in the service are affected by many factors, and the absolute delivery time in seconds is often not a good indicator of success or a problem. A slow delivery time on one day might be considered an average delivery time on another day, or vice-versa. This report tries to qualify message delivery based on statistical data about the observed delivery times of other messages.

Client side and network latency aren't included.

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **Mail latency report**, and then select **View details**. Or, to go directly to the report, use <https://security.microsoft.com/mailLatencyReport>.

:::image type="content" source="../../media/mail-latency-report-widget.png" alt-text="The Mail latency report widget on the Email & collaboration reports page" lightbox="../../media/mail-latency-report-widget.png":::

On the **Mail latency report** page, the following tabs are available:

- **50th percentile**: The middle for message delivery times. You can consider this value as an average delivery time. This tab is selected by default.
- **90th percentile**: Indicates a high latency for message delivery. Only 10% of messages took longer than this value to deliver.
- **99th percentile**: Indicates the highest latency for message delivery.

Regardless of the tab you select, the chart shows messages organized into the following categories:

- **Overall**
- **Detonation** (these values are explained in the :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** values)

Hover over a category in the chart to see a breakdown of the latency in each category.

:::image type="content" source="../../media/mail-latency-report-50th-percentile-view.png" alt-text="The 50th percentiles view of the Mail latency report" lightbox="../../media/mail-latency-report-50th-percentile-view.png":::

In the details table below the chart, the following information is available:

- **Date (UTC)**
- **Latency**
- **Message count**
- **50th percentile**
- **90th percentile**
- **99th percentile**

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report and the details table by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)**: **Start date** and **End date**
- **Message view**: One of the following values:
  - **All messages**
  - **Detonated messages**: One of the following values:
    - **Inline detonation**: Attachments and links in messages that are fully tested before delivery by Safe Attachments and Safe Links.
    - **Asynchronous detonation**: [Dynamic delivery](safe-attachments-about.md#dynamic-delivery-in-safe-attachments-policies) of attachments in Safe Attachments and links in email tested after delivery by Safe Links.

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Mail latency report** page, the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](reports-email-security.md#export-report-data)** action is available.

## Threat protection status report

The **Threat protection status** report is a single view that brings together information about malicious content and malicious email detected and blocked by [Exchange Online Protection](eop-about.md) (EOP) and Defender for Office 365. For more information, see [Threat protection status report](reports-email-security.md#threat-protection-status-report).

## Top senders and recipients report

The **Top senders and recipients** report show the top recipients for EOP and Defender for Office 365 protection features. For more information, see [Top senders and recipients report](reports-email-security.md#top-senders-and-recipients-report).

## URL protection report

The **URL protection report** provides summary and trend views for threats detected and actions taken on URL clicks as part of [Safe Links](safe-links-about.md). This report doesn't have click data from users if **Track user clicks** in the effective Safe Links policy isn't selected.

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **URL protection report**, and then select **View details**. Or, to go directly to the report, use <https://security.microsoft.com/URLProtectionActionReport>.

:::image type="content" source="../../media/url-protection-report-widget.png" alt-text="The URL protection report widget on the Email & collaboration reports page" lightbox="../../media/url-protection-report-widget.png":::

The available views in the **URL threat protection** report are described in the following subsections.

### View data by URL click protection action in the URL protection report

:::image type="content" source="../../media/url-threat-protection-report-url-click-protection-action-view.png" alt-text="The view namely URL click protection action in the URL protection report" lightbox="../../media/url-threat-protection-report-url-click-protection-action-view.png":::

The **View data by URL click protection action** view shows the number of URL clicks by users in the organization and the results of the click:

- **Allowed**: Clicks allowed.
- **Allowed by tenant admin**: Clicks allowed in Safe Links policies.
- **Blocked**: Click blocked.
- **Blocked by tenant admin**: The Clicks blocked in Safe Links policies.
- **Blocked and clicked through**: Blocked clicks where users click through to the blocked URL.
- **Blocked by tenant admin and clicked through**: Admin has blocked the link, but the user clicked through.
- **Clicked through during scan**: Clicks where users click through the pending scan page to the URL.
- **Pending scan**: Clicks on URLs that are pending a scan verdict.

A click indicates that the user has clicked through the block page to the malicious website (admins can disable click through in Safe Links policies).

The details table below the chart provides the following near-real-time view of all clicks that happened within the organization for the last 30 days:

- **Click time**
- **User**
- **URL**
- **Action**
- **App**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report and the details table by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)**: **Start date** and **End date**.
- **Action**: The same URL click protection actions as previously described.
- **Evaluation**: Select **Yes** or **No**. For more information, see [Try Microsoft Defender for Office 365](try-microsoft-defender-for-office-365.md).
- **Domains (separated by commas)**: The URL domains listed in the report results.
- **Recipients (separated by commas)**
- **Tag**: **All** or the specified user tag (including priority accounts).

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **URL threat protection** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](reports-email-security.md#schedule-recurring-reports)**, :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](reports-email-security.md#request-on-demand-reports-for-download)**, and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](reports-email-security.md#export-report-data)** actions are available.

### View data by URL click by application in the URL protection report

:::image type="content" source="../../media/url-threat-protection-report-url-click-by-application-view.png" alt-text="The URL click protection action view in the URL protection report" lightbox="../../media/url-threat-protection-report-url-click-by-application-view.png":::

The **View data by URL click by application** view shows the number of URL clicks by apps that support Safe Links:

- **Email client**
- **Teams**
- **Office document**

The details table below the chart provides the following near-real-time view of all clicks that happened within the organization for the last seven days:

- **Click time**
- **User**
- **URL**
- **Action**: The same URL click protection actions as previously described for the [View data by URL click protection action](#view-data-by-url-click-protection-action-in-the-url-protection-report) view.
- **App**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report and the details table by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)**: **Start date** and **End date**.
- **Application**: The same click by application values as previously described.
- **Action**
- **Evaluation**: Select **Yes** or **No**. For more information, see [Try Microsoft Defender for Office 365](try-microsoft-defender-for-office-365.md).
- **Domains (separated by commas)**: The URL domains listed in the report results.
- **Recipients (separated by commas)**
- **Tag**: **All** or the specified user tag (including priority accounts).

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **URL threat protection** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](reports-email-security.md#schedule-recurring-reports)**, :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](reports-email-security.md#request-on-demand-reports-for-download)**, and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](reports-email-security.md#export-report-data)** actions are available.

## Additional reports to view

In addition to the reports described in this article, the following tables describe other available reports that are available:

|Report|Article|
|---|---|
|**Explorer** (Microsoft Defender for Office 365 Plan 2) or **real-time detections** (Microsoft Defender for Office 365 Plan 1)|[Threat Explorer (and real-time detections)](threat-explorer-about.md)|
|Email security reports that don't require Defender for Office 365|[View email security reports in the Microsoft 365 Defender portal](reports-email-security.md)|
|Mail flow reports in the Exchange admin center (EAC)|[Mail flow reports in the new Exchange admin center](/exchange/monitoring/mail-flow-reports/mail-flow-reports)|

PowerShell reporting cmdlets:

|Report|Article|
|---|---|
|Top senders and recipients|[Get-MailTrafficSummaryReport](/powershell/module/exchange/get-mailtrafficsummaryreport)|
|Top malware|[Get-MailTrafficSummaryReport](/powershell/module/exchange/get-mailtrafficsummaryreport)|
|Mail traffic|[Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <p> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport)|
|Safe Links|[Get-SafeLinksAggregateReport](/powershell/module/exchange/get-safelinksaggregatereport) <p> [Get-SafeLinksDetailReport](/powershell/module/exchange/get-safelinksdetailreport)|
|Compromised users|[Get-CompromisedUserAggregateReport](/powershell/module/exchange/get-compromiseduseraggregatereport) <p> [Get-CompromisedUserDetailReport](/powershell/module/exchange/get-compromiseduserdetailreport)|
|Mail flow status|[Get-MailflowStatusReport](/powershell/module/exchange/get-mailflowstatusreport)|
|Spoofed users|[Get-SpoofMailReport](/powershell/module/exchange/get-spoofmailreport)|
|Post delivery activity summary|[Get-AggregateZapReport](/powershell/module/exchange/get-aggregatezapreport)|
|Post delivery activity details|[Get-DetailZapReport](/powershell/module/exchange/get-detailzapreport)|

## What permissions are needed to view the Defender for Office 365 reports?

See [What permissions are needed to view these reports?](reports-email-security.md#what-permissions-are-needed-to-view-these-reports)

## What if the reports aren't showing data?

If you don't see data in the reports, check the report filters and double-check that your policies are set up correctly. Safe Links policies and Safe Attachments policies from Built-in protection, preset security policies, or custom policies need to be in effect and acting on messages. For more information, see the following articles:

- [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md)
- [Configuration analyzer for protection policies in EOP and Microsoft Defender for Office 365](configuration-analyzer-for-security-policies.md)
- [Set up Safe Links policies in Microsoft Defender for Office 365](safe-links-policies-configure.md)
- [Set up Safe Attachments policies in Microsoft Defender for Office 365](safe-attachments-policies-configure.md)
