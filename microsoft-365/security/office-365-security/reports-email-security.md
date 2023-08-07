---
title: View email security reports
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: 3a137e28-1174-42d5-99af-f18868b43e86
ms.collection:
  - m365-security
  - tier2
description: "Admins can learn how to find and use the email security reports that are available in the Microsoft 365 Defender portal. This article helps answer the question, 'What is the Threat protection status report in EOP and Microsoft Defender for Office 365?'"
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/30/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# View email security reports in the Microsoft 365 Defender portal

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In all Microsoft 365 organizations, a variety of reports are available to help you see how email security features are protecting your organization. If you have the [necessary permissions](#what-permissions-are-needed-to-view-these-reports), you can view and download these reports as described in this article.

The reports are available in the Microsoft 365 Defender portal at <https://security.microsoft.com> on the **Email & collaboration reports** page at **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. Or, to go directly to the **Email & collaboration reports** page, use <https://security.microsoft.com/emailandcollabreport>.

Summary information for each report is available on the page. Identify the report you want to view, and then select **View details** for that report.

The rest of this article describes the reports that are exclusive to Defender for Office 365.

> [!NOTE]
>
> - Some of the reports on the **Email & collaboration reports** page are exclusive to Microsoft Defender for Office 365. For information about these reports, see [View Defender for Office 365 reports in the Microsoft 365 Defender portal](reports-defender-for-office-365.md).
>
> - Reports that are related to mail flow are now in the Exchange admin center. For more information about these reports, see [Mail flow reports in the new Exchange admin center](/exchange/monitoring/mail-flow-reports/mail-flow-reports).
>
>   A link to these reports is available in the Defender portal at **Reports** \> **Email & collaboration** \> **Email & collaboration reports** \> **Exchange mail flow reports**, which takes you to <https://admin.exchange.microsoft.com/#/reports/mailflowreportsmain>.

## Email security report changes in the Microsoft 365 Defender portal

The Exchange Online Protection (EOP) and Microsoft Defender for Office 365 reports in the Microsoft 365 Defender portal that have been replaced, moved, or deprecated are described in the following table.

|Deprecated report and cmdlets|New report and cmdlets|Message Center ID|Date|
|---|---|:---:|:---:|
|**URL trace** <br><br> Get-URLTrace|[URL protection report](reports-defender-for-office-365.md#url-protection-report) <br><br> [Get-SafeLinksAggregateReport](/powershell/module/exchange/get-safelinksaggregatereport) <br> [Get-SafeLinksDetailReport](/powershell/module/exchange/get-safelinksdetailreport)|MC239999|June 2021|
|**Sent and received email report** <br><br> Get-MailTrafficReport <br> Get-MailDetailReport|[Threat protection status report](#threat-protection-status-report) <br> [Mailflow status report](#mailflow-status-report) <br><br> [Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <br> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport) <br> [Get-MailFlowStatusReport](/powershell/module/exchange/get-mailflowstatusreport)|MC236025|June 2021|
|**Forwarding report** <br><br> no cmdlets|[Auto-forwarded messages report in the EAC](/exchange/monitoring/mail-flow-reports/mfr-auto-forwarded-messages-report) <br><br> no cmdlets|MC250533|June 2021|
|**Safe Attachments file types report** <br><br> Get-AdvancedThreatProtectionTrafficReport <br> Get-MailDetailMalwareReport|[Threat protection status report: View data by Email \> Malware](#view-data-by-email--malware-and-chart-breakdown-by-detection-technology) <br><br> [Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <br> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport)|MC250532|June 2021|
|**Safe Attachments message disposition report** <br><br> Get-AdvancedThreatProtectionTrafficReport <br> Get-MailDetailMalwareReport|[Threat protection status report: View data by Email \> Malware](#view-data-by-email--malware-and-chart-breakdown-by-detection-technology) <br><br> [Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <br> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport)|MC250531|June 2021|
|**Malware detected in email report** <br><br> Get-MailTrafficReport <br> Get-MailDetailMalwareReport|[Threat protection status report: View data by Email \> Malware](#view-data-by-email--malware-and-chart-breakdown-by-detection-technology) <br><br> [Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <br> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport)|MC250530|June 2021|
|**Spam detection report** <br><br> Get-MailTrafficReport <br> Get-MailDetailSpamReport|[Threat protection status report: View data by Email \> Spam](#view-data-by-email--spam-and-chart-breakdown-by-detection-technology) <br><br> [Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <br> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport)|MC250529|October 2021|
|Get-AdvancedThreatProtectionDocumentReport <br><br> Get-AdvancedThreatProtectionDocumentDetail|[Get-ContentMalwareMdoAggregateReport](/powershell/module/exchange/get-contentmalwaremdoaggregatereport) <br><br> [Get-ContentMalwareMdoDetailReport](/powershell/module/exchange/get-contentmalwaremdodetailreport)|MC343433|May 2022|
|**Exchange transport rule report** <br><br> [Get-MailTrafficPolicyReport](/powershell/module/exchange/get-mailtrafficpolicyreport) <br> [Get-MailDetailTransportRuleReport](/powershell/module/exchange/get-maildetailtransportrulereport)|[Exchange transport rule report in the EAC](/exchange/monitoring/mail-flow-reports/mfr-exchange-transport-rule-report) <br><br> [Get-MailTrafficPolicyReport](/powershell/module/exchange/get-mailtrafficpolicyreport) <br> [Get-MailDetailTransportRuleReport](/powershell/module/exchange/get-maildetailtransportrulereport)|MC316157|April 2022|
|Get-MailTrafficTopReport|[Top senders and recipient report](reports-email-security.md#top-senders-and-recipients-report) <br><br> [Get-MailTrafficSummaryReport](/powershell/module/exchange/get-mailtrafficsummaryreport) <br><br> **Note**: There's no replacement for the encryption reporting capabilities in Get-MailTrafficTopReport.|MC315742|April 2022|

## Compromised users report

The **Compromised users** report shows the number of user accounts that were marked as **Suspicious** or **Restricted** within the last 7 days. Accounts in either of these states are problematic or even compromised. With frequent use, you can use the report to spot spikes, and even trends, in suspicious or restricted accounts. For more information about compromised users, see [Responding to a compromised email account](responding-to-a-compromised-email-account.md).

:::image type="content" source="../../media/compromised-users-report-widget.png" alt-text="The Compromised users widget on the Email & collaboration reports page." lightbox="../../media/compromised-users-report-widget.png":::

The aggregate view shows data for the last 90 days and the detail view shows data for the last 30 days.

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **Compromised users**, and then select **View details**. Or, to go directly to the report, use <https://security.microsoft.com/reports/CompromisedUsers>.

On the **Compromised users** page, the chart shows the following information for the specified date range:

- **Restricted**: The user account has been restricted from sending email due to highly suspicious patterns.
- **Suspicious**: The user account has sent suspicious email and is at risk of being restricted from sending email.

:::image type="content" source="../../media/compromised-users-report-activity-view.png" alt-text="The Report view in the Compromised users report." lightbox="../../media/compromised-users-report-activity-view.png":::

The details table below the graph shows the following information:

- **Creation time**
- **User ID**
- **Action**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report and the details table by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)**: **Start date** and **End date**.
- **Activity**: **Restricted** or **Suspicious**
- **Tag**: **All** or the specified user tag (including priority accounts).

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Compromised users** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)**, :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](#request-on-demand-reports-for-download)**, and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** actions are available.

## Exchange transport rule report

> [!NOTE]
> The **Exchange transport rule report** is now available in the EAC. For more information, see [Exchange transport rule report in the new EAC](/exchange/monitoring/mail-flow-reports/mfr-exchange-transport-rule-report).

## Forwarding report

> [!NOTE]
> This report is now available in the EAC. For more information, see [Auto forwarded messages report in the new EAC](/exchange/monitoring/mail-flow-reports/mfr-auto-forwarded-messages-report).

## Mailflow status report

The **Mailflow status report** is a smart report that shows information about incoming and outgoing email, spam detections, malware, email identified as "good", and information about email allowed or blocked on the edge. This is the only report that contains edge protection information. The report shows how much email is blocked before entering the service for examination by Exchange Online Protection (EOP) or Defender for Microsoft 365.

> [!TIP]
> If a message is sent to five recipients, we count it as five different messages, not one message.

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **Mailflow status summary**, and then select **View details**. Or, to go directly to the report, use <https://security.microsoft.com/reports/mailflowStatusReport>.

:::image type="content" source="../../media/mail-flow-status-report-widget.png" alt-text="The Mailflow status summary widget on the Email & collaboration reports page." lightbox="../../media/mail-flow-status-report-widget.png":::

The available views in the **Mailflow status report** are described in the following subsections.

### Type view for the Mailflow status report

:::image type="content" source="../../media/mail-flow-status-report-type-view.png" alt-text="The Type view in the Mailflow status report." lightbox="../../media/mail-flow-status-report-type-view.png":::

On the **Mailflow status report** page, the **Type** tab is selected by default. The chart shows the following information for the specified date range:

- **Malware**: Email that's blocked as malware by various filters.
- **Total**
- **Good mail**: Email that's determined not to be spam or that's allowed by user or organizational policies.
- **Phishing email**: Email that's blocked as phishing by various filters.
- **Spam**: Email that's blocked as spam by various filters.
- **Edge protection**: Email that's rejected at the edge/perimeter before examination by EOP or Defender for Office 365.
- **Rule messages**: Email messages that were acted on by mail flow rules (also known as transport rules).

The details table below the graph shows the following information:

- **Direction**
- **Type**
- **24 hours**
- **3 days**
- **7 days**
- **15 days**
- **30 days**

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report and the details table by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)**: **Start date** and **End date**.
- **Mail direction**: **Inbound** and **Outbound**.
- **Type**:
  - **Good mail**
  - **Malware**
  - **Spam**
  - **Edge protection**
  - **Rule messages**
  - **Phishing email**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Type** tab, select **Choose a category for more details** to see more information:

- **Phishing email**: This selection takes you to the [Threat protection status report](reports-email-security.md#threat-protection-status-report).
- **Malware in email**: This selection takes you to the [Threat protection status report](reports-email-security.md#threat-protection-status-report).
- **Spam detections**: This selection takes you to the [Spam detections report](reports-email-security.md#spam-detections-report).

On the ***Type** tab, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)** and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** actions are available.

### Direction view for the Mailflow status report

:::image type="content" source="../../media/mail-flow-status-report-direction-view.png" alt-text="The Direction view in the Mailflow status report." lightbox="../../media/mail-flow-status-report-direction-view.png":::

On the **Direction** tab, the chart shows the following information for the specified date range:

- **Inbound**
- **Outbound**

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report and the details table by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)**: **Start date** and **End date**.
- **Mail direction**: **Inbound** and **Outbound**.
- **Type**:
  - **Good mail**
  - **Malware**
  - **Spam**
  - **Edge protection**
  - **Rule messages**
  - **Phishing email**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Direction** tab, select **Choose a category for more details** to see more information:

- **Phishing email**: This selection takes you to the [Threat protection status report](reports-email-security.md#threat-protection-status-report).
- **Malware in email**: This selection takes you to the [Threat protection status report](reports-email-security.md#threat-protection-status-report).
- **Spam detections**: This selection takes you to the [Spam Detections report](reports-email-security.md#spam-detections-report).

On the **Direction** tab, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create schedule** and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** actions are available.

### Mailflow view for the Mailflow status report

The **Mailflow** tab shows you how Microsoft's email threat protection features filter incoming and outgoing email in your organization. This view uses a horizontal flow diagram (known as a *Sankey* diagram) to provide details on the total email count, and how threat protection features affect this count.

:::image type="content" source="../../media/mail-flow-status-report-mailflow-view.png" alt-text="The Mailflow view in the Mailflow status report." lightbox="../../media/mail-flow-status-report-mailflow-view.png":::

The aggregate view and details table view allow for 90 days of filtering.

The information in the diagram is color-coded by **EOP** and **Defender for Office 365** technologies.

The diagram is organized into the following horizontal bands:

- **Total email** band: This value is always shown first.
- **Edge block** and **Processed** band:
  - **Edge block**: Messages that were filtered at the edge and identified as Edge Protection.
  - **Processed**: Messages that were handled by the filtering stack.
- Outcomes band:
  - **Rule Block**: Messages that were blocked by Exchange mail flow rules (transport rules).
  - **Malware block**: Messages that were identified as malware.<sup>\*</sup>
  - **Phishing block**: Messages that were identified as phishing.<sup>\*</sup>
  - **Spam block**: Messages that were identified as spam.<sup>\*</sup>
  - **Impersonation block**: Messages that were detected as user impersonation or domain impersonation in Defender for Office 365.<sup>\*</sup>
  - **Detonation block**: Messages that were detected during file or URL detonation by Safe Attachments policies or Safe Links policies in Defender for Office 365.<sup>\*</sup>
  - **ZAP removed**: Messages that were removed by zero-hour auto purge (ZAP).<sup>\*</sup>
  - **Delivered**: Messages that were delivered to users due to an allow.<sup>\*</sup>

If you hover over a horizontal band in the diagram, you see the number of related messages.

<sup>\*</sup> If you select this element, the diagram expands to show further details. For a description of each element in the expanded nodes, see [Detection technologies](/office/office-365-management-api/office-365-management-activity-api-schema#detection-technologies).

:::image type="content" source="../../media/mail-flow-status-report-mailflow-view-details.png" alt-text="The Phishing block details in Mailflow view in the Mailflow status report." lightbox="../../media/mail-flow-status-report-mailflow-view-details.png":::

The details table below the diagram shows the following information:

- **Date (UTC)**
- **Total email**
- **Edge filtered**
- **Rule messages**
- **Anti-malware engine, Safe Attachments, rule filtered**
- **DMARC impersonation, spoof, phish filtered**
- **Detonation detection**
- **Anti-spam filtered**
- **ZAP removed**
- **Messages where no threats were detected**

Select a row in the details table to see a further breakdown of the email counts in the details flyout that opens.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report and the details table by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**.
- **Direction**: **Inbound** and **Outbound**.

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Mailflow** tab, select :::image type="icon" source="../../media/m365-cc-sc-show-trends-icon.png" border="false"::: **Show trends** to see trend graphs in the **Mailflow trends** flyout that opens.

:::image type="content" source="../../media/mail-flow-status-report-mailflow-view-show-trends.png" alt-text="The Mailflow trends flyout in Mailflow view in the Mailflow status report." lightbox="../../media/mail-flow-status-report-mailflow-view-show-trends.png":::

On the **Mailflow** tab, the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** action is available.

## Malware detections report

> [!NOTE]
> This report has been deprecated. The same information is available in the [Threat protection status report](#threat-protection-status-report).

## Mail latency report

The **Mail latency report** in Defender for Office 365 contains information on the mail delivery and detonation latency experienced within your organization. For more information, see [Mail latency report](reports-defender-for-office-365.md#mail-latency-report).

## Post-delivery activities report

The **Post-delivery activities** report shows information about email messages that removed from user mailboxes after delivery by zero-hour auto purge (ZAP). For more information about ZAP, see [Zero-hour auto purge (ZAP) in Exchange Online](zero-hour-auto-purge.md).

The report shows real-time information, with updated threat information.

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **Post-delivery activities**, and then select **View details**. Or, to go directly to the report, use <https://security.microsoft.com/reports/ZapReport>.

:::image type="content" source="../../media/post-delivery-activities-widget.png" alt-text="The Post-delivery activities widget on the Email & collaboration reports page." lightbox="../../media/post-delivery-activities-widget.png":::

On the **Post-delivery activities** page, the chart shows the following information for the specified date range:

- **No threat**: The number of unique delivered messages that were found to be not spam by ZAP.
- **Spam**: The number of unique messages that were removed from mailboxes by ZAP for spam.
- **Phishing**: The number of unique messages that were removed from mailboxes by ZAP for phishing.
- **Malware**: The number of unique messages that were removed from mailboxes by ZAP for phishing.

The details table below the graph shows the following information:

- **Subject**
- **Received time**
- **Sender**
- **Recipient**
- **ZAP time**
- **Original threat**
- **Original location**
- **Updated threat**
- **Updated delivery location**
- **Detection technology**

  To see all columns, you likely need to do one or more of the following steps:

  - Horizontally scroll in your web browser.
  - Narrow the width of appropriate columns.
  - Zoom out in your web browser.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report and the details table by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)**: **Start date** and **End date**.
- **Verdict**:
  - **No threat**
  - **Spam**
  - **Phishing**
  - **Malware**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Post delivery activities** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)** and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** actions are available.

:::image type="content" source="../../media/post-delivery-activities-report.png" alt-text="The Post-delivery activities report." lightbox="../../media/post-delivery-activities-report.png":::

## Spam detections report

> [!NOTE]
> This report has been deprecated. The same information is available in the [Threat protection status report](#threat-protection-status-report).

## Spoof detections report

The **Spoof detections** report shows information about messages that were blocked or allowed due to spoofing. For more information about spoofing, see [Anti-spoofing protection in EOP](anti-phishing-protection-spoofing-about.md).

The aggregate and detail views of the report allows for 90 days of filtering.

> [!NOTE]
> The latest available data in the report is 3 to 4 days old.

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **Spoof detections**, and then select **View details**. Or, to go directly to the report, use <https://security.microsoft.com/reports/SpoofMailReport>.

:::image type="content" source="../../media/spoof-detections-widget.png" alt-text="The Spoof detections widget on the Email & collaboration reports page." lightbox="../../media/spoof-detections-widget.png":::

The chart shows the following information:

- **Pass**
- **Fail**
- **SoftPass**
- **None**
- **Other**

Hover over a day (data point) in the chart to see how many spoofed messages were detected and why.

The details table below the graph shows the following information:

- **Date**
- **Spoofed user**
- **Sending infrastructure**
- **Spoof type**
- **Result**
- **Result code**
- **SPF**
- **DKIM**
- **DMARC**
- **Message count**

  To see all columns, you likely need to do one or more of the following steps:

  - Horizontally scroll in your web browser.
  - Narrow the width of appropriate columns.
  - Zoom out in your web browser.

For more information about composite authentication result codes, see [Anti-spam message headers in Microsoft 365](message-headers-eop-mdo.md).

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report and the details table by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**
- **Result**:
  - **Pass**
  - **Fail**
  - **SoftPass**
  - **None**
  - **Other**
- **Spoof type**: **Internal** and **External**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Spoof mail report** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)**, :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](#request-on-demand-reports-for-download)**, and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** actions are available.

:::image type="content" source="../../media/spoof-detections-report-page.png" alt-text="The Spoof mail report page in the Microsoft 365 Defender portal." lightbox="../../media/spoof-detections-report-page.png":::

## Submissions report

The **Submissions** report shows information about items that admins have reported to Microsoft for analysis for the last 30 days. For more information about admin submissions, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](submissions-admin.md).

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **Submissions**, and then select **View details**. Or, to go directly to the report, use <https://security.microsoft.com/adminSubmissionReport>.

To go directly to the **Submissions** page in the Defender portal, select **Go to submissions**.

:::image type="content" source="../../media/submissions-report-widget.png" alt-text="The Submissions widget on the Email & collaboration reports page." lightbox="../../media/submissions-report-widget.png":::

The chart shows the following information:

- **Pending**
- **Completed**

The details table below the graph shows the same information and has the same :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group**, :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**, and :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Submit to Microsoft for analysis** actions as the **Emails** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=email>. For more information, see [View email admin submissions to Microsoft](submissions-admin.md#view-email-admin-submissions-to-microsoft).

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report and the details table by selecting one or more of the following values in the flyout that opens:

- **Date submitted**: **Start date** and **End date**
- **Submission ID**
- **Network Message ID**
- **Sender**
- **Recipient**
- **Submission name**
- **Submitted by**
- **Reason for submitting**:
  - **Not junk**
  - **Phish**
  - **Malware**
  - **Spam**
- **Rescan status**:
  - **Pending**
  - **Completed**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Submissions** report page, the **[Export](#export-report-data)** action is available.

:::image type="content" source="../../media/submissions-report-page.png" alt-text="The Submissions report page in the Microsoft 365 Defender portal." lightbox="../../media/submissions-report-page.png":::

## Threat protection status report

The **Threat protection status** report is available in both EOP and Defender for Office 365. However, the reports contain different data. For example, EOP customers can view information about malware detected in email, but not information about malicious files detected by [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).

The report provides the count of email messages with malicious content. For example:

- Files or website addresses (URLs) that were blocked by the anti-malware engine.
- Files or messages affected by [zero-hour auto purge (ZAP)](zero-hour-auto-purge.md)
- Files or messages that were blocked by Defender for Office 365 features: [Safe Links](safe-links-about.md), [Safe Attachments](safe-attachments-about.md), and [impersonation protection features in anti-phishing policies](anti-phishing-policies-about.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

You can use the information in this report to identify trends or determine whether your organizational policies need adjustment.

> [!TIP]
> if a message is sent to five recipients, we count it as five different messages, not one message.

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **Submissions**, and then select **View details**. Or, to go directly to the report, use one of the following URLS:

- **Defender for Office 365**: <https://security.microsoft.com/reports/TPSAggregateReportATP>
- **EOP**: <https://security.microsoft.com/reports/TPSAggregateReport>

:::image type="content" source="../../media/threat-protection-status-report-widget.png" alt-text="The Threat protection status widget on the Email & collaboration reports page." lightbox="../../media/threat-protection-status-report-widget.png":::

By default, the chart shows data for the past seven days. Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** on the **Threat protection status report** page to select a 90 day date range (trial subscriptions might be limited to 30 days). The details table allows filtering for 30 days.

The available views are described in the following subsections.

### View data by Overview

:::image type="content" source="../../media/threat-protection-status-report-overview-view.png" alt-text="The Overview view in the Threat protection status report." lightbox="../../media/threat-protection-status-report-overview-view.png":::

In the **View data by Overview** view, the following detection information is shown in the chart:

- **Email malware**
- **Email phish**
- **Email spam**
- **Content malware** (Defender for Office 365 only)

No details table is available below the chart.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**.
- **Detection**: The same values as in the chart.
- **Protected by**: **MDO** (Defender for Office 365) and **EOP**.
- **Tag**: **All** or the specified user tag (including priority accounts). For more information about user tags, see [User tags](user-tags-about.md).
- **Direction**:
  - **All**
  - **Inbound**
  - **Outbound**
- **Domain**: **All** or an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
- **Policy type**:
  - **All**
  - **Anti-malware**
  - **Safe Attachments**
  - **Anti-phish**
  - **Anti-spam**
  - **Mail flow rule** (transport rule)
  - **Others**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

### View data by Email \> Phish and Chart breakdown by Detection Technology

:::image type="content" source="../../media/threat-protection-status-report-phishing-detection-tech-view.png" alt-text="The Detection technology view for phishing email in the Threat protection status report." lightbox="../../media/threat-protection-status-report-phishing-detection-tech-view.png":::

> [!NOTE]
> In May 2021, phishing detections in email were updated to include **message attachments** that contain phishing URLs. This change might shift some of the detection volume out of the **View data by Email \> Malware** view and into the **View data by Email \> Phish** view. In other words, message attachments with phishing URLs that were traditionally identified as malware now might be identified as phishing instead.

In the **View data by Email \> Phish** and **Chart breakdown by Detection Technology** view, the following information is shown in the chart:

- **Advanced filter**: Phishing signals based on machine learning.
- **Campaign**<sup>\*</sup>: Messages identified as part of a [campaign](campaigns.md).
- **File detonation**<sup>\*</sup>: [Safe Attachments](safe-attachments-about.md) detected a malicious attachment during detonation analysis.
- **File detonation reputation**<sup>\*</sup>: File attachments previously detected by [Safe Attachments](safe-attachments-about.md) detonations in other Microsoft 365 organizations.
- **File reputation**: The message contains a file that was previously identified as malicious in other Microsoft 365 organizations.
- **Fingerprint matching**: The message closely resembles a previous detected malicious message.
- **General filter**: Phishing signals based on analyst rules.
- **Impersonation brand**: Sender impersonation of well-known brands.
- **Impersonation domain**<sup>\*</sup>: Impersonation of sender domains that you own or specified for protection in [anti-phishing policies](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).
- **Impersonation user**<sup>\*</sup>: Impersonation of protected senders that you specified in [anti-phishing policies](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) or learned through mailbox intelligence.
- **Mailbox intelligence impersonation**<sup>\*</sup>: Impersonation detections from mailbox intelligence in [anti-phishing policies](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).
- **Mixed analysis detection**: Multiple filters contributed to the message verdict.
- **Spoof DMARC**: The message failed [DMARC authentication](email-authentication-dmarc-configure.md).
- **Spoof external domain**: Sender email address spoofing using a domain that's external to your organization.
- **Spoof intra-org**: Sender email address spoofing using a domain that's internal to your organization.
- **URL detonation**<sup>\*</sup>: [Safe Links](safe-links-about.md) detected a malicious URL in the message during detonation analysis.
- **URL detonation reputation**<sup>\*</sup>: URLs previously detected by [Safe Links](safe-links-about.md) detonations in other Microsoft 365 organizations.
- **URL malicious reputation**: The message contains a URL that was previously identified as malicious in other Microsoft 365 organizations.

<sup>\*</sup> Defender for Office 365 only

In the details table below the chart, the following information is available:

- **Date**
- **Subject**
- **Sender**
- **Recipients**
- **Detection technology**: The same detection technology values from the chart.
- **Delivery status**
- **Sender IP**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

To see all columns, you likely need to do one or more of the following steps:

  - Horizontally scroll in your web browser.
  - Narrow the width of appropriate columns.
  - Zoom out in your web browser.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)**: **Start date** and **End date**
- **Detection**: The same values as in the chart.
- **Priority account protection**: **Yes** and **No**. For more information, see [Configure and review priority account protection in Microsoft Defender for Office 365](priority-accounts-turn-on-priority-account-protection.md).
- **Evaluation**: **Yes** or **No**.
- **Protected by**: **MDO** (Defender for Office 365) and **EOP**
- **Direction**:
  - **All**
  - **Inbound**
  - **Outbound**
- **Tag**: **All** or the specified user tag (including priority accounts).
- **Domain**: **All** or an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
- **Policy type**:
  - **All**
  - **Anti-malware**
  - **Safe Attachments**
  - **Anti-phish**
  - **Anti-spam**
  - **Mail flow rule** (transport rule)
  - **Others**
- **Policy name (details table view only)**: **All** or the specified policy.
- **Recipients**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Threat protection status** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)**, :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](#request-on-demand-reports-for-download)**, and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** actions are available.

### View data by Email \> Spam and Chart breakdown by Detection Technology

:::image type="content" source="../../media/threat-protection-status-report-spam-detection-tech-view.png" alt-text="The Detection technology view for spam in the Threat protection status report." lightbox="../../media/threat-protection-status-report-spam-detection-tech-view.png":::

In the **View data by Email \> Spam** and **Chart breakdown by Detection Technology** view, the following information is shown in the chart:

- **Advanced filter**: Phishing signals based on machine learning.
- **Bulk**: The [bulk complaint level (BCL)](anti-spam-bulk-complaint-level-bcl-about.md) of the message exceeds the defined threshold for spam.
- **Domain reputation**: The message was from a domain that was previously identified as sending spam in other Microsoft 365 organizations.
- **Fingerprint matching**: The message closely resembles a previous detected malicious message.
- **General filter**
- **IP reputation**: The message was from a source that was previously identified as sending spam in other Microsoft 365 organizations.
- **Mixed analysis detection**: Multiple filters contributed to the verdict for the message.
- **URL malicious reputation**: The message contains a URL that was previously identified as malicious in other Microsoft 365 organizations.

In the details table below the chart, the following information is available:

- **Date**
- **Subject**
- **Sender**
- **Recipients**
- **Detection technology**: The same detection technology values from the chart.
- **Delivery status**
- **Sender IP**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

To see all columns, you likely need to do one or more of the following steps:

  - Horizontally scroll in your web browser.
  - Narrow the width of appropriate columns.
  - Zoom out in your web browser.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**
- **Detection**: The same values as in the chart.
- **Bulk complaint level**: When the **Detection** value **Bulk** is selected, the slider is available to filter the report by the selected BCL range. You can use this information to confirm or adjust the BCL threshold in anti-spam policies to allow more or less bulk email into your organization.

  If the **Detection** value **Bulk** isn't selected, the slider is grayed-out and bulk detections aren't included in the report.

- **Priority account protection**: **Yes** and **No**. For more information, see [Configure and review priority account protection in Microsoft Defender for Office 365](priority-accounts-turn-on-priority-account-protection.md).
- **Direction**:
  - **All**
  - **Inbound**
  - **Outbound**
- **Tag**: **All** or the specified user tag (including priority accounts).
- **Domain**: **All** or an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
- **Policy type**:
  - **All**
  - **Anti-malware**
  - **Safe Attachments**
  - **Anti-phish**
  - **Anti-spam**
  - **Mail flow rule** (transport rule)
  - **Others**
- **Policy name (details table view only)**: **All** or the specified policy.
- **Recipients**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Threat protection status** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)**, :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](#request-on-demand-reports-for-download)**, and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** actions are available.

### View data by Email \> Malware and Chart breakdown by Detection Technology

:::image type="content" source="../../media/threat-protection-status-report-malware-detection-tech-view.png" alt-text="The Detection technology view for malware in the Threat protection status report." lightbox="../../media/threat-protection-status-report-malware-detection-tech-view.png":::

> [!NOTE]
> In May 2021, malware detections in email were updated to include **harmful URLs** in messages attachments. This change might shift some of the detection volume out of the **View data by Email \> Phish** view and into the **View data by Email \> Malware** view. In other words, harmful URLs in message attachments that were traditionally identified as phishing now might be identified as malware instead.

In the **View data by Email \> Malware** and **Chart breakdown by Detection Technology** view, the following information is shown in the chart:

- **File detonation**<sup>\*</sup>: [Safe Attachments](safe-attachments-about.md) detected a malicious attachment during detonation analysis.
- **File detonation reputation**<sup>\*</sup>: File attachments previously detected by [Safe Attachments](safe-attachments-about.md) detonations in other Microsoft 365 organizations.
- **File reputation**: The message contains a file that was previously identified as malicious in other Microsoft 365 organizations.
- **Anti-malware engine**<sup>\*</sup>: Detection from anti-malware engines.
- **URL malicious reputation**
- **URL detonation**<sup>\*</sup>: [Safe Links](safe-links-about.md) detected a malicious URL in the message during detonation analysis.
- **URL detonation reputation**<sup>\*</sup>: URLs previously detected by [Safe Links](safe-links-about.md) detonations in other Microsoft 365 organizations.
- **Campaign**<sup>\*</sup>: Messages identified as part of a [campaign](campaigns.md).

<sup>\*</sup> Defender for Office 365 only

In the details table below the chart, the following information is available:

- **Date**
- **Subject**
- **Sender**
- **Recipients**
- **Detection technology**: The same detection technology values from the chart.
- **Delivery Status**
- **Sender IP**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

  To see all columns, you likely need to do one or more of the following steps:

  - Horizontally scroll in your web browser.
  - Narrow the width of appropriate columns.
  - Zoom out in your web browser.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**
- **Detection**: The same values as in the chart.
- **Priority account protection**: **Yes** and **No**. For more information, see [Configure and review Priority accounts in Microsoft Defender for Office 365](priority-accounts-turn-on-priority-account-protection.md).
- **Evaluation**: **Yes** or **No**.
- **Protected by**: **MDO** (Defender for Office 365) and **EOP**
- **Direction**:
  - **All**
  - **Inbound**
  - **Outbound**
- **Tag**: **All** or the specified user tag (including priority accounts).
- **Domain**: **All** or an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
- **Policy type**:
  - **All**
  - **Anti-malware**
  - **Safe Attachments**
  - **Anti-phish**
  - **Anti-spam**
  - **Mail flow rule** (transport rule)
  - **Others**
- **Policy name (details table view only)**: **All** or the specified policy.
- **Recipients**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Threat protection status** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)**, :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](#request-on-demand-reports-for-download)**, and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** actions are available.

### Chart breakdown by Policy type

:::image type="content" source="../../media/threat-protection-status-report-phishing-policy-type-view.png" alt-text="The Policy type view for phishing email, spam email, or malware email in the Threat protection status report." lightbox="../../media/threat-protection-status-report-phishing-policy-type-view.png":::

In the **View data by Email \> Phish**, **View data by Email \> Spam**, or **View data by Email \> Malware** views, selecting **Chart breakdown by Policy type** shows the following information in the chart:

- **Anti-malware**
- **Safe Attachments**<sup>\*</sup>
- **Anti-phish**
- **Anti-spam**
- **Mail flow rule** (also known as a transport rule)
- **Others**

In the details table below the chart, the following information is available:

- **Date**
- **Subject**
- **Sender**
- **Recipients**
- **Detection technology**: The same detection technology values from the chart.
- **Delivery status**
- **Sender IP**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

  To see all columns, you likely need to do one or more of the following steps:

  - Horizontally scroll in your web browser.
  - Narrow the width of appropriate columns.
  - Zoom out in your web browser.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**
- **Detection**: Detection technology values as previously described in this article and at [Detection technologies](/office/office-365-management-api/office-365-management-activity-api-schema#detection-technologies).
- **Priority account protection**: **Yes** and **No**. For more information, see [Configure and review Priority accounts in Microsoft Defender for Office 365](priority-accounts-turn-on-priority-account-protection.md).
- **Evaluation**: **Yes** or **No**.
- **Protected by**: **MDO** (Defender for Office 365) and **EOP**
- **Direction**:
  - **All**
  - **Inbound**
  - **Outbound**
- **Tag**: **All** or the specified user tag (including priority accounts).
- **Domain**: **All** or an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
- **Policy type**:
  - **All**
  - **Anti-malware**
  - **Safe Attachments**
  - **Anti-phish**
  - **Anti-spam**
  - **Mail flow rule** (transport rule)
  - **Others**
- **Policy name (details table view only)**: **All** or the specified policy.
- **Recipients**

<sup>\*</sup> Defender for Office 365 only

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Threat protection status** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)**, :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](#request-on-demand-reports-for-download)**, and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** actions are available.

### Chart breakdown by Delivery status

:::image type="content" source="../../media/threat-protection-status-report-phishing-delivery-status-view.png" alt-text="The Delivery status view for phishing email and malware email in the Threat protection status report." lightbox="../../media/threat-protection-status-report-phishing-delivery-status-view.png":::

In the **View data by Email \> Phish**, **View data by Email \> Spam**, or **View data by Email \> Malware** views, selecting **Chart breakdown by Delivery status** shows the following information in the chart:

- **Hosted mailbox: Inbox**
- **Hosted mailbox: Junk**
- **Hosted mailbox: Custom folder**
- **Hosted mailbox: Deleted Items**
- **Forwarded**
- **On-premises server: Delivered**
- **Quarantine**
- **Delivery failed**
- **Dropped**

In the details table below the chart, the following information is available:

- **Date**
- **Subject**
- **Sender**
- **Recipients**
- **Detection technology**: The same detection technology values from the chart.
- **Delivery status**
- **Sender IP**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

  To see all columns, you likely need to do one or more of the following steps:

  - Horizontally scroll in your web browser.
  - Narrow the width of appropriate columns.
  - Zoom out in your web browser.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**
- **Detection**: Detection technology values as previously described in this article and at [Detection technologies](/office/office-365-management-api/office-365-management-activity-api-schema#detection-technologies).
- **Protected by**: **MDO** (Defender for Office 365) and **EOP**
- **Direction**:
  - **All**
  - **Inbound**
  - **Outbound**
- **Tag**: **All** or the specified user tag (including priority accounts).
- **Domain**: **All** or an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
- **Policy type**:
  - **All**
  - **Anti-malware**
  - **Safe Attachments**
  - **Anti-phish**
  - **Anti-spam**
  - **Mail flow rule** (transport rule)
  - **Others**
- **Policy name (details table view only)**: **All** or the specified policy.
- **Recipients**

<sup>\*</sup> Defender for Office 365 only

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Threat protection status** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)**, :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](#request-on-demand-reports-for-download)**, and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** actions are available.

### View data by Content \> Malware

:::image type="content" source="../../media/threat-protection-status-report-content-malware-view.png" alt-text="The Content malware view in the Threat protection status report." lightbox="../../media/threat-protection-status-report-content-malware-view.png":::

In the **View data by Content \> Malware** view, the following information is shown in the chart for Microsoft Defender for Office 365 organizations:

- **Anti-malware engine**: Malicious files detected in SharePoint, OneDrive, and Microsoft Teams by the [built-in virus detection in Microsoft 365](anti-malware-protection-for-spo-odfb-teams-about.md).
- **MDO detonation**: Malicious files detected by [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).
- **File reputation**: The message contains a file that was previously identified as malicious in other Microsoft 365 organizations.

In the details table below the chart, the following information is available:

- **Date**
- **Attachment filename**
- **Workload**
- **Detection technology**: The same detection technology values from the chart.
- **File size**
- **Last modifying user**

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**.
- **Detection**: The same values as in the chart.
- **Workload**: **Teams**, **SharePoint**, and **OneDrive**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Threat protection status** page, the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** action is available.

### View data by System override and Chart breakdown by Reason

:::image type="content" source="../../media/threat-protection-status-report-system-override-view-breakdown-by-reason.png" alt-text="The Message override and Chart breakdown by Reason view in the Threat protection status report." lightbox="../../media/threat-protection-status-report-system-override-view-breakdown-by-reason.png":::

In the **View data by System override** and **Chart breakdown by Reason** view, the following override reason information is shown in the chart:

- **Exchange transport rule** (mail flow rule)
- **IP Allow**
- **On-premises skip**
- **Organization allowed domains**
- **Organization allowed senders**
- **Phishing simulation**: For more information, see [Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes](skip-filtering-phishing-simulations-sec-ops-mailboxes.md).
- **TABL - Both URL and file allowed**
- **TABL - File allowed**
- **TABL - File blocked**
- **TABL - Sender allowed**
- **TABL - Sender blocked**
- **TABL - URL allowed**
- **TABL - URL blocked**
- **Third party filter**
- **User Safe Domain**
- **User Safe Sender**
- **ZAP not enabled**

In the details table below the chart, the following information is available:

- **Date**
- **Subject**
- **Sender**
- **Recipients**
- **System override**
- **Sender IP**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**
- **Reason**: The same values as the chart.
- **Delivery Location**: **Junk Mail folder not enabled** or **SecOps mailbox**.
- **Direction**:
  - **All**
  - **Inbound**
  - **Outbound**
- **Tag**: **All** or the specified user tag (including priority accounts).
- **Domain**: **All** or an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
- **Policy type**: **All**
- **Policy name (details table view only)**: **All**
- **Recipients**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Threat protection status** page, the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** action is available.

### View data by System override and Chart breakdown by Delivery location

:::image type="content" source="../../media/threat-protection-status-report-system-override-view-breakdown-by-delivery-location.png" alt-text="The Message override and Chart breakdown by Delivery Location view in the Threat protection status report." lightbox="../../media/threat-protection-status-report-system-override-view-breakdown-by-delivery-location.png":::

In the **View data by System override** and **Chart breakdown by Delivery location** view, the following override reason information is shown in the chart:

- **Junk Mail folder not enabled**
- **SecOps mailbox**: For more information, see [Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes](skip-filtering-phishing-simulations-sec-ops-mailboxes.md).

In the details table below the chart, the following information is available:

- **Date**
- **Subject**
- **Sender**
- **Recipients**
- **System override**
- **Sender IP**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**
- **Reason**: The same values as in [Chart breakdown by Policy type](#chart-breakdown-by-policy-type)
- **Delivery Location**: **Junk Mail folder not enabled** or **SecOps mailbox**.
- **Direction**:
  - **All**
  - **Inbound**
  - **Outbound**
- **Tag**: **All** or the specified user tag (including priority accounts). For more information about user tags, see [User tags](user-tags-about.md).
- **Domain**: **All** or an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
- **Policy type**:
  - **All**
  - **Anti-malware**
  - **Safe Attachments** (Defender for Office 365 only)
  - **Anti-phish**
  - **Anti-spam**
  - **Mail flow rule** (transport rule)
  - **Others**
- **Policy name (details table view only)**: **All**
- **Recipients**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Threat protection status** page, the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** action is available.

## Top malware report

The **Top malware** report shows the various kinds of malware that was detected by [anti-malware protection in EOP](anti-malware-protection-about.md).

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **Top malware**.

Hover over a wedge in the pie chart to see the malware name and how many messages contained the malware.

:::image type="content" source="../../media/top-malware-report-widget.png" alt-text="The Top malware widget on the Email & collaboration reports page." lightbox="../../media/top-malware-report-widget.png":::

Select **View details** to go to the **Top malware report** page. Or, to go directly to the report, use <https://security.microsoft.com/reports/TopMalware>.

On the **Top malware report** page, a larger version of the pie chart is displayed. The details table below the chart shows the following information:

- **Top malware**: The malware name
- **Count**: How many messages contained the malware.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting the **Start date** and **End date** values in the flyout that opens.

On the **Top malware** page, the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)** and :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** actions are available.

:::image type="content" source="../../media/top-malware-report-view.png" alt-text="The Top malware report view." lightbox="../../media/top-malware-report-view.png":::

## Top senders and recipients report

The **Top senders and recipients** report is available in both EOP and Defender for Office 365; however, the reports contain different data. For example, EOP customers can view information about top malware, spam, and phishing (spoofing) recipients, but not information about malware detected by [Safe Attachments](safe-attachments-about.md) or phishing detected by [impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

The **Top senders and recipients** report shows the top 20 message senders in the organization, as well as the top 20 recipients for messages that were detected by EOP and Defender for Office 365 protection features. By default, the report shows data for the last week, but data is available for the last 90 days.

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **Top senders and recipients**.

Hover over a wedge in the pie chart to see the number of messages for the sender or recipient.

:::image type="content" source="../../media/top-senders-and-recipients-widget.png" alt-text="The Top senders and recipients widget in the Reports dashboard." lightbox="../../media/top-senders-and-recipients-widget.png":::

Select **View details** to go to the **Top senders and recipients** page. Or, to go directly to the report, use one of the following URLs:

- **Defender for Office 365**: <https://security.microsoft.com/reports/TopSenderRecipientsATP>
- **EOP**: <https://security.microsoft.com/reports/TopSenderRecipient>

On the **Top senders and recipients** page, a larger version of the pie chart is displayed. The following charts are available:

- **Show data for Top mail senders** (default view)
- **Show data for Top mail recipients**
- **Show data for Top spam recipients**
- **Show data for Top malware recipients** (EOP)
- **Show data for Top phishing recipients**
- **Show data for Top malware recipients (MDO)**
- **Show data for Top phish recipients (MDO)**

Hover over a wedge in the pie chart to see the message count for that specific sender or recipient.

For each chart, the details table below the chart shows the following information:

- **Email address**
- **Item count**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to modify the report by selecting one or more of the following values in the flyout that opens:

- **Date (UTC)** **Start date** and **End date**
- **Tag**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

On the **Top senders and recipients** page, the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** action is available.

:::image type="content" source="../../media/top-senders-and-recipients-report-view.png" alt-text="The Show data for Top mail senders view in the Top senders and recipients report." lightbox="../../media/top-senders-and-recipients-report-view.png":::

## URL protection report

The **URL protection report** is available only in Microsoft Defender for Office 365. For more information, see [URL protection report](reports-defender-for-office-365.md#url-protection-report).

## User reported messages report

> [!IMPORTANT]
> In order for the **User reported messages** report to work correctly, **audit logging must be turned on** in your Microsoft 365 organization (it's on by default). For more information, see [Turn auditing on or off](../../compliance/audit-log-enable-disable.md).

The **User reported messages** report shows information about email messages that users have reported as junk, phishing attempts, or good mail by using the [built-in Report button in Outlook on the web](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web) or the [Microsoft Report Message or Report Phishing add-ins](submissions-outlook-report-messages.md#use-the-report-message-and-report-phishing-add-ins-in-outlook).

On the **Email & collaboration reports** page at <https://security.microsoft.com/emailandcollabreport>, find **User reported messages**, and then select **View details**. Or, to go directly to the report, use <https://security.microsoft.com/reports/userSubmissionReport>.

To go directly to the **User reported** tab on the **Submissions** page in the Defender portal, select **Go to submissions**.

:::image type="content" source="../../media/user-reported-messages-widget.png" alt-text="The user-reported messages widget on the Email & collaboration reports page." lightbox="../../media/user-reported-messages-widget.png":::

The chart shows the following information:

- **Spam**
- **Phish**
- **Not junk**

The details table below the graph shows the same information and has the same actions that are available on the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>

- :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**
- :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group**
- :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**
- :::image type="icon" source="../../media/m365-cc-scc-mark-and-notify-icon.png" border="false"::: **Mark as and notify**
- :::image type="icon" source="../../media/m365-cc-sc-submit-user-reported-message-icon.png" border="false"::: **Submit to Microsoft for analysis**

For more information, see [View user reported messages to Microsoft](submissions-admin.md#view-user-reported-messages-to-microsoft) and [Admin actions for user reported messages](submissions-admin.md#admin-actions-for-user-reported-messages).

:::image type="content" source="../../media/user-reported-messages-report.png" alt-text="The user-reported messages report." lightbox="../../media/user-reported-messages-report.png":::

On the **User reported messages** page, the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)** action is available.

:::image type="content" source="../../media/user-reported-messages-report.png" alt-text="The user-reported messages report." lightbox="../../media/user-reported-messages-report.png":::

## What permissions are needed to view these reports?

You need to be assigned permissions before you can view and use the reports that are described in this article. You have the following options:

- [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md): Membership in any of the following role groups:
  - **Organization Management**<sup>\*</sup>
  - **Security Administrator**
  - **Security Reader**
  - **Global Reader**
- [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**<sup>\*</sup>, **Security Administrator**, **Security Reader**, or **Global Reader** roles in Azure Active Directory gives users the required permissions _and_ permissions for other features in Microsoft 365.
the 
<sup>\*</sup> Membership in the **Organization Management** role group or in the **Global Administrator** role is required to use the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)** or :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](#request-on-demand-reports-for-download)** actions in reports (where available).

## What if the reports aren't showing data?

If you don't see data in the reports, check the report filters and double-check that your protection policies are configured to detect and take action on messages. For more information, see the following articles:

- [Configuration analyzer for protection policies in EOP and Microsoft Defender for Office 365](configuration-analyzer-for-security-policies.md)
- [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md)
- [How do I turn off spam filtering?](/microsoft-365/security/office-365-security/anti-spam-protection-faq#how-do-i-turn-off-spam-filtering-)

## Download and export report information

Depending on the report and possibly the specific view in the report, one or more of the following actions might be available on the main report page as previously described:

- :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Export](#export-report-data)**
- :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **[Create schedule](#schedule-recurring-reports)**
- :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **[Request report](#request-on-demand-reports-for-download)**

### Export report data

> [!TIP]
>
> - The exported data is affected by any filters that are configured in the report at the time of export.
> - If the exported data exceeds 150000 entries, the data is split into multiple files.

1. On the report page, select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export**.

2. In the **Export conditions** flyout that opens, review and configure the following settings:

   - **Select a view to export**: Select one of the following values:
     - **Summary**: Data from the last 90 days is available. This is the default value.
     - **Details**: Data from the last 30 days is available. A date range of one day is supported.
   - **Date (UTC)**:
     - **Start date**: The default value is three months ago.
     - **End date**: The default value is today.

   When you're finished in the **Export conditions** flyout, select **Export**.

   The **Export** button changes to **Exporting...** and a progress bar is shown.

3. In the **Save as** dialog that opens, you see the default name of the .csv file and the download location (the local Downloads folder by default), but you can change those values and then select **Save** to download the exported data.

   If you see a dialog that security.microsoft.com wants to download multiple files, select **Allow**.

### Schedule recurring reports

> [!NOTE]
> To create scheduled reports, you need to be a member of the **Organization management** role in Exchange Online or the **Global Administrator** role in Azure AD.

1. On the report page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png"::: **Create schedule** to start the new scheduled report wizard.

2. On the **Name scheduled report** page, review or customize the **Name** value, and then select **Next**.

3. On the **Set preferences** page, review or configure the following settings:
   - **Frequency**: Select one of the following values:
     - **Weekly** (default)
     - **Daily**
     - **Monthly**
   - **Start date**: Enter the date when generation of the report begins. The default value is today.
   - **Expiry date**: Enter the date when generation of the report ends. The default value is one year from today.

   When you're finished on the **Set preferences** page, select **Next**.

4. On the **Select filters** page, configure the following settings:
   - **Direction**: Select one of the following values:
     - **All** (default)
     - **Outbound**
     - **Inbound**
   - **Sender address**
   - **Recipient address**

   When you're finished on the **Select filters** page, select **Next**.

5. On the **Recipients** page, choose recipients for the report in the **Send email to** box. The default value is your email address, but you can add others by doing either of the following steps:
  - Click in the box, wait for the list of users to resolve, and then select the user from the list below the box.
  - Click in the box, start typing a value, and then select the user from the list below the box.

   To remove an entry from the list, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the entry.

   When you're finished on the **Recipients** page, select **Next**.

6. On the **Review** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review page**, select **Submit**.

7. On the **New scheduled report created** page, you can select the links to view the scheduled report or create another report.

   When you're finished on the **New scheduled report created** page, select **Done**.

The reports are emailed to the specified recipients based on the schedule you configured

The scheduled report entry is available on the **Managed schedules** page as described in the next subsection. 

#### Manage existing scheduled reports

After you create a scheduled report as described in the previous section, the scheduled report entry is available on the **Manage schedules** page in the Defender portal.

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> **Email & collaboration** \> select **Manage schedules**. Or, to go directly to the **Manage schedules** page, use <https://security.microsoft.com/ManageSubscription>.

On the **Manage schedules** page, the following information is shown for each scheduled report entry:

- **Schedule start date**
- **Schedule name**
- **Report type**
- **Frequency**
- **Last sent**

To change the list from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

Use the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Search** box to find an existing scheduled report entry.

To modify the scheduled report settings, do the following steps:

1. Select the scheduled report entry by clicking anywhere in the row other than the check box.

2. In the details flyout that opens, do any of the following steps:
   - Select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit name** to change the name of the scheduled report.
   - Select the **Edit** link in the section to modify the corresponding settings.

   The settings and configuration steps are the same as described in [Schedule report](#schedule-recurring-reports).

To delete a scheduled report entry, use either of the following methods:

- Select the check box next to one, more or all of the scheduled reports, and then select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears on the main page.
- Select the scheduled report by clicking anywhere in the row other than the check box, and then select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** in the details flyout that opens.

Read the warning dialog that opens, and then select **OK**.

Back on the **Manage schedules** page, the deleted scheduled report entry is no longer listed, and previous reports for the scheduled report are deleted and are no longer available for download.

### Request on-demand reports for download

[Request on-demand reports](#request-on-demand-reports-for-download)

> [!NOTE]
> To create on-demand reports, you need to be a member of the **Organization management** role in Exchange Online or the **Global Administrator** role in Azure AD.

1. On the report page, select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Request report** to start the new on-demand report wizard.

2. On the **Name on-demand report** page, review or customize the **Name** value, and then select **Next**.

3. On the **Set preferences** page, review or configure the following settings:
   - **Start date**: Enter the start date for the report data. The default value is one month ago.
   - **Expiry date**: Enter the end date for the report data. The default value is today.

   When you're finished on the **Name on-demand report** page, select **Next**.

4. On the **Recipients** page, choose recipients for the report in the **Send email to** box. The default value is your email address, but you can add others by doing either of the following steps:
  - Click in the box, wait for the list of users to resolve, and then select the user from the list below the box.
  - Click in the box, start typing a value, and then select the user from the list below the box.

   To remove an entry from the list, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the entry.

   When you're finished on the **Recipients** page, select **Next**.

5. On the **Review** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review page**, select **Submit**.

6. On the **New on-demand report created** page, you can select the link to create another report.

   When you're finished on the **New on-demand report created** page, select **Done**.

The report creation task (and eventually the finished report) is available on the **Reports for download** page as described in the next subsection. 

#### Download reports

> [!NOTE]
> To download on-demand reports, you need to be a member of the **Organization management** role in Exchange Online or the **Global Administrator** role in Azure AD.

After you request an on-demand report as described in the previous section, you check the status of the report and eventually download the report on the **Reports for download** page in the Defender portal.

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> **Email & collaboration** \> select **Reports for download**. Or, to go directly to the **Reports for download** page, use <https://security.microsoft.com/ReportsForDownload>.

On the **Reports for download** page, the following information is shown for each available report:
   - **Start date**
   - **Name**
   - **Report type**
   - **Last sent**
   - **Status**:
     - **Pending**: The report is still being created, and it isn't available to download yet.
     - **Complete - Ready for download**: Report generation is complete, and the report is available to download.
     - **Complete - No results found**: Report generation is complete, but the report contains no data, so you can't download it.

To download the report, select the check box next in the start date of the report, and then select the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Download report** action that appears.

Use the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Search** box to find an existing report.

In the **Save as** dialog that opens, you see the default name of the .csv file and the download location (the local Downloads folder by default), but you can change those values and then select **Save** to download the report.

## Related articles

[Anti-spam protection in EOP](anti-spam-protection-about.md)

[Anti-malware protection in EOP](anti-malware-protection-about.md)

[View mail flow reports in the EAC](/exchange/monitoring/mail-flow-reports/mail-flow-reports)

[View reports for Defender for Office 365](reports-defender-for-office-365.md)
