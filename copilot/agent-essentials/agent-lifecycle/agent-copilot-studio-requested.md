---
title: Manage requested Copilot Studio agents
f1.keywords:
ms.author: erikre
author: ErikRe
manager: dansimp
ms.date: 11/12/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
description: Learn how to manage requested Copilot Studio agents.
---

# Manage requested Copilot Studio agents

Your organization can use Copilot Studio to create more advanced agents. These agents can be published to different channels within your organization, such as Microsoft 365 Copilot and Microsoft Teams. When an agent is published from Copilot Studio, the agent will be displayed in the **Requested agents** tab in the Microsoft 365 admin center.

**Applies to**:<br>
- Copilot Studio

## Requested agents pending review

When an agent is submitted for admin approval, all metadata about an agent’s definition is provided in Microsoft 365 admin center. Select the **Details** tab for the agent to better understand the agent’s capabilities, data sources, and custom actions before allowing the agent to be published to your organization.

Use the following steps to view pending agent requests and act on those requests:

1. Open Copilot Control System in [Microsoft 365 admin center](https://admin.microsoft.com/) in your browser.
2. Select **Copilot** > **Agents** > **Requested agents**.
3. Select the requested agent and view the agent’s details.<br>
   Confirm the capabilities, data sources, and custom actions that the agent can invoke.
4. Next to the name of the agent, select the action to **Publish** or **Reject** the agent.

For more information publishing requested agents, see [Publish agents](/microsoft-365-copilot/extensibility/publish).

### Publish requested agents

When you select the action to **Publish** an agent created with Copilot Studio, you can choose the scope of availability to members of your organization. You can select to make the agent available to **everyone**, **no one**, or **specific users/groups** at your organization. Once published, the agent becomes part of your organization's agent inventory in Microsoft 365. The selected members of your organization will be able to discover and use the agent in Microsoft 365 Copilot. If the maker of the agent configured the agent to deploy to Microsoft Teams, members of your organization will also be able to access the agent in Teams. The visibility of the agent (tenant-wide or limited to specific users/groups) is governed by the maker of the agent as well. 

When the agent is published, the metadata and definition details provided by the maker is now published as reference to members of your organization.

### Reject requested agents

When you select the action to **Reject** an agent created with Copilot Studio, the status of the agent in Microsoft 365 admin center is set to **Rejected**. The agent won't be published or made available to members of your organization. You can still view the agent's metadata for reconsideration or audit. The rejected agent will still be visible in the **Requested agents** list.