---
title: View reports for Advanced Threat Protection
f1.keywords:
- CSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: e47e838c-d99e-4c0b-b9aa-e66c4fae902f
ms.collection:
- M365-security-compliance
description: "Find and use reports for Office 365 Advanced Threat Protection in the Security &amp; Compliance Center."
ms.custom: seo-marvel-apr2020
---

# View reports for Office 365 Advanced Threat Protection

Office 365 Advanced Threat Protection (ATP) organizations (for example, Microsoft 365 E5 subscriptions or ATP Plan 1 or ATP Plan 2 add-ons) contain a variety of security-related reports. If you have the [necessary permissions](#what-permissions-are-needed-to-view-the-atp-reports), you can view these reports in the Security & Compliance Center by going to **Reports** \> **Dashboard**. To go directly to the reports dashboard, open <https://protection.office.com/insightdashboard>.

![The Reports dashboard in the Security & Compliance Center](../../media/6b213d34-adbb-44af-8549-be9a7e2db087.png)

## Advanced Threat Protection file types report

The **Advanced Threat Protection file types report** report shows you the type of files detected as malicious by [ATP Safe Attachments](atp-safe-attachments.md).

 The aggregate view of the report allows for 90 days of filtering, while the detail view only allows for 10 days of filtering.

To view the report, open the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** and select **Office ATP file types**. To go directly to the report, open <https://protection.office.com/reportv2?id=ATPFileReport>.

![Office ATP file types widget in the Reports dashboard](../../media/atp-file-types-report-widget.png)

### Report view for the Advanced Threat Protection file types report

The following views are available:

- **View data by: File**: The chart contains the following information:

  - **Malicious Excel attachments**
  - **Malicious Flash attachments**
  - **Malicious PDF attachments**
  - **Malicious PowerPoint attachments**
  - **Malicious URLs**
  - **Malicious Word attachments**
  - **Malicious executable attachments**
  - **Others**

  When you hover over a particular day (data point), you can see the breakdown of types of malicious files that were detected by [ATP Safe Attachments](atp-safe-attachments.md) and [anti-malware protection in EOP](anti-malware-protection.md).

  ![File view in the ATP file types report](../../media/atp-file-types-report-file-view.png)

  If you click **Filters**, you can modify the report with the following filters:

  - **Start date** and **End date**
  - The same file type values that are visible in the chart.

- **View data by: Message**: The chart contains the following information:

  - **Block access**
  - **Messages replaced**
  - **Messages monitored**
  - **Replaced by Dynamic Email Delivery**: For more information, see [Dynamic Delivery and previewing with ATP Safe Attachments](dynamic-delivery-and-previewing.md).

  ![Message view in the ATP file types report](../../media/atp-file-types-report-message-view.png)

  If you click **Filters**, you can modify the report with the following filters:

  - **Start date** and **End date**
  - The same message disposition values that are available in the chart, and the additional **Messages passed** value.

### Details table view for the Advanced Threat Protection file types report

If you click **View details table**, the report provides a near-real-time view of all clicks that happen within the organization for the last 10 days. The information that's shown depends on the chart you were looking at:

- **View data by: File**:

  - **Date**
  - **Recipient address**
  - **Sender address**
  - **Message ID**: Available in the **Message-ID** header field in the message header and should be unique. An example value is `<08f1e0f6806a47b4ac103961109ae6ef@server.domain>` (note the angle brackets).
  - **File**

  If you click **Filters**, you can modify the report with the following filters:

  - **Start date** and **End date**
  - The same file type values that are visible in the chart.

- **View data by: Message**:

  - **Date**
  - **Recipient address**
  - **Sender address**
  - **Message ID**
  - **File**
  - **Subject**

  If you click **Filters**, you can modify the results with the following filters:

  - **Start date** and **End date**
  - The same message disposition values that are available in the chart, and the additional **Messages passed** value.

To get back to the reports view, click **View report**.

## Advanced Threat Protection message disposition report

The **ATP Message Disposition** report shows you the actions that were taken for email messages that were detected as having malicious content.

To view the report, open the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** and select **Office ATP message disposition**. To go directly to the report, open <https://protection.office.com/reportv2?id=ATPMessageReport>.

![Office 365 ATP message disposition widget in the Reports dashboard](../../media/atp-message-disposition-report-widget.png)

### Report view for the Advanced Threat Protection message disposition report

The following views are available:

- **View data by: Message**: The chart contains the following information:

  - **Block access**
  - **Messages replaced**
  - **Messages monitored**
  - **Replaced by Dynamic Email Delivery**: For more information, see [Dynamic Delivery and previewing with ATP Safe Attachments](dynamic-delivery-and-previewing.md).

  ![Message view in the ATP file types report](../../media/atp-file-types-report-message-view.png)

  If you click **Filters**, you can modify the report with the following filters:

  - **Start date** and **End date**
  - The same message disposition values that are available in the chart, and the additional **Messages passed** value.

- **View data by: File**: The chart contains the following information:

  - **Malicious Excel attachments**
  - **Malicious Flash attachments**
  - **Malicious PDF attachments**
  - **Malicious PowerPoint attachments**
  - **Malicious URLs**
  - **Malicious Word attachments**
  - **Malicious executable attachments**
  - **Others**

  When you hover over a particular day (data point), you can see the breakdown of types of malicious files that were detected by [ATP Safe Attachments](atp-safe-attachments.md) and [anti-malware protection in EOP](anti-malware-protection.md).

  ![File view in the ATP file types report](../../media/atp-file-types-report-file-view.png)

  If you click **Filters**, you can modify the report with the following filters:

  - **Start date** and **End date**
  - The same file type values that are visible in the chart.

### Details table view for the Advanced Threat Protection message disposition report

If you click **View details table**, the report provides a near-real-time view of all clicks that happen within the organization for the last 10 days. The information that's shown depends on the chart you were looking at:

- **View data by: Message**:

  - **Date**
  - **Recipient address**
  - **Sender address**
  - **Message ID**
  - **File**
  - **Subject**

  If you click **Filters**, you can modify the results with the following filters:

  - **Start date** and **End date**
  - The same message disposition values that are available in the chart, and the additional **Messages passed** value.

- **View data by: File**:

  - **Date**
  - **Recipient address**
  - **Sender address**
  - **Message ID**
  - **File**

  If you click **Filters**, you can modify the report with the following filters:

  - **Start date** and **End date**
  - The same file type values that are visible in the chart.

To get back to the reports view, click **View report**.

## Threat protection status report

The **Threat protection status** report is a single view that brings together information about malicious content and malicious email detected and blocked by [Exchange Online Protection](exchange-online-protection-overview.md) (EOP) and Office 365 ATP. For more information, see [Threat protection status report](view-email-security-reports.md#threat-protection-status-report).

## URL threat protection report

The **URL threat protection report** provides summary and trend views for threats detected and actions taken on URL clicks as part of [ATP Safe Links](atp-safe-links.md). This report will not have click data from users where the Safe Links policy applied has the **Do not track user clicks** option selected.

To view the report, open the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** and select **URL protection report**. To go directly to the report, open <https://protection.office.com/reportv2?id=URLProtectionActionReport>.

![URL protection report widget in the Reports dashboard](../../media/url-protection-report-widget.png)

> [!NOTE]
> This is a *protection trend report*, meaning data represents trends in a larger dataset. As a result, the data in the aggregate view is not available in real time here, but the data in the details table view is, so you may see a slight discrepancy between the two views.

### Report view for the URL threat protection report

The **URL threat protection** report has two aggregated views that are refreshed once every four hours that shows data for the last 90 days:

- **URL click protection action**: Shows the number of URL clicks by users in the organization and the results of the click:

  - **Blocked**
  - **Blocked and clicked through**
  - **Clicked through during scan**

  A click indicates that the user has clicked through the block page to the malicious website (admins can disable click through in Safe Links policies).

  If you click **Filters**, you can modify the report with the following filters:

  - **Start date** and **End date**
  - The available click protection actions, plus the value **Allowed** to see information for all URL clicks (not just blocked clicks).

  ![URL click protection action view in the URL threat protection report](../../media/url-threat-protection-report-url-click-protection-action-view.png)

- **URL click by application**: Shows the number of URL clicks by applications that support Office 365 ATP Safe Links:

  - **Email client**
  - **PowerPoint**
  - **Word**
  - **Excel**
  - **OneNote**
  - **Visio**
  - **Teams**
  - **Other**

  If you click **Filters**, you can modify the report with the following filters:

  - **Start date** and **End date**
  - The available applications.

### Details table view for the URL threat protection report

If you click **View details table**, the report provides a near-real-time view of all clicks that happen within the organization for the last 7 days with the following details:

- **Click time**
- **User**
- **URL**
- **Action**
- **App**

If you click **Filters** in the details table view, you can filter by the same criteria as in the report view, and also by **Domains** or **Recipients** separated by commas.

To get back to the reports view, click **View report**.

## Additional reports to view

In addition to the ATP reports described in this article, several other reports are available, as described in the following table:

|||
|---|---|
|**Report(s)**|**Details**|
|**Explorer** or **real-time detections**: (Office 365 ATP Plan 2 customers have Explorer; Office 365 ATP Plan 1 customers have real-time detections.)|[Threat Explorer (and real-time detections)](threat-explorer.md)|
|**Email security reports**, such as a Top Senders and Recipients report, a Spoof Mail report, and a Spam Detections report.|[View email security reports in the Security &amp; Compliance Center](view-email-security-reports.md)|
|**ATP Safe Links URL trace**: (This is a report you generate by using PowerShell.) This report shows the results of ATP Safe Links actions over the past seven (7) days.|[Get-UrlTrace cmdlet reference](https://docs.microsoft.com/powershell/module/exchange/get-urltrace)|
|**EOP and ATP results**: (This is a custom report you generate by using PowerShell). This report contains information, such as Domain, Date, Event Type, Direction, Action, and Message Count.|[Get-MailTrafficATPReport cmdlet reference](https://docs.microsoft.com/powershell/module/exchange/get-mailtrafficatpreport)|
|**EOP and ATP detections**: (This is a custom report you generate by using PowerShell). This report contains details about malicious files or URLs, phishing attempts, impersonation, and other potential threats in email or files.|[Get-MailDetailATPReport cmdlet reference](https://docs.microsoft.com/powershell/module/exchange/get-maildetailatpreport)|
|

## What permissions are needed to view the ATP reports?

In order to view and use the reports described in this article, **you must have an appropriate role assigned for both the Security &amp; Compliance Center and the Exchange admin center**.

- For the Security & Compliance Center, you must have one of the following roles assigned:

  - Organization Management
  - Security Administrator (this can be assigned in the Azure Active Directory admin center ([https://aad.portal.azure.com](https://aad.portal.azure.com)))
  - Security Operator (this can be assigned in the Azure Active Directory admin center ([https://aad.portal.azure.com](https://aad.portal.azure.com)))
  - Security Reader

- For Exchange Online, you must have one of the following roles assigned in either the Exchange admin center ([https://outlook.office365.com/ecp](https://outlook.office365.com/ecp)) or with PowerShell cmdlets (See [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online-powershell)):

  - Organization Management
  - View-only Organization Management
  - View-Only Recipients role
  - Compliance Management

To learn more, see the following resources:

- [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md)

- [Feature permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/feature-permissions)

## What if the reports aren't showing data?

If you are not seeing data in your ATP reports, double-check that your policies are set up correctly. Your organization must have [ATP Safe Links policies](set-up-atp-safe-links-policies.md) and [ATP Safe Attachments policies](set-up-atp-safe-attachments-policies.md) defined in order for ATP protection to be in place. Also see [Anti-spam and anti-malware protection in Office 365](anti-spam-and-anti-malware-protection.md).

## Related topics

[Reports and insights in the Security &amp; Compliance Center](reports-and-insights-in-security-and-compliance.md)
  
[Role permissions (Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#role-permissions)
