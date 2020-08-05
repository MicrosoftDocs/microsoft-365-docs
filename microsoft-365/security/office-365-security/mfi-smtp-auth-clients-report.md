---
title: "SMTP Auth clients report"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid:
ms.custom:
- seo-marvel-apr2020
description: "Admins can learn how to use the SMTP AUTH report in the mail flow dashboard in the Security & Compliance Center to monitor email senders in your organization that use authenticated SMTP (SMTP AUTH) to send email messages."
---

# SMTP Auth clients report in the mail flow dashboard in the Security & Compliance Center

The **SMTP AUTH clients** report in the [mail flow dashboard](mail-flow-insights-v2.md) in the Security & Compliance Center highlights the use of the SMTP AUTH client submission protocol by users or system accounts in your organization. This legacy protocol (which uses the endpoint smtp.office365.com) only offers Basic authentication, and is susceptible to being used by compromised accounts to send email. This report allows you to check for unusual activity. It also shows the TLS usage data for clients or devices using SMTP AUTH.

The **SMTP AUTH clients** widget indicates the number of users or service accounts that have used the SMTP Auth protocol in the last 7 days.

![SMTP Auth clients report widget in the mail flow dashboard in the Security & Compliance Center](../../media/mfi-smtp-auth-clients-report-widget.png)

If you click on the number of SMTP Auth messages in the widget, an **SMTP Auth clients** flyout appears. The flyout provides an aggregated view of the TLS usage and volumes for the last week.

![Details flyout after clicking on the SMTP Auth clients report widget in the mail flow dashboard](../../media/mfi-smtp-auth-clients-report-details.png)

You can click the **SMTP Auth clients report** link to go to the SMTP Auth clients report as described in the next section.

## SMTP Auth clients report

### Report view for the SMTP Auth clients report

By default, the report shows data for the last 7 days, but data is available for the last 90 days.

The overview section contains the following charts:

- **View data by: Sending volume**: By default, the chart shows the number of SMTP Auth client messages that were sent from all domains (**Show data for: All sender domains** is selected by default). You can filter the results to a specific sender domain by clicking **Show data for** and selecting the sender domain from the dropdown list. If you hover a specific data point (day), the number of messages is shown.

  ![Sending volume view in the SMTP Auth clients report in the Security & Compliance Center](../../media/mfi-smtp-auth-clients-report-sending-volume-view.png)

- **View data by: TLS Usage**: The chart shows the percentage of TLS usage for all SMTP Auth client messages during the selected time period. This chart allows you to identify and take action on users and system accounts that are still using older versions of TLS.

  ![TLS usage view in the SMTP Auth clients report in the Security & Compliance Center](../../media/mfi-smtp-auth-clients-report-tls-usage-view.png)

If you click **Filters** in a report view, you can specify a date range with **Start date** and **End date**.

Click **Request report** to receive a more detailed version of the report in an email message. You can specify the date range and the recipients to receive the report.

### Details table view for the SMTP Auth clients report

If you click **View details table**, the information that's shown depends on the chart you were looking at:

- **View data by: Sending volume**: The following information is shown in a table:

  - **Sender address**
  - **Message count**

  If you select a row, the same details are shown in a flyout.

- **View data by: TLS Usage**: The following information is shown in a table:

  - **Sender address**
  - **TLS1.0%**<sup>\*</sup>
  - **TLS1.1%**<sup>\*</sup>
  - **TLS1.2%**<sup>\*</sup>
  - **Message count**

  <sup>\*</sup> This column shows both the percentage and number of messages from the sender.

If you click **Filters** in a details table view, you can specify a date range with **Start date** and **End date**.

If you select a row, similar details are shown in a flyout:

![Details flyout in details table view in TLS usage view in the SMTP Auth clients report in the Security & Compliance Cente](../../media/mfi-smtp-auth-clients-report-tls-usage-view-view-details-table-details.png)

Click **Request report** to receive a more detailed version of the report in an email message. You can specify the date range and the recipients to receive the report.

To go back to the reports view, click **View report**.

## Related topics

For information about other mail flow reports and insights in the mail flow dashboard, see [Mail flow insights in the Security & Compliance Center](mail-flow-insights-v2.md).
