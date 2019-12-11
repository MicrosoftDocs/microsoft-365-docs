---
title: "Reporting and message trace in Exchange Online Protection"
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: f40253f2-50a1-426e-9979-be74ba74cb61
description: "Microsoft Exchange Online Protection (EOP) offers many different reports that can help you determine the overall status and health of your organization. There are also tools to help you troubleshoot specific events (such as a message not arriving to its intended recipients), and auditing reports to aid with compliance requirements. The following table describes the reports and troubleshooting tools available to EOP admins."
---

# Reporting and message trace in Exchange Online Protection

Microsoft Exchange Online Protection (EOP) offers many different reports that can help you determine the overall status and health of your organization. There are also tools to help you troubleshoot specific events (such as a message not arriving to its intended recipients), and auditing reports to aid with compliance requirements.

## Usage reports

**Office 365 groups activity**: View information about the number of Office 365 groups that are created and used.

**Email activity**: View information about the number of messages sent, received and read in your whole organization, and by specific users.

**Email app usage**: View information about the email apps that are used. This include the total number of connections for each app, and the versions of Outlook that are connecting.

**Mailbox usage**: View information about storage used, quota consumption, item count, and last activity (send or read activity) for mailboxes.

See the following resources for more information:

- [Office 365 Reports in the admin center - Office 365 groups](https://docs.microsoft.com/office365/admin/activity-reports/office-365-groups)

- [Office 365 Reports in the Admin Center - Email activity](https://docs.microsoft.com/office365/admin/activity-reports/email-activity)

- [Office 365 Reports in the Admin Center - Email apps usage](https://docs.microsoft.com/office365/admin/activity-reports/email-apps-usage)

- [Office 365 Reports in the Admin Center - Mailbox usage](https://docs.microsoft.com/office365/admin/activity-reports/mailbox-usage)

## Security & compliance reports in the Microsoft 365 admin center

These enhanced reports provide an interactive reporting experience for EOP admins, which includes summary information, and the ability to drill down for more details.

**Advanced Threat Protection (ATP)**: View information about safe links and safe attachments that are part of ATP.

**EOP**: View information about malware detections, spoofed mail, spam detections, and mail flow to and from your organization.

[View reports for Office 365 Advanced Threat Protection](view-reports-for-atp.md)

## Custom reports using Microsoft Graph

Programmatically create reports that are available in the Microsoft 365 admin center by using Microsoft Graph. See the subtopics of [Working with Office 365 usage reports in Microsoft Graph](https://docs.microsoft.com/graph/api/resources/report).

## Custom reports using Microsoft Graph

Programmatically create reports. See [Overview of Microsoft Graph](https://docs.microsoft.com/graph/overview).

## Message trace

Follows email messages as they travel through EOP. You can determine if an email message was received, rejected, deferred, or delivered by the service. It also shows what actions were taken on the message before it reached its final status.

You can use this information to efficiently answer your user's questions, troubleshoot mail flow issues, validate policy changes, and alleviates the need to contact technical support for assistance.

See [Trace an email message](https://docs.microsoft.com/exchange/monitoring/trace-an-email-message/trace-an-email-message)

## Audit logging

Tracks specific changes made by admins to your organization. These reports can help you troubleshoot configuration issues or find the cause of security or compliance-related problems. See [Auditing reports in EOP](auditing-reports-in-eop.md).

## Reporting and message trace data availability and latency

The following table describes when EOP reporting and message trace data is available and for how long.

||||
|:-----|:-----|:-----|
|**Report type**|**Data available for (look back period)**|**Latency**|
|Mail protection summary reports|90 days|Message data aggregation is mostly complete within 24-48 hours. Some minor incremental aggregated changes may occur for up to 5 days.|
|Mail protection detail reports|90 days|For detail data that's less than 7 days old, data should appear within 24 hours but may not be complete until 48 hours. Some minor incremental changes may occur for up to 5 days. <br/><br/> To view detail reports for messages that are greater than 7 days old, results may take up to a few hours.|
|Message trace data|90 days|When you run a message trace for messages that are less than 7 days old, the messages should appear within 5-30 minutes.<br/><br/> When you run a message trace for messages that are greater than 7 days old, results may take up to a few hours.|

> [!NOTE]
> Data availability and latency is the same whether requested via the Microsoft 365 admin center or remote PowerShell.
