---
title: "Microsoft 365 reports in the admin center - Message consumption"
ms.author: camillepack
author: efrene
manager: scotv
ms.date: 07/16/2025
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
- m365copilot
- magic-ai-copilot
ms.custom: AdminSurgePortfolio
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn about the Message consumption report in the Microsoft 365 admin center and how it helps to manage costs associated with Microsoft 365 Copilot Chat."
---

# Microsoft 365 reports in the admin center – Message consumption

The Message consumption report helps you manage metered consumption costs for Microsoft 365 Copilot Chat. This report gives you visibility into billed messages associated with your Microsoft 365 Copilot pay-as-you-go billing policies and includes key metrics such as:

- Total messages consumed
- Cumulative and daily time series
- Messages consumed per user, per agent, per billing policy, and per agent-user pair

To learn more about meters, see [Meters for Microsoft 365 Copilot pay-as-you-go for IT admins](/copilot/microsoft-365/pay-as-you-go/meters).

## How do I get to the Message consumption report?  

1. In the admin center, go to **Reports** > **Usage**.
1. Select **Microsoft 365 Copilot** to view the list of reports.
1. Select **Message consumption** from the dropdown.

## Interpret the Message consumption report

After you [set up pay-as-you-go for Microsoft 365 Copilot Chat](/copilot/microsoft-365/pay-as-you-go/setup), either in the Microsoft 365 admin center or Power Platform admin center, and enabled agent usage in your organization, you'll see a new report including metrics for messages consumed.

To help you mitigate overspending, the report includes alerts when users in your organization have consumed more than 2,000 billed messages. To learn more, see [Using agents in Microsoft 365 Copilot Chat](/copilot/agents) and the [overview on enabling agents](/microsoft-copilot-studio/requirements-messages-management), which explains how agents are billed.  

You can filter the report by different periods. The Message consumption report can be viewed over the last 7 or 30 days.

:::image type="content" source="../../media/mc-hero-metric.png" alt-text="Screenshot showing the Message consumption report page in the Microsoft 365 admin center." lightbox="../../media/mc-hero-metric.png":::

>[!NOTE]
> During the preview, the report displays a maximum of 30 days of message consumption history. In addition, usage information from before May 3, 2025 won't be available in the report.  

### Messages consumed

The **Messages consumed** metric shows the [total billed messages](/microsoft-copilot-studio/billing-licensing#billed-messages) from interactions by users in your organization who do not have a Microsoft 365 Copilot license, and are interacting with agents in Copilot Chat that spin the [Copilot Studio meter](/microsoft-copilot-studio/billing-licensing#copilot-studio-pay-as-you-go-meter) during the selected period. You can view usage within an hour from when users interact with a metered agent.  

The number of messages consumed depends on the design of the agent, how often end-users interact with it, and the features the agent uses. Each interaction with an agent might use multiple message types simultaneously. For example, an agent grounded in a tenant graph could use 12 messages (10 messages for tenant graph-grounding, and two messages for generative answers) to respond to a single complex prompt from a user.

### Alerts

The **Alert** card is visible in the report when one or more users consumed more than 3,000 messages in the past 30 days.

Select **View message consumption details** to see the user list and export it to CSV. If users have consumed 2000-3000 messages, a similar alert appears.

:::image type="content" source="../../media/mc-alert.png" alt-text="Screenshot showing the alert box that informs admins about high message consumption." lightbox="../../media/mc-alert.png":::

>[!NOTE]
> For preview, the Alerts will remain visible in the report for up to seven days and will disappear after if there are no new users who crossed the threshold.  

### View charts

You can see the following cumulative chart in this report as default view.

:::image type="content" source="../../media/mc-cumulative-chart.png" alt-text="Screenshot showing the chart with a green trend line that shows the cumulative default view for message consumption." lightbox="../../media/mc-cumulative-chart.png":::

The definition of messages consumed is the same as provided earlier.  

You can switch between the **Cumulative view** and **Daily view**.

**Cumulative view** shows you the total number of messages consumed over the selected time frame.  

**Daily view** shows you the messages consumed on a daily basis over the selected time frame.

## Message consumption details table

You can view user details, agent details, and user & agent details in the Message consumption report.

### User details

:::image type="content" source="../../media/message-consumption-user-details.png" alt-text="Screenshot showing a table for user details in the Message consumption report." lightbox="../../media/message-consumption-user-details.png":::

| Item                    | Description                                                                                      |
|-------------------------|--------------------------------------------------------------------------------------------------|
| Username                | The user's principal name.                                                                       |
| Display name            | The full name of the user.                                                                       |
| Past 7 days             | The number of messages consumed in the past seven days including today. The total messages consumed over the past seven days, including today. |
| Past 30 days            | The number of messages consumed in the past 30 days including today. The total messages consumed over the past 30 days, including today. |
| Last activity date (UTC)| The latest date the user had activity with a metered agent in Copilot chat.           |

### Agent details

:::image type="content" source="../../media/message-consumption-agent-details.png" alt-text="Screenshot showing a table for agent details in the Message consumption report." lightbox="../../media/message-consumption-agent-details.png":::

| Item                    | Description                                                                                      |
|-------------------------|--------------------------------------------------------------------------------------------------|
| Agent ID                | An agent is an element of an app. The ID is the app identifier generated by Microsoft.          |
| Agent name              | The name of the app as present in the app manifest                                               |
| Past 7 days             | The total messages consumed by users who used the agent over the past 7 days, including today. |
| Past 30 days            | The total messages consumed by users who used this agent over the past 30 days including today. |
| Last activity date (UTC)| The date when the agent was last used by users in your org who do not have Microsoft 365 Copilot license. |

### Billing Policies

:::image type="content" source="../../media/message-consumption-billing-policies.png" alt-text="Screenshot showing a table for billing policies in the Message consumption report." lightbox="../../media/message-consumption-billing-policies.png":::

| Item                    | Description                                                                                      |
|-------------------------|--------------------------------------------------------------------------------------------------|
| Billing Policy ID       | The ID is a Microsoft-generated identifier linked to the Billing policy that was created for specific users in a security group.         |
| Past 7 days             | The total messages consumed by members of the security group linked to Billing policy over the past 7 days, including today.  |
| Past 30 days            | The total messages consumed by members of the security group linked to Billing policy over the past 30 days, including today.  |
| Last activity date (UTC)| The most recent date on which a member of the security group linked to the Billing policy consumed messages.  |


### User and agent details

:::image type="content" source="../../media/message-consumption-user-agent.png" alt-text="Screenshot showing the table for user and agent details in the Message consumption report." lightbox="../../media/message-consumption-user-agent.png":::

| Item                    | Description                                                                                      |
|-------------------------|--------------------------------------------------------------------------------------------------|
| Agent ID                | An agent is an element of an app. The ID is the app identifier generated by Microsoft.          |
| Agent name              | The name of the app as present in the app manifest                                               |
| Username                | The user's principal name.                                                                       |
| Billing Policy ID       | The ID is a Microsoft-generated identifier linked to the Billing policy that was created for specific users in a security group.         |
| Past 7 days             | The total messages consumed by the user who used this agent over the past 7 days, including today                            |
| Past 30 days            | The total messages consumed by the user who used this agent over the past 30 days, including today                            |
| Last activity date (UTC)| The date when the agent was last used by users in your org who do not have Microsoft 365 Copilot license. |

> [!NOTE]
> The report shows data up to today, but doesn't automatically update if there's been recent usage. To view the latest data, manually refresh the report.

## FAQ

### Will I see consumption in this report if I configured billing policy in Power Platform admin center?  

Yes. You can set up the pay-as-you-go billing policy in the Microsoft 365 admin center or Power Platform admin center. If pay-as-you-go is configured, and users without a Microsoft 365 Copilot license use metered agents in Copilot Chat, data will appear in the report.

### What is “Last activity detected”?  

**Last activity detected** is the date and timestamp of the most recent prompt or user activity that generated the messages consumed.

### How do I find a Billing policy name from the Billing policy ID? 

1. In the Microsoft 365 admin center, go to **Copilot > Billing & usage**. 
2. On the **Billing policies** tab, select a **Billing policy** and go to **Details**.
3. You will see **Policy name** and **Billing Policy ID**.  

### How do I view the Billing policy ID if it is concealed?  

By default, the Billing Policy ID in the Message consumption report is anonymized, similar to the username and display name. Global administrators have the ability to modify settings to either reveal or conceal the Billing Policy ID. 
1. In the Microsoft 365 admin center, go to **Settings > Org Settings**, and under the **Services** tab, choose **Reports**. 
2. Select **Reports**, and un-check **Display Concealed user, group, and site names in all reports** to view the **Billing policy ID**. Then select **Save**. To conceal the Billing policy ID, simply check the setting, and save your changes. 
> [!NOTE]
> Changes to this setting affects both username, display name and Billing Policy ID.