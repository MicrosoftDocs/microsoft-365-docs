---
title: "Manage shared agents for Microsoft 365 Copilot"
description: "Manage shared agents for Microsoft 365 Copilot in the admin center. Learn how to monitor, govern, and ensure compliance for integrated applications."
#customer intent: As an admin, I want to manage shared agents for Microsoft 365 Copilot so that I can ensure compliance and security within my organization.
f1.keywords:
- NOCSH
ms.author: erikre
author: ErikRe
manager: dansimp
ms.date: 09/04/2025
ms.update-cycle: 180-days
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
- operations-pod
---

# Manage shared agents in the Microsoft 365 admin center

You can manage shared agents for Microsoft 365 Copilot on the **Agents** page in the Microsoft 365 admin center. The **Agents** page provides administrators with the tools needed to manage applications integrated into your tenant. Use this page to review app usage, manage app lifecycles, and take actions to ensure compliance and security.

When you manage shared agents for Copilot, you have visibility and control over agents that are shared within your organization. This control empowers you to monitor, govern, and act as needed.

## What's a shared agent?

Shared agents are custom versions of Microsoft 365 Copilot that combine instructions, knowledge, and skills to perform specific tasks or scenarios. Creators can create and share these agents through multiple channels, such as Microsoft Cloud Solutions (MCS), Microsoft Teams, Copilot Studio (lite), and more. Shared agents enhance the functionality of Copilot by adding search capabilities, custom actions, connectors, and APIs. For more information, see [Share agents with other users](/microsoft-copilot-studio/admin-share-bots).

As an admin, you can view shared agents on the **Agents** page in the Microsoft 365 admin center. You can see a list of all shared agents, including details such as the agent's name, creator, creation date, host products, and availability status. You can search for specific agents and manage their lifecycle, including blocking agents that are deemed unsafe or noncompliant.

For your users, shared agents are available through Copilot on different surfaces. Users can interact with these agents to perform specific tasks or get assistance based on the agent's capabilities.

## Prerequisites

To block or unblock shared agents in your organization, sign in with one of the following roles:

- AI Administrator
- Global Reader
- Exchange Administrator
- Azure Application Administrator

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Block a shared agent

Blocking shared agents is an important feature for keeping your environment secure and compliant. Block agents that are unsafe or no longer needed.

1. In the admin center, go to **Copilot** > **Agents** > **Agent inventory**.

1. Select the **Shared agents** tab and find the shared agent you want to block. You can select an agent from the list or search for an agent using relevant attributes. For example, the agent's name or the creator's name.

    :::image type="content" source="../../media/agents/agent-inventory.png" alt-text="Screenshot showing the shared agents tab outlined in the Microsoft 365 admin center." lightbox="../../media/agents/agent-inventory.png" :::

1. Choose the agent and review the details in the side pane.

1. Select **Block** to prevent further use of the agent within the tenant.

    :::image type="content" source="../../media/agents/block.png" alt-text="Screenshot showing the option to block a shared agent in the Microsoft 365 admin center." lightbox="../../media/agents/block.png" :::

Blocked agents are disabled, and users can't use blocked agents.

## Unblock a shared agent

If you need to restore access to a previously blocked agent, unblock it to allow users to use the agent again.

1. In the admin center, go to **Copilot** > **Agents** > **Agent inventory**.

1. Filter the list by **Agent type** and select the agent.

1. Select **Unblock** to restore use of the agent within the tenant.

    :::image type="content" source="../../media/agents/unblock.png" alt-text="Screenshot showing the pane to unblock a shared agent." lightbox="../../media/agents/unblock.png":::

After you unblock the agent, it restores to the most recent availability and deployment state.

## Ownerless shared agent management

Shared agents might become ownerless when the user who created them is deleted from the organization.

To help administrators manage these scenarios, the Microsoft 365 Admin Center now enables you to identify and manage ownerless shared agents. The dashboard displays the total count of such agents, a one-click filter to quickly isolate them, and real-time updates that reflect user deletions. With these features, administrators can efficiently review and address ownership gaps by blocking or deleting affected agents.

:::image type="content" source="../../media/agents/ownerless-shared-agents.png" alt-text="Screenshot showing ownerless shared agents." lightbox="../../media/agents/unblock.png":::

### Key features

- **Ownerless agent count**: Administrators can now view the total number of agents without a valid owner directly from the dashboard. For example, the dashboard shows 20 ownerless agents indicating that users who left the organization created these agents.

- **One-click filter**: Selecting the dashboard pane instantly filters the agent inventory to display only shared agents missing an owner. This feature allows for quick triage and action.

- **Real-time updates**: The ownerless agent count automatically updates when a user is hard deleted from the organization. This feature ensures that the dashboard reflects the current state without requiring manual refreshes.

### Steps to view and manage ownerless shared agents

1. In the admin center, go to **Copilot** > **Agents**.
1. Locate the **Missing an Owner** tab.
1. Select the tab to filter **Agent inventory**.
1. Review the list of ownerless agents and take appropriate actions such as blocking or deleting the agent.

## Export to Excel

Export the list of shared agents to an Excel file. This feature is essential for detailed analysis and reporting.

> [!NOTE]
> If the export process reaches one minute, the exported file includes only the data up to that point.

The exported file includes comprehensive information about each shared agent, such as:

- Name
- Host products
- Created date
- Developer name
- Description
- Status
- Version

With this information, you can efficiently manage and review the shared agents within your organization, ensuring compliance and optimizing resource allocation.
