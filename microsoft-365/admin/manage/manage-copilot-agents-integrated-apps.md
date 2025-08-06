---
title: "Manage agents for Microsoft 365 Copilot in the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 06/09/2025
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
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to manage agents for Microsoft 365 Copilot in the Microsoft 365 admin center."
---

# Manage agents for Microsoft 365 Copilot in the Microsoft 365 admin center

> [!IMPORTANT]
>
> - This article is intended for IT administrators.
> - The capability is enabled by default in all Microsoft 365 Copilot licensed tenants.
> - The management of agents is currently transitioning to the Copilot Control System. During this transition phase, certain features will still be [managed on the Integrated Apps page](#manage-agents-using-integrated-apps).

Microsoft 365 Copilot is a new experience in Microsoft 365 that combines the power of large language models with your data and apps in Microsoft 365 to capture natural language commands to produce content and analyze data. It enables access to and use of third-party apps, such as Jira, [Dynamics 365](/microsoft-365-copilot/extensibility/overview-business-applications), or Bing Web Search.

You can manage agents for Copilot using the Copilot Control System in the Microsoft 365 admin center. You can enable, disable, assign, block, or remove agents for your organization, and manage Copilot capabilities.

## Overview

Agents enhance the functionality of Copilot by adding search capabilities, custom actions, connectors, and APIs. Agents are custom versions of Microsoft 365 Copilot that combine instructions, knowledge, and skills to perform specific tasks or scenarios. To learn more, see [Get started with agents for Microsoft 365 Copilot](https://support.microsoft.com/topic/get-started-with-agents-for-microsoft-365-copilot-169469d7-328d-4d37-9090-bfc2058a39bd).

Microsoft Copilot Studio is a low-code development platform that offers a graphical environment to build agents tailored to the internal needs of an organization. Copilot Studio enables developers and makers to create and test their applications in a user-friendly interface.

However, before these agents can become available to users, the agents must undergo a streamlined process of submission and approval. To learn more, see [Publish agents](#publish-agents).

The hub Copilot experience shows the list of agents that are available and deployed for the user. Users can toggle it on or off to restrict access of Copilot to any specific agents during the interaction. Users can also add or remove agents in their Copilot experience by right-clicking on the agents and selecting the appropriate option. Users can only access the agents that are allowed by the admin and that they have installed or been assigned to.

## Agent types you can manage

You can manage several types of agents in Microsoft 365 Copilot, each serving different purposes:

- **Custom agents** Built with predefined instructions and actions. These agents follow structured logic and are best for predictable, rule-based tasks. Before becoming available to users, custom agents go through an admin approval and publishing process to ensure compliance and readiness.
- **Shared agents** Configured for use by multiple users or groups. These agents are individually shared by their creators with other users.
- **First-party agents** Developed by Microsoft and integrated with Microsoft 365 services.
- **External agents** Created by external developers or vendors. You can control their availability and permissions.
- **Frontier agents** Experimental or advanced agents that use new capabilities or integrations. These might be in early stages of development or testing and could require more oversight or limited rollout.

## Get started

The following administrator roles can manage agents in the Microsoft 365 admin center:

- AI Admin
- Global Admin
- Global Reader (view-only, no edit)

:::image type="content" source="../../media/agents/get-started.png" alt-text="Screenshot showing the Agents & connectors page in the Microsoft 365 admin center." lightbox="../../media/agents/get-started.png":::

You can manage agents in the Microsoft 365 admin center by using the **Agents & connectors** page under the [Copilot Control System](/copilot/microsoft-365/microsoft-365-copilot-page). On this page, you can:

- View available, deployed, or blocked agents.
- Configure agent availability and access.
- Perform actions such as deploying, blocking, or removing agents.

>[!NOTE]
> As the management of agents transitions to the Copilot Control System, which will become the central hub for all Copilot extensibility management, certain features will still be [managed on the Integrated Apps page](#manage-agents-using-integrated-apps).

You can view agents by going to **Copilot** > **Agents & connectors**, or by using the filter option of **Host products** > **Copilot** on the Integrated apps page.

You can also check if a specific app has Copilot support by selecting it from apps list and checking if the app overview mentions **Copilot** as a host product.

### Shared agents

You can also manage shared agents, which are agents that are configured to be used by multiple users or groups within the organization. To learn more, see [Manage shared agents for Microsoft 365 Copilot](manage-shared-agents.md).

## Settings for agents

The following settings are available to manage agents for Copilot:

- **Enable or disable agents** Control whether agents are available in your organization.
- **Advanced agent settings**  Configure more controls for agent behavior (more options coming).
- **Agent inventory** View and manage all agents, including first-party, external, shared, and custom agents.
- **Metadata** View key details for each agent, such as capabilities, data sources (for example, OneDrive, SharePoint, Graph connectors), and custom actions.
- **Shared agents** Manage agents configured for use by multiple users or groups. You can:
  - Change availability (Edit users)
  - Deploy
  - Block
  - Unblock
  - Export all
- **Requested agents** Review user-submitted agent requests. You can:
  - View all pending requests
  - Act on requests (for example, Publish pending, Update pending)

### Enable or disable Copilot extensibility

:::image type="content" source="../../media/agents/enable.png" alt-text="Screenshot showing the option to enable agents for all users in the organization." lightbox="../../media/agents/enable.png":::

You can enable or disable Copilot extensibility for your organization by using a setting to control who can access agents in your organization.

To do this, follow these steps:

1. Go to **Copilot** > **Settings** in the Microsoft 365 admin center.
1. Select **Agents**.
1. Choose your preferred setting.

The setting has three options:

- **All users** This is the default option and it means that all users in the organization can access agents, subject to the existing app policies and user assignments.
- **No users** This option means that no users in the organization can access agents, and the external agents are disabled in the agents flyout. This option also hides agents from the list of Available and Deployed apps on the Integrated apps page.
- **Specific users/groups** This option lets you select specific users or groups in your organization to have access to agents. So while all or specific users in your organization might have permissions to install and use apps from the Available apps and Deployed apps lists, only the users or groups you select in this setting can use agents.

> [!NOTE]
> Once extensibility is disabled, the Microsoft pinned Visual Creator agent and entry point for Agent Builder will no longer be visible in Copilot Chat. Once extensibility is disabled in the tenant, it can take up to 24 hours for agents to disappear for users and for Agent Builder and Visual Creator to disappear.

### Manage how users can install agents

You can assign or unassign agents to specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center.

:::image type="content" source="../../media/agents/assign-users.png" alt-text="Screenshot showing the option to assign an agent to users in your organization." lightbox="../../media/agents/assign-users.png":::

You can select an app that has a plugin for Copilot from the Available apps or Deployed apps list and select the **Assign** or **Unassign** option.

You can also choose to assign or unassign the app to everyone or specific users or groups. Assigning or unassigning an agent affects its availability and functionality in Copilot and in the other host products, such as Outlook, Teams, or Microsoft 365.

> [!IMPORTANT]
> Developers can [update the existing apps](/microsoft-365-copilot/extensibility/) to work with Microsoft 365 Copilot. If the updated app was pre-approved or pre-installed by an admin, then it updates for the assigned users and starts working with Copilot. If a developer updates a previously blocked app to work with Microsoft 365 Copilot and then the admins make the app available to the users, then such an app also works with Copilot.

## Actions for agents

The following table describes the actions you can take to manage an agent for your organization:

| **Action** | **Description** |
|------------|-----------------|
| **Publish** | Make an agent available to specific users or groups. This means the agent is listed in the store and can be installed by those users. |
| **Deploy** | Install an agent on behalf of a user by accepting Microsoft Entra permissions for them. This action makes the agent active and usable for specific users or groups. |
| **Remove** | Remove the agent from the inventory. This action is applicable only for first-party or external agents. The agent can be re-added to the inventory by acquiring it from the store. |
| **Block** | Prevent any users in the tenant from accessing the agent. This action ensures that the agent can't be used by anyone in the organization. |

### Publish agents

The publishing process in the Microsoft 365 admin center for agents submitted via Copilot Studio is designed to ensure governance and quality of the custom applications. It also reduces manual work by automating the submission of manifests, freeing developers and admins from tedious tasks. The simplified approval process reduces the time it takes for you to approve apps, making it easier for you to manage custom applications in the Microsoft 365 admin center.

:::image type="content" source="../../media/agents/publish.png" alt-text="Screenshot showing the dropdown menu to publish an agent." lightbox="../../media/agents/publish.png":::

The publishing process involves the following steps:

1. Developers create and test agents in Copilot Studio, which provides a user-friendly interface for inputting the parameters and data for the applications.
1. Developers submit their agents for approval from within Copilot Studio to the Microsoft 365 admin center.
1. You can discover the apps with agents that are submitted but not yet approved in admin center under the **Requested Apps** tab in the Integrated Apps section. The tab shows the name, host products, status, and Copilot readiness of the applications. The status of a new app is `Publish pending` and of an update to an existing app is `Update pending`.
1. You can select a pending application to see more details and metadata, such as the description, requester, request date, and the status. These details help you to make an informed decision on whether to publish or reject the application.

1. You can approve or disapprove any pending application by selecting **Publish** or **Reject**.

   1. If the application is approved, it becomes available to the org users based on the org default settings for custom apps. The application also becomes part of the `Available apps` list in the admin center, where admins can manage user assignments and other settings as any other app.

   1. If the application is disapproved, it's removed from the `Pending approval` list in the admin center, and the status is shared with Copilot Studio. The developer can make changes and resubmit the application for approval.

    :::image type="content" source="../../media/agents/data-cleaner.png" alt-text="Screenshot showing the pop-up window to publish an agent." lightbox="../../media/agents/data-cleaner.png":::
1. If the developer publishes an update to an existing application, the update is also submitted for approval and follows the same workflow as a new application. The update is shown in the `Pending approval` list with the status `Update pending`. Until the update is approved, the previous version of the application remains available to the users.

### Deploy agents

:::image type="content" source="../../media/agents/deploy.png" alt-text="Screenshot showing the configuration screen to deploy an agent." lightbox="../../media/agents/deploy.png":::

You can deploy agents across the whole organization or for specific users or groups by using the same gestures and controls that work for any other app in the Microsoft 365 admin center. To do this, follow these steps:

1. In the admin center, go to the Integrated apps page.
1. Select an agent from the list of Available apps.
1. Select **Deploy**.
1. Decide whether to deploy the agents for everyone or specific users or groups.

Deploying an agent affects its availability and functionality in Copilot and in the other host products, such as Outlook, Teams, or Microsoft 365.

### Remove agents

You can remove first-party and external agents across the whole organization or for specific users or groups by using the same controls that work for any other app in the Microsoft 365 admin center. To do this, follow these steps:

1. In the admin center, go to the Integrated apps page.
1. Select an agent from the list of Deployed apps.
1. Select **Remove**.
1. Decide whether to remove the agents for everyone or specific users or groups.

Removing an agent affects its availability and functionality in Copilot and in the other host products, such as Outlook, Teams, or Microsoft 365.

### Block or unblock agents

:::image type="content" source="../../media/agents/block.png" alt-text="Screenshot showing the panel to block an agent." lightbox="../../media/agents/block.png":::

You can block or unblock agents for the entire organization by using the same controls that work for any other app in the Microsoft 365 admin center. To do this, follow these steps:

1. In the admin center, go to **Copilot** > **Agents & connectors**, or the Integrated apps page.
1. Choose an agent from the list of agents.
1. Select **Block** or **Unblock**.
1. Decide whether to block or unblock the agent for everyone.

Blocking or unblocking an agent affects its availability and functionality in Copilot and other host products, such as Outlook, Teams, or Microsoft 365.

>[!NOTE]
> For the [Researcher](https://go.microsoft.com/fwlink/?linkid=2329838) and [Analyst](https://go.microsoft.com/fwlink/?linkid=2329729) agents, the **Edit users** panel is disabled. To manage their availability, you must block the agent for the entire tenant using the **Block** action in the admin center.

## Agent metadata in admin center

:::image type="content" source="../../media/agents/details.png" alt-text="Screenshot showing the details tab for an agent." lightbox="../../media/agents/details.png":::

You can access key metadata for Copilot agents in **Agents & connectors** > **Agent inventory**. When you select an agent, the metadata is available in the **Details** tab. 

The metadata includes details such as the agent’s capabilities, data sources (for example, OneDrive and SharePoint files and sites, or Graph connectors), and custom actions. It’s important to note that metadata is only for custom agents, which are designed to perform specific tasks based on predefined rules and configurations.

## View and consent to permissions and data access

For detailed information about how Microsoft 365 Copilot uses, protects, and shares organizational information to power extensibility, see [Data, Privacy, and Security for Microsoft 365 Copilot](/microsoft-365-copilot/microsoft-365-copilot-privacy).

## Manage agents using Integrated Apps

During the transition to the Copilot Control System, some agent management features are still available on the **Integrated Apps** page in the Microsoft 365 admin center. This section helps admins manage agents from that location.

To manage agents using Integrated Apps:

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
