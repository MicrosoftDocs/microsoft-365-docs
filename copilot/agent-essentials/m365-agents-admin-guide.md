---
title: Microsoft 365 Copilot agents admin guide
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
description: Learn about administering and deploying Microsoft 365 Copilot agents.
---

# Microsoft 365 Copilot agents admin guide

When you add [Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-overview) to your qualifying Microsoft 365 for business subscription, you provide generative AI capabilities to your organization. With these capabilities, you help enhance your organization’s productivity, improve accuracy, and provide personalized assistance.

In addition to the generative AI capabilities provided by Microsoft 365 Copilot, you can extend your AI implementation to include agents. Agents allow you to customize your Copilot experience. You can connect agents to your organization’s knowledge and data sources to help members of your organization answer questions, automate tasks, and run business processes. These AI-driven agents can perform various tasks, working alongside you to offer suggestions, automate repetitive tasks, and provide insights to help you and your organization make more informed decisions.

This guide:
- Helps you determine which Copilot agent capabilities your organization needs
- Helps you understand where members of your organization view agents
- Provides guidance to help you understand how to create agents and the different capabilities each development environment offers for agents
- Recommends options for organization-wide agent access and sharing policies
- Helps you understand how to manage, assign, and deploy agents
- Provides resources about Copilot and agent security, compliance, and privacy

> [!NOTE]
> You must have specific permissions for your tenant to configure, manage, assign, and deploy agents in Copilot Control System within Microsoft 365 admin center. For more information, see [Admin permissions](agent-prerequisites.md#admin-permissions).

## Identify your Copilot licensing scenario

Organizations typically deploy a combination of Microsoft 365 Copilot Chat and Microsoft 365 Copilot. Before you get started, it's important to understand the differences between these two offerings when it comes to deploying and using agents.

Microsoft 365 Copilot Chat is available at no additional cost for all Microsoft Entra account users with a Microsoft 365 or Office 365 subscription. Members of your organization can use agents that are available at no additional cost from the Agent Store. You, as the administrator of your organization, would also need to enable these agents. If your organization requires agents that incorporate your organization’s data, you can provide access to [agents](/copilot/agents) that are billed based on metered consumption.

<!-- For more information about Microsoft 365 Copilot Chat, see [Requirements and considerations for Microsoft 365 Copilot Chat admins](). -->

Microsoft 365 Copilot, which includes Microsoft 365 Copilot Chat, requires a Microsoft 365 [Business](https://www.microsoft.com/microsoft-365/business/with-copilot-plans-and-pricing) or [Enterprise](https://www.microsoft.com/microsoft-365/enterprise/microsoft365-plans-and-pricing) plan. It includes AI-powered chat grounded in both web-based and work-based data, as well as the capabilities of Microsoft 365 Copilot Chat. In addition, Microsoft 365 Copilot unlocks embedded Copilot features in Word, Excel, Outlook, and Teams. Additionally, your organization can use [custom agents](/microsoft-365-copilot/extensibility/overview-custom-engine-agent). 

<!--
For more information about deploying Microsoft 365 Copilot, including setting up a Microsoft 365 Copilot rollout plan, see [Minimum requirements to deploy Microsoft 365 Copilot in your organization](). -->

Each Copilot option offers different capabilities. For a list of these capabilities, see [Agent capabilities for Microsoft 365 users](/microsoft-365-copilot/extensibility/prerequisites#agent-capabilities-for-microsoft-365-users).

> [!IMPORTANT]
> IMPORTANT:
If you’re already using Copilot, view your [license plan](/copilot/microsoft-365/microsoft-365-copilot-licensing) to confirm whether your organization is using Microsoft 365 Copilot Chat or Microsoft 365 Copilot. If you're new to Microsoft 365 Copilot, see the [Microsoft 365 Copilot adoption guide and overview for IT admins](/copilot/microsoft-365/microsoft-365-copilot-enablement-resources).

### Understand available agent options

To best understand your overall Copilot deployment, you must understand the options available for Copilot agents. Different agent capabilities are available based on whether you choose to deploy Microsoft 365 Copilot Chat without usage billing, deploy Microsoft 365 Copilot Chat with usage billing, or deploy Microsoft 365 Copilot.

> [!NOTE]
> Agents that access shared tenant data, such as SharePoint or Graph Connector content, are billed based on metered consumption. Agents utilizing metered consumption are off by default for users in Microsoft 365 Copilot Chat.

✅ **Task: Task: Determine which of the following Copilot options your organization needs:**
- **Microsoft 365 Copilot Chat (no usage billing)**
- **Microsoft 365 Copilot Chat (usage billing)**
- **Microsoft 365 Copilot (licensed)**

#### Option 1 – Agents with Microsoft 365 Copilot Chat (no usage billing)

Microsoft 365 Copilot Chat is included in your Microsoft 365 subscription at no additional charge for all [Microsoft Entra](/entra/fundamentals/what-is-entra) account users with a Microsoft 365 subscription. It provides access to public web-based Copilot Chat. This option also provides access to [declarative agents](/microsoft-365-copilot/extensibility/overview-declarative-agent), grounded in instructions and public websites, at no additional cost. These agents are available in the [Agent Store in Microsoft 365 Copilot](https://devblogs.microsoft.com/microsoft365dev/introducing-the-agent-store-build-publish-and-discover-agents-in-microsoft-365-copilot) based on your organization’s store settings for Teams and Microsoft 365 apps. This option is ideal for occasional users of Copilot and agents.

#### Option 2 – Agents with Microsoft 365 Copilot Chat (usage billing)

Microsoft 365 Copilot Chat can also be used with a flexible plan for organizations to access Copilot services. You can choose an optional [pay-as-you-go access](/copilot/microsoft-365/pay-as-you-go/overview) to work-based chat and deploy declarative and custom agents. Custom agents can use Microsoft Graph grounding (tenant data). To enable agents that utilize metered consumption for users in Copilot Chat, admins need to set up or use an existing Copilot Studio subscription. For more information, see [Using agents in Microsoft 365 Copilot Chat](/copilot/agents).

This option gives you and your organization a method to understand your organization’s usage patterns. By understanding how your organization uses the capabilities of Microsoft 365 Copilot Chat, along with pay-as-you-go work-based chat and advanced agents, you can determine if prepaid licenses make financial sense for your business.

#### Option 3 – Agents with Microsoft 365 Copilot (licensed)

Microsoft 365 Copilot offers chat grounded in both web-based and work-based data, as well as the capabilities of Microsoft 365 Copilot Chat. In addition, Microsoft 365 Copilot unlocks embedded Copilot features in Word, Excel, Outlook, and Teams. Also, with your Microsoft 365 Copilot license, your organization can use [custom agents](/microsoft-365-copilot/extensibility/overview-custom-engine-agent). Microsoft 365 Copilot allows you to create, deploy, use, and share agents to extend Microsoft 365 Copilot capabilities. This includes all agents from simple prompt-based agents to more advanced, autonomous agents. Additionally, when you purchase a license for Microsoft 365 Copilot, your organization has access to use additional capabilities, such as [Researcher](https://go.microsoft.com/fwlink/?linkid=2329838) and [Analyst](https://go.microsoft.com/fwlink/?linkid=2329729).

> [!NOTE]
> To purchase Microsoft 365 Copilot, your organization must have a qualifying [Microsoft 365 plan for enterprise or business](/copilot/microsoft-365/microsoft-365-copilot-licensing#microsoft-365-copilot-license). Microsoft 365 Copilot is available as an [add-on plan](https://www.microsoft.com/microsoft-365-copilot#plans). Your organization can choose which license best meets your organization’s requirements. If your organization’s account doesn't have the right plan, you can purchase a new plan or potentially [upgrade your existing plan](/microsoft-365/commerce/subscriptions/upgrade-to-different-plan).

## View available agents

By default, Microsoft and Microsoft partners provide ready-to-use agents that you can quickly integrate and deploy with Microsoft 365 Copilot Chat and Microsoft 365 Copilot. In addition, you can integrate and deploy agents created by members of your organization.

When using a Microsoft 365 subscription, you have agents available with your Microsoft 365 apps, such as Word and Excel. You can also view agents directly in the Microsoft 365 Copilot app. For more information, see [Welcome to the Microsoft 365 Copilot app](https://support.microsoft.com/topic/welcome-to-the-microsoft-365-copilot-app-092599f1-5917-4bd6-bd59-58af628bbc39).

✅ **Task: Understand how to view agents in Microsoft 365 Copilot and Microsoft Teams.**

### View agents in Microsoft 365 Copilot

Examples of Microsoft agents that are available at no additional cost and are included with Microsoft 365 Copilot Chat include Writing Coach, Idea Coach, Prompt Coach, Career Coach, and Learning Coach. To view additional examples, see [Microsoft 365 Copilot Chat agent demo videos](https://www.youtube.com/playlist?list=PLXPr7gfUMmKyJpxEJ_kGOjOumENieobXC).

To view prebuilt agents in Microsoft 365 Copilot Chat:  

1. Open Microsoft 365 Copilot by selecting the Microsoft 365 Copilot app from your taskbar. Alternatively, navigate to [https://m365.cloud.microsoft](https://m365.cloud.microsoft/) in your browser.
2. In the Microsoft 365 Copilot app, select **Agents** > **All agents** to view the **Agent Store**. Alternatively, in the browser under **Agents**, select **All agents** to view the **Agent Store**. 

In the **Agent Store** you can view the agents available to you. You can view agents built by Microsoft, those built by your organization, as well as those that are popular within your organization.

:::image type="content" source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-store-explore.png" alt-text="Screenshot of exploring the Agent Store in Microsoft 365 Copilot."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-store-explore.png":::

> [!NOTE]
> If members of your organization don’t see any options to view agents, and their work or school account has a qualifying Microsoft 365 subscription, there may be no agents that have been deployed to your tenant. Additionally, all or some of the Copilot features may have been turned off, or Copilot might not be available in your market.

### View agents in Microsoft Teams

To view prebuilt agents in Microsoft Teams:  

1. Open the Microsoft Teams app and select **Copilot**.
2. Select **All agents** to view the **Agent Store**.

:::image type="content"  source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-store-all.png" alt-text="Screenshot of all agents in the Agent Store in Microsoft 365 Copilot."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-store-all.png":::

## Create agents

As an admin, you can configure and deploy out-of-the-box agents without having to create and publish a new agent. However, when your organization needs to customize Copilot functionality (such extending Copilot’s knowledge, automate workflows, or deliver tailored user experiences), users and developers at your organization can build agents that you can manage and deploy. 

✅ **Task: Determine whether your organization requires the capability to create agents. Understand the different types of agents that can be created, shared, and deployed at your organization.**

There are two types of approaches to building agents for Microsoft 365 Copilot. Users and developers at your organization can use the [declarative](/microsoft-365-copilot/extensibility/agents-overview#declarative-agents) approach or the [custom engine agents](/microsoft-365-copilot/extensibility/agents-overview#custom-engine-agents). Because both approaches use Copilot's AI infrastructure, model, and orchestrator, they adhere to the security, compliance, and Responsible AI (RAI) requirements for Microsoft 365.

Declarative agents enable members of your organization to configure Copilot for specific scenarios. These agents are designed to be used by individuals. Also, these agents are limited to Copilot's orchestrator and models, where they use your instructions. Declarative agents rely on user-initiated interactions. Members of your organization can create declarative agents using Microsoft SharePoint and Agent Builder. Also, a maker can create an [Copilot agent](/microsoft-copilot-studio/microsoft-copilot-extend-copilot-extensions#what-are-copilot-agents-tools-knowledge-and-suggested-prompts) in [Copilot Studio](/microsoft-copilot-studio/fundamentals-what-is-copilot-studio) that's equivalent to a declarative agent created in Agent Builder. However, Copilot Studio is used to create agents with greater functionality than the agents that can be created in Agent Builder. For more information, see [declarative agents](/microsoft-365-copilot/extensibility/agents-overview#declarative-agents).

Custom engine agents are fully customized AI assistants. When members of your organization build a custom engine agent, they can collaborate with a group or create these type of agents on their own. They can choose the AI models and orchestration as well. Custom engine agents also allow members of your organization to enable triggering actions automatically, even without direct user input. Custom engine agents must be published and approved by your organization, such as an admin, before they're available to your organization. Members of your organization can create custom engine agents using [Copilot Studio](/microsoft-copilot-studio/fundamentals-what-is-copilot-studio) and  Microsoft 365 Agents Toolkit. For more information, see [custom engine agents](/microsoft-365-copilot/extensibility/agents-overview#custom-engine-agents).

✅ **Task: Understand the environments and tools available when creating agents, as well as the capabilities that each offer your organization. Understanding these environment allows you to better understand how different agents can be managed and deployed.**

### Prerequisites

Before your organization creates a new agent, first consider your organization’s objectives, technical requirements, costs, Responsible AI (RAI) considerations, and compliance factors. For more information, see [Microsoft 365 Copilot extensibility planning guide](/microsoft-365-copilot/extensibility/planning-guide).

When Copilot itself doesn’t fully address your organization’s requirements out-of-the-box, consider building an agent. Agents allow you and your end users to extend Copilot’s knowledge, automate complex workflows, and deliver tailored user experiences.

Your organization can create agents for Microsoft Copilot using several different methods involving tools and environments:

- [Microsoft SharePoint](#microsoft-sharepoint)
- [Agent Builder in Microsoft 365 Copilot​](#agent-builder-in-microsoft-365-copilot)
- [Copilot Studio](#copilot-studio)
- [Microsoft 365 Agents Toolkit](#microsoft-365-agents-toolkit)

For information related to extending Microsoft 365 Copilot, see [Set up your development environment for Microsoft 365 Copilot](/microsoft-365-copilot/extensibility/prerequisites) and [Validation guidelines for agents](/microsoftteams/platform/concepts/deploy-and-publish/appsource/prepare/review-copilot-validation-guidelines#description?context=/microsoft-365-copilot/extensibility/context).

### Microsoft SharePoint

Members of your organization (end users) can create agents using Microsoft SharePoint. Agents created with SharePoint provide a simple option to query content from specific sites, folders, or files within SharePoint or Teams chats. Members of your organization can build SharePoint agents if they have access to SharePoint and the tenant has been enabled as pay-as-you-go for SharePoint, or they have a Microsoft 365 Copilot license.

The agents members of your organization create with SharePoint can be accessed using SharePoint and Teams Chat. These agents can be shared based on existing user permissions and security settings. 

For more information, see [Get started with SharePoint agents](/sharepoint/get-started-sharepoint-agents) and [Manage access to SharePoint agents](/sharepoint/manage-access-agents-in-sharepoint).

### Agent Builder in Microsoft 365 Copilot​

Using Agent Builder in the Microsoft 365 Copilot app, members of your organization (end users) can create declarative agents. This out-of-the-box solution works with your existing data and can be made available to end users at your organization. End users can query organization knowledge contained in SharePoint sites, folders, and files, as well as search general web content. Data can also be made available using Microsoft Graph connectors.

Agent Builder is available through Microsoft 365 Copilot Chat if your organization’s tenant has enabled pay-as-you-go for Copilot Studio, or if your organization has a Microsoft 365 Copilot license.

In addition, agents created with Agent Builder are shareable across your organizations by end users. The capabilities of agents vary depending on your billing model. Your consumption model might allow agents available at no additional cost, pay-as-you-go agents, or agents licensed with Microsoft 365 Copilot.

To get started quickly, view the following step-by-step walkthrough video:

[Create and publish your first agent](https://youtu.be/_aJAOTOvWxI)

> [!TIP]
> End users can get started quickly using templates included with Agent Builder. These templates apply design guidelines and industry best practices. For more information, see [Copilot Studio agent templates](/microsoft-365-copilot/extensibility/agent-builder-templates).

For more information, see [Build agents with Agent Builder](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build).

### Copilot Studio

Copilot Studio empowers low-code developers ("makers") to build declarative agents or custom engine agents. Declarative agents created in Copilot Studio are called [Copilot agents](/microsoft-copilot-studio/microsoft-copilot-extend-copilot-extensions#what-are-copilot-agents-tools-knowledge-and-suggested-prompts) and follow a specific development path within Copilot Studio. [Custom engine agents](/microsoft-copilot-studio/microsoft-copilot-extend-copilot-extensions#what-are-copilot-agents-tools-knowledge-and-suggested-prompts) (also known as Custom agents) integrate with custom data, other agents, decision paths, data source connectors, and [automation](/microsoft-copilot-studio/flows-overview). These agents can be deployed internally or externally and used with Microsoft 365 Copilot licenses or pay-as-you-go models. Leveraging Microsoft Graph connectors to expose shared organizational data enables Copilot agents to reason over enterprise-wide information, unlocking deeper insights and driving transformational productivity outcomes. Additionally, these agents can be designed to use generative orchestration and generative answers. Agents created using Copilot Studio can be used within Microsoft 365 Copilot Chat and Microsoft 365 Copilot based on Microsoft 365 Copilot licenses, as well as a pay-as-you-go scenario. 

> [!NOTE]
> Microsoft Copilot Studio is part of the Power Platform product set. Using the [Power Platform admin center](/power-platform/admin/admin-documentation?tabs=new), admins can manage agent development settings and agent governance controls for Custom Engine Agents for your organization. For related information, see [Track, manage, and scale Copilot adoption in the Power Platform](/power-platform/admin/copilot/copilot-hub?tabs=new) and [Key Copilot configuration settings](/microsoft-copilot-studio/guidance/sec-gov-config-settings).

For more information, see [Copilot Studio overview](/microsoft-copilot-studio/fundamentals-what-is-copilot-studio), [Copilot Studio documentation](/microsoft-copilot-studio/), and [Microsoft Copilot Studio](https://www.microsoft.com/microsoft-copilot/microsoft-copilot-studio).

### Microsoft 365 Agents Toolkit

[Microsoft 365 Agents Toolkit](https://aka.ms/M365AgentsToolkit) is a suite of tools that developers within your organization can use to build enterprise-ready agents and apps. Agents developed using the Toolkit have a greater capability to be [shared and published](m365-agents-admin-guide.md). These agents work across Microsoft 365 Copilot, Teams, Office, web, and other third-party messaging channels. It streamlines the development of production AI agents and apps with built-in project scaffolding, testing, deployment, and integration with AI tools including Microsoft 365 Agents SDK, Azure AI Foundry, and TypeSpec for Copilot.

For more information about developing agents, see [Microsoft 365 Agents Toolkit](/microsoft-365/developer/overview-m365-agents-toolkit?toc=%2Fmicrosoftteams%2Fplatform%2Ftoc.json&bc=%2Fmicrosoftteams%2Fplatform%2Fbreadcrumb%2Ftoc.json).

## Set agent policies

Agent policies refer to the tenant settings you can make as an administrator in the Copilot Control System within Microsoft 365 admin center. Agent policies relate to the available settings for all agents in your tenant. Additionally, these policies include agent access, agent sharing, and agent publishing settings. You must have appropriate [admin permissions](#admin-permissions) to access Copilot agent settings for your tenant. Setting [agent policies](#set-agent-policies), [managing agent inventory](#manage-agent-lifecycle), and [assigning and deploying agents](#assign-and-deploy-agents) to members of your organization all fall under Copilot [agent governance](#understand-agent-governance).  

> [!NOTE]
> In addition to the agent settings available in Microsoft 365 admin center, there are specific settings for agent created with Copilot Studio in the [Power Platform admin center](/power-platform/admin/admin-documentation?tabs=new). 

### Understand agent governance

Copilot agent governance refers to managing agents across your organization using policies, settings, and actions. You can create policies to globally maintain appropriate access to agents, and use administration settings and controls to approve, publish, deploy, remove, and block agents for your organization. By effectively managing Copilot agents, you can help protect and secure the agents and data that your organization uses in a responsible and compliant approach.

For more information related to agent governance, see the following resources:
- [Microsoft 365 Copilot agents deployment blueprint](m365-agents-blueprint.md)
- [Microsoft 365 Copilot agents visual guide](m365-agents-visual-map.md)
- [Microsoft 365 agents deployment checklist](m365-agents-checklist.md)
- [What governance or controls are available for agents?](m365-agents-faq.md#what-governance-or-controls-are-available-for-agents)
- [Governance and security best practices overview](/microsoft-copilot-studio/guidance/sec-gov-intro)

### Admin permissions

To configure, manage, and deploy agents, you must have the following required user roles and permissions:

- AI Admin
- Global Admin
- Global Reader (view-only, no edit)

When considering administrator permissions, we recommend you use the least privileged role that's needed to complete tasks. The Global Admin role has more permissions than needed for many settings and tasks in Microsoft 365 admin center.

✅ **Task: Confirm your admin permissions and the required permissions of others in Microsoft 365 admin center.**

Confirm your admin permissions:

1. Open Microsoft 365 admin center in your browser.
2. Select Users > Active users.
3. Find and select your user name.
4. Under Roles, you’ll find your access role.

> [!NOTE]
> To view the assigned members of the different roles in your tenant, you can select **Roles** > **Role assignments** > *select the role* > **Assigned**.

For more information about roles, see [admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

### Settings for all agents

In the Copilot Control System within Microsoft 365 admin center, you can manage the following overall Copilot settings:

- User access to Copilot in different products or services where controls are available
- Copilot data access when securely retrieving and handling information
- Copilot actions pertaining to available functionality and use
- Additional settings about how Copilot can be used

For Microsoft 365 Copilot agents, you can specifically control how members of your organization can create and use agents.

> [!TIP]
> The Microsoft 365 admin center provides Microsoft 365 Copilot [deployment guides and assistance](https://admin.microsoft.com/adminportal/home?Q=ADG#/setupguidance). Consider following the extensibility guide, see [Get started with Microsoft 365 Copilot extensibility](https://admin.microsoft.com/adminportal/home?Q=ADG#/modernonboarding/copilotextensibility).

### Agent access settings

Not every user in your organization may need access to agents. Therefore, you can specifically control how members of your organization can access and install agents. As the administrator, you should use discretion when managing individual agent’s distribution and costs.

✅ **Task: Confirm your organization’s agent extensibility capabilities in Microsoft 365 admin center. Choose global access and availability settings. Modify overall agent access for your organization to disable functionality that isn’t required.**

To view and confirm agent access settings for your organization:

1. Open Copilot Control System in Microsoft 365 admin center in your browser.
2. Select **Copilot** > **Settings** > **Data access** > **Agents** to manage your organization’s agents.
    :::image type="content"  source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-access.png" alt-text="Screenshot of agent access settings inside the Copilot Control System."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-access.png":::
3. Select who can access agents within your organization. You can choose to select **All users**, **No users**, or **Specific users/groups**. If you select users or groups, a list of available users and groups that have been added to your tenant is displayed.
4. Choose which type of apps and agents are available to members of your tenant. You can choose apps and agents created by Microsoft, external publishers, and your organization. 

    > [!IMPORTANT]
    > Data processed by non-Microsoft services isn't subject to Microsoft agreements. Review the terms provided by third party agent publishers to make sure that you're familiar the agent’s data handling and privacy practices. In addition, consult your internal policies before allowing access.

5. Select **Save** to update your Copilot agent settings for your tenant.

For more information, see [Enable or disable Copilot extensibility](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#enable-or-disable-copilot-extensibility).

### Agent sharing and publishing settings

There are several methods end users, makers, and developers can use to distribute agents for Microsoft 365 Copilot. The methods largely depend on the type of agent they create and the environment they use to create the agent. For details about agent types and environments, see [Create agents](#create-agents).

✅ **Task: Understand the availability and benefits of the different methods to distribute agents both internally to your organization and externally.**

The most common distribution methods for agents are the following:

- [Sideload for personal use at your organization](#sideload-agents-for-personal-use)
- [Share with others at your organization](#share-agents-with-others)
- [Publish to your organizational catalog](#publish-to-organizational-catalog)
- [Submit to Microsoft Commercial Marketplace](#submit-to-microsoft-commercial-marketplace)

For more information about publishing agents, see [Publish agents for Microsoft 365 Copilot](/microsoft-365-copilot/extensibility/publish).

#### Sideload agents for personal use

Members of your organization can build and share agents within your organization without publishing them to the organizational catalog or marketplace. This approach to deploying agents is called sideloading. You can determine whether your organization allows members of your organization to upload an agent, or custom app package, in the Teams app. Uploading the agent via Teams, will allow the agent to be used within Teams and within the Microsoft 365 Copilot app.

> [!NOTE]
> Declarative agents built with SharePoint can’t be sideloaded.

Enabling sideloading allows custom agents to be used personally or across your organization without having to submit it to the Teams app store. Members of your organization can then upload and test custom agents with a limited audience, such as a single user or group of users, before they distribute them more widely.

✅ **Task: Allow members of your organization to sideload their custom agents for personal use.**

To enable sideloading for your organization:

1. Open [Microsoft Teams admin center](https://admin.teams.microsoft.com/) in your browser.
2. Select **Teams apps** > **Setup policies** > **Global (Org-wide default)**.
3. Enable sideloading by setting **Upload custom apps** to **On**.

Once you have enabled sideloading for your organization, members of your organization can upload the agent zip file. For more information, see [Deploy agents via ZIP package](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-publish#deploy-agents-via-zip-package).

#### Share agents with others

Members of your organization can share agents they create with others in your organization. However, the methods to share an agent depend on how the agent was created.

The following table provides the different methods that can be used to share an agent:

| Agent sharing method | Details |
|---|---|
| Share agents from SharePoint | Members of your organization can share declarative agents they created in SharePoint. These agents can only be shared in Microsoft Teams.  |
| Share agents from Agent Builder | Members of your organization can share declarative agents they created in Agent Builder. These agents can be shared in Microsoft Teams and the Microsoft Copilot app. |
| Share Copilot agents and custom engine agents from Copilot Studio | Members of your organization can share Copilot agents and custom engine agents they create in Copilot Studio. These agents can only be shared with a limited group at your organization. Sharing agents from Copilot Studio is used for collaborative testing purposes. When the agent maker is ready, they can publish these agents for admin approval. This allows these agents to reach a wider internal audience from the organization catalog. |
| Share Copilot agents and custom engine agents from Copilot Studio | Members of your organization can share Copilot agents and custom engine agents they create in Copilot Studio. These agents can only be shared with a limited group at your organization. Sharing agents from Copilot Studio is used for collaborative testing purposes. When the agent maker is ready, they can publish these agents for admin approval. This allows these agents to reach a wider internal audience from the organization catalog. |
| Share agents created with Microsoft 365 Agents Toolkit | You can also share and collaborate with members of your organization from your development environment. For more information, see [Publish your Microsoft Teams app](/microsoftteams/platform/concepts/deploy-and-publish/apps-publish-overview). |

#### Publish to organizational catalog

Members of your organization can create and publish agents to your organization catalog. You, as the admin, will need to approve these requested agents in Copilot Control System before they're added to the organizational catalog. Members of your organization can find and install these agents based on the channels the maker or developer selected for the deployment channel.

Whether an agent can be published to an organizational catalog depends on how the agent was created. 

| Agent publishing method | Details |
|---|---|
| Publish Copilot agents from Copilot Studio | Members of your organization can create and [publish copilot agents](/microsoft-copilot-studio/microsoft-copilot-extend-copilot-extensions#publishing-a-copilot-agent) to your organization catalog. You, as the admin, will need to approve these requested agents in Copilot Control System before they're added to the organizational catalog. Members of your organization can find and install the Copilot agent in Microsoft Teams and the Microsoft Copilot app. |
| Publish custom engine agents from Copilot Studio | Members of your organization can create and [publish custom engine agents](/microsoft-copilot-studio/publication-add-bot-to-microsoft-teams) to your organization catalog. You need to approve these requested agents in Copilot Control System before they're added to the organizational catalog. Members of your organization can find and install the custom engine agent in a variety of channels. These channels include Microsoft Teams, Microsoft 365 Copilot, Facebook, WhatsApp, and Twillow, and more. In addition, custom engine agents can be deployed as web and native apps. These agents can also be connected to customer engagement apps as well. |
| Share agents created with Microsoft 365 Agents Toolkit | You can also share and collaborate with members of your organization from your development environment. For more information, see [Publish your Microsoft Teams app](/microsoftteams/platform/concepts/deploy-and-publish/apps-publish-overview). |

> [!NOTE]
> Declarative agents built with SharePoint can’t be published to an organization catalog.

#### Submit to Microsoft Commercial Marketplace

To publish your agent, you can submit it to the Microsoft Teams Store inside Microsoft Teams. Apps published to the Teams Store are automatically listed on the [Microsoft Commercial Marketplace](https://appsource.microsoft.com/). 

:::image type="content"  source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-appsource.png" alt-text="Screenshot Microsoft AppSource."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-appsource.png":::

Use the [Microsoft 365 Agents Toolkit](https://aka.ms/M365AgentsToolkit) suite of tools to create your agent. Your agent must meet responsible AI (RAI) principles, provide a valued end user experience, and meet enterprise needs. RAI involves transparency, accountability, reliability, and safety. A valued experience provides an agent that is functionally productive and includes a quality end-user experience. Enterprise needs meets the admin trust bar, as well as an overall goal for productivity and collaboration. 

> [!NOTE]
> Only declarative and custom agents built with the [Microsoft 365 Agents Toolkit](https://aka.ms/M365AgentsToolkit) suite of tools can be submitted to Microsoft Commercial Marketplace. 

For more information about submitting your agent to the Microsoft Commercial Marketplace, see [Publish your app to the Teams Store](/microsoftteams/platform/concepts/deploy-and-publish/appsource/publish).

## Manage agent lifecycle

You can manage agents for Microsoft 365 Copilot Chat and Microsoft 365 Copilot in the Copilot Control System (CCS) within [Microsoft 365 admin center](https://admin.microsoft.com/). The CCS allows you to configure settings for Microsoft 365 Copilot, including the agents that you can manage and deploy to members of your organization.

✅ **Task: Consider following a deployment plan based on tiers or levels, where your organization rolls out agent capability based on stages and confirms expected availability for each rollout group.**

### Agent inventory

In Microsoft 365 admin center you can view your organization’s available agents and where members of your organization can find each agent based on supported functionality.

✅ **Task: Review and confirm your organization’s agent inventory in Microsoft 365 admin center. Modify agent availability for your organization to disable functionality that isn’t required.**

Use the following steps to view your organization’s agent inventory:

1. Open [Microsoft 365 admin center](https://admin.microsoft.com/) in your browser.
2. Select **Copilot** > **Agents**.
3. Filter your agent inventory:
    1. Next to **Filters**, select **Availability** > **All users**.
    Note the **Support in** column to recognize where the agent can be used by members of your organization.
    Clear all filters after reviewing the list.
    2. Below Agent inventory, select Missing an owner.
    Consider removing agents that no longer have an owner.
    Clear all filters after reviewing the list.
    3. Next to Filters, select Availability > No users.
    Note which agents aren't available to members of your organization. Consider specifically deploying agents that your organization requires and blocking unneeded agents.

### Pin agents

As an administrator, you can choose to pin a deployed agent to the **Agents** list within Microsoft 365 Copilot. By pinning agents in Microsoft 365 Copilot, you can ensure that those agents are visible and accessible for all members of your organization, or only specific users or groups. You can choose to pin and unpin agents. Also, you can rank the list of pinned agents.

✅ **Task: Review and confirm your organization’s pinned agents that are displayed in Microsoft 365 admin center.**

Microsoft 365 Copilot includes agents pinned by Microsoft, admins, and users. Microsoft pinned agents are specific agents that are pinned by default for all users. Admin pinned agents are pinned by you or your organization by using the Copilot Control System in Microsoft 365 admin center. User pinned agents are pinned by individual users in their own Microsoft 365 Copilot Chat or Microsoft 365 Copilot experience.

:::image type="content"  source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-pinned.png" alt-text="Screenshot of agents within Microsoft 365 Copilot."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-pinned.png":::

To set, view, or manage pinned agents for your organization, see [Manage Pinning of Agents](/microsoft-365/admin/manage/manage-pinning-agents).

### Upload custom agents

The Copilot Control System in Microsoft 365 admin center provides a method to upload a custom agent, so that you can manage those agents for your organization from your agent inventory. 

✅ **Task: Upload a custom agent directly to the Copilot Control System in Microsoft 365 admin center. Choose this option as an alternative to requiring the maker to publish the agent from Copilot Studio.**

To upload an agent, the agent must be contained in a ZIP packet file. The ZIP file contains resources, such as manifest files, configuration files, icons, branding, and embedded knowledge files. 

Your Copilot agent ZIP file can be downloaded from Copilot Studio by selecting **Agents** > *the name of your agent* > **Channels**. Select the channel you use to publish, such as **Teams and Microsoft 365 Copilot**. Select **Availability options** > **Download .zip**.

> [!NOTE]
> The ZIP packet file (.zip) can also be used to share agents. For more information, see [Sideload agents for personal use](#sideload-agents-for-personal-use).

To upload an agent as a ZIP packet file to the Microsoft 365 admin center:

1. Open Copilot Control System in [Microsoft 365 admin center](https://admin.microsoft.com/) in your browser.
2. Select **Copilot** > **Agents** > **Upload custom agent**.
3. Select **Choose File** to find and select the agent ZIP file.
    The ZIP file is validated.
4. Verify the agent’s name, icon, and host products. Then, select **Next**.
5. Select the assigned users. Then, select **Next**.

    > [!NOTE]
    > You can select a small audience for testing purposes. For instance, select **Just me**, or a single test group to narrow the availability of the agent.

6. Review the agent’s permissions and capabilities. Then, select **Next**.
7. Select Finish deployment to review and finish the agent’s deployment.

:::image type="content"  source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-deploy-new.png" alt-text="Screenshot of deploying a new agent within Microsoft 365 the Copilot Control System."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-deploy-new.png":::

To manage, assign, and publish the agent, see [Assign and deploy agents](#assign-and-deploy-agents).

## Assign and deploy agents

As an admin, you can manage the lifecycle of each agent available in your tenant by using actions. These agent actions include publishing, deploying, removing, and blocking. In addition, you can assign agents and deploy agents as separate actions. You can also manage the agents that members of your organization request to publish to your organizational catalog.

✅ **Task: Manage agents for your organization in Microsoft 365 admin center. Specifically, [publish](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#publish-agents), [deploy](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#deploy-agents), [remove](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#remove-agents), or [block](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#block-or-unblock-agents) individual agents for users and groups at your organization. Consider the potential for oversharing agent access based on agent details and capabilities.**

### Understand agent installation

There are specific Copilot agents that are preinstalled by Microsoft, however most agents are available to install by either the members of your organization, or by admins with appropriate rights.

#### Microsoft installed agents 
Certain Microsoft agents, such as Researcher and Analyst, are preinstalled and pinned to the light on the right within Microsoft 365 Copilot. [Pinned agents](#pin-agents) ensure that those agents are visible and accessible to members of your organization. In addition, you can control how these agents are [managed](#manage-agent-lifecycle), [assigned](#assign-agents), and [deployed](#deploy-agents) by using the Copilot Control System in Microsoft 365 admin center. For related information, see [Microsoft-installed agents and features](/copilot/microsoft-365/copilot-agent-install#microsoft-installed-agents-and-features).

#### Admin installed agents 
You, as the administrator, have control over the lifecycle management of the agents you make available at your organization. You can install agents by using the Copilot Control System in Microsoft 365 admin center. You can upload custom agents, assign existing agents, and deploy agents as well. You can also prevent oversharing by removing and blocking agents that are unneeded by your organization. For related information, see [Admin-installed agents](/copilot/microsoft-365/copilot-agent-install#admin-installed-agents).

#### User installed agents
Members of your organization can install agents from the [Agent Store](https://devblogs.microsoft.com/microsoft365dev/introducing-the-agent-store-build-publish-and-discover-agents-in-microsoft-365-copilot/). Given the tools and capability, they can also create agents using Copilot Studio, Agent Builder, and SharePoint. For related information, see [User-installed agents](/copilot/microsoft-365/copilot-agent-install#user-installed-agents), and [Agent sharing and publishing settings](#agent-sharing-and-publishing-settings).

#### Publish agents
Members of your organization can use Copilot Studio to create and publish agents. They can publish agents to multiple channels, such as live websites, mobile apps, Microsoft 365 Copilot or messaging platforms like Teams and Facebook.

✅ **Task: If members of your organization have created an agent using Copilot Studio, they can publish the agent to your organization with your help. Check for the requested agent in Copilot Control System in Microsoft 365 admin center. Publish or reject the agent from being made available to your organization.**

When members of your organization publish an agent to your organization using the Microsoft Teams and Microsoft 365 Copilot channel, the agent becomes available as a requested agent in the Copilot Control System in Microsoft 365 admin center. You can then approve the agent to make the agent available to users or groups within your organization. Once the agent has been reviewed and published from the Copilot Control System in Microsoft 365 admin center, you can show it in the Teams app store so users can find and install it.

For more information, see [Connect and configure an agent for Teams and Microsoft 365](/microsoft-copilot-studio/publication-add-bot-to-microsoft-teams), [Manage requested agents](#manage-requested-agents), and [Publish agents](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#publish-agents).

### Review available agents

Agents are listed in the [Agent inventory](#agent-inventory). The Agent inventory allows you to view a variety of details about each agent. For example, you can view the availability of an agent, view which apps the agent is supported in within your organization, and view the publisher of the agent. When you select an individual agent from the agent list, you can view and set additional details. For more information, see [Agent inventory](#agent-inventory).

✅ **Task: Confirm the capabilities, data sources, and custom actions that the agent can invoke.**

To view details about an individual agent:

1. Open the Copilot Control System within [Microsoft 365 admin center](https://admin.microsoft.com/) in your browser.
2. Select **Copilot** > **Agents**.
    You’ll see the **Agent inventory** tab is selected.
   
    :::image type="content" source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-inventory.png" alt-text="Screenshot of your agent inventory in Microsoft 365 admin center."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-inventory.png":::

3. Select an agent from the list.
4. Review the agent’s details, security, and compliance before to help determine whether an agent should be assigned to or available to users within your organization.
    a. Select the **Details** tab to review the **Capabilities**, **Knowledge**, and **Actions**. 
    b. Select the **Security & compliance** tab to review the agent’s overall certification.

### Assign agents

You can assign and unassign individual agents to users and groups within your organization. However, before you assign an agent, the available users and groups must be available within your tenant.

There are two different actions that involve assigning agents to members of your organization:

- **Available to**: Allows you to select members of your organization that can find and install an agent.
- **Deployed to**: Allows you to deploy an agent to members of your organization, or just yourself.

> [!NOTE]
> Before you assign an agent to users or groups, review the agent’s capabilities, knowledge, and actions. Also, consider the agent’s security and compliance. For more information, see [Review available agents](#review-available-agents).

✅ **Task: Control agent access based on individual and group assignments for your organization in Microsoft 365 admin center. Based on agent details and capabilities, consider agent access that isn’t required to prevent the potential of oversharing within your organization.**

To view details about an individual agent:

1. Open the Copilot Control System within [Microsoft 365 admin center](https://admin.microsoft.com/) in your browser.
2. Select **Copilot** > **Agents**.
    You’ll see the **Agent inventory** tab is selected.
3. Select an agent from the list.
4. Select the **Users** tab and select **Assign to**. 
5. Select to assign the agent based on one of the options:
    a. Just me
    b. Entire organization
    c. Specific users/groups
6. Confirm who in your organization can install the agent by selecting **Available to**.
 
   :::image type="content" source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-assign-available.png" alt-text="Screenshot of the 'Available to' setting for an agent in Microsoft 365 admin center."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-assign-available.png":::

7. Select **Update**.

The assigned users will be able to find and install the agent.

### Deploy agents

You can select and deploy individual agents to members of your organization.

By deploying an agent, you effectively install the agent on behalf of a user by accepting Microsoft Entra permissions for them. This action makes the agent active and usable for the users or groups you have selected.

✅ **Task: Deploy and install agents to members of your organization, rather than making the agents available for the users to install on their own.**

Use the following steps to deploy an individual agent:

1. Open the Copilot Control System within Microsoft 365 admin center in your browser.
2. Select **Copilot** > **Agents**.
    You'll see the **Agent inventory** tab is selected.
3. Select an agent from the list.
4. Select **Deploy**.
5. Review the agent **Host products**, then select **Next**.
6. Assign users
7. Select to assign the agent based on one of the options:
    a. Just me
    b. Entire organization
    c. Specific users/groups
    Then, select **Next**.
8. Review the agent permissions and capabilities, then select **Next**.
9. Review the deployment, then select **Finish deployment**.
10. When the deployment is complete, select **Done**.

   :::image type="content" source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-deployment-complete.png" alt-text="Screenshot of a completed agent deployment within Microsoft 365 admin center."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-deployment-complete.png":::

### Remove agents

You can remove an agent from the inventory for your organization. This action is applicable only for first-party or external agents. The agent can be readded to your inventory by acquiring it from the store.

When you remove an agent, it will no longer be available in Copilot or other host products, such as Teams or Outlook. For more information, see [Remove agents](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#remove-agents).

### Block agents

Blocking an agent prevents any users in the tenant from accessing the agent. This action ensures that the agent can't be used by anyone in the organization. For more information, see [Block or unblock agents](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#block-or-unblock-agents).

### Manage requested agents

Your organization can use Copilot Studio to create more advanced agents. These agents can be published to different channels within your organization, such as Microsoft 365 Copilot and Microsoft Teams. When an agent is published from Copilot Studio, the agent will be displayed in the Requested agents tab in the Microsoft 365 admin center.

✅ **Task: Review requested agents that have been created by your organization, as well as each agent’s metadata, in Microsoft 365 admin center.**

When an agent is submitted for admin approval, all metadata about an agent’s definition is provided in Microsoft 365 admin center. Select the Details tab for the agent to better understand the agent’s capabilities, data sources, and custom actions before allowing the agent to be published to your organization.

Use the following steps to view pending agent requests and act on those requests:

1. Open Copilot Control System in [Microsoft 365 admin center](https://admin.microsoft.com/) in your browser.
2. Select **Copilot** > **Agents** > **Requested agents**.
3. Select the requested agent and view the agent’s details.
    Confirm the capabilities, data sources, and custom actions that the agent can invoke.
4. Next to the name of the agent, select the action to **Publish** or **Reject** the agent.

For more information publishing requested agents, see [Publish agents](#publish-agents).

## Understand agent security, privacy, and compliance

Microsoft applies a multi-layered, defense-in-depth strategy to secure Microsoft 365 Copilot at every level, grounded in enterprise security, privacy, and compliance standards. Each aspect of this foundation forms a safer digital ecosystem for you and your organization to confidently adopt AI features and tools.

✅ **Task: Understand key components to Copilot agent governance.**

For more information, see the following resources:
- [Microsoft 365 Copilot Agent Management Essentials](agent-essentials-overview.md)
- [Zero Trust](/security/zero-trust/copilots/zero-trust-microsoft-365-copilot?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fbreadcrumb%2Ftoc.json#whats-in-this-article)
- [Responsible AI Standard](https://www.microsoft.com/ai/responsible-ai) 
- [Protect organizational data](agent-essentials-overview.md#protect-organizational-data)
- [Understand agent governance](#understand-agent-governance)

## Related content

- [Microsoft 365 Copilot adoption guide](/copilot/microsoft-365/microsoft-365-copilot-enablement-resources)
- [AI Adoption Score](/microsoft-365/admin/adoption/adoption-score)
- [Microsoft 365 Copilot agent usage reports](/microsoft-365/admin/activity-reports/microsoft-365-copilot-agents)
