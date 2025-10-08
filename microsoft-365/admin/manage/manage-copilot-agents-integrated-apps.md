---
title: Manage Microsoft 365 Copilot Agents
description: Manage agents for Microsoft 365 Copilot in the admin center. Learn how to enable, assign, block, or remove agents to optimize your organization's Copilot experience.
#customer intent: As an IT admin, I want to manage agents for Microsoft 365 Copilot so that I can control their availability and functionality within my organization.
f1.keywords:
- NOCSH
ms.author: erikre
author: ErikRe
manager: dansimp
ms.date: 09/19/2025
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
# Manage Microsoft 365 Copilot agents in the Microsoft 365 admin center

> [!IMPORTANT]
>
> - This article is intended for IT administrators.
> - The capability is enabled by default in all Microsoft 365 Copilot licensed tenants.
> - The management of agents is currently transitioning to the Copilot Control System. During this transition phase, certain features are still [managed on the Integrated Apps page](#manage-agents-by-using-the-integrated-apps-portal).

Microsoft 365 Copilot combines the power of large language models with your data and apps in Microsoft 365 to capture natural language commands to produce content and analyze data. It enables access to and use of other apps, such as Jira, [Dynamics 365](/microsoft-365-copilot/extensibility/overview-business-applications), or Bing Web Search.

You can manage agents for Copilot by using the Copilot Control System in the Microsoft 365 admin center. You can enable, disable, assign, block, or remove agents for your organization, and manage Copilot capabilities.

## Overview

Agents enhance the functionality of Copilot by adding search capabilities, custom actions, connectors, and APIs. Agents are custom versions of Microsoft 365 Copilot that combine instructions, knowledge, and skills to perform specific tasks or scenarios. To learn more, see [Get started with agents for Microsoft 365 Copilot](https://support.microsoft.com/topic/169469d7-328d-4d37-9090-bfc2058a39bd).

Microsoft Copilot Studio is a low-code development platform that offers a graphical environment to build agents tailored to the internal needs of an organization. Copilot Studio enables developers and makers to create and test their applications in a user-friendly interface.

However, before users can access these agents, the agents must undergo a streamlined process of submission and approval. To learn more, see [Publish agents](#publish-agents).

The hub Copilot experience shows the list of agents that are available and deployed for the user. Users can toggle it on or off to restrict access of Copilot to any specific agents during the interaction. Users can also add or remove agents in their Copilot experience by right-clicking on the agents and selecting the appropriate option. Users can only access the agents that the admin allows and that they install or are assigned to.

## Agent types you can manage

You can manage several types of agents in Microsoft 365 Copilot, each serving different purposes:

- **Custom agents**: Built with predefined instructions and actions. These agents follow structured logic and are best for predictable, rule-based tasks. Before custom agents are available to users, they go through an admin approval and publishing process to ensure compliance and readiness.

- **Shared agents**: Configured for use by multiple users or groups. Creators share these agents with other users.

- **First-party agents**: Developed by Microsoft and integrated with Microsoft 365 services.

- **External agents**: Created by external developers or vendors. You can control their availability and permissions.

- **Frontier agents**: Experimental or advanced agents that use new capabilities or integrations. These agents might be in early stages of development or testing and could require more oversight or limited rollout.

## Get started

The following administrator roles can manage agents in the Microsoft 365 admin center:

- AI Admin
- Global Reader (view-only, no edit)

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

:::image type="content" source="../../media/agents/get-started.png" alt-text="Screenshot showing the Agents & connectors page in the Microsoft 365 admin center." lightbox="../../media/agents/get-started.png":::

You can manage agents in the Microsoft 365 admin center by using the **Agents** page under the [Copilot Control System](/copilot/microsoft-365/microsoft-365-copilot-page). On this page, you can:

- View available, deployed, or blocked agents.
- Configure agent availability and access.
- Perform actions such as deploying, blocking, or removing agents.

You can view agents by going to **Copilot** > **Agents**, or by using the filter option of **Host products** > **Copilot** on the Agents page.

You can also check if a specific app has Copilot support by selecting it from the apps list and checking if the app overview mentions **Copilot** as a host product.

### Shared agents

You can also manage shared agents, which are agents that you configure for use by multiple users or groups within your organization. For more information, see [Manage shared agents for Microsoft 365 Copilot](manage-shared-agents.md).

## Settings for agents

Use the following settings to manage agents for Copilot:

- **Enable or disable agents**: Control whether agents are available in your organization.
- **Advanced agent settings**: Configure more controls for agent behavior.
- **Agent inventory**: View and manage all agents, including first-party, external, shared, and custom agents.
- **Metadata**: View key details for each agent, such as capabilities, data sources, and custom actions. Example data sources include OneDrive, SharePoint, Graph connectors.
- **Shared agents**: Manage agents configured for use by multiple users or groups. You can:
  - Change availability (Edit users)
  - Deploy
  - Block
  - Unblock
  - Export all
- **Requested agents**: Review user-submitted agent requests. You can:
  - View all pending requests
  - Act on requests (for example, Publish pending, Update pending)

### Enable or disable Copilot extensibility

:::image type="content" source="../../media/agents/enable.png" alt-text="Screenshot showing the option to enable agents for all users in the organization." lightbox="../../media/agents/enable.png":::

You can enable or disable Copilot extensibility for your organization by using a setting to control who can access agents in your organization.

To enable or disable Copilot extensibility, follow these steps:

1. Go to **Copilot** > **Settings** in the Microsoft 365 admin center.
1. Select **Agents**.
1. Choose your preferred setting.

The setting has three options:

- **All users**: This option is the default. It means that all users in the organization can access agents, subject to the existing app policies and user assignments.

- **No users**: This option means that no users in the organization can access agents, and the external agents are disabled in the agents flyout. This option also hides agents from the list of Available and Deployed apps on the Agents page.

- **Specific users/groups**: This option lets you select specific users or groups in your organization to have access to agents. While some users in your organization might have permissions to install and use *apps* from the **Available apps** and **Deployed apps** lists, only the users or groups you select in this setting can use *agents*.

> [!NOTE]
> When you disable extensibility, users can't see the Microsoft pinned Visual Creator agent or the entry point for Copilot Studio (lite) in Copilot Chat. After you disable extensibility in the tenant, it can take up to 24 hours for agents to disappear for users and for Copilot Studio (lite) and Visual Creator to disappear.

### Manage how users install agents

You can assign or unassign agents to specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center.

:::image type="content" source="../../media/agents/assign-users.png" alt-text="Screenshot showing the option to assign an agent to users in your organization." lightbox="../../media/agents/assign-users.png":::

Select an app that has a plugin for Copilot from the **Available apps** or **Deployed apps** list and select the **Assign** or **Unassign** option.

You can also choose to assign or unassign the app to everyone or specific users or groups. Assigning or unassigning an agent affects its availability and functionality in Copilot and in the other host products, such as Outlook, Teams, or Microsoft 365.

> [!IMPORTANT]
> Developers can [update the existing apps](/microsoft-365-copilot/extensibility/) to work with Microsoft 365 Copilot. If an admin preapproves or preinstalls the updated app, it updates for the assigned users and starts working with Copilot. If a developer updates a previously blocked app to work with Microsoft 365 Copilot, and then the admins make the app available to the users, the app also works with Copilot.

## Actions for agents

The following list describes the actions you can take to manage an agent for your organization:

- **Publish**: Make an agent available to specific users or groups. This action lists the agent in the store and users can install it.
- **Deploy**: Install an agent on behalf of a user by accepting Microsoft Entra permissions for them. This action makes the agent active and usable for specific users or groups.
- **Remove**: Remove the agent from the inventory. This action applies only to first-party or external agents. You can readd the agent to the inventory by acquiring it from the store.
- **Block**: Prevent any users in the tenant from accessing the agent. This action ensures that no one in the organization can use the agent.

### Publish agents

The Microsoft 365 admin center publishing process for agents submitted through Copilot Studio ensures governance and quality of custom applications. It also reduces manual work by automating the submission of manifests, freeing developers and admins from tedious tasks. The simplified approval process reduces the time it takes for you to approve apps, making it easier for you to manage custom applications in the Microsoft 365 admin center.

The publishing process involves the following steps:

1. Developers create and test agents in Copilot Studio, which provides a user-friendly interface for inputting the parameters and data for the applications.

1. Developers submit their agents for approval from within Copilot Studio to the Microsoft 365 admin center.

1. To discover the apps with agents that are submitted but not yet approved, go to the **Requested Apps** tab in the Integrated Apps section of the admin center. The tab shows the name, host products, status, and Copilot readiness of the applications. The status of a new app is **Publish pending**. The status of an update to an existing app is **Update pending**.

1. To see more details and metadata, select a pending application. This information includes the description, requester, request date, and the status. These details help you to make an informed decision on whether to publish or reject the application.

1. You can approve or disapprove any pending application by selecting **Publish** or **Reject**.

   1. If you approve the application, it becomes available to the org users based on the org default settings for custom apps. The application also becomes part of the **Agent inventory** list in the admin center, where admins can manage user assignments and other settings as any other app.

   1. If you disapprove the application, the service removes it from the **Pending approval** list in the admin center. Then the service shares the app's status with Copilot Studio. The developer can make changes and resubmit the application for approval.

    :::image type="content" source="../../media/agents/publish.png" alt-text="Screenshot showing the pop-up window to publish an agent." lightbox="../../media/agents/publish.png":::

1. If the developer publishes an update to an existing application, the update is available for approval and follows the same workflow as a new application. It shows in the **Pending approval** list with the status **Update pending**. Until you approve the update, the previous version of the application remains available to the users.

### Deploy agents

:::image type="content" source="../../media/agents/deploy.png" alt-text="Screenshot showing the configuration screen to deploy an agent." lightbox="../../media/agents/deploy.png":::

You can deploy agents across the whole organization or for specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center.

To deploy an agent, follow these steps:

1. In the admin center, go to **Copilot** > **Agents**.
1. Filter the list by **Availability**.
1. Select an agent from the list.
1. Select **Deploy**.
1. Decide whether to deploy the agents for everyone or specific users or groups.

Deploying an agent affects its availability and functionality in Copilot and in the other host products, such as Outlook, Teams, or Microsoft 365.

### Remove agents

You can remove first-party and external agents across the whole organization or for specific users or groups by using the same controls that work for any other app in the Microsoft 365 admin center.

To remove an agent, follow these steps:

1. In the admin center, go to **Copilot** > **Agents**.
1. Filter the list by **Availability**.
1. Select an agent from the list.
1. Select **Remove**.
1. Decide whether to remove the agents for everyone or specific users or groups.

Removing an agent affects its availability and functionality in Copilot and in the other host products, such as Outlook, Teams, or Microsoft 365.

### Block or unblock agents

:::image type="content" source="../../media/agents/block.png" alt-text="Screenshot showing the panel to block an agent." lightbox="../../media/agents/block.png":::

You can block or unblock agents for the entire organization by using the same controls that work for any other app in the Microsoft 365 admin center.

To block or unblock an agent, follow these steps:

1. In the admin center, go to **Copilot** > **Agents**, or the Agents page.
1. Choose an agent from the list of agents.
1. Select **Block** or **Unblock**.
1. Decide whether to block or unblock the agent for everyone.

Blocking or unblocking an agent affects its availability and functionality in Copilot and other host products, such as Outlook, Teams, or Microsoft 365.

> [!NOTE]
> For the [Researcher](https://support.microsoft.com/topic/e63ab760-f3de-4c47-ae87-dad601b0e9c4) and [Analyst](https://support.microsoft.com/topic/ff505b9c-a06c-4be9-b855-69d89b1d25d2) agents, the **Edit users** panel is disabled. To manage their availability, you must block the agent for the entire tenant by using the **Block** action in the admin center.

## Agent metadata in admin center

:::image type="content" source="../../media/agents/details.png" alt-text="Screenshot showing the details tab for an agent." lightbox="../../media/agents/details.png":::

You can access key metadata for Copilot agents in **Agents** > **Agent inventory**. When you select an agent, the metadata is available in the **Details** tab.

The metadata includes details such as the agent's capabilities, data sources, and custom actions. Example data sources include OneDrive and SharePoint files and sites, or Graph connectors. Metadata is only for custom agents, which are designed to perform specific tasks based on predefined rules and configurations.

## View and consent to permissions and data access

For detailed information about how Microsoft 365 Copilot uses, protects, and shares organizational information to power extensibility, see [Data, Privacy, and Security for Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-privacy).

## Manage agents by using the integrated apps portal

During the transition to the Copilot Control System, you can still access some agent management features on the **Integrated Apps** page in the Microsoft 365 admin center. This section helps admins manage agents from that location.

To manage agents by using the integrated apps portal:

1. Sign in to the Microsoft 365 admin center.
1. Go to **Settings** > **Integrated apps**.
1. Use the Host products filter and select **Copilot** to view apps that support agents.
1. Select an app to:
    - Assign or unassign agents to users or groups
    - Deploy agents on behalf of users
    - Block or unblock agents for specific users or the entire organization
    - Remove agents from the deployed list

You can also configure who in the organization can access agents by adjusting the **Allow users access to agents** setting. This setting supports three options:

- All users (default)
- No users
- Specific users or groups
