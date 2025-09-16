---
title: "Microsoft 365 reports in the admin center – Agent usage"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 08/26/2025
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
search.appverid:
- BCS160
- MST160
- MET150
- MOE150
description: "Learn about agent usage in your Microsoft 365 environment and gain insights into the activity in your organization."
---

# Microsoft 365 reports in the admin center – Agent usage 
The Agent usage report helps you track how agents are being used in Microsoft 365 Copilot Chat and Microsoft 365 apps –Word, Excel, and PowerPoint. You can see which agents (built by your org, Microsoft and Microsoft Partners) are being used by both licensed and unlicensed Microsoft 365 Copilot users. 

You can view usage within an hour from when users interact with agents, and the report includes key metrics such as: 
- Total active users and agents
- Summary and daily time series
- Active usage per user, per agent and per agent-user pair 

> [!NOTE]
> Currently, this report only includes declarative agents. Usage data for SharePoint agents and custom engine agents will be available in a future update. 

## How do I get to the Agent Usage report?

1. In the admin center, go to **Reports** > **Usage**.
1. Select **Microsoft 365 Copilot** to view the list of reports. 
1. Select **Agents** from the drop-down menu.

## Interpret the Agent Usage report

You can use this report to see the usage of Microsoft 365 Copilot agents in your organization that were built by Microsoft, Microsoft Partners, and built by your organization. These agents include those that are approved by an admin and agents created via agent builder and shared with users in your org. Admins can manage agents in the same way as they manage any other app in the Copilot Control system section of the Microsoft 365 admin center. Learn more in [Manage agents for Microsoft 365 Copilot in the Microsoft 365 admin center](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps).  

At the top of the report, you can filter by different periods. The agent report can be viewed over the last 7 days, 30 days.

> [!NOTE]
> The data in the Agent usage preview report is available starting August 19, 2025.

:::image type="content" source="../../media/agent-filters-and-metrics.png" alt-text="Screenshot showing the active agents metrics for Microsoft 365 Copilot.":::

**Total active users** shows you how many unique users in your organization—whether they have a Microsoft 365 Copilot license or not—used agents in Microsoft 365 Copilot Chat during the selected time period. This includes agents created by your organization, Microsoft, or Microsoft partners. 

**Active users (licensed)** shows you how many unique users in your org who had a Microsoft 365 Copilot license used agents in Microsoft 365 Copilot Chat during the selected time period. 

**Active users (unlicensed)** shows you how many unique users in your org, who did not have a Microsoft 365 Copilot license and used agents in Microsoft 365 Copilot Chat during the selected time period.  

**Total active agents** shows you how many unique apps with a declarative agent element in that app with at least one active user over the selected time period (see [Declarative agents FAQ](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps)). This includes agents that have been created by your org including both admin approved and shared by users in your org are included, Microsoft built agents and agents built by Microsoft partners. 

End-users interact with agents in two ways: either by at-mentioning the agent in a chat experience or by selecting the agent from the left-side panel in Microsoft 365 Copilot Chat or from the hamburger menu on the top left corner in Microsoft 365 Copilot in Word, Excel or PowerPoint. An active user of an agent is a user who sends a prompt request to an agent and receives a response. 

To learn more about managing and enabling agents in your org, see [Manage agents for Microsoft 365 Copilot in the Microsoft 365 admin center](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps). 

You can see the following summary charts in this report as default view: 

### By License type
 
:::image type="content" source="../../media/license-type-summary-chart.png" alt-text="Screenshot showing the summary chart for agent usage by license type." lightbox="../../media/license-type-summary-chart.png":::

The definition of active users (licensed and unlicensed) is the same as provided earlier.  

You can switch between Summary view and Trend view.

**Summary view** shows you how many users with a Microsoft 365 Copilot license used agents compared with users who do not have a Microsoft 365 Copilot license, over the selected time frame.

**Trend view** shows you daily agent usage over the selected time frame, comparing how many users with a Microsoft 365 Copilot license used agents compare with users who do not have a Microsoft 365 Copilot license, over the selected time frame.

:::image type="content" source="../../media/license-type-line-chart.png" alt-text="Screenshot showing the trend chart for agent usage by license type in Microsoft 365 Copilot." lightbox="../../media/license-type-line-chart.png":::

### By Creator type

#### Users by creator type

Shows how many users actively used an agent grouped by who created the agent.

:::image type="content" source="../../media/users-by-creator-type-summary.png" alt-text="Screenshot showing the summary of active users of agents for a select time period." lightbox="../../media/users-by-creator-type-summary.png":::

The definition of active users is the same as provided earlier. The **Creator type** tells you who built the agent and there are 4 different types, described in the table: 

| Creator type value | Description |
| --- | --- |
| User | Agents created by individuals in your organization using tools like [agent builder](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder). These agents are not listed in the organization-wide catalog but can be used by users for themselves or shared via a link with others in the same organization. |
| Your org  | Agents created by individuals in your organization using tools like [Microsoft 365 Agents Toolkit](/microsoft-365/developer/overview-m365-agents-toolkit), or [Microsoft Copilot Studio](/microsoft-copilot-studio/fundamentals-what-is-copilot-studio), and admin-approved for broader use across your org. |
| Microsoft  | Agents built by Microsoft  |
| Microsoft partner  | Agent built by Microsoft partners and admin-approved for use in your org.   |
| Any | The agent is any of the listed creator types, such as User, Your org, Microsoft, or Microsoft Partner.  |

You can switch between Summary view and Trend view. 

**Summary view** shows you how many users used an agent where the agent was one of the Creator types described above, regardless of whether the user had a Microsoft 365 Copilot license, over the selected time frame.  

**Trend view** shows you daily usage of agents– how many users used an agent each day where the agent was one of the Creator types described above, regardless of whether the user had a Microsoft 365 Copilot license, over the selected time frame. 

:::image type="content" source="../../media/users-by-creator-type-line-chart.png" alt-text="Screenshot showing the trend chart for number of active users by creator type for a selected time period." lightbox="../../media/users-by-creator-type-line-chart.png":::

#### Agents by creator type

Shows how many agents were used by users in your organization, grouped by who created the agent.

:::image type="content" source="../../media/agents-by-creator-type-summary.png" alt-text="Screenshot showing the summary chart for the number of active agents by creator type for a select period." lightbox="../../media/agents-by-creator-type-summary.png":::

The definition of **active agents** and **Creator type** is the same as provided earlier. 

You can switch between Summary view and Trend view. 

**Summary view** shows you how many agents were used by users in your org where the agent was one of the Creator types described earlier, regardless of whether the users had a Microsoft 365 Copilot license, over the selected time frame. 

**Trend view** shows you daily usage of agents– how many agent were used by users in your org each day where the agent was one of the Creator types described earlier, regardless of whether the user had a Microsoft 365 Copilot license, over the selected time frame. 

:::image type="content" source="../../media/agents-by-creator-type-line-chart.png" alt-text="Screenshot showing the trend chart for number of active agents by creator type for a selected time period." lightbox="../../media/agents-by-creator-type-line-chart.png":::

## User details table

:::image type="content" source="../../media/user-details-table.png" alt-text="Screenshot showing the details table for agent users in Microsoft 365 Copilot" lightbox="../../media/user-details-table.png":::

| Item | Description |
| --- | --- |
| Username | The user's principal name. |
| Display name | The full name of the user.  |
| Number of agents used  | The number of distinct agents used by the user for the time period selected.  |
| Agent responses received  | Total responses from all agents used during the time period selected.   |
| Last activity date (UTC)  | The most recent date the user used an agent, regardless of the selected time period of past 7 or 30 days.   |

## Agent details table

:::image type="content" source="../../media/agent-details-table.png" alt-text="Screenshot showing the details table for agent usage in Microsoft 365 Copilot." lightbox="../../media/agent-details-table.png":::

| Item | Description |
| --- | --- |
| Agent ID | An agent is an element of an app. The ID is the app identifier generated by Microsoft.|
| Agent name | The name of the app as present in the app manifest.  |
| Creator type | Indicates who built the agent. Here are definition of the values:<br> - **User** are agents created by individuals in your organization using tools like [agent builder](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder). These agents are not listed in the organization-wide catalog but can be used by users for themselves or shared via a link with others in the same organization.<br> -**Your org** are agents created by individuals in your organization using tools like [Microsoft 365 Agents Toolkit](/microsoft-365/developer/overview-m365-agents-toolkit), [Microsoft Copilot Studio](/microsoft-copilot-studio/fundamentals-what-is-copilot-studio), and admin-approved for broader use across your org.<br> -**Microsoft** are agents built by Microsoft.<br> -**Microsoft partner** are agent built by Microsoft partners and admin-approved for use in your org.<br> -**Any** are agents from any of the listed creator types. |
| Active users (licensed)   | The number of unique users in your org with a Microsoft 365 Copilot license who used the agent for the time period selected.  |
| Active users (unlicensed)  | The number of unique users in your org without a Microsoft 365 Copilot license who used the agent for the time period selected.   |
| Responses sent to users   | The total agent responses sent to all users during the selected period.  |
| Last activity date (UTC)  | The date when the agent was last used by anyone in your organization.  |

## Users and agent details table

:::image type="content" source="../../media/user-and-agent-details-table.png" alt-text="Screenshot showing the details table for agents and users in Microsoft 365 Copilot." lightbox="../../media/user-and-agent-details-table.png":::

| Item | Description |
| --- | --- |
| Agent ID | An agent is an element of an app. The ID is the app identifier generated by Microsoft.|
| Agent name | The name of the app as present in the app manifest.  |
| Creator type | Indicates who built the agent. Here are definition of the values:<br> - **User** are agents created by individuals in your organization using tools like [agent builder](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder). These agents are not listed in the organization-wide catalog but can be used by users for themselves or shared via a link with others in the same organization.<br> -**Your org** are agents created by individuals in your organization using tools like [Microsoft 365 Agents Toolkit](/microsoft-365/developer/overview-m365-agents-toolkit), [Microsoft Copilot Studio](/microsoft-copilot-studio/fundamentals-what-is-copilot-studio), and admin-approved for broader use across your org.<br> -**Microsoft** are agents built by Microsoft.<br> -**Microsoft partner** are agent built by Microsoft partners and admin-approved for use in your org.<br> -**Any** are agents from any of the listed creator types.  |
| Username | The user's principal name.  |
| Responses sent to users   | The total agent responses sent to all users during the selected period.  |
| Last activity date (UTC)  | The date when the agent was last used by anyone in your organization.  |

## FAQ

### What is the difference between the agent report and [Agent usage in Microsoft 365 Copilot](/microsoft-365/admin/activity-reports/microsoft-365-copilot-agents) and which should I use?  

The new Agent usage report gives a broader view than the one in Microsoft 365 Copilot. While the original report only includes agents built by your organization or users (using Agent Builder) and only for licensed Copilot users, the new report includes usage by both licensed and unlicensed users and covers all agent creators—including Microsoft and Microsoft partners as well including line level details at per-user, per-agent and per-user and agent level. Over time, this new report will replace the current Agent usage report in Microsoft 365 Copilot. 

### Why does this report only show past 7 and 30 days, while other usage reports also show past 90 and 180 days?

The agent report is in Preview and does not yet include past 90 and 180 days but will be added at a later date. 

### What is “Last activity detected”? 

Last activity detected shows the most recent date and timestamp (in UTC) when there was user activity that generated agent usage.  

### Are agents created from Microsoft Copilot Studio and Teams Toolkit included?  

Yes. These are the agents that usage is reported for:

- Agents created in Microsoft Copilot studio by users in your org and approved by an admin.
- Agents created in Teams Toolkit by users in your org and approved by an admin.
- Agents created by users through [agent builder](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder) for users that have this feature enabled and shared with other users in your org.

### Why is the total active user count less than the sum of licensed and unlicensed active users? 

The sum of Active users (unlicensed) and Active users (licensed) may exceed the total active users if licenses were assigned to users or removed during the selected timeframe. 


### How do I view the Username or Display name if it is concealed? 

By default, the Username and Display name in the usage report is anonymized. Global administrators have the ability to modify settings to either reveal or conceal these values. 

1. In the Microsoft 365 admin center, go to **Settings > Org Settings**, and under the **Services** tab, select **Reports**.
2. Select **Reports**, and un-check **Display Concealed user, group, and site names in all reports** to view the Username and Displayname. Then select **Save**. To conceal the Username and Display name, simply check the setting, and save your changes. 