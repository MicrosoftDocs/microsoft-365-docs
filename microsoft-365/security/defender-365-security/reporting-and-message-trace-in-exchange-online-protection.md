---
title: Reporting and message trace
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: overview

localization_priority: Normal
ms.assetid: f40253f2-50a1-426e-9979-be74ba74cb61
ms.custom: 
  - seo-marvel-apr2020
description: In this article, you'll learn about reports and troubleshooting tools available to Microsoft Exchange Online Protection (EOP) admins.
ms.technology: mdo
ms.prod: m365-security
---

# Reporting and message trace in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](https://go.microsoft.com/fwlink/?linkid=2148611)
- [Microsoft Defender for Office 365 plan 1 and plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, EOP offers many different reports that can help you determine the overall status and health of your organization. There are also tools to help you troubleshoot specific events (such as a message not arriving to its intended recipients), and auditing reports to aid with compliance requirements.

## Usage reports

**Microsoft 365 groups activity**: View information about the number of Microsoft 365 groups that are created and used.

**Email activity**: View information about the number of messages sent, received and read in your whole organization, and by specific users.

**Email app usage**: View information about the email apps that are used. This include the total number of connections for each app, and the versions of Outlook that are connecting.

**Mailbox usage**: View information about storage used, quota consumption, item count, and last activity (send or read activity) for mailboxes.

See the following resources for more information:

- [Microsoft 365 Reports in the admin center - Microsoft 365 groups](https://docs.microsoft.com/microsoft-365/admin/activity-reports/office-365-groups)

- [Microsoft 365 Reports in the admin center - Email activity](https://docs.microsoft.com/microsoft-365/admin/activity-reports/email-activity)

- [Microsoft 365 Reports in the admin center - Email apps usage](https://docs.microsoft.com/microsoft-365/admin/activity-reports/email-apps-usage)

- [Microsoft 365 Reports in the admin center - Mailbox usage](https://docs.microsoft.com/microsoft-365/admin/activity-reports/mailbox-usage)

## Security & compliance reports in the Microsoft 365 admin center

These enhanced reports provide an interactive reporting experience for EOP admins, which includes summary information, and the ability to drill down for more details.

**Defender for Office 365**: View information about Safe Links and Safe Attachments that are part of Microsoft Defender for Office 365.

**EOP**: View information about malware detections, spoofed mail, spam detections, and mail flow to and from your organization.

[View reports for Defender for Office 365](view-reports-for-mdo.md)

## Custom reports using Microsoft Graph

Programmatically create reports that are available in the admin center by using Microsoft Graph. For more information, see [Overview of Microsoft Graph](https://docs.microsoft.com/graph/overview) and [Working with Office 365 usage reports in Microsoft Graph](https://docs.microsoft.com/graph/api/resources/report).

## Message trace

Follows email messages as they travel through EOP. You can determine if an email message was received, rejected, deferred, or delivered by the service. It also shows what actions were taken on the message before it reached its final status.

You can use this information to efficiently answer your user's questions, troubleshoot mail flow issues, validate policy changes, and alleviates the need to contact technical support for assistance.

See [Message trace in the Security & Compliance Center](message-trace-scc.md).

## Audit logging

Tracks specific changes made by admins to your organization. These reports can help you troubleshoot configuration issues or find the cause of security or compliance-related problems. See [Auditing reports in EOP](auditing-reports-in-eop.md).

## Reporting and message trace data availability and latency

The following table describes when EOP reporting and message trace data is available and for how long.

****

|Report type|Data available for (look back period)|Latency|
|---|---|---|
|Mail protection summary reports|90 days|Message data aggregation is mostly complete within 24-48 hours. Some minor incremental aggregated changes may occur for up to 5 days.|
|Mail protection detail reports|90 days|For detail data that's less than 7 days old, data should appear within 24 hours but may not be complete until 48 hours. Some minor incremental changes may occur for up to 5 days. <p> To view detail reports for messages that are greater than 7 days old, results may take up to a few hours.|
|Message trace data|90 days|When you run a message trace for messages that are less than 7 days old, the messages should appear within 5-30 minutes.<p> When you run a message trace for messages that are greater than 7 days old, results may take up to a few hours.|
|

> [!NOTE]
> Data availability and latency is the same whether requested via the admin center or remote PowerShell.
