---
title: "Agent usage in Microsoft 365 Copilot"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 10/02/2024
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
description: "Learn about agent usage in Microsoft 365 copilot and gain insights into the Microsoft 365 Copilot activity in your organization."
---

# Microsoft 365 reports in the admin center – Agent usage in Microsoft 365 Copilot

In the Microsoft 365 Copilot agent usage report, you can view the adoption of agents in Microsoft 365 Copilot in your org. For agent activity on a given day, the report becomes available within 72 hours of the end of that day (in UTC).

> [!NOTE]
> The report is currently limited to agents built by your org through Microsoft Copilot Studio or Teams Toolkit (including admin-approved agents and agents created by users through agent builder). The report captures usage of agents in Microsoft 365 Copilot Chat (work) and Copilot in Word and PowerPoint. SharePoint agents and agents built by Microsoft and Microsoft partners are not yet included but will be added at a later date.

## How do I get to the agent usage in Microsoft 365 Copilot report?

1. In the admin center, go to Reports > Usage.
1. Select the Microsoft 365 Copilot page.
1. Select the Agent tab to view adoption and usage metrics.

## Interpret the Microsoft 365 Copilot agent report

You can use this report to see the usage of Copilot agents in your organization that were built by your organization and include agents that are approved by an admin and agents created via agent builder and shared with users in your org. Admins can manage agents in the same way as they manage any other app in the Integrated apps section of the Microsoft 365 admin center. Learn more in [Manage Copilot agents in Integrated Apps](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps).

At the top, you can filter by different periods. The Microsoft 365 Copilot agent report can be viewed over the last 7 days, 30 days, 90 days, or 180 days:

> [!NOTE]
> Copilot agent data is only available starting Nov 1, 2024.

:::image type="content" source="../../media/agents-hero-metrics.png" alt-text="Screenshot showing the active agents metrics for Microsoft 365 Copilot.":::

**Active agents** shows the distinct number of apps with a declarative agent element in that app with at least one active user over the selected time period. For more information, see [Declarative agents FAQ](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps). As defined earlier, only agents that have been created by your org including both admin approved and shared by users in your org are included.  

End-users interact with agents in two ways: either by at-mentioning the agent in a chat experience or by selecting the agent from the right-side panel in Copilot Chat or from the hamburger menu on the top left corner in Copilot in Word or PowerPoint. An active user of an agent is a user who sends a prompt request to an agent and receives a response.

In Recommendations, the recommended action card suggests that admins visit the Integrated apps section of the Microsoft 365 admin center to explore and enable additional agents for users in their org.

:::image type="content" source="../../media/agents-recommendation.png" alt-text="Screenshot showing the recommendation card for the Microsoft 365 Copilot usage report." lightbox="../../media/agents-recommendation.png":::

To learn more about managing and enabling agents in your org, see [Manage Copilot agents in Integrated Apps](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps).

You can see the following summary charts in this report as default view:

:::image type="content" source="../../media/agents-summary.png" alt-text="Screenshot showing the summary chart for agent usage in Microsoft 365 Copilot." lightbox="../../media/agents-summary.png":::

The definition of active agents is the same as provided earlier.

You can switch between Summary view and Trend view.

**Summary view** shows you the total number of agents that were actively used over the selected time frame.

**Trend view** shows you the count of active agents on a daily basis over the selected time frame.

:::image type="content" source="../../media/agents-trend-chart.png" alt-text="Screenshot showing the trend chart for agent usage in Microsoft 365 Copilot." lightbox="../../media/agents-trend-chart.png":::

## Agent details table

:::image type="content" source="../../media/agents-details.png" alt-text="Screenshot showing the detail table for agent usage in Microsoft 365 Copilot." lightbox="../../media/agents-details.png":::

| Item | Description |
| --- | --- |
| Agent ID | An agent is an element of an app. The ID is the app identifier as present in the app manifest. |
| Agent name | The name of the app as present in the app manifest. |
| Active users in Copilot | The number of distinct users in your organization that are using the agent. |
| Last activity date (UTC) | The date when that agent was last used by anyone in your organization. |

> [!NOTE]
> Due to system limitations, the Agents details table only displays admin-approved agents. Agents created and shared via Agent Builder are not yet included in the table, although usage of these agents does count towards the aggregated metrics displayed above the details section.

## FAQ

### Are agents created from Microsoft Copilot Studio and Teams Toolkit included?  

Yes. These are the agents that usage is reported for:

- Agents created in Microsoft Copilot studio by users in your org and approved by admin.
- Agents created in Teams Toolkit by users in your org and approved by admin.
- Agents created by users through [agent builder](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder) for users that have this feature enabled and shared with other users in your org.

### Are agents published by Microsoft or Microsoft Partners included?

No. Currently, the report does not include the usage of agents built by Microsoft or Partners.  

### Why am I not seeing all the active agents in the Agent details table?  

Due to system limitations, information about agents created by users through [agent builder](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder) is not currently displayed in the details table. However, usage of these agents is included in the aggregated metrics above the table.

### How can I see which users actively used specific agents?

This information is not available in the report at this time, but may be added at a later date.  

### How does agent usage impact overall Microsoft 365 Copilot usage?

Agent usage is already included in the top-line Microsoft 365 Copilot usage number, as agents can only be used via Copilot Chat and Copilot in Office apps. Usage of these apps is already captured in the all-up Microsoft 365 Copilot usage report, which includes data for all features and functionalities of Copilot.
