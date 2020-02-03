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
description: "Admins can learn about the SMTP Auth clients report in the mail flow dashboard in the Security & Compliance Center."
---

# SMTP Auth clients report

The **SMTP Auth clients** report highlights the use of the SMTP Auth client submission protocol by users or system accounts in your organization. This legacy protocol (which uses the endpoint smtp.office365.com) only offers Basic authentication, and is susceptible to being used by compromised accounts to send email.  This report allows you to check for unusual activity. It also shows the TLS usage data for clients or devices using SMTP Auth.

The widget that's shown in the Mail Flow dashboard indicates the number of users or service accounts that have used the SMTP Auth protocol in the last 7 days.

![The SMTP Auth clients report in the mail flow dashboard in the Security & Compliance Center](../media/smtp-auth-clients-report-selected.png)

Clicking on the widget opens a flyout that provides an aggregated view of the TLS usage and volumes for the last week.

![The flyout in the SMTP Auth clients report](../media/smtp-auth-clients-flyout.png)

When you click on the **SMTP Auth Clients Report** link, you'll see two main data pivots and two data views. The data pivots are the **Sending Volume** and **TLS Usage**. The data views are the chart and the details table.

The **Sending Volume** view shows the number of messages that were sent using SMTP Auth for the specified time range. You can adjust the range by clicking **Filters**. The chart is organized by sender domain. You can see separate data for each domain by selecting the domain in the **Show data for** drop down.

![Sending Volume in the SMTP Auth Clients Report](../media/smtp-auth-clients-report-sending-volume.png)

You can view detailed information about the senders and their message counts by clicking **View details table**. To return to the chart, click **View report**.

![Details table for Sending Volume in the SMTP Auth Clients Report](../media/smtp-auth-clients-report-details-sending-volume.png)

The **TLS Usage** pivot is important due to the upcoming deprecation of TLS1.0 and TLS1.1 in Office 365. Many legacy devices and applications will be unable to send email if they are only capable of using TLS1.0 with SMTP Auth. This pivot allows you to identify and take action on users and system accounts that are still using older versions of TLS.

![TLS Usage in the SMTP Auth Clients Report](../media/smtp-auth-clients-report-tls-usage.png)

You can view detailed information about the senders, the versions of TLS they are using with SMTP Auth, and their message counts by clicking **View details table**. To return to the chart, click **View report**.

You can also download a more detailed version of the report by clicking Request report.

![Details table for TLS Usage in the SMTP Auth Clients Report](../media/smtp-auth-clients-report-details-tls-usage.png)

## See also

For more information about other mail flow insights in the mail flow dashboard, see [Mail flow insights in the Security & Compliance Center](mail-flow-insights-v2.md).
