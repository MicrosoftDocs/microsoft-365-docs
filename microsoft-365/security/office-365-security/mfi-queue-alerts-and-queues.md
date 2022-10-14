---
title: Queues insight in the Mail flow dashboard
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.custom:
ms.localizationpriority: medium
ms.assetid: 37640c80-ce6f-47e2-afd1-bc1d3c50e637
description: Admins can learn how to use the Queues widget in the Mail flow dashboard in the Security & Compliance Center to monitor unsuccessful mail flow to their on-premises or partner organizations over outbound connectors.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.collection: m365-security
search.appverid: met150
---

# Queues insight in the Security & Compliance Center

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

When messages can't be sent from your organization to your on-premises or partner email servers using connectors, the messages are queued in Microsoft 365. Common examples that cause this condition are:

- The connector is incorrectly configured.
- There have been networking or firewall changes in your on-premises environment.

Microsoft 365 will continue to retry to delivery for 24 hours. After 24 hours, the messages will expire and will be returned to the senders in non-delivery reports (also known as a NDRs or bounce messages).

If the queued email volume exceeds the pre-defined threshold (the default value is 200 messages), the information is available in the following locations:

- The **Queues** insight in the [Mail flow dashboard](mail-flow-insights-v2.md) in the [Security & Compliance Center](https://protection.office.com). For more information, see the [Queues insight in the Mail flow dashboard](#queues-insight-in-the-mail-flow-dashboard) section in this article.

- An alert is displayed in **Recent alerts** the Alerts dashboard in the [Security & Compliance Center](https://protection.office.com) (**Alerts** \> **Dashboard** or <https://protection.office.com/alertsdashboard>).

  :::image type="content" source="../../media/mfi-queued-messages-alert.png" alt-text="The Recent alerts in the Alerts dashboard in the Security & Compliance Center" lightbox="../../media/mfi-queued-messages-alert.png":::

- Admins will receive an email notification based on the configuration of the default alert policy named **Messages have been delayed**. To configure the notification settings for this alert, see the next section.

  For more information about alert policies, see [Alert policies in the Security & Compliance Center](../../compliance/alert-policies.md).

## Customize queue alerts

1. In the [Security & Compliance Center](https://protection.office.com), go to **Alerts** \> **Alert policies** or open <https://protection.office.com/alertpolicies>.

2. On the **Alert policies** page, find and select the policy named **Messages have been delayed**.

3. In the **Message have been delayed** flyout that opens, you can turn the alert on or off and configure the notification settings.

   :::image type="content" source="../../media/mfi-queued-messages-alert-policy.png" alt-text="The details of the Messages have been delayed alert" lightbox="../../media/mfi-queued-messages-alert-policy.png":::

   - **Status**: You can toggle the alert on or off.

   - **Email recipients** and **Daily notification limit**: Click **Edit** to configure the following settings:

4. To configure the notification settings, click **Edit**. In the **Edit policy** flyout that appears, configure the following settings:

   - **Send email notifications**: The default value is on.
   - **Email recipients**: The default value is **TenantAdmins**.
   - **Daily notification limit**: The default value is **No limit**.
   - **Threshold**: The default value is 200.

     :::image type="content" source="../../media/mfi-queued-messages-alert-policy-notification-settings.png" alt-text="The Notification settings in the Messages have been delayed alert" lightbox="../../media/mfi-queued-messages-alert-policy-notification-settings.png":::

5. When you're finished, click **Save** and **Close**.

## Queues insight in the Mail flow dashboard

Even if the queued message volume hasn't exceeded the threshold and generated an alert, you can still use the **Queues** insight in the [Mail flow dashboard](mail-flow-insights-v2.md) to see messages that have been queued for more than one hour, and take action before the number of queued messages becomes too large.

:::image type="content" source="../../media/mfi-queues-widget.png" alt-text="The Queues widget in the Mail flow dashboard in the Security & Compliance Center" lightbox="../../media/mfi-queues-widget.png":::

If you click the number of messages on the widget, a **Messages queued** flyout appears with the following information:

- **Number of queued messages**
- **Connector name**: Select the connector name to manage the connector in the Exchange admin center (EAC) at <https://admin.exchange.microsoft.com/#/connectors>.
- **Queue started time**
- **Oldest messages expired**
- **Destination server**
- **Last IP address**
- **Last error**
- **How to fix**: Common issues and solutions are available. If a **Fix it now** link is available, click it to fix the problem. Otherwise, click on any available links for more information about the error and possible solutions.

:::image type="content" source="../../media/mfi-queues-details.png" alt-text="The Details after clicking on the Queues insight in the Mail flow dashboard" lightbox="../../media/mfi-queues-details.png":::

The same flyout is displayed after you click **View queue** in the details of a **Messages have been delayed** alert.

:::image type="content" source="../../media/mfi-queued-messages-alert-details.png" alt-text="The details of the Messages have been delayed alert in the Security & Compliance Center" lightbox="../../media/mfi-queued-messages-alert-details.png":::

## See also

For information about other insights in the Mail flow dashboard, see [Mail flow insights in the Security & Compliance Center](mail-flow-insights-v2.md).
