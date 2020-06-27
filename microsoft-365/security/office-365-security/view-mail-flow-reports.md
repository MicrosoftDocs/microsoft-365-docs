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

To go directly to the **Forwarding report**, open <https://protection.office.com/reportv2?id=MailFlowForwarding>

## Exchange transport rule report

Mail flow rules (also known as transport rules)

To go directly to the **Exchange transport rule report**, open <https://protection.office.com/reportv2?id=ETRRuleReport>

## Forwarding report

To go directly to the **Forwarding report**, open <https://protection.office.com/reportv2?id=MailFlowForwarding>

## Mailflow status report (**NEW!**)

The **Mailflow status report** is similar to the [Sent and received email report](#sent-and-received-email-report), with additional information about email allowed or blocked on the edge. This is the only report that contains edge protection information, and shows just how much email is blocked before being allowed into the service for evaluation by Exchange Online Protection (EOP).

To go directly to the **Mail flow status report**, open <https://protection.office.com/mailflowStatusReport>.

The **Type** view gives an overview of the total number of messages, and how many messages were filtered (or not filtered) based on the following broad category types:

- Good mail (not filtered)
- Malware
- Phishing email
- Spam
- Edge protection
- Rules (mail flow rules, also known as transport rules)

You can drill down into each individual category by going to the **Threat Protection Status report**.

![Mail flow status report by Type](../../media/mail-flow-status-type.png)

The **Direction** view organizes email by the following categories:

-Inbound
-Outbound
-Intra-org (counted separately from Inbound and Outbound)

![Mail flow status report by direction](../../media/mail-flow-status-type.png)

## Sent and received email report

The **Sent and received email** report is a smart report that shows information about incoming and outgoing email, including spam detections, malware, and email identified as "good." The difference between this report and the [Mailflow status report](#mailflow-status-report-new) is: this report doesn't include data about messages blocked by edge protection.

To go directly to the **Mail flow status report**, open <https://protection.office.com/mailflowStatusReport>.

![To view this report, in the Security & Compliance Center, go to Reports \> Dashboard \> Sent and received email](../../media/0e710ed0-1b0e-4dac-8796-94a01a710f3a.png)

When you hover over a day in the chart, you can see how many messages came in, and how those messages are categorized. For example, you can see how many messages were detected as containing malware, and how many were identified as spam.

Click (or tap) the report to open it in a new browser window, where you can get a more detailed view of the report.

You can use the **Break down by** list to view information by type or by direction (incoming and outgoing).

![Use the Break Down By list to view information by type or direction](../../media/a5b30c94-d75f-4bfc-851a-cb155685b177.png)

Below the chart, you'll see a list of email categories, such as **GoodMail**, **SpamContentFiltered**, and so on. Select a category to view additional information, such as actions that were taken for malware, and whether email was incoming or outgoing.

![This report tells you about anti-malware, anti-spam, and other message detections](../../media/9ea4b606-f27a-46ee-97a7-be018e2b839c.png)

To learn more about email intelligence, see [Mail flow intelligence in Microsoft 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/mail-flow-intelligence-in-office-365).

## Top Senders and Recipients report

The **Top Senders and Recipients** report is a pie chart showing your top email senders.

To go directly to this report, open <https://protection.office.com/reportv2?id=TopSenderRecipientsATP>.

![To view this report, in the Security & Compliance Center, go to Reports \> Dashboard \> Top Senders and Recipients](../../media/b5506b5c-2420-4a5a-9ea3-d654294ac838.png)

When you hover over a wedge in the pie chart, you can see a count of messages sent or received.

Click (or tap) the report to open it in a new browser window, where you can get a more detailed view of the report.

Use the **Show data for** list to choose whether to view data for:

- **Top mail senders**
- **Top mail recipients**
- **Top spam recipients**
- **Top malware recipients**
- **Top malware recipients (ATP)**

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
