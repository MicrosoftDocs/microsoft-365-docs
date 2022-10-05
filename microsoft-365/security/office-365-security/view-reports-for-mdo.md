---
title: View Defender for Office 365 reports
f1.keywords:
  - CSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: e47e838c-d99e-4c0b-b9aa-e66c4fae902f
ms.collection:
  - m365-security
  - m365initiative-defender-office365
description: Admins can learn how to find and use the Defender for Office 365 reports that are available in the Microsoft 365 Defender portal.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
---

# View Defender for Office 365 reports in the Microsoft 365 Defender portal

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Microsoft Defender for Office 365 organizations (for example, Microsoft 365 E5 subscriptions or Microsoft Defender for Office 365 Plan 1 or Microsoft Defender for Office 365 Plan 2 add-ons) contain a variety of security-related reports. If you have the [necessary permissions](#what-permissions-are-needed-to-view-the-defender-for-office-365-reports), you can view and download these reports in the Microsoft 365 Defender portal.

## View and download reports

### View reports

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. To go directly to the **Email & collaboration reports** page, use <https://security.microsoft.com/emailandcollabreport>.

1. Choose the report you want to view, and then select **View details**.

### Download reports

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** > **Email & collaboration** \> **Reports for download**. To go directly to the **Reports for download** page, use <https://security.microsoft.com/ReportsForDownload?viewid=custom>.

:::image type="content" source="../../media/email-collaboration-download-reports.png" alt-text="The Email & collaboration reports page in the Microsoft 365 Defender portal" lightbox="../../media/email-collaboration-download-reports.png":::

> [!NOTE]
>
> Email security reports that don't require Defender for Office 365 are described in [View email security reports in the Microsoft 365 Defender portal](view-email-security-reports.md).
>
> Reports that are related to mail flow are now in the Exchange admin center (EAC). For more information about these reports, see [Mail flow reports in the new Exchange admin center](/exchange/monitoring/mail-flow-reports/mail-flow-reports).

## Safe Attachments file types report

> [!NOTE]
> This report has been deprecated. The same information is available in the [Threat protection status report](#threat-protection-status-report).

## Safe Attachments message disposition report

> [!NOTE]
> This report has been deprecated. The same information is available in the [Threat protection status report](#threat-protection-status-report).

## Mail latency report

The **Mail latency report** shows you an aggregate view of the mail delivery and detonation latency experienced within your organization. Mail delivery times in the service are affected by a number of factors, and the absolute delivery time in seconds is often not a good indicator of success or a problem. A slow delivery time on one day might be considered an average delivery time on another day, or vice-versa. This tries to qualify message delivery based on statistical data about the observed delivery times of other messages.

Client side and network latency are not included.

To view the report, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. To go directly to the **Email & collaboration reports** page, use <https://security.microsoft.com/emailandcollabreport>.

On the **Email & collaboration reports** page, find **Mail latency report** and then click **View details**. To go directly to the report, use <https://security.microsoft.com/mailLatencyReport>.

:::image type="content" source="../../media/mail-latency-report-widget.png" alt-text="The Mail latency report widget on the Email & collaboration reports page" lightbox="../../media/mail-latency-report-widget.png":::

On the **Mail latency report** page, the following tabs are available on the **Mail latency report** page:

- **50th percentile**: This is the middle for message delivery times. You can consider this value as an average delivery time. This tab is selected by default.
- **90th percentile**: This indicates a high latency for message delivery. Only 10% of messages took longer than this value to deliver.
- **99th percentile**: This indicates the highest latency for message delivery.

Regardless of the tab you select, the chart shows messages organized into the following categories:

- **Overall**
- **Detonation**

When you hover over a category in the chart, you can see a breakdown of the latency in each category.

:::image type="content" source="../../media/mail-latency-report-50th-percentile-view.png" alt-text="The 50th percentiles view of the Mail latency report" lightbox="../../media/mail-latency-report-50th-percentile-view.png":::

If you click **Filter**, you can filter both the chart and the details table by the following values:

- **Date (UTC)**: **Start date** and **End date**
- **Message view**: One of the following values:
  - **All messages**
  - **Detonated messages**: One of the following values:
    - **Inline detonation**: Includes messages that are fully tested before delivery.
    - **Asynchronous detonation**

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

In the details table below the chart, the following information is available:

- **Date (UTC)**
- **Latency**
- **Message count**
- **50th percentile**
- **90th percentile**
- **99th percentile**

On the main report page, the ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](view-email-security-reports.md#export-report)** button is available.

## Threat protection status report

The **Threat protection status** report is a single view that brings together information about malicious content and malicious email detected and blocked by [Exchange Online Protection](exchange-online-protection-overview.md) (EOP) and Microsoft Defender for Office 365. For more information, see [Threat protection status report](view-email-security-reports.md#threat-protection-status-report).

## Top senders and recipients report

The **Top senders and recipients** report show the top recipients for EOP and Defender for Office 365 protection features. For more information, see [Top senders and recipients report](view-email-security-reports.md#top-senders-and-recipients-report).

## URL protection report

The **URL protection report** provides summary and trend views for threats detected and actions taken on URL clicks as part of [Safe Links](safe-links.md). This report will not have click data from users where the Safe Links policy was applied when the **Track user clicks** option is not selected.

To view the report, open the [Microsoft 365 Defender portal](https://security.microsoft.com), go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **URL protection page** and then click **View details**. To go directly to the report, open <https://security.microsoft.com/reports/URLProtectionActionReport>.

:::image type="content" source="../../media/url-protection-report-widget.png" alt-text="The URL protection report widget on the Email & collaboration reports page" lightbox="../../media/url-protection-report-widget.png":::

The available views on the **URL protection** report page are described in the following sections.

> [!NOTE]
> This is a *protection trend report*, meaning data represents trends in a larger dataset. As a result, the data in the charts is not available in real time here, but the data in the details table is, so you may see a slight discrepancy between the two. The charts are refreshed once every four hours and contain data for the last 90 days.

### View data by URL click protection action

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

If you click **Filters**, you can modify the report and the details table by selecting one or more of the following values in the flyout that appears:

- **Date (UTC)**: **Start date** and **End date**
- **Action**:
  - **Allowed**
  - **Blocked**
  - **Allowed by tenant admin**
  - **Blocked and clicked through**
  - **Blocked by tenant admin and clicked through**
  - **Clicked through during scan**
  - **Pending scan**
- **Domains**: The URL domains listed in the report results.
- **Recipients**

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

The details table below the chart provides the following near-real-time view of all clicks that happened within the organization for the last 7 days:

- **Click time**
- **User**
- **URL**
- **Action**
- **App**

On the main report page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](view-email-security-reports.md#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](view-email-security-reports.md#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](view-email-security-reports.md#export-report)** buttons are available.

### View data by URL click by application

:::image type="content" source="../../media/url-threat-protection-report-url-click-by-application-view.png" alt-text="The URL click protection action view in the URL protection report" lightbox="../../media/url-threat-protection-report-url-click-by-application-view.png":::

The **View data by URL click by application** view shows the number of URL clicks by apps that support Safe Links:

- **Email client**
- **Office document**
- **Teams**

If you click **Filters**, you can modify the report and the details table by selecting one or more of the following values in the flyout that appears:

- **Date (UTC)**: **Start date** and **End date**
- **Detection**: Available apps from the chart.
- **Domains**: The URL domains listed in the report results.
- **Recipients**

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

The details table below the chart provides the following near-real-time view of all clicks that happened within the organization for the last 7 days:

- **Click time**
- **User**
- **URL**
- **Action**
- **App**

On the main report page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](view-email-security-reports.md#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](view-email-security-reports.md#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](view-email-security-reports.md#export-report)** buttons are available.

## Additional reports to view

In addition to the reports described in this article, several other reports are available, as described in the following table:

|Report|Topic|
|---|---|
|**Explorer** (Microsoft Defender for Office 365 Plan 2) or **real-time detections** (Microsoft Defender for Office 365 Plan 1)|[Threat Explorer (and real-time detections)](threat-explorer.md)|
|Email security reports that don't require Defender for Office 365|[View email security reports in the Microsoft 365 Defender portal](view-email-security-reports.md)|
|Mail flow reports in the Exchange admin center (EAC)|[Mail flow reports in the new Exchange admin center](/exchange/monitoring/mail-flow-reports/mail-flow-reports)|

PowerShell reporting cmdlets:

|Report|Topic|
|---|---|
|Top senders and recipients|[Get-MailTrafficSummaryReport](/powershell/module/exchange/get-mailtrafficsummaryreport)|
|Top malware|[Get-MailTrafficSummaryReport](/powershell/module/exchange/get-mailtrafficsummaryreport)|
|Mail traffic|[Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <p> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport)|
|Safe Links|[Get-SafeLinksAggregateReport](/powershell/module/exchange/get-safelinksaggregatereport) <p> [Get-SafeLinksDetailReport](/powershell/module/exchange/get-safelinksdetailreport)|
|Compromised users|[Get-CompromisedUserAggregateReport](/powershell/module/exchange/get-compromiseduseraggregatereport) <p> [Get-CompromisedUserDetailReport](/powershell/module/exchange/get-compromiseduserdetailreport)|
|Mail flow status|[Get-MailflowStatusReport](/powershell/module/exchange/get-mailflowstatusreport)|
|Spoofed users|[Get-SpoofMailReport](/powershell/module/exchange/get-spoofmailreport)|

## What permissions are needed to view the Defender for Office 365 reports?

In order to view and use the reports described in this article, you need to be a member of one of the following role groups in the Microsoft 365 Defender portal:

- **Organization Management**
- **Security Administrator**
- **Security Reader**
- **Global Reader**

For more information, see [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).

**Note**: Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Microsoft 365 Defender portal _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

## What if the reports aren't showing data?

If you are not seeing data in your Defender for Office 365 reports, double-check that your policies are set up correctly. Your organization must have [Safe Links policies](set-up-safe-links-policies.md) and [Safe Attachments policies](set-up-safe-attachments-policies.md) defined in order for Defender for Office 365 protection to be in place. Also see [anti-spam](anti-spam-protection.md) and [anti-malware protection](anti-malware-protection.md).

