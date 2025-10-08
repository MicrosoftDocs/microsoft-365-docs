---
title: "Microsoft 365 reports in the admin center - Copilot credits"
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.update-cycle: 180-days
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- m365copilot
- magic-ai-copilot
- operations-pod
ms.custom:
- GAUpdates
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn about the Copilot credits consumption report in the Microsoft 365 admin center and how it helps to manage costs associated with Microsoft 365 Copilot Chat."
ms.date: 09/01/2025
---

# Microsoft 365 reports in the admin center – Copilot credits

The Copilot credits report helps you manage metered consumption costs for Microsoft 365 Copilot Chat. This report gives you visibility into credits used associated with your Microsoft 365 Copilot pay-as-you-go billing policies and includes key metrics such as:

- Total credits used
- Cumulative and daily time series
- Credits used per user, per agent, per billing policy, and per agent-user pair

To learn more about meters, see [Meters for Microsoft 365 Copilot pay-as-you-go for IT admins](/copilot/microsoft-365/pay-as-you-go/meters).

## View the Copilot credits report

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to the **Reports** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.
1. To view the list of reports, select **Microsoft 365 Copilot**, then select **Copilot credits**.

## Interpret the Copilot credits report

After you [set up pay-as-you-go for Microsoft 365 Copilot Chat](/copilot/microsoft-365/pay-as-you-go/setup), either in the Microsoft 365 admin center or the <a href="https://go.microsoft.com/fwlink/p/?linkid=2160305" target="_blank">Power Platform admin center</a>, and enabled agent usage in your organization, you see a new report that includes metrics for credits used.

To help you mitigate overspending, the report includes alerts when users in your organization have used more than 2,000 credits. To learn more, see [Using agents in Microsoft 365 Copilot Chat](/copilot/agents) and the [overview on enabling agents](/microsoft-copilot-studio/requirements-messages-management), which explains how agents are billed.  

You can filter the report by different time periods. The Copilot credits report can be viewed over the last 7 or 30 days.

:::image type="content" source="../../media/copilot-credit/copilot-credit-hero-metric.png" alt-text="Screenshot showing the Copilot credits report page in the Microsoft 365 admin center." lightbox="../../media/copilot-credit/copilot-credit-hero-metric.png":::

>[!NOTE]
> During the preview, the report displays a maximum of 30 days of Copilot credits history. In addition, usage information from before May 3, 2025 isn't available in the report.

### Credits used

The **Credits used** metric shows the [total credits used](/microsoft-copilot-studio/billing-licensing#billed-messages) from interactions by users in your organization who don't have a Microsoft 365 Copilot license, and are interacting with agents in Copilot Chat that spin the [Copilot Studio meter](/microsoft-copilot-studio/billing-licensing#copilot-studio-pay-as-you-go-meter) during the selected time period. You can view usage within an hour from when users interact with a metered agent.  

The number of credits used depends on the design of the agent, how often users interact with it, and the features the agent uses. Each interaction with an agent might use multiple message types simultaneously. For example, an agent grounded in a tenant graph could use 12 credits (10 credits for tenant graph-grounding, and two credits for generative answers) to respond to a single complex prompt from a user.

### Alerts

The **Alert** card is visible in the report when one or more users consumed more than 3,000 credits in the past 30 days.

Select **View Copilot credits details** to see the user list and export it to CSV. If users have consumed 2000-3000 credits, a similar alert appears.

:::image type="content" source="../../media/copilot-credit/copilot-credit-alert.png" alt-text="Screenshot showing the alert box that informs admins about high Copilot credits." lightbox="../../media/copilot-credit/copilot-credit-alert.png":::

>[!NOTE]
> For preview, the Alerts will remain visible in the report for up to seven days and will disappear after if there are no new users who crossed the threshold.  

### View charts

You can see the following cumulative chart in this report as default view.

:::image type="content" source="../../media/copilot-credit/copilot-credit-cumulative-chart.png" alt-text="Screenshot showing the chart with a green trend line that shows the cumulative default view for Copilot credits." lightbox="../../media/copilot-credit/copilot-credit-cumulative-chart.png":::

The definition of credits used is the same as provided earlier in this article.

You can switch between the **Cumulative view** and **Daily view**.

- **Cumulative view** shows you the total number of credits used over the selected time frame.  
- **Daily view** shows you the credits used on a daily basis over the selected time frame.

## Copilot credits details table

You can view user details, agent details, and user and agent details in the Copilot credits report.

### User details

:::image type="content" source="../../media/copilot-credit/copilot-credit-user-details.png" alt-text="Screenshot showing a table for user details in the Copilot credits report." lightbox="../../media/copilot-credit/copilot-credit-user-details.png":::

| Item                    | Description            |
|-------------------------|------------------------|
| Username                | The user's principal name. |
| Display name            | The full name of the user. |
| Past seven days             | The number of credits used in the past seven days including today. The total credits used over the past seven days, including today. |
| Past 30 days            | The number of credits used in the past 30 days including today. The total credits used over the past 30 days, including today. |
| Last activity date (UTC)| The latest date the user had activity with a metered agent in Copilot chat. |

### Agent details

:::image type="content" source="../../media/copilot-credit/copilot-credit-agent-details.png" alt-text="Screenshot showing a table for agent details in the Copilot credits report." lightbox="../../media/copilot-credit/copilot-credit-agent-details.png":::

| Item                    | Description      |
|-------------------------|------------------|
| Agent ID                | An agent is an element of an app. The ID is the app identifier generated by Microsoft. |
| Agent name              | The name of the app as present in the app manifest. |
| Past seven days             | The total credits used by users who used the agent over the past seven days, including today. |
| Past 30 days            | The total credits used by users who used this agent over the past 30 days including today. |
| Last activity date (UTC)| The date when the agent was last used by users in your org who don't have Microsoft 365 Copilot license. |

### Billing Policies

:::image type="content" source="../../media/copilot-credit/copilot-credit-billing-policies.png" alt-text="Screenshot showing a table for billing policies in the Copilot credits report." lightbox="../../media/copilot-credit/copilot-credit-billing-policies.png":::

| Item                    | Description          |
|-------------------------|----------------------|
| Billing Policy ID       | The ID is a Microsoft-generated identifier linked to the Billing policy that was created for specific users in a security group. |
| Past seven days             | The total credits used by members of the security group linked to Billing policy over the past seven days, including today. |
| Past 30 days            | The total credits used by members of the security group linked to Billing policy over the past 30 days, including today. |
| Last activity date (UTC)| The most recent date on which a member of the security group linked to the Billing policy consumed credits. |

### User and agent details

:::image type="content" source="../../media/copilot-credit/copilot-credit-user-agent.png" alt-text="Screenshot showing the table for user and agent details in the Copilot credits report." lightbox="../../media/copilot-credit/copilot-credit-user-agent.png":::

| Item                    | Description     |
|-------------------------|-----------------|
| Agent ID                | An agent is an element of an app. The ID is the app identifier generated by Microsoft. |
| Agent name              | The name of the app as present in the app manifest. |
| Username                | The user's principal name. |
| Billing Policy ID       | The ID is a Microsoft-generated identifier linked to the Billing policy that was created for specific users in a security group. |
| Past seven days         | The total credits used by the user who used this agent over the past seven days, including today. |
| Past 30 days            | The total credits used by the user who used this agent over the past 30 days, including today. |
| Last activity date (UTC)| The date when the agent was last used by users in your org who don't have Microsoft 365 Copilot license. |

> [!NOTE]
> The report shows data up to today, but doesn't automatically update if there is recent usage. To view the latest data, manually refresh the report.

## FAQ

### Will I see consumption in this report if I configured the billing policy in the Power Platform admin center?  

Yes. You can set up the pay-as-you-go billing policy in the Microsoft 365 admin center or Power Platform admin center. If pay-as-you-go is configured, and users without a Microsoft 365 Copilot license use metered agents in Copilot Chat, the data appears in the report.

### What is "Last activity detected?"

**Last activity detected** is the date and timestamp of the most recent prompt or user activity that generated the credits consumed.

### How do I find a Billing policy name from the Billing policy ID?

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to the **Copilot > Billing & usage** page.
2. On the **Billing policies** tab, select a billing policy, then go to **Details**.
3. You see the **Policy name** and **Billing Policy ID**.  

### How do I view the billing policy ID if it's concealed?  

By default, the Billing Policy ID in the Copilot credits report is anonymized, similar to the username and display name. Global administrators can modify settings to either reveal or conceal the Billing Policy ID.

[!INCLUDE [global-administrator-note](../../includes/global-administrator-note.md)]

1. In the Microsoft 365 admin center, go to the **Settings** > **Org Settings** page.
2. On the **Services** tab, select **Reports**.
3. To view the **Billing policy ID**, in the **Reports** panel, clear the **Display concealed user, group, and site names in all reports** checkbox.
4. Select **Save**.
5. To conceal the Billing policy ID, select the checkbox again, and save your changes.

> [!NOTE]
> Changes to this concealed data setting affects the username, display name, and Billing Policy ID.
