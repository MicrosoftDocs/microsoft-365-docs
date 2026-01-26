---
title: Agent Settings in Microsoft 365 admin center
description: Agent Settings in Microsoft 365 admin center.
#customer intent:
f1.keywords:
- NOCSH
ms.author: frankroj
author: frankroj
manager: scotv
ms.date: 01/13/2026
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
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
---

# Agent settings in Microsoft 365 admin center

The **Agent** settings page in [Microsoft 365 admin center](https://admin.microsoft.com/) provides centralized controls for managing AI agents across your organization. These settings help administrators enforce security, compliance, and governance standards while enabling flexibility for collaboration and productivity.

## Overview

The **Agent settings** page includes the following configuration options:

- **Allowed agent types** - Specify which categories of AI agents are permitted for use within the organization.

- **Sharing** - Manage who can share AI agents within your organization and define the methods they can use to share them.

- **Templates** - Create pre-set policies, rules, and allowlists for new AI agents to ensure consistency and compliance.

- **User access** - Control which users or groups can interact with AI agents, aligning access with organizational roles and permissions.

These settings allow you to customize agent behavior, control access, and maintain compliance with enterprise standards.

:::image type="content" source="../../media/agents/agent-settings.png" alt-text="Screenshot showing the Agent settings page in the Microsoft 365 admin center." lightbox="../../media/knowledge-agent-idea.png":::

## Detailed settings

### Allowed agent types

**Allowed agent types** allows control of which types of agents users can view and install from the agent catalog. You can select from the following options:

- **Allow apps and agents built by Microsoft** - Enables users to install agents created by Microsoft.

- **Allow apps and agents built by your organization** - Enables users to install custom agents developed within your tenant.

- **Allow apps and agents built by external publishers** - Enables users to install third-party agents built by external developers.

:::image type="content" source="../../media/agents/allowed-agent-types.png" alt-text="Screenshot of Allowed agent types." lightbox="../../media/knowledge-agent-idea.png":::

> [!TIP]
>
> - If you disable an option, agents of that type don't appear for users in the Agent store.
> - Agents built by Microsoft are visible to users even if the setting is disabled. Users aren't able to install those agents.

### Sharing

**Sharing** allows defining who can share agents within your organization and how sharing works.

Options include:

- **Allow all users to share with anyone in the organization** - All users can share their agents with others in your tenant.

- **No users can share with anyone in the organization** - Sharing is disabled at the org level, but users can still share directly with specific individuals.

- **Allow specific groups of users to share with anyone in the organization** - Restrict broad sharing permissions to designated groups.

Only agents built with **Copilot Studio Lite** are governed by sharing control.

:::image type="content" source="../../media/agents/sharing.png" alt-text="Screenshot of Shared settings." lightbox="../../media/knowledge-agent-idea.png":::

### Templates

To enhance governance and security for agents, you can apply a template that includes predefined policies. Microsoft offers out-of-the-box default templates that include essential security and compliance controls from Microsoft Entra, Purview, and SharePoint. For customers enrolled in the Frontier program with an active Agent 365 license, these default templates automatically assign the license, helping reduce manual license management.

> [!NOTE]
>
> As an administrator, you can choose which default template to apply based on the agent type. There are two default templates:
>
> - One for agents that allow instance creation.
> - One for agents that don't allow instance creation.
>
> When an agent is activated or published, a dropdown menu displays both Microsoft default templates. Select the desired template to apply its policies to the agent.

### User access

**User access** allows control of how members of your organization access and install agents.

> [!NOTE]
>
> As the administrator, you should use discretion when managing individual agent's distribution and costs.

To manage access to Copilot agents, follow these steps:

1. Open the [Microsoft 365 admin center](https://admin.microsoft.com/) in your browser.

1. Select **Agents** > **Settings** > **User access** to manage your organization's agents.

1. Select who can access agents within your organization.

    The setting has three options:

    - **All users** - This option is the default. It means that all users in the organization can access agents, subject to the existing app policies and user assignments.

    - **No users** - This option means that no users in the organization can access agents.

    - **Specific users/groups** - This option lets you select specific users or groups in your organization to have access to agents. While some users in your organization might have permission to install and use agents from the **Agent Registry** list, only the users or groups you select in this setting can use agents.

    > [!IMPORTANT]
    >
    > Data processed by non-Microsoft services isn't subject to Microsoft agreements. Review the terms provided by non-Microsoft agent publishers to make sure that you're familiar the agent's data handling and privacy practices. In addition, consult your internal policies before allowing access.

    :::image type="content" source="../../media/agents/user-access.png" alt-text="Screenshot of User access page." lightbox="../../media/knowledge-agent-idea.png":::

1. Select **Save** to update your Copilot agent settings for your tenant.
