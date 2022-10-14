---
title: "External recipients service alerts"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 05/31/2022
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
ms.custom: 
- admindeeplinkMAC
- admindeeplinkEXCHANGE
f1.keywords:
- NOCSH
description: "Use external recipients service alerts to monitor mailboxes on hold that are reaching their mailbox quota."
ROBOTS: NOINDEX
---

# Service alerts for messages pending delivery to external recipients in Exchange Online monitoring

The service alerts inform admins of mail queuing to external recipients outside of Exchange Online. These alerts may require remediation actions that are outside of Microsoft, but they can provide you with information needed to remediate.

These service alerts are displayed in the Microsoft 365 admin center. To view these service alerts, go to **Health** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842900" target="_blank">**Service health**</a> > **Exchange Online** and then click the **Active issues** tab. The name for these service alerts is "Message Queueing to External Recipients Above Thresholds".

![Service alert for messages pending delivery to external recipients displayed in the Exchange Online monitoring dashboard.](../media/microsoft-365-exchange-monitoring/ExternalRecipientsServiceAlerts1.png)

When you double-click the service alert, a flyout page similar to the following is displayed.

![Content in the service alert for messages pending delivery to external recipients.](../media/microsoft-365-exchange-monitoring/ExternalRecipientsServiceAlerts2.png)

## What do these service alerts indicate?

The service alerts for messages pending delivery to external recipients informs you that messages destined to recipients outside of Exchange Online may be delayed. The queueing of messages may be caused by your on-premises environment or a third-party messaging or journaling solution.

Here are some common reasons for queueing messages to external recipients. However, the issues causing these service alerts may not be limited to these reasons.

- DNS changes

- Excessive sending rates

- On-premises Message Transfer Agents (MTA) or journaling solutions with low to no free disk space

- MTAs in backpressure

- Network issues, including load balancers

- Certificate issues

Each service alert contains high-level recommendations for remediating the issue. The service alert also indicates the number of messages queued at the time of alert, the domain where the messages are queued to, and the SMTP error code associated with most of the queued messages.

For more information for determining the root cause for these service alerts, see [Mail flow intelligence in Exchange Online](../security/office-365-security/mail-flow-intelligence-in-office-365.md). This article also includes suggested actions to fix the root cause.

> [!NOTE]
> Microsoft can't account for every SMTP error code provided by third-party vendors. Therefore, admins may be required to investigate errors codes that are specific to their MTA or journaling solutions used by their organization.

## More information

If your organization has recently created or changed mail flow connectors in your on-premises or Exchange Online organization, see the following articles for more information.

- [Configure mail flow using connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow)

- [Set up connectors to route mail](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-to-route-mail)

- [Mail flow best practices](/exchange/mail-flow-best-practices/mail-flow-best-practices)

- [Mail flow insights in the Security & Compliance Center](/microsoft-365/security/office-365-security/mail-flow-insights-v2)

- [Queues insight in the Mail flow dashboard](/microsoft-365/security/office-365-security/mfi-queue-alerts-and-queues#queues-insight-in-the-mail-flow-dashboard)

- [Trace an email message in Exchange Online](/exchange/monitoring/trace-an-email-message/trace-an-email-message)
