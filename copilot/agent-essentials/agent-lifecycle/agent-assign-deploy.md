---
title: Deploy agents for Microsoft 365 Copilot
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
description: Learn how to deploy agents for Microsoft 365 Copilot.
---

# Assign and deploy agents for Microsoft 365 Copilot

As an admin, you can manage the lifecycle of each agent available in your tenant by using actions. These agent actions include publishing, deploying, removing, and blocking. In addition, you can assign agents and deploy agents as separate actions. You can also manage the agents that members of your organization request to publish to your organizational catalog.

### Understand agent installation

There are specific Copilot agents that are preinstalled by Microsoft, however most agents are available to install by either the members of your organization, or by admins with appropriate rights.

#### Microsoft installed agents 
Certain Microsoft agents, such as Researcher and Analyst, are preinstalled and pinned to the light on the right within Microsoft 365 Copilot. [Pinned agents](/microsoft-365/admin/manage/manage-pinning-agents?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fbreadcrumb%2Ftoc.json) ensure that those agents are visible and accessible to members of your organization. In addition, you can control how these agents are [managed](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fbreadcrumb%2Ftoc.json), [assigned](agent-availability.md), and [deployed](agent-deploy.md) by using the Copilot Control System in Microsoft 365 admin center. For related information, see [Microsoft-installed agents and features](/copilot/microsoft-365/copilot-agent-install#microsoft-installed-agents-and-features).

#### Admin installed agents 
You, as the administrator, have control over the lifecycle management of the agents you make available at your organization. You can install agents by using the Copilot Control System in Microsoft 365 admin center. You can upload custom agents, assign existing agents, and deploy agents as well. You can also prevent oversharing by removing and blocking agents that are unneeded by your organization. For related information, see [Admin-installed agents](/copilot/microsoft-365/copilot-agent-install#admin-installed-agents).

#### User installed agents
Members of your organization can install agents from the [Agent Store](https://devblogs.microsoft.com/microsoft365dev/introducing-the-agent-store-build-publish-and-discover-agents-in-microsoft-365-copilot/). Given the tools and capability, they can also create agents using Copilot Studio, Agent Builder, and SharePoint. For related information, see [User-installed agents](/copilot/microsoft-365/copilot-agent-install#user-installed-agents).

#### Publish agents
Members of your organization can use Copilot Studio to create and publish agents. They can publish agents to multiple channels, such as live websites, mobile apps, Microsoft 365 Copilot or messaging platforms like Teams and Facebook.

When members of your organization publish an agent to your organization using the Microsoft Teams and Microsoft 365 Copilot channel, the agent becomes available as a requested agent in the Copilot Control System in Microsoft 365 admin center. You can then approve the agent to make the agent available to users or groups within your organization. Once the agent has been reviewed and published from the Copilot Control System in Microsoft 365 admin center, you can show it in the Teams app store so users can find and install it.

For more information, see [Connect and configure an agent for Teams and Microsoft 365](/microsoft-copilot-studio/publication-add-bot-to-microsoft-teams), [Manage requested agents](agent-copilot-studio-requested.md), and [Publish agents](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#publish-agents).

### Review available agents

Agents are listed in the agent inventory. The Agent inventory allows you to view a variety of details about each agent. For example, you can view the availability of an agent, view which apps the agent is supported in within your organization, and view the publisher of the agent. When you select an individual agent from the agent list, you can view and set additional details. For more information, see [Agent inventory](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fbreadcrumb%2Ftoc.json).

To view details about an individual agent:

1. Open the Copilot Control System within [Microsoft 365 admin center](https://admin.microsoft.com/) in your browser.
2. Select **Copilot** > **Agents**.
    You’ll see the **Agent inventory** tab is selected.
   
    :::image type="content" source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-inventory.png" alt-text="Screenshot of your agent inventory in Microsoft 365 admin center."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-inventory.png":::

3. Select an agent from the list.
4. Review the agent’s details, security, and compliance before to help determine whether an agent should be assigned to or available to users within your organization.
    a. Select the **Details** tab to review the **Capabilities**, **Knowledge**, and **Actions**. 
    b. Select the **Security & compliance** tab to review the agent’s overall certification.


 
