---
title: "Manage pinning agents for Microsoft 365 Copilot in the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: smbhardwaj
author: smritib17
manager: dansimp
ms.date: 09/10/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- m365copilot
- magic-ai-copilot
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to manage pinning of agents for Microsoft 365 Copilot in the Microsoft 365 admin center."
---

# Manage Pinning of Agents

>[!NOTE]
>
> - After pinning an Agent, it may take up to six hours for end-users to see it as pinned.
>
> - This article is intended for IT administrators.

This article explains how administrators can pin, unpin, or manage agents for everyone or specific groups using Microsoft 365 admin center. It also covers related actions like ranking the list of pinned agents and editing the scope of pinned agents.

Pinning agents is a feature that enables administrators to preselect and pin agents for end-users using Microsoft 365 Copilot. The administrator pins the agent to ensure that it is automatically listed in the end user's Copilot interface without requiring any user action. The agent is now readily accessible to the user in the Copilot interface.

## Prerequisites

### For end users

- Microsoft 365 work account
- Access to Microsoft 365 Copilot Chat (via Teams, web, or the Microsoft 365 Copilot app)
- The agent you want to pin must be discoverable to you

### For administrators

- Global Administrator
- AI Administrator
- Access to Microsoft 365 admin center
- (Optional) Power Platform admin center access if you use Pay-as-you-go for agents

## Pinned agents

:::image type="content" source="../../media/manage-pinning-agents/copilot-chat-pinned-agents.png" alt-text="Screenshot showing the pinned agents in Microsoft 365 Copilot chat." lightbox="../../media/manage-pinning-agents/copilot-chat-pinned-agents.png":::

### Microsoft-pinned agents

- These are agents that Microsoft pins by default for all users.
- Purpose: Ensure essential or high-value agents (like core Copilot features) are always visible.
- End users **cannot unpin** these agents. They're fixed in the pinned list.

### Administrator-pinned agents

- Pinned by your organization's administrator through the Microsoft 365 admin center.
- Scope: Can be pinned for **All users** or for **specific groups or for specific users**.
- End users usually **cannot unpin** these agents either. They're fixed in the pinned list.

### User-pinned agents

- Pinned by individual users in their own Microsoft 365 Copilot Chat experience.
- Users can:
  - Pin agents they frequently use.
  - Unpin them anytime.
- This list is fully under the user's control, except for Microsoft-pinned or administrator-pinned agents, which remain locked.

## Features

- Administrator-pinned agents appear by default for end-users, making them easier to discover and helping highlight new or important agents.
- Administrators can view the Microsoft-pinned agents in Microsoft 365 admin center.
- Administrators can pin up to three agents in Microsoft 365 admin center for end-users using Microsoft 365 Copilot in the organization.
- Administrators can choose to pin an agent for all users in the tenant or for specific users/groups. For example:
  - Pin **Sales Coach** agent only for the sales department.
  - Pin **HR Q&A** agent for all employees.
- The end-user cannot unpin the Administrator-pinned and Microsoft-pinned agents.

## How to pin agents

1. In the Microsoft 365 Admin Center, navigate to **Copilot > Agents** by expanding Copilot in the left navigation.
2. In the **Agents** page, select **Manage pinned agents** icon.
  :::image type="content" source="../../media/manage-pinning-agents/manage-pinned-agents.png" alt-text="Screenshot showing the Agents page in the Microsoft 365 admin center." lightbox="../../media/manage-pinning-agents/manage-pinned-agents.png":::

### View Microsoft-pinned agents and administrator-pinned agents

1. In the right pane, you can view the Microsoft-pinned agents in the **Pinned by Microsoft** list view. Initially, there are no agents in the **pinned by your org** section.
2. Select  **Pin agents** to pin new agents.
  :::image type="content" source="../../media/manage-pinning-agents/pin-agents.png" alt-text="Screenshot showing the Pin agents button in the Microsoft 365 admin center." lightbox="../../media/manage-pinning-agents/pin-agents.png":::

### Locate the agent to pin

1. From the list of agents, find the agent you want to pin. You can search from the list to find a specific agent by name.
  :::image type="content" source="../../media/manage-pinning-agents/select-an-agent.png" alt-text="Screenshot showing a list of agents that you can select from in the Microsoft 365 admin center." lightbox="../../media/manage-pinning-agents/select-an-agent.png":::
2. Select **Next**.

### Choose the scope of pinning

1. You can choose the scope for the agent that you want to pin.
  
   - **Everyone (All Users):** Pin the agent for all users that the agent is deployed to in the tenant.
   - **Specific Groups or Users:** Pin for one or more groups or individual accounts.

   :::image type="content" source="../../media/manage-pinning-agents/scope-agent.png" alt-text="Screenshot showing the scope selection for pinning agents in the Microsoft 365 admin center." lightbox="../../media/manage-pinning-agents/scope-agent.png":::

2. If you choose to select **Specific Groups or Users**, you can then select the specific users or groups to pin the agent.

   :::image type="content" source="../../media/manage-pinning-agents/choose-specific-users-groups.png" alt-text="Screenshot showing a list of users or groups that you can select from in the Microsoft 365 admin center." lightbox="../../media/manage-pinning-agents/choose-specific-users-groups.png":::

3. Select **Save**, to save the details.

### Review and finish

1. Select **Review & Finish**.
2. After you save the configuration, the system records which agent is pinned for the selected audience.
   :::image type="content" source="../../media/manage-pinning-agents/pinned-agents.png" alt-text="Screenshot showing all the pinned agents in the Microsoft 365 admin center." lightbox="../../media/manage-pinning-agents/pinned-agents.png":::

## Can you pin any agent?

Only deployed agents can be pinned. If the agent isn't deployed, you see a banner with a message to first deploy the agent.
  :::image type="content" source="../../media/manage-pinning-agents/deploy-agents.png" alt-text="Screenshot a message to first deploy the agent." lightbox="../../media/manage-pinning-agents/deploy-agents.png":::

If the agent is blocked, you must first unblock the agent before you can pin it.
  :::image type="content" source="../../media/manage-pinning-agents/unblock-agent.png" alt-text="Screenshot a message to first unblock the agent." lightbox="../../media/manage-pinning-agents/unblock-agent.png":::

## Rank the list of pinned agents

- The administrator has three slots reserved for the pinned agents for each user.
- The administrator can use the **Move up** and **Move down** buttons to  reorder the list of pinned agents by priority to control what is shown to the user.

## How to unpin an agent

From the list of pinned agents, locate the agent that you want to unpin and select **Unpin**. When you remove the pin, the agent is no longer available under the **Pinned by your org** section.

## How to edit the pinning scope of an agent

Select the agent and choose **Edit users** to modify the scope of users for which an agent is pinned.

  :::image type="content" source="../../media/manage-pinning-agents/edit-user.png" alt-text="Screenshot showing the edit user option for pinning agents in the Microsoft 365 admin center." lightbox="../../media/manage-pinning-agents/edit-user.png":::

## Alternate entry point for pinning

You can also pin an agent from the agent details pane. Select the pin for the user icon. The icon is only enabled if the agent is deployed.

  :::image type="content" source="../../media/manage-pinning-agents/agent-details.png" alt-text="Screenshot showing the agent details pane in the Microsoft 365 admin center." lightbox="../../media/manage-pinning-agents/agent-details.png":::
