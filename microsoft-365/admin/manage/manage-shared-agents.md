---
title: "Manage shared agents for Microsoft 365 Copilot"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 02/26/2025
audience: Admin
ms.topic: concept-article
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
description: "Learn how to manage shared agents for Microsoft 365 Copilot in the Microsoft 365 admin center."
---

# Manage shared agents in the Microsoft 365 admin center

You can manage shared agents for Microsoft 365 Copilot on the Integrated apps page in the Microsoft 365 admin center. The Integrated apps page provides administrators with the tools you need to manage applications integrated into your tenant. You can use this page to review app usage, manage app lifecycles, and take actions to ensure compliance and security.

When managing shared agents for Copilot, you have visibility and control over agents that are shared within your organization, empowering you to monitor, govern, and act as needed.

## What is a shared agent?

Shared agents are custom versions of Microsoft 365 Copilot that combine instructions, knowledge, and skills to perform specific tasks or scenarios. These agents can be created and shared by creators through multiple channels, such as Microsoft Cloud Solutions (MCS), Microsoft Teams, Agent Builder, and more. Shared agents enhance the functionality of Copilot by adding search capabilities, custom actions, connectors, and APIs. To learn more, see [Share agents with other users](/microsoft-copilot-studio/admin-share-bots).

As an admin, you can view shared agents on the Integrated apps page In the Microsoft 365 admin center. You can see a list of all shared agents, including details such as the agent's name, creator, creation date, host products, and availability status. You can search for specific agents and manage their lifecycle, including blocking agents that are deemed unsafe or noncompliant.

For your users, shared agents are available through Copilot on different surfaces. Users can interact with these agents to perform specific tasks or get assistance based on the agent's capabilities.

## Prerequisites

As an admin, you can block or unblock shared agents in your organization. To do this, you must sign in with one of the following roles:

- Global Administrator
- AI Administrator
- Global Reader
- Exchange Administrator
- Azure Application Administrator

## How to block a shared agent

Blocking shared agents is a critical feature for ensuring security and compliance. You can block agents that are unsafe or no longer needed.

### Steps to block

1. Navigate to the **Integrated apps** page in the Microsoft 365 admin center.
2. Select the **Shared agents** tab and find the shared agent you want to block. You can select an agent from the list, or search for an agent using relevant attributes, such as the agent's name or the creator's name.

    :::image type="content" source="../../media/shared-agents-tab.png" alt-text="Screenshot showing the shared agents tab outlined in the Microsoft 365 admin center." lightbox="../../media/shared-agents-tab.png" :::

3. Choose the agent and review details in the side pane.
4. Select **Block** to prevent further use of the agent within the tenant.

    :::image type="content" source="../../media/shared-agents-block.png" alt-text="Screenshot showing the option to block a shared agent in the Microsoft 365 admin center." lightbox="../../media/shared-agents-block.png" :::

Blocked agents are disabled, and users won’t be able to use blocked agents.

## How to unblock a shared agent

If you need to restore access to a previously blocked agent, you can unblock it to allow users to use the agent again.

### Steps to unblock

1. Navigate to the **Integrated apps** page in the Microsoft 365 admin center.
2. Select the **Shared agents** tab and locate the shared agent you want to unblock.
3. Select **Unblock** to restore use of the agent within the tenant.

    :::image type="content" source="../../media/shared-agents-unblock.png" alt-text="Screenshot showing the pane to unblock a shared agent." lightbox="../../media/shared-agents-unblock.png":::

After the agent is unblocked, it’ll be restored to the most recent availability and deployment state.

## Export to Excel

You can export the list of shared agents to an Excel file. This is essential for detailed analysis and reporting. The exported file includes comprehensive information about each shared agent, such as:

- Name
- Host products
- Created date
- Developer name
- Description
- Status
- Version

This enables you to efficiently manage and review the shared agents within your organization, ensuring compliance and optimizing resource allocation.
