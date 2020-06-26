---
title: View mail flow reports in the Security & Compliance Center
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Learn how to find and use mail flow security reports for your organization. Mail flow reports are available in the Security & Compliance Center."
ms.custom:
---

# View mail flow reports in the Security & Compliance Center

In addition to the [Mail flow insights](mail-flow-insights-v2.md) that are available in the Security & Compliance Center, a variety of mail flow reports are also available to help you monitor your Microsoft 365 organization. If you have the [necessary permissions](#what-permissions-are-needed-to-view-these-reports), you can view these reports in the Security & Compliance Center at <https://office.protection.com> by going to **Reports** \> **Dashboard**. To go directly to the reports dashboard, open <https://office.protection.office.com/insightdashboard>.

![Reports dashboard in the Security & Compliance Center](../../media/6b213d34-adbb-44af-8549-be9a7e2db087.png)

## Connector report

## Exchange transport rule report

Mail flow rules (also known as transport rules)

## Forwarding report

## Sent and received email report

Although this report is primarily about spam and malware detections, it also shows the total for incoming and outgoing email. For more information, see [Sent and received email report](view-email-security-reports.md#sent-and-received-email-report).

## Top Senders and Recipients report

The **Top Senders and Recipients** report is a pie chart showing your top email senders.

To open this report directly, go to <https://protection.office.com/reportv2?id=TopSenderRecipientsATP> To view this report, in the [Security & Compliance Center](https://protection.office.com), go to **Reports** \> **Dashboard** \> **Top Senders and Recipients**.

![To view this report, in the Security & Compliance Center, go to Reports \> Dashboard \> Top Senders and Recipients](../../media/b5506b5c-2420-4a5a-9ea3-d654294ac838.png)

When you hover over a wedge in the pie chart, you can see a count of messages sent or received.

Click (or tap) the report to open it in a new browser window, where you can get a more detailed view of the report.

Use the **Show data for** list to choose whether to view data for top senders, receivers, spam recipients, and malware recipients. You can also see who received malware that was detected by [Exchange Online Protection](exchange-online-protection-overview.md).

![Use the Show Data For list to view specific information](../../media/bd91449f-7d42-4749-8666-7b44044049b8.png)

Below the chart, you'll see who the top email senders or recipients were, along with a count of messages sent or received for the given time period.



## What permissions are needed to view these reports?

To view and use the reports, you need to be a member of the specified role group in the Security & Compliance Center **and** in Exchange Online.

- In the Security & Compliance Center, you need to be a member of one of the following role groups:

  -Organization Management
  -Security Administrator (you can also do this in the [Azure Active Directory admin center](https://aad.portal.azure.com)
  -Security Reader

  For more information, see [Permissions in the Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center).

- In Exchange Online, you need to be a member of one of the following role groups:

  -Organization Management
  -View-only Organization Management
  -View-Only Recipients
  -Compliance Management

For more information, see [Permissions in Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo) and [Manage role groups in Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/role-groups).

## Related topics

[Smart reports and insights in the Security & Compliance Center](reports-and-insights-in-security-and-compliance.md)

[View email security reports in the Security & Compliance Center](view-email-security-reports.md)
