---
title: Agent Overview Page in Microsoft 365 Admin Center
description: Learn how to use the Agent overview page in the Microsoft 365 admin center to track agent adoption, manage governance, and control agent availability across your tenant.
#customer intent: As an IT admin, I want to manage agents for Microsoft 365 Copilot so that I can control their availability and functionality within my organization.
f1.keywords:
- NOCSH
ms.author: frankroj
author: frankroj
manager: scotv
ms.date: 03/11/2026
ms.update-cycle: 180-days
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.subservice: agent-management
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- m365copilot
- magic-ai-copilot
- operations-pod
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
---

# Agent overview page in the Microsoft 365 admin center

This article explains what insights are available on the Agent overview page and how admins use them to monitor adoption and governance. The **Agent overview** page in the [Microsoft 365 admin center](https://admin.microsoft.com/) serves as the control plane for all agents. It provides IT administrators with a centralized dashboard to:

- Track agent adoption and usage trends.
- Identify alerts and governance gaps.
- Enable visibility and control across all agents in the tenant.

You can access the **Agent overview** page using the following steps:

1. Sign in to the [Microsoft 365 admin center](https://admin.cloud.microsoft/).

1. From the left navigation bar, select **… Show all**, and then select **Agents** to expand it.

1. Under **Agents**, select [**Overview**](https://admin.cloud.microsoft/?#/agents/overview).

You can also access the **Agent overview** page by using **AI home page** > **View in Agent overview**.

## Key features of the Agent overview page

- Provides a snapshot of agent health and actionable insights for the last 30 days.

- Highlights critical actions for administrators, such as:

  - Approve pending requests.
  - Manage agents with alerts.
  - Exceptions.

- Surfaces governance signals to maintain compliance and reduce risk.

- Enables quick navigation to the **All agent** page.

## Hero metrics for agent adoption and impact

Hero metrics provides a high-level summary of the most critical indicators of agent adoption and impact. These metrics give administrators an immediate sense of scale, engagement, and business value.

**Agent Registry** - The total count of all agents available in your organization's catalog, including Microsoft-built, partner-built, and custom (LOB) agents. This Agent Registry reflects the breadth of automation capabilities deployed across your tenant. In the **Agent overview** page, you can select **Explore All agents** > **Registry** to view your inventory in detail.

- **Active users** - The number of unique users who interacted with at least one agent within last 30 days. If a user interacts at least once with one agent in the last 30 days, they're considered an active user.

- **Total sessions** - The count of complete agent invocations in which the agent performed a task, answered a query, or completed an interaction during the past 30 days.

- **Exception rate** - Percentage of agent sessions in the last 30 days that completed without errors, meaning the agent finished the intended task.

- **Agent Runtime** - Total agent assisted time over the past 30 days, calculated as the sum of each agent session's duration (end time minus start time).

**Active users**, **Total sessions**, **Exception rate**, and **Agent Runtime** currently support the following agent types:

- Microsoft 365 Copilot Agent Builder.
- SharePoint.
- Microsoft 365 Agents Toolkit.
- Agents integrated with the [Agent 365 Observability SDK](/microsoft-agent-365/admin/monitor-agents).

Customers enrolled in the [Agent 365 Frontier preview program](https://adoption.microsoft.com/copilot/frontier-program/) can access these metrics.

## Agent Analytics

Get detailed insights into how agents are distributed and used. This information helps administrators understand adoption patterns and optimize resources.

- **Agents by Publishers** - View a breakdown of all agents in your inventory by their source of publisher, such as who created and shared the agent. There are two categories:

  - **Created by your organization** - Agents that your organization created and published. These agents can be shared by the creator or used only by the creator.

  - **Created by external partners** - Agents created by external partners.

- **Agents by Platforms** - See which creation platforms are most used for building agents. For example:

  - M365 Copilot Agent Builder.
  - M365 Agents Toolkit.
  - Copilot Studio.
  - Microsoft Foundry.
  - Any external partner platforms.

- **Active Users Over Time** - View a trend chart that shows daily active user engagement with agents over the past 30 days. This chart reveals adoption momentum and helps you spot usage spikes or declines.

## Top governance actions for administrators

View actionable governance cards that display urgent tasks for administrators to maintain compliance and improve adoption. These cards help administrators quickly identify and resolve governance gaps.

- **Pending Requests for Agents** - See the total number of agent requests awaiting admin approval within the last 30 days. The card lists the three oldest pending requests, prioritized by oldest first. It also displays the delta badge next to the key metric to highlight week-over-week change in the total requests.

    To take immediate action, select the **Manage requests** button on the card. This selection navigates to the **Agent Registry** > **Requests** tab. This tab lists all pending agent requests submitted by users within your organization.

- **Ownerless Agents** - View the total number of agents without an assigned owner and still pending owner assignment.

    You can directly select the **Assign Owner** button. The **Assign Owner** button goes to the **Agent Registry** > **Ownerless Agents** filter, showing agents without an assigned owner.
