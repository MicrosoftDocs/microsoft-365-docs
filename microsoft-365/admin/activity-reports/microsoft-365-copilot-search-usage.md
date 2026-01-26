---
title: "Microsoft 365 reports in the admin center – Copilot Search usage"
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: kols
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management
- Adm_O365
- m365copilot
ms.custom: 
- GAUpdates
search.appverid:
- BCS160
- MST160
- MET150
- MOE150
description: "Learn about search usage in Microsoft 365 Copilot and gain insights into the Microsoft 365 Copilot activity in your organization."
ms.date: 08/21/2025
---

# Microsoft 365 reports in the admin center – Copilot Search usage

> [!NOTE]
> The Copilot Search usage report is currently in public preview. Deployment processes and functionality are subject to change before this report becomes generally available. During the public preview phase, users might notice some unexpected behaviors. These observations are a normal part of the preview experience and help inform improvements before general availability.

The Microsoft 365 Copilot Search usage report provides an overview of Copilot Search usage within the Microsoft 365 Copilot app. It helps you  understand adoption and engagement trends for Copilot Search capabilities.

The Copilot Search usage report provides a detailed view of both organizational and individual user activity with Copilot Search across platforms. It includes trend charts for active usage and search activity at the organization level, and insights into each user’s search behavior during a selected timeframe. User behaviors are reflected in the report within one hour. With these insights, you can easily track Copilot Search usage trends and make informed decisions on how to drive further adoption within your organization.

## How do I get to the Copilot Search usage report?

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to the **Reports** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.
2. Expand **Microsoft 365 Copilot** to view the list of Copilot reports.
3. Select **Copilot Search**.

## Interpret the Copilot Search usage report

You can use this report to see the usage of Copilot Search in your organization.

At the top, you can filter with different timeframes. The Copilot Search usage report can be viewed over the last 7 days, 30 days, 90 days, or 180 days.

You can view several metrics for Copilot Search usage:

:::image type="content" source="../../media/copilot-search-usage-metrics.png" alt-text="Screenshot of the Copilot Search usage report.":::

The following table lists the features included for active users of Copilot Search:

|Copilot app  |Features  |What's counted as active usage  |
|---------|---------|---------|
|Microsoft 365 Copilot app     |Search         |A licensed Microsoft 365 Copilot user completes at least one of the following actions:<br><br>1. Types in a query, keyword or natural language to find information about files, people, answers and other content and lands in the results page.<br>2. Types in a query and clicks on or engages with query suggestions in the search box.<br>3. Selects an item from the options displayed in the search box dropdown list  |

To learn more about the Copilot Search feature, see [Microsoft 365 Copilot Search](/copilot/microsoft-365/microsoft-365-copilot-search).

**Active users** shows the total number of users with a Microsoft 365 Copilot license in your organization who completed a Copilot Search query within the Microsoft 365 Copilot app over the selected timeframe.

**Average daily active users** shows the average daily number of individuals who actively used Copilot Search over the selected timeframe.

**Total searches** shows the number of distinct search queries made in Copilot Search by active users in the selected timeframe, consistent with the set of behaviors summarized in the **active users** definition.

**Average searches per user** shows the average number of distinct search queries made by active users in the selected timeframe.

You can see the following trend view charts in this report as default view:

:::image type="content" source="../../media/copilot-search-usage-active-users-trend.png" alt-text="Screenshot of the Copilot Search  active users chart.":::

**Active users trend view** shows you the daily trend view of active usage of Copilot Search over the selected time frame. When you hover over a specific day on this chart, you see the total number of active users for that day. This interactive feature helps you quickly understand daily usage patterns with Copilot Search across your organization.

:::image type="content" source="../../media/copilot-search-usage-total-searches-trend.png" alt-text="Screenshot of the Copilot Search total searches chart.":::

**Total searches trend view** shows a daily trend of searches made by active users over the selected timeframe. When you hover over a specific day on this chart, you see the total number of searches for that day. This interactive feature helps you quickly understand daily engagement patterns with Copilot search across your organization.

## User activity table

|Item  |Description  |
|---------|---------|
|User ID     |The user's principal ID         |
|Display name     |The user's full name       |
|Total searches     |Total number of distinct search queries made by the active user during the selected timeframe         |
|Last activity date (UTC)     |The date on which the user was most recently active in Copilot Search         |

The User activity table includes user-level details about each active Copilot Search user, including their total searches and their last activity date in Copilot Search

To export the report data into an Excel .csv file, at the top of the table, select the ellipses and then select **Export**. This function exports the Copilot Search usage data of all users and lets you do simple sorting, filtering, and searching for further analysis.

## Display user-specific data

By default, usernames and display names in Copilot Search usage reports are anonymous. Global administrators can update the settings to reveal usernames and display names.

[!INCLUDE [global-administrator-note](../../includes/global-administrator-note.md)]

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">Org Settings</a> page. Under the **Services** tab, select **Reports**.
2. Select **Reports**, and then select the checkbox next to **Display Concealed user, group, and site names in all reports**.
3. Select **Save changes**.

## FAQ

### What user actions count as active usage of Copilot Search?

A user is considered active in Copilot Search if they have a Microsoft 365 Copilot license and perform an intentional search action using the Copilot Search feature. Simply opening the Copilot Search page doesn’t count as active usage; the user is only counted as active if they interact with the search box by submitting a query, searching for people, searching for a file, or searching for content.

### What platforms are included in Copilot Search active usage?

Copilot Search active usage includes user activity within the Microsoft 365 Copilot app across desktop, web, and mobile platforms. Any intentional search action performed on any of these platforms during the selected timeframe is counted toward active usage in the report.

### What's the scope of the user-level table?

The user-level table in the report is configured to show all users who were licensed for Microsoft 365 Copilot at any point over the past 180 days, even if the user has since had the license removed or never had any Copilot active usage.
