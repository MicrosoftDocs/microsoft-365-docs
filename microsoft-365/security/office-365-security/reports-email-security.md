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
description: Admins can learn how to find and use the email security reports that are available in the Microsoft 365 Defender portal. This article helps answer the question What is the The Threat protection status report in Microsoft Defender for Office 365? 
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 5/1/2023
---

# View email security reports in the Microsoft 365 Defender portal

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

A variety of reports are available in the Microsoft 365 Defender portal at <https://security.microsoft.com> to help you see how email security features, such as anti-spam and anti-malware features in Microsoft 365 are protecting your organization. If you have the [necessary permissions](#what-permissions-are-needed-to-view-these-reports), you can view and download these reports as described in this article.

> [!NOTE]
>
> Some of the reports on the **Email & collaboration reports** page require Microsoft Defender for Office 365. For information about these reports, see [View Defender for Office 365 reports in the Microsoft 365 Defender portal](reports-defender-for-office-365.md).
>
> Reports that are related to mail flow are now in the Exchange admin center. For more information about these reports, see [Mail flow reports in the new Exchange admin center](/exchange/monitoring/mail-flow-reports/mail-flow-reports).

Watch this short video to learn how you can use reports to understand the effectiveness of Defender for Office 365 in your organization.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWBkxB]

## Email security report changes in the Microsoft 365 Defender portal

The Exchange Online Protection (EOP) and Microsoft Defender for Office 365 reports in the Microsoft 365 Defender portal that have been replaced, moved, or deprecated are described in the following table.

|Deprecated report and cmdlets|New report and cmdlets|Message Center ID|Date|
|---|---|:---:|:---:|
|**URL trace** <br/><br/> Get-URLTrace|[URL protection report](reports-defender-for-office-365.md#url-protection-report) <br/><br/> [Get-SafeLinksAggregateReport](/powershell/module/exchange/get-safelinksaggregatereport) <br> [Get-SafeLinksDetailReport](/powershell/module/exchange/get-safelinksdetailreport)|MC239999|June 2021|
|**Sent and received email report** <br/><br/> Get-MailTrafficReport <br> Get-MailDetailReport|[Threat protection status report](#threat-protection-status-report) <br> [Mailflow status report](#mailflow-status-report) <br/><br/> [Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <br> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport) <br> [Get-MailFlowStatusReport](/powershell/module/exchange/get-mailflowstatusreport)|MC236025|June 2021|
|**Forwarding report** <br/><br/> no cmdlets|[Auto-forwarded messages report in the EAC](/exchange/monitoring/mail-flow-reports/mfr-auto-forwarded-messages-report) <br/><br/> no cmdlets|MC250533|June 2021|
|**Safe Attachments file types report** <br/><br/> Get-AdvancedThreatProtectionTrafficReport <br> Get-MailDetailMalwareReport|[Threat protection status report: View data by Email \> Malware](#view-data-by-email--malware-and-chart-breakdown-by-detection-technology) <br/><br/> [Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <br> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport)|MC250532|June 2021|
|**Safe Attachments message disposition report** <br/><br/> Get-AdvancedThreatProtectionTrafficReport <br> Get-MailDetailMalwareReport|[Threat protection status report: View data by Email \> Malware](#view-data-by-email--malware-and-chart-breakdown-by-detection-technology) <br/><br/> [Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <br> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport)|MC250531|June 2021|
|**Malware detected in email report** <br/><br/> Get-MailTrafficReport <br> Get-MailDetailMalwareReport|[Threat protection status report: View data by Email \> Malware](#view-data-by-email--malware-and-chart-breakdown-by-detection-technology) <br/><br/> [Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <br> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport)|MC250530|June 2021|
|**Spam detection report** <br/><br/> Get-MailTrafficReport <br> Get-MailDetailSpamReport|[Threat protection status report: View data by Email \> Spam](#view-data-by-email--spam-and-chart-breakdown-by-detection-technology) <br/><br/> [Get-MailTrafficATPReport](/powershell/module/exchange/get-mailtrafficatpreport) <br> [Get-MailDetailATPReport](/powershell/module/exchange/get-maildetailatpreport)|MC250529|October 2021|
|Get-AdvancedThreatProtectionDocumentReport <br/><br/> Get-AdvancedThreatProtectionDocumentDetail|[Get-ContentMalwareMdoAggregateReport](/powershell/module/exchange/get-contentmalwaremdoaggregatereport) <br/><br/> [Get-ContentMalwareMdoDetailReport](/powershell/module/exchange/get-contentmalwaremdodetailreport)|MC343433|May 2022|
|**Exchange transport rule report** <br/><br/> [Get-MailTrafficPolicyReport](/powershell/module/exchange/get-mailtrafficpolicyreport) <br> [Get-MailDetailTransportRuleReport](/powershell/module/exchange/get-maildetailtransportrulereport)|[Exchange transport rule report in the EAC](/exchange/monitoring/mail-flow-reports/mfr-exchange-transport-rule-report) <br/><br/> [Get-MailTrafficPolicyReport](/powershell/module/exchange/get-mailtrafficpolicyreport) <br> [Get-MailDetailTransportRuleReport](/powershell/module/exchange/get-maildetailtransportrulereport)|MC316157|April 2022|
|Get-MailTrafficTopReport|[Top senders and recipient report](reports-email-security.md#top-senders-and-recipients-report) <br/><br/> [Get-MailTrafficSummaryReport](/powershell/module/exchange/get-mailtrafficsummaryreport) <br/><br/> **Note**: There is no replacement for the encryption reporting capabilities in Get-MailTrafficTopReport.|MC315742|April 2022|

## Compromised users report

> [!NOTE]
> This report is available in Microsoft 365 organizations with Exchange Online mailboxes. It's not available in standalone Exchange Online Protection (EOP) organizations.

The **Compromised users** report shows the number of user accounts that were marked as **Suspicious** or **Restricted** within the last 7 days. Accounts in either of these states are problematic or even compromised. With frequent use, you can use the report to spot spikes, and even trends, in suspicious or restricted accounts. For more information about compromised users, see [Responding to a compromised email account](responding-to-a-compromised-email-account.md).

:::image type="content" source="../../media/compromised-users-report-widget.png" alt-text="The Compromised users widget on the Email & collaboration reports page." lightbox="../../media/compromised-users-report-widget.png":::

The aggregate view shows data for the last 90 days and the detail view shows data for the last 30 days.

To view the report in the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **Compromised users** and then click **View details**. To go directly to the report, open <https://security.microsoft.com/reports/CompromisedUsers>.

On the **Compromised users** page, the chart shows the following information for the specified date range:

- **Restricted**: The user account has been restricted from sending email due to highly suspicious patterns.
- **Suspicious**: The user account has sent suspicious email and is at risk of being restricted from sending email.

The details table below the graph shows the following information:

- **Creation time**
- **User ID**
- **Action**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

You can filter both the chart and the details table by clicking **Filter** and selecting one or more of the following values in the flyout that appears:

- **Date (UTC)**: **Start date** and **End date**.
- **Activity**: **Restricted** or **Suspicious**
- **Tag**: **All** or the specified user tag (including priority accounts).

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Compromised users** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

:::image type="content" source="../../media/compromised-users-report-activity-view.png" alt-text="The Report view in the Compromised users report." lightbox="../../media/compromised-users-report-activity-view.png":::

## Exchange transport rule report

The **Exchange transport rule** report shows the effect of mail flow rules (also known as transport rules) on incoming and outgoing messages in your organization.

To view the report in the Microsoft 365 Defender portal, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **Exchange transport rule** and then click **View details**. To go directly to the report, open <https://security.microsoft.com/reports/ETRRuleReport>.

:::image type="content" source="../../media/transport-rule-report-widget.png" alt-text="The Exchange transport rule widget on the Email & collaboration reports page." lightbox="../../media/transport-rule-report-widget.png":::

On the **Exchange transport rule report** page, the available charts and data are described in the following sections.
> [!NOTE]
> The **Exchange transport rule report** is now available in the EAC. For more information, see [Exchange transport rule report in the new EAC](/exchange/monitoring/mail-flow-reports/mfr-exchange-transport-rule-report).

### Chart breakdown by Direction

:::image type="content" source="../../media/transport-rule-report-etr-direction-view.png" alt-text="The Direction view for Exchange Transport rules in the Exchange transport rule report." lightbox="../../media/transport-rule-report-etr-direction-view.png":::

If you select **Chart breakdown by Direction**, the follow charts are available:

- **View data by Exchange transport rules**: The number of **Inbound** and **Outbound** messages that were affected by mail flow rules.
- **View data by DLP Exchange transport rules**: The number of **Inbound** and **Outbound** messages that were affected by data loss prevention (DLP) mail flow rules.

The following information is shown in the details table below the graph:

- **Date**
- **DLP policy** (**View data by DLP Exchange transport rules** only)
- **Transport rule**
- **Subject**
- **Sender address**
- **Recipient address**
- **Severity**
- **Direction**

You can filter both the chart and the details table by clicking **Filter** and selecting one or more of the following values in the flyout that appears:

- **Date (UTC)** **Start date** and **End date**.
- **Direction**: **Outbound** and **Inbound**.
- **Severity**: **High severity**, **Medium severity**, and **Low severity**

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Exchange transport rule report** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

### Chart breakdown by Severity

:::image type="content" source="../../media/transport-rule-report-etr-severity-view.png" alt-text="The Severity view for Exchange Transport rules in the Exchange transport rule report." lightbox="../../media/transport-rule-report-etr-severity-view.png":::

If you select **Chart breakdown by Severity**, the follow charts are available:

- **View data by Exchange transport rules**: The number of **High severity**, **Medium severity**, and **Low severity** messages. You set the severity level as an action in the rule (**Audit this rule with severity level** or _SetAuditSeverity_). For more information, see [Mail flow rule actions in Exchange Online](/Exchange/security-and-compliance/mail-flow-rules/mail-flow-rule-actions).

- **View data by DLP Exchange transport rules**: The number of **High severity**, **Medium severity**, and **Low severity** messages that were affected by DLP mail flow rules.

The following information is shown in the details table below the graph:

- **Date**
- **DLP policy** (**View data by DLP Exchange transport rules** only)
- **Transport rule**
- **Subject**
- **Sender address**
- **Recipient address**
- **Severity**
- **Direction**

You can filter both the chart and the details table by clicking **Filter** and selecting one or more of the following values in the flyout that appears:

- **Date (UTC)** **Start date** and **End date**
- **Direction**: **Outbound** and **Inbound**
- **Severity**: **High severity**, **Medium severity**, and **Low severity**

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Exchange transport rule report** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

## Forwarding report

> [!NOTE]
> This report is now available in the EAC. For more information, see [Auto forwarded messages report in the new EAC](/exchange/monitoring/mail-flow-reports/mfr-auto-forwarded-messages-report).

## Mailflow status report

The **Mailflow status report** is a smart report that shows information about incoming and outgoing email, spam detections, malware, email identified as "good", and information about email allowed or blocked on the edge. This is the only report that contains edge protection information, and shows just how much email is blocked before being allowed into the service for evaluation by Exchange Online Protection (EOP). It's important to understand that if a message is sent to five recipients we count it as five different messages and not one message.

To view the report in the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **Mailflow status summary** and then click **View details**. To go directly to the report, open <https://security.microsoft.com/reports/mailflowStatusReport>.

:::image type="content" source="../../media/mail-flow-status-report-widget.png" alt-text="The Mailflow status summary widget on the Email & collaboration reports page." lightbox="../../media/mail-flow-status-report-widget.png":::

### Type view for the Mailflow status report

:::image type="content" source="../../media/mail-flow-status-report-type-view.png" alt-text="The Type view in the Mailflow status report." lightbox="../../media/mail-flow-status-report-type-view.png":::

On the **Mailflow status report** page, the **Type** tab is selected by default. The chart shows the following information for the specified date range:

- **Good mail**: Email that's determined not to be spam or are allowed by user or organizational policies.
- **Total**
- **Malware**: Email that's blocked as malware by various filters.
- **Phishing email**: Email that's blocked as phishing by various filters.
- **Spam**: Email that's blocked as spam by various filters.
- **Edge protection**: Email that's rejected at the edge/perimeter before being evaluated by EOP or Defender for Office 365.
- **Rule messages**: Email messages that were acted upon by mail flow rules (also known as transport rules).

The details table below the graph shows the following information:

- **Direction**
- **Type**
- **24 hours**
- **3 days**
- **7 days**
- **15 days**
- **30 days**

You can filter both the chart and the details table by clicking **Filter** and selecting one or more of the following values in the flyout that appears:

- **Date (UTC)**: **Start date** and **End date**.
- **Mail direction**: **Inbound** and **Outbound**.
- **Type**:
  - **Good mail**
  - **Malware**
  - **Spam**
  - **Edge protection**
  - **Rule messages**
  - **Phishing email**

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

Back on the **Mailflow status report** page, if you click **Choose a category for more details**, you can select from the following values:

- **Phishing email**: This selection takes you to the [Threat protection status report](reports-email-security.md#threat-protection-status-report).
- **Malware in email**: This selection takes you to the [Threat protection status report](reports-email-security.md#threat-protection-status-report).
- **Spam detections**: This selection takes you to the [Spam Detections report](reports-email-security.md#spam-detections-report).
- **Edge blocked spam**: This selection takes you to the [Spam Detections report](reports-email-security.md#spam-detections-report).

On the **Mailflow status report** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)** and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

### Direction view for the Mailflow status report

:::image type="content" source="../../media/mail-flow-status-report-direction-view.png" alt-text="The Direction view in the Mailflow status report." lightbox="../../media/mail-flow-status-report-direction-view.png":::

If you click the **Direction** tab, the chart shows the following information for the specified date range:

- **Inbound**
- **Outbound**

You can filter both the chart and the details table by clicking **Filter** and selecting one or more of the following values in the flyout that appears:

- **Date (UTC)**: **Start date** and **End date**.
- **Mail direction**: **Inbound** and **Outbound**.
- **Type**:
  - **Good mail**
  - **Malware**
  - **Spam**
  - **Edge protection**
  - **Rule messages**
  - **Phishing email**

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

Back on the **Mailflow status report** page, if you click **Choose a category for more details**, you can select from the following values:

- **Phishing email**: This selection takes you to the [Threat protection status report](reports-email-security.md#threat-protection-status-report).
- **Malware in email**: This selection takes you to the [Threat protection status report](reports-email-security.md#threat-protection-status-report).
- **Spam detections**: This selection takes you to the [Spam Detections report](reports-email-security.md#spam-detections-report).
- **Edge blocked spam**: This selection takes you to the [Spam Detections report](reports-email-security.md#spam-detections-report).

On the **Mailflow status report** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **Create schedule** and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **Export** buttons are available.

### Mailflow view for the Mailflow status report

The **Mailflow** view shows you how Microsoft's email threat protection features filter incoming and outgoing email in your organization. This view uses a horizontal flow diagram (known as a _Sankey_ diagram) to provide details on the total email count, and how the configured threat protection features, including edge protection, anti-malware, anti-phishing, anti-spam, and anti-spoofing affect this count.

:::image type="content" source="../../media/mail-flow-status-report-mailflow-view.png" alt-text="The Mailflow view in the Mailflow status report." lightbox="../../media/mail-flow-status-report-mailflow-view.png":::

The aggregate view and details table view allow for 90 days of filtering.

The information in the diagram is color-coded by **EOP** or **Defender for Office 365** technologies.

The diagram is organized into the following horizontal bands:

- **Total email** band: This value is always shown first.
- **Edge block** and **Processed** band:
  - **Edge block**: Messages that are filtered at the edge and identified as Edge Protection.
  - **Processed**: Messages that are handled by the filtering stack.
- Outcomes band:
  - **Rule Block**: Messages that are processed by Exchange mail flow rules (transport rules).
  - **Malware block**: Messages that are identified as malware by various filters.<sup>\*</sup>
  - **Phish block**: Messages identified as phish during processing by various filters.<sup>\*</sup>
  - **Spam block**: Messages identified as spam during processing by various filters.<sup>\*</sup>
  - **Impersonation block**: Messages detected as user impersonation or domain impersonation in Defender for Office 365.<sup>\*</sup>
  - **Detonation block**: Messages detected during file or URL detonation by Safe Attachments policies or Safe Links policies in Defender for Office 365.<sup>\*</sup>
  - **ZAP removed**: Messages that are removed by zero-hour auto purge (ZAP).<sup>\*</sup>
  - **Delivered**: Messages delivered to users due to an allow.<sup>\*</sup>

If you hover over a horizontal band in the diagram, you'll see the number of related messages.

<sup>\*</sup> If you click on this element, the diagram is expanded to show further details. For a description of each element in the expanded nodes, see [Detection technologies](/office/office-365-management-api/office-365-management-activity-api-schema#detection-technologies).

:::image type="content" source="../../media/mail-flow-status-report-mailflow-view-details.png" alt-text="The Phishing block details in Mailflow view in the Mailflow status report." lightbox="../../media/mail-flow-status-report-mailflow-view-details.png":::

The details table below the diagram shows the following information:

- **Date**
- **Total email**
- **Edge filtered**
- **Rule messages**
- **Anti-malware engine, Safe Attachments, rule filtered**
- **DMARC impersonation, spoof, phish filtered**
- **Detonation detection**
- **Anti-spam filtered**
- **ZAP removed**
- **Messages where not threats were detected**

If you select a row in the details table, a further breakdown of the email counts is shown in the details flyout that appears.

You can filter both the chart and the details table by clicking **Filter** and selecting one or more of the following values in the flyout that appears:

- **Date (UTC)** **Start date** and **End date**.
- **Direction**: **Outbound** and **Inbound**.

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

Back on the **Mailflow status report** page, you can click **Show trends** to see trend graphs in the **Mailflow trends** flyout that appears.

:::image type="content" source="../../media/mail-flow-status-report-mailflow-view-show-trends.png" alt-text="The Mailflow trends flyout in Mailflow view in the Mailflow status report." lightbox="../../media/mail-flow-status-report-mailflow-view-show-trends.png":::

On the **Mailflow status report** page, the ![Export icon.](../../media/m365-cc-sc-download-icon.png) **Export** button is available.

## Malware detections report

> [!NOTE]
> This report has been deprecated. The same information is available in the [Threat protection status report](#threat-protection-status-report).

## Mail latency report

The **Mail latency report** in Defender for Office 365 contains information on the mail delivery and detonation latency experienced within your organization. For more information, see [Mail latency report](reports-defender-for-office-365.md#mail-latency-report).

## Post-delivery activities report

> [!NOTE]
> This report is in the process of being rolled out. Worldwide availability is expected by the end of March 2023.

The **Post-delivery activities** report shows information about email messages that removed from user mailboxes after delivery by zero-hour auto purge (ZAP). For more information about ZAP, see [Zero-hour auto purge (ZAP) in Exchange Online](zero-hour-auto-purge.md).

The report shows real-time information, with updated threat information.

To view the report in the Microsoft 365 Defender portal, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **ZAP report** and then click **View details**. To go directly to the report, open <https://security.microsoft.com/reports/ZapReport>.

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

You can filter both the chart and the details table by clicking **Filter** and selecting one or more of the following values in the flyout that appears:

- **Date (UTC)**: **Start date** and **End date**.
- **Verdict**:
  - **No threat**
  - **Spam**
  - **Phishing**
  - **Malware**

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon.](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Post delivery activities** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)** and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

:::image type="content" source="../../media/post-delivery-activities-report.png" alt-text="The Post-delivery activities report." lightbox="../../media/post-delivery-activities-report.png":::

## Spam detections report

> [!NOTE]
> This report has been deprecated. The same information is available in the [Threat protection status report](#threat-protection-status-report).

## Spoof detections report

The **Spoof detections** report shows information about messages that were blocked or allowed due to spoofing. For more information about spoofing, see [Anti-spoofing protection in EOP](anti-phishing-protection-spoofing-about.md).

The aggregate and detail views of the report allows for 90 days of filtering.

> [!NOTE]
> The latest available data in the report is 3 to 4 days old.

To view the report in the Microsoft 365 Defender portal, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **Spoof detections** and then click **View details**. To go directly to the report, open <https://security.microsoft.com/reports/SpoofMailReport>.

:::image type="content" source="../../media/spoof-detections-widget.png" alt-text="The Spoof detections widget on the Email & collaboration reports page." lightbox="../../media/spoof-detections-widget.png":::

The chart shows the following information:

- **Pass**
- **Fail**
- **SoftPass**
- **None**
- **Other**

When you hover over a day (data point) in the chart, you can see how many spoofed messages were detected and why.

You can filter both the chart and the details table by clicking **Filter** and selecting one or more of the following values in the flyout that appears:

- **Date (UTC)** **Start date** and **End date**
- **Result**:
  - **Pass**
  - **Fail**
  - **SoftPass**
  - **None**
  - **Other**
- **Spoof type**: **Internal** and **External**

:::image type="content" source="../../media/spoof-detections-report-page.png" alt-text="The Spoof mail report page in the Microsoft 365 Defender portal." lightbox="../../media/spoof-detections-report-page.png":::

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

For more information about composite authentication result codes, see [Anti-spam message headers in Microsoft 365](message-headers-eop-mdo.md).

On the **Spoof detections** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

## Submissions report

The **Submissions** report shows information about items that admins have reported to Microsoft for analysis. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](submissions-admin.md).

To view the report in the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **Submissions** and then click **View details**. To go directly to the report, open <https://security.microsoft.com/adminSubmissionReport>. To go to [admin submissions in the Microsoft 365 Defender portal](submissions-admin.md), click **Go to Submissions**. Admins will be able to view the report for last 30 days.

:::image type="content" source="../../media/submissions-report-widget.png" alt-text="The Submissions widget on the Email & collaboration reports page." lightbox="../../media/submissions-report-widget.png":::

The chart shows the following information:

- **Pending**
- **Completed**

You can filter both the chart and the details table by clicking **Filter** and selecting one or more of the following values in the flyout that appears:

- **Date reported**: **Start time** and **End time**
- **Submission type**:
  - **Email**
  - **URL**
  - **File**
- **Submission ID**
- **Network Message ID**
- **Sender**
- **Name**
- **Submitted by**
- **Reason for submitting**:
  - **Not junk**
  - **Phish**
  - **Malware**
  - **Spam**
- **Rescan status**:
  - **Pending**
  - **Completed**

The details table below the graph shows the same information and has the same **Group** or **Customize columns** options as on the **Submitted for analysis** tab at **Email & collaboration** \> **Submissions**. For more information, see [View email admin submissions to Microsoft](submissions-admin.md#view-email-admin-submissions-to-microsoft).

On the **Submissions** page, the **[Export](#export-report)** button is available.

:::image type="content" source="../../media/submissions-report-page.png" alt-text="The Submissions report page in the Microsoft 365 Defender portal." lightbox="../../media/submissions-report-page.png":::

## Threat protection status report

The **Threat protection status** report is available in both EOP and Defender for Office 365. However, the reports contain different data. For example, EOP customers can view information about malware detected in email, but not information about malicious files detected by [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).

The report provides the count of email messages with malicious content, such as files or website addresses (URLs) that were blocked by the anti-malware engine, [zero-hour auto purge (ZAP)](zero-hour-auto-purge.md), and Defender for Office 365 features like [Safe Links](safe-links-about.md), [Safe Attachments](safe-attachments-about.md), and [impersonation protection features in anti-phishing policies](anti-phishing-policies-about.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365). You can use this information to identify trends or determine whether organization policies need adjustment.

**Note**: It's important to understand that if a message is sent to five recipients we count it as five different messages and not one message.

To view the report in the Microsoft 365 Defender portal, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **Threat protection status** and then click **View details**. To go directly to the report, open one of the following URLs:

- Defender for Office 365: <https://security.microsoft.com/reports/TPSAggregateReportATP>
- EOP: <https://security.microsoft.com/reports/TPSAggregateReport>

:::image type="content" source="../../media/threat-protection-status-report-widget.png" alt-text="The Threat protection status widget on the Email & collaboration reports page." lightbox="../../media/threat-protection-status-report-widget.png":::

By default, the chart shows data for the past 7 days. If you click **Filter** on the **Threat protection status report** page, you can select a 90 day date range (trial subscriptions might be limited to 30 days). The details table allows filtering for 30 days.

The available views are described in the following sections.

### View data by Overview

:::image type="content" source="../../media/threat-protection-status-report-overview-view.png" alt-text="The Overview view in the Threat protection status report." lightbox="../../media/threat-protection-status-report-overview-view.png":::

In the **View data by Overview** view, the following detection information is shown in the chart:

- **Email malware**
- **Email phish**
- **Email spam**
- **Content malware**

No details table is available below the chart.

If you click **Filter**, the following filters are available:

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

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

### View data by Email \> Phish and Chart breakdown by Detection Technology

:::image type="content" source="../../media/threat-protection-status-report-phishing-detection-tech-view.png" alt-text="The Detection technology view for phishing email in the Threat protection status report." lightbox="../../media/threat-protection-status-report-phishing-detection-tech-view.png":::

> [!NOTE]
> Starting in May 2021, phishing detections in email were updated to include **message attachments** that contain phishing URLs. This change might shift some of the detection volume out of the **View data by Email \> Malware** view and into the **View data by Email \> Phish** view. In other words, message attachments with phishing URLs that were traditionally identified as malware now might be identified as phishing instead.

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

If you click **Filter**, the following filters are available:

- **Date (UTC)** **Start date** and **End date**
- **Detection**: The same values as in the chart.
- **Protected by**: **MDO** (Defender for Office 365) or **EOP**
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

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Threat protection status** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

### View data by Email \> Spam and Chart breakdown by Detection Technology

:::image type="content" source="../../media/threat-protection-status-report-spam-detection-tech-view.png" alt-text="The Detection technology view for spam in the Threat protection status report." lightbox="../../media/threat-protection-status-report-spam-detection-tech-view.png":::

In the **View data by Email \> Spam** and **Chart breakdown by Detection Technology** view, the following information is shown in the chart:

- **Advanced filter**: Phishing signals based on machine learning.
- **Bulk**: The [bulk complaint level (BCL)](anti-spam-bulk-complaint-level-bcl-about.md) of the message exceeds the defined threshold for spam.
- **Domain reputation**: The message was from a domain that was previously identified as sending spam in other Microsoft 365 organizations.
- **Fingerprint matching**: The message closely resembles a previous detected malicious message.
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

If you click **Filter**, the following filters are available:

- **Date (UTC)** **Start date** and **End date**
- **Detection**: The same values as in the chart.
- **Bulk Complaint Level**
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

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Threat protection status** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

### View data by Email \> Malware and Chart breakdown by Detection Technology

:::image type="content" source="../../media/threat-protection-status-report-malware-detection-tech-view.png" alt-text="The Detection technology view for malware in the Threat protection status report." lightbox="../../media/threat-protection-status-report-malware-detection-tech-view.png":::

> [!NOTE]
> Starting in May 2021, malware detections in email were updated to include **harmful URLs** in messages attachments. This change might shift some of the detection volume out of the **View data by Email \> Phish** view and into the **View data by Email \> Malware** view. In other words, harmful URLs in message attachments that were traditionally identified as phishing now might be identified as malware instead.

In the **View data by Email \> Malware** and **Chart breakdown by Detection Technology** view, the following information is shown in the chart:

- **File detonation**<sup>\*</sup>: [Safe Attachments](safe-attachments-about.md) detected a malicious attachment during detonation analysis.
- **File detonation reputation**<sup>\*</sup>: File attachments previously detected by [Safe Attachments](safe-attachments-about.md) detonations in other Microsoft 365 organizations.
- **File reputation**: The message contains a file that was previously identified as malicious in other Microsoft 365 organizations.
- **Anti-malware engine**<sup>\*</sup>: Detection from anti-malware engines.
- **Anti-malware policy file type block**: The message was blocked due to the file type of the attachment ([common attachment filtering in anti-malware policies](anti-malware-protection-about.md)).
- **URL detonation**<sup>\*</sup>: [Safe Links](safe-links-about.md) detected a malicious URL in the message during detonation analysis.
- **URL detonation reputation**<sup>\*</sup>>: URLs previously detected by [Safe Links](safe-links-about.md) detonations in other Microsoft 365 organizations.
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

If you click **Filter**, the following filters are available:

- **Date (UTC)** **Start date** and **End date**
- **Detection**: The same values as in the chart.
- **Protected by**: **MDO** (Defender for Office 365) or **EOP**
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

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the**Threat protection status** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

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

If you click **Filter**, the following filters are available:

- **Date (UTC)** **Start date** and **End date**
- **Detection**: Detection technology values as previously described in this article and at [Detection technologies](/office/office-365-management-api/office-365-management-activity-api-schema#detection-technologies).
- **Protected by**: **MDO** (Defender for Office 365) or **EOP**
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

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Threat protection status** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

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

If you click **Filter**, the following filters are available:

- **Date (UTC)** **Start date** and **End date**
- **Detection**: Detection technology values as previously described in this article and at [Detection technologies](/office/office-365-management-api/office-365-management-activity-api-schema#detection-technologies).
- **Protected by**: **MDO** (Defender for Office 365) or **EOP**
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

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Threat protection status** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

### View data by Content \> Malware

:::image type="content" source="../../media/threat-protection-status-report-content-malware-view.png" alt-text="The Content malware view in the Threat protection status report." lightbox="../../media/threat-protection-status-report-content-malware-view.png":::

In the **View data by Content \> Malware** view, the following information is shown in the chart for Microsoft Defender for Office 365 organizations:

- **Anti-malware engine**: Malicious files detected in SharePoint, OneDrive, and Microsoft Teams by the [built-in virus detection in Microsoft 365](anti-malware-protection-for-spo-odfb-teams-about.md).
- **MDO detonation**: Malicious files detected by [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).
- **File reputation**: The message contains a file that was previously identified as malicious in other Microsoft 365 organizations.

In the details table below the chart, the following information is available:

- **Date (UTC)**
- **Attachment filename**
- **Workload**
- **Detection technology**: The same detection technology values from the chart.
- **File size**
- **Last modifying user**

If you click **Filter**, the following filters are available:

- **Date (UTC)** **Start date** and **End date**.
- **Detection**: The same values as in the chart.
- **Workload**: **Teams**, **SharePoint**, and **OneDrive**

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Threat protection status** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)**, ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **[Request report](#request-report)**, and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

### View data by System override and Chart breakdown by Reason

:::image type="content" source="../../media/threat-protection-status-report-system-override-view-breakdown-by-reason.png" alt-text="The Message override and Chart breakdown by Reason view in the Threat protection status report." lightbox="../../media/threat-protection-status-report-system-override-view-breakdown-by-reason.png":::

In the **View data by System override** and **Chart breakdown by Reason** view, the following override reason information is shown in the chart:

- **On-premises skip**
- **IP allow**
- **Exchange transport rule** (mail flow rule)
- **Organization allowed senders**
- **Organization allowed domains**
- **ZAP not enabled**
- **User Safe Sender**
- **User Safe Domain**
- **Phishing simulation**: For more information, see [Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes](skip-filtering-phishing-simulations-sec-ops-mailboxes.md).
- **Third party filter**

In the details table below the chart, the following information is available:

- **Date**
- **Subject**
- **Sender**
- **Recipients**
- **System override**
- **Sender IP**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

If you click **Filter**, the following filters are available:

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

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Threat protection status** page, the ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** button is available.

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

If you click **Filter**, the following filters are available:

- **Date (UTC)** **Start date** and **End date**
- **Reason**
  - **On-premises skip**
  - **IP allow**
  - **Exchange transport rule** (mail flow rule)
  - **Organization allowed senders**
  - **Organization allowed domains**
  - **ZAP not enabled**
  - **User Safe Sender**
  - **User Safe Domain**
  - **Phishing simulation**: For more information, see [Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes](skip-filtering-phishing-simulations-sec-ops-mailboxes.md).
  - **Third party filter**
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
  - **Safe Attachments**<sup>\*</sup>
  - **Anti-phish**
  - **Anti-spam**
  - **Mail flow rule** (transport rule)
  - **Others**
- **Policy name (details table view only)**: **All**
- **Recipients**

<sup>\*</sup> Defender for Office 365 only

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Threat protection status** page, the ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** button is available.

## Top malware report

The **Top malware** report shows the various kinds of malware that was detected by [anti-malware protection in EOP](anti-malware-protection-about.md).

To view the report in the Microsoft 365 Defender portal, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **Top malware** and then click **View details**. To go directly to the report, open <https://security.microsoft.com/reports/TopMalware>.

:::image type="content" source="../../media/top-malware-report-widget.png" alt-text="The Top malware widget on the Email & collaboration reports page." lightbox="../../media/top-malware-report-widget.png":::

When you hover over a wedge in the pie chart, you can see the name of a kind of malware and how many messages were detected as having that malware.

On the **Top malware report** page, a larger version of the pie chart is displayed. The details table below the chart shows the following information:

- **Top malware**
- **Count**

If you click **Filter**, you can specify a date range with **Start date** and **End date**.

On the **Top malware** page, the ![Create schedule icon.](../../media/m365-cc-sc-create-icon.png) **[Create schedule](#schedule-report)** and ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** buttons are available.

:::image type="content" source="../../media/top-malware-report-view.png" alt-text="The Top malware report view." lightbox="../../media/top-malware-report-view.png":::

## Top senders and recipients report

The **Top senders and recipients** report is available in both EOP and Defender for Office 365; however, the reports contain different data. For example, EOP customers can view information about top malware, spam, and phishing (spoofing) recipients, but not information about malware detected by [Safe Attachments](safe-attachments-about.md) or phishing detected by [impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

The **Top senders and recipients** report shows the top 20 message senders in your organization, as well as the top 20 recipients for messages that were detected by EOP and Defender for Office 365 protection features. By default, the report shows data for the last week, but data is available for the last 90 days.

To view the report in the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **Top senders and recipients report** and then click **View details**. To go directly to the report, open one of the following URLs:

- Defender for Office 365: <https://security.microsoft.com/reports/TopSenderRecipientsATP>
- EOP: <https://security.microsoft.com/reports/TopSenderRecipient>

:::image type="content" source="../../media/top-senders-and-recipients-widget.png" alt-text="The Top senders and recipients widget in the Reports dashboard." lightbox="../../media/top-senders-and-recipients-widget.png":::

When you hover over a wedge in the pie chart, you can see the number of messages for the sender or recipient.

On the **Top senders and recipients** page, a larger version of the pie chart is displayed. The following charts are available:

- **Show data for Top mail senders** (this is the default view)
- **Show data for Top mail recipients**
- **Show data for Top spam recipients**
- **Show data for Top malware recipients** (EOP)
- **Show data for Top phishing recipients**
- **Show data for Top malware recipients (MDO)**
- **Show data for Top phish recipients (MDO)**

The data changes based on your selection.

When you hover over a wedge in the pie chart, you can see the message count for that specific sender or recipient.

The details table below the graph shows the senders or recipients and message counts based on the view you selected.

You can filter both the chart and the details table by clicking **Filter** and selecting **Start date** and **End date**. Users can also filter by user tags.

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

On the **Top senders and recipients** page, the ![Export icon.](../../media/m365-cc-sc-download-icon.png) **Export** button is available.

:::image type="content" source="../../media/top-senders-and-recipients-report-view.png" alt-text="The Show data for Top mail senders view in the Top senders and recipients report." lightbox="../../media/top-senders-and-recipients-report-view.png":::

## URL protection report

The **URL protection report** is available only in Microsoft Defender for Office 365. For more information, see [URL protection report](reports-defender-for-office-365.md#url-protection-report).

## User reported messages report

> [!IMPORTANT]
> In order for the **User reported messages** report to work correctly, **audit logging must be turned on** for your Microsoft 365 environment. This is typically done by someone who has the Audit Logs role assigned in Exchange Online. For more information, see [Turn Microsoft 365 audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

The **User reported messages** report shows information about email messages that users have reported as junk, phishing attempts, or good mail by using the [built-in Report button in Outlook on the web](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web) or the [Microsoft Report Message or Report Phishing add-ins](submissions-outlook-report-messages.md#use-the-report-message-and-report-phishing-add-ins-in-outlook).

To view the report in the Microsoft 365 Defender portal, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports**. On the **Email & collaboration reports** page, find **User reported messages** and then click **View details**. To go directly to the report, open <https://security.microsoft.com/reports/userSubmissionReport>. To go to [admin submissions in the Microsoft 365 Defender portal](submissions-admin.md), click **Go to Submissions**.

:::image type="content" source="../../media/user-reported-messages-widget.png" alt-text="The user-reported messages widget on the Email & collaboration reports page." lightbox="../../media/user-reported-messages-widget.png":::

You can filter both the chart and the details table by clicking **Filter** and selecting one or more of the following values in the flyout that appears:

- **Date reported**: **Start time** and **End time**
- **Reported by**
- **Email subject**
- **Message reported ID**
- **Network Message ID**
- **Sender**
- **Reported reason**
  - **Not junk**
  - **Phish**
  - **Spam**
- **Phish simulation**: **Yes** or **No**

When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

To group the entries, click **Group** and select one of the following values from the drop-down list:

- **None**
- **Reason**
- **Sender**
- **Reported by**
- **Rescan result**
- **Phish simulation**

:::image type="content" source="../../media/user-reported-messages-report.png" alt-text="The user-reported messages report." lightbox="../../media/user-reported-messages-report.png":::

The details table below the graph shows the following information:

- **Email subject**
- **Reported by**
- **Date reported**
- **Sender**
- **Reported reason**
- **Rescan result**
- **Tags**: For more information about user tags, see [User tags](user-tags-about.md).

To submit a message to Microsoft for analysis, select the message entry from the table, click **Submit to Microsoft for analysis** and then select one of the following values from the drop-down list:

- **Report clean**
- **Report phishing**
- **Report malware**
- **Report spam**'
- **Trigger investigation** (Defender for Office 365)

On the **User reported messages** page, the ![Export icon.](../../media/m365-cc-sc-download-icon.png) **[Export](#export-report)** button is available.

## What permissions are needed to view these reports?

- You need to be assigned permissions before you can view and use the reports that are described in this article. You have the following options:
  - [Microsoft 365 Defender role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac): Currently, this option requires membership in the Microsoft 365 Defender Preview program.
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md): Membership in any of the following role groups:
    - **Organization Management**
    - **Security Administrator**
    - **Security Reader**
    - **Global Reader**
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365.

## What if the reports aren't showing data?

If you are not seeing data in your reports, check the filters that you're using and double-check that your policies are set up correctly. To learn more, see [Protect against threats](protect-against-threats.md).

## Schedule report

> [!NOTE]
> To create or manage report schedules, you need to be a member of the **Organization management** role.

1. On the main page for the specific report, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png"::: **Create schedule**.
2. The **Create scheduled report** wizard opens. On the **Name scheduled report** page, review or customize the **Name** value, and then click **Next**.
3. On the **Set preferences** page, configure the following settings:
   - **Frequency**: Select one of the following values:
     - **Weekly** (default)
     - **Monthly**
   - **Start date**: When generation of the report begins. The default value is today.
   - **Expiry date**: When generation of the report ends. The default value is one year from today.

   When you're finished, click **Next**.

4. On the **Recipients** page, choose recipients for the report. The default value is your email address, but you can add others.

   When you're finished, click **Next**.

5. On the **Review** page, review your selections. You can click the **Back** button or the **Edit** link in the respective sections to make changes.

   When you're finished, click **Submit**.

### Managed existing scheduled reports

To manage scheduled reports that you've already created, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> expand **Email & collaboration** \> select **Manage schedules**.

   To go directly to the **Manage schedules** page, use <https://security.microsoft.com/ManageSubscription>.

2. On the **Manage schedules** page, the following information is shown for each scheduled report:
   - **Schedule start date**
   - **Schedule name**
   - **Report type**
   - **Frequency**
   - **Last sent**

   Find the existing scheduled report that you want to modify.

3. After you select the scheduled report do any of the following actions in the details flyout that opens:
   - **Edit name**: Click this button, change the name of the report in the flyout that appears, and then click **Save**.
   - **Delete schedule**: Click this button, read the warning that appears (previous reports will no longer be available for download), and then click **Save**.
   - **Schedule details** section: Click **Edit preferences** to change the following settings:
     - **Frequency**: **Weekly** or **Monthly**
     - **Start date**
     - **Expiry date**

     When you're finished, click **Save**.

   - **Recipients** section: Click **Edit recipients** to add or remove recipients for the scheduled report. When you're finished, click **Save**

   When you're finished, click **Close**.

## Request report

1. On the main page for the specific report, click ![Request report icon.](../../media/m365-cc-sc-download-icon.png) **Request report**.
2. The **Create on-demand report** wizard opens. On the **Name on-demand report** page, review or customize the **Name** value, and then click **Next**.
3. On the **Set preferences** page, review or configure the following settings:
   - **Start date**: When generation of the report begins. The default value is one month ago.
   - **Expiry date**: When generation of the report ends. The default value is today.

   When you're finished, click **Next**.

4. On the **Recipients** page, choose recipients for the report. The default value is your email address, but you can add others.

   When you're finished, click **Next**.

5. On the **Review** page, review your selections. You can click the **Back** button or the **Edit** link in the respective sections to make changes.

   When you're finished, click **Submit**.

6. After the report has been successfully created, you're taken to the **New on-demand report created** page, where you can click **Create another report** or **Done**.

   The report is also available on the **Reports for download** page as described in the next section.

### Download reports

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> expand **Email & collaboration** \> select **Reports for download**.

   To go directly to the **Reports for download** page, use <https://security.microsoft.com/ReportsForDownload>.

2. On the **Reports for download** page, the following information is shown for each available report:
   - **Start date**
   - **Name**
   - **Report type**
   - **Last sent**
   - **Direction**

   Find and select the report you want to download.

## Export report

On the main page for the specific report, click ![Export icon.](../../media/m365-cc-sc-download-icon.png) **Export** (if that link is available). An **Export conditions** flyout appears where you can configure the following settings:

- **Select a view to export**: Select one of the following values:
  - **Summary**: Data is available for the last 90 days.
  - **Details**: Data is available for the last 30 days.
- **Date (UTC)**: **Start date** and **End date**.

When you're finished configuring the filters, click **Export**. In the dialog that opens, you can choose to open the file, save the file, or remember the selection.

Each exported .csv file is limited to 150,000 rows. If the data contains more than 150,000 rows, multiple .csv files are created.

## Related topics

[Anti-spam protection in EOP](anti-spam-protection-about.md)

[Anti-malware protection in EOP](anti-malware-protection-about.md)

[View mail flow reports in the EAC](/exchange/monitoring/mail-flow-reports/mail-flow-reports)

[View reports for Defender for Office 365](reports-defender-for-office-365.md)
