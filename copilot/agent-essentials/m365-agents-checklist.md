---
title: Microsoft 365 Agents Checklist
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
description: Learn about Microsoft 365 Agents.
---

# Microsoft 365 agents deployment checklist

This checklist is intended to assist admins with the successful deployment of Copilot agent governance. This checklisdt provides a comprehensive guide to help you understand, set up, manage, and deploy agents.

**Required administrators for the engagement**:

- **Microsoft 365 admin** - Setup Copilot agent and connectors settings.
- **Microsoft Power Platform admin** - Setup Copilot Studio policies and settings.
- **Microsoft 365 Search admin** - Setup Microsoft 365 Graph connector configurations. 
- **Microsoft Azure admin** - Setup Azure subscription configurations.

**Deployment phases**:

  :::image type="content" source="/copilot/microsoft-365/agent-essentials/media/m365-agents-checklist/agent-deployment-phases.png" alt-text="Diagram of the Copilot agent deployment phases."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-checklist/agent-deployment-phases.png":::
  
**Downloadable resources**:

- [Microsoft 365 Copilot agents blueprint](m365-agents-blueprint.md)
- [Microsoft 365 Copilot agents visual guide](m365-agents-visual-map.md)

## Manage Microsoft 365 Copilot agent access and availability policies

Agent policies refer to the tenant settings you can make as an administrator in the Copilot Control System within Microsoft 365 admin center. Agent policies relate to the available settings for all agents in your tenant.

| Step  | Task  | Description  | Administrator  |
|---|---|---|---|
| 1  | [Manage access to Microsoft 365 Copilot agents](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fbreadcrumb%2Ftoc.json#manage-access-to-copilot-agents)  | Control how your users interact with agents:<ul><li>Choose who can access agents</li><li>Choose which type of agents users are allowed to install</li></ul>  | Copilot administrator, SharePoint administrator, Copilot Studio administrator |
| 2  | [Share and publish Microsoft 365 Copilot agents](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps)  | Agent sharing methods:<ul><li>[Sideload agents for personal use](/copilot/microsoft-365/agent-essentials/agent-policies/agent-sideload)</li><li>[Shared agent with others](/microsoft-365/admin/manage/manage-shared-agents?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fbreadcrumb%2Ftoc.json)</li><li>[Publish custom agents to your organization](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fbreadcrumb%2Ftoc.json#publish-agents)</li><li>[Submit agents to the marketplace](/copilot/microsoft-365/agent-essentials/agent-policies/agent-submit-marketplace)</li></ul>  | Copilot administrator, SharePoint administrator, Copilot Studio administrator |

## Choose the right Copilot Studio experience

As an admin, you can configure and deploy out-of-the-box agents without having to create and publish a new agent. However, when your organization needs to customize Copilot functionality, members of your organization can create agents. Understand the different types of agents that can be created, shared, and deployed at your organization based on the method your organization uses to create agents. 

| Step  | Task  | Description  | Administrator  |
|---|---|---|---|
| 1  | [Choose the right Copilot Studio experience](/microsoft-365-copilot/extensibility/copilot-studio-experience)  | Agent development tools:<ul><li>[Create SharePoint agents](https://support.microsoft.com/office/create-a-sharepoint-agent-d16c6ca1-a8e3-4096-af49-67e1cfdddd42)</li><li>[Use Agent Builder to create declarative agents](/microsoft-365-copilot/extensibility/copilot-studio-lite)</li><li>[Use Copilot Studio to create agents](/microsoft-copilot-studio/microsoft-copilot-extend-copilot-extensions?context=%2Fmicrosoft-365-copilot%2Fextensibility%2Fcontext)</li><li>[Use Microsoft 365 Agents Toolkit to create agents](/microsoft-365/developer/overview-m365-agents-toolkit?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fbreadcrumb%2Ftoc.json)</li></ul>  | Copilot administrator, SharePoint administrator, Copilot Studio administrator |
| 2  | [Plan your agent](/microsoft-365-copilot/extensibility/planning-guide)  | Define your objectives, technical requirements, costs, RAI considerations, and development approach. |  |
| 3  | [Consider licensing and cost options](/microsoft-365-copilot/extensibility/cost-considerations)  | Before you create an agent, consider the associated licensing and consumption costs.  |  |
| 4  | [Set up your development environment](/microsoft-365-copilot/extensibility/prerequisites)  | If your creating a custom agent, consider how you set up your development environment.  | Copilot administrator, SharePoint administrator, Copilot Studio administrator, Teams Administrator |

## Create agents in Agent Builder

Members of your organization can create declarative agents that they can share across your organization using Agent Builder. For more information, see [Create agents in Agent Builder](/microsoft-365-copilot/extensibility/agents-overview).

| Step  | Task  | Description  | Administrator  |
|---|---|---|---|
| 1  | [Understand Agent Builder creation process](/microsoft-365-copilot/extensibility/copilot-studio-lite-build)  | Quickly build declarative agents using natural language or by configuring the agent.  | Copilot administrator, Microsoft 365 administrator |
| 2  | [Add knowledge sources to an agent](/microsoft-365-copilot/extensibility/copilot-studio-lite-build#add-knowledge-sources)  | Agent Builder allows end users to configure knowledge sources for the agent to reference.  | Copilot administrator, Microsoft 365 administrator |
| 3  | [Add capabilities to an agent](/microsoft-365-copilot/extensibility/copilot-studio-lite-build#add-capabilities)  | Agent Builder allows end users to add and configure capabilities, such as the Code interpreter and Image generator.  | Copilot administrator, Microsoft 365 administrator |
| 4  | [Share and manage agents](/microsoft-365-copilot/extensibility/copilot-studio-lite-share-manage-agent)  | End users can share and manage agents they create using Agent Builder. |  |
| 5  | [Download agent ZIP file and provide to admin](/microsoft-365-copilot/extensibility/copilot-studio-lite-share-manage-agent#deploy-an-agent-via-zip-package)  | Agent Builder provides an option to download a Zip file for manual deployment. | Copilot administrator, Microsoft 365 administrator |

## Understand application lifecycle management with Copilot Studio

Application lifecycle management (ALM) is the lifecycle management of applications and agents, which includes governance development and maintenance. You can implement ALM using Power Apps, Power Automate, Power Pages, Microsoft Copilot Studio, and Microsoft Dataverse. Key areas of ALM include governance, application development, and maintenance. For more information, see [Application lifecycle management (ALM) with Microsoft Power Platform](/power-platform/alm/).

| Step  | Task  | Description  | Administrator  |
|---|---|---|---|
| 1  | [Plan your environment strategy for your agent]( /power-platform/alm/environment-strategy-alm)  | Understand environment principles related to ALM.  | Microsoft Power Platform admin |
| 2  | [Understand solution concepts related to your agent]( /power-platform/alm/solution-concepts-alm)  | Understand solution concepts related to ALM.  | Microsoft Power Platform admin |
| 3  | Consider agent related change management and versioning  | Understand agent related version control, changelog, and rollback procedures for agent deployments.  | Microsoft Power Platform admin |
| 4  | [Understand key concepts for Copilot Studio security and governance](/microsoft-copilot-studio/security-and-governance)  | Understand security and governance controls and processes.  | Microsoft Power Platform admin |
| 5  | [Understand key Copilot Studio configuration settings](/microsoft-copilot-studio/guidance/sec-gov-config-settings)  |  Review tenant-level, environment-level, and agent-level settings in Copilot Studio.  | Microsoft Power Platform admin |

## Create agents in Copilot Studio

When you need to provide powerful AI assistants that retrieve real-time insights and act on behalf of users, as well as create specialized workflows, you can use Copilot Studio to create custom agents.

| Step  | Task  | Description  | Administrator |
|---|---|---|---|
| 1  | [Understand how to extend Microsoft 365 Copilot with agents](/microsoft-copilot-studio/microsoft-copilot-extend-copilot-extensions?context=%2Fmicrosoft-365-copilot%2Fextensibility%2Fcontext)  | Learn how to create and configure a custom agent using Copilot Studio.  | Copilot administrator, Microsoft 365 administrator |
| 2  | [Add knowledge sources](/microsoft-copilot-studio/knowledge-copilot-studio)  | Knowledge sources allow your agents to provide relevant information and insights for your customers.  | Copilot administrator, Microsoft 365 administrator |
| 3  | [Add tools](/microsoft-copilot-studio/advanced-plugin-actions)  | Tools expand the functionality of your agent, allowing it to perform various actions in response to user requests or autonomous triggers. | Copilot administrator, Microsoft 365 administrator |
| 4  | [Add other agents](/microsoft-copilot-studio/authoring-add-other-agents)  | Copilot Studio lets you enhance your agents by connecting them to other agents, allowing them to hand off user interactions or respond to autonomous triggers. | Copilot administrator, Microsoft 365 administrator |
| 5  | [Add topics](/microsoft-copilot-studio/authoring-create-edit-topics)  | A topic defines how an agent conversation progresses.  | Copilot administrator, Microsoft 365 administrator |
| 6  | [Add triggers](/microsoft-copilot-studio/authoring-triggers-about)  | Event triggers allow your agent to act autonomously in response to the defined event occurring.  | Copilot administrator, Microsoft 365 administrator |
| 7  | [Publish an agent](/microsoft-copilot-studio/publication-fundamentals-publish-channels)  | You can publish agents to engage with your customers on multiple platforms or channels, such as live websites, mobile apps, Microsoft 365 Copilot or messaging platforms like Teams and Facebook.  | Copilot administrator, Microsoft 365 administrator |

## Manage Microsoft 365 Copilot agent inventory and lifecycle

You can manage your organization’s available agents in the Copilot Control System (CCS) within Microsoft 365 admin center.

| Step  | Task  | Description  | Administrator  |
|---|---|---|---|
| 1  | [Setup Role-Based Access Control (RBAC) to manage Agents in M365](/microsoft-365/admin/manage/manage-agents-permissions)  | Understand types of [admin permissions](/copilot/microsoft-365/agent-essentials/agent-prerequisites) to consider related to Copilot agents.  | Copilot administrator, Microsoft 365 administrator |
| 2  | [Manage agent inventory for declarative agents created with Agent Builder](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps)  | You can manage your organization’s available agents in the Copilot Control System (CCS) within Microsoft 365 admin center.<p>Actions include:<ul><li>[Manage shared agent](/microsoft-365/admin/manage/manage-shared-agents)</li><li>[Pin agents](/microsoft-365/admin/manage/manage-pinning-agents)</li></ul>  | Copilot administrator, Microsoft 365 administrator |
| 3  | Manage agent inventory for declarative and custom agents created with Copilot Studio  | Your organization can manage agents created with Copilot Studio.<p>Actions include:<ul><li>[Manage requested agents](/copilot/microsoft-365/agent-essentials/agent-lifecycle/agent-copilot-studio-requested)</li><li>[Upload custom agents](/copilot/microsoft-365/agent-essentials/agent-lifecycle/agent-upload-agents)</li><li>[Manage agent inventory](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#agent-inventory)</li></ul>  | AI administrator, Global admininistrator, Global reader (view-only, no edit) |
| 4  | [Manage Copilot connectors](/microsoft-365-copilot/extensibility/overview-copilot-connector)  | Microsoft 365 Copilot connectors provide a platform for you to ingest your unstructured, line-of-business data into Microsoft Graph, so that Microsoft 365 Copilot can reason over the entirety of your enterprise content.<p>Additional information:<ul><li>[Copilot connectors requirements](/microsoft-365-copilot/extensibility/overview-copilot-connector#requirements-for-copilot-connectors)</li><li>[Set up Microsoft 365 Copilot connectors](/microsoftsearch/configure-connector)</li><li>[Staged rollout for Microsoft 365 Copilot connectors](/microsoftsearch/staged-rollout-for-graph-connectors)</li><li>[Customize connector configuration](/microsoftsearch/configure-connector#step-4-customize-connector-configuration-optional)</li></ul>  | Copilot administrator, Microsoft 365 administrator |
| 5  | Assign and deploy an agent  | For more information, see [Manage agent inventory](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#agent-inventory).  | Copilot administrator, Microsoft 365 administrator |

## Manage Data Access - Data security, compliance, and governance

Effective governance and security are essential for managing Copilot agents across your enterprise. For more information see, [Governance and security best practices overview](/microsoft-copilot-studio/guidance/sec-gov-intro). 

| Step  | Task  | Description  | Administrator  |
|---|---|---|---|
| 1  | Manage agent access to third-party systems  | Managing agent access to third-party systems include the following:<ul><li>[M365 Copilot connectors usage](/microsoft-365-copilot/extensibility/overview-copilot-connector)</li><li>[Power Platform connectors](/connectors/overview)</li><li>[MIcrosoft Graph connector agent for on-premises data](/microsoftsearch/graph-connector-agent)</li></ul>  | GCA machine administrator, Search administrator, or Copilot administrator |
| 2  | Manage oversharing of SharePoint content | Understand oversharing by reviewing the following resources:<ul><li>[M365 Copilot with SharePoint Advanced Management](/sharepoint/get-ready-copilot-sharepoint-advanced-management)</li><li>[Microsoft Purview Data Security Posture Management (DSPM) for AI](/purview/dspm-for-ai?tabs=m365)</li><li>[Address oversharing concerns in Microsoft 365 Copilot deployment](/copilot/microsoft-365/microsoft-365-copilot-blueprint-oversharing)</li></ul> | Microsoft Entra ID Compliance administrator, Microsoft Entra ID Global administrator, Microsoft Purview Compliance administrator, SharePoint Online administrator |
| 3  | Manage auditing and reporting  | Understand auditing and reporting by reviewing the following resources:<ul><li>[Audit log for Copilot Studio](/microsoft-copilot-studio/admin-logging-copilot-studio)</li><li>[Use Microsoft Purview Data Security Posture Management (DSPM) for AI](/purview/data-security-posture-management-get-started)</li><li>[Configure Microsoft Sentinel to injest the audit logs](/azure/sentinel/relate-alerts-to-incidents?toc=/copilot/microsoft-365)</li></ul>  | Security administrator |
| 4  | Manage data security  | Understand data security by reviewing the following resources:<ul><li>[Information Protection](/purview/information-protection)</li><li>[Data loss prevention (DLP)](/purview/dlp-learn-about-dlp)</li></ul>  | Security administrator |
| 5  | Manage data compliance  | Understand data compliance by reviewing the following resources:<ul><li>[Compliance Manager](/purview/compliance-manager)</li><li>[Communication Compliance](/purview/communication-compliance-copilot)</li><li>Search Copilot and agent data<ul><li>[eDiscovery](/purview/ediscovery-search-and-delete-copilot-data)</li><li>[Audit Log](/microsoft-copilot-studio/admin-logging-copilot-studio)</li><li>[Purview DSPM for AI](/purview/data-security-posture-management-get-started)</li></ul></li><li>[Retention policy support for Copilot](/purview/retention?tabs=table-overriden)</li></ul>  | Security administrator, Communication Compliance administrator, Communication Compliance investigators, Communication Compliance analysts |

## Manage pay-as-you-go billing and Copilot Capacity Pack

The Microsoft 365 Copilot pay-as-you-go plan offers a flexible and cost-effective way for organizations to access Copilot services.

| Step  | Task  | Description  | Administrator  |
|---|---|---|---|
| 1  | Understand Copilot licensing  | As part of your Microsoft 365 Copilot adoption, make sure you have the right Microsoft 365 subscription plan. For more information, see the following resources:<ul><li>[Microsoft 365 Copilot license options](/copilot/microsoft-365/microsoft-365-copilot-licensing)</li><li>[Copilot Studio license options](/microsoft-copilot-studio/billing-licensing)</li></ul>  |  |
| 2  | [Understand Microsoft 365 Copilot pay-as-you-go plan](/copilot/microsoft-365/pay-as-you-go/overview)  | The Microsoft 365 Copilot pay-as-you-go service offers a usage-based option for organizations to access Copilot services, like Microsoft 365 Copilot Chat. For more information, see the following resources:<ul><li>[Set up pay-as-you-go for Microsoft 365 Copilot services](/copilot/microsoft-365/pay-as-you-go/setup)</li><li>[Use Copilot Studio prepaid capacity packs for Microsoft 365 Copilot](/copilot/microsoft-365/pay-as-you-go/copilot-capacity-packs)</li><li>[View costs and billing for Microsoft 365 Copilot pay-as-you-go](/copilot/microsoft-365/pay-as-you-go/view-cost)</li></ul>  | Global administrator, Billing administrator, AI administrator |
| 3  | [Understand Copilot Studio billing rates and management](/microsoft-copilot-studio/requirements-messages-management)  | There are rates for the different features and capabilities used in agents. For more information, see the following resources:<ul><li>[Set up Copilot Studio pay-as-you-go consumptive meter](/microsoft-copilot-studio/requirements-messages-management#set-up-pay-as-you-go-consumptive-meter)</li><li>[View Copilot Credit consumption](/microsoft-copilot-studio/requirements-messages-management#view-copilot-credit-consumption)</li><li>[Copilot Studio Agent Consumption Estimator](https://microsoft.github.io/copilot-studio-estimator/)</li><li>[Understand Copilot Credit event scenarios](/microsoft-copilot-studio/requirements-messages-management#copilot-credits-and-events-scenarios)</li></ul>  |  |
| 4  | [Microsoft 365 Copilot agent usage reports](/microsoft-365/admin/activity-reports/microsoft-365-copilot-agents)  |  You can view the adoption of agents in Microsoft 365 Copilot in your organization using Microsoft 365 reports in the admin center.  |  |