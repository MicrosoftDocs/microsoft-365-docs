---
title: Microsoft 365 Copilot agents FAQ
f1.keywords:
ms.author: erikre
author: ErikRe
manager: dansimp
ms.date: 11/13/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
description: Get answers to frequently asked questions about Microsoft 365 Copilot agents governance.
---

# Microsoft 365 Copilot agents FAQ

## Do I need an agent or a connector? How do I get started?

Whether you need an agent or a connector depends on your business needs. Copilot agents support specialized workflows and experiences, whereas connectors help add knowledge to Microsoft 365 intelligence experiences, including Copilot.

- **Copilot agents** extend the functionality of Copilot by acting as specialized AI assistants tailored to specific domains or use cases. You can use agents to extend Copilot's knowledge, automate workflows, and deliver tailored user experiences in Microsoft Teams, Outlook, SharePoint, or custom apps. You can create a declarative agent using Copilot's AI infrastructure, model, and orchestrator. Or, for complex workflows or specific language models, you can create a custom agent. For more information, see [Agents for Microsoft 365 Copilot](/microsoft-365-copilot/extensibility/agents-overview).
- **Copilot connectors** enable you to ingest data, such as unstructured, line-of-business data, into the Microsoft Graph so that Copilot can reason over that data alongside other data. There are more than 100 prebuilt Copilot connectors available, and the Connectors API can be used to create custom connectors. For more information, see [Microsoft 365 Copilot Connectors](/microsoft-365-copilot/extensibility/overview-copilot-connector).

To get started, [review our planning guide](/microsoft-365-copilot/extensibility/planning-guide), which can help you define your business need, and determine whether you need an agent or a connector. Also see [Understand available agent options](m365-agents-admin-guide.md#understand-available-agent-options).

## What kinds of Copilot agents are available?

There are two main types of Copilot agents you can create: 

- **[Declarative agents](/microsoft-365-copilot/extensibility/agents-overview#declarative-agents)**, which use Copilot's AI infrastructure, model, and orchestrator. These agents are built using low-code tools like Agent Builder or pro-code tools like Visual Studio, Visual Studio Code, and the Microsoft 365 Agents Toolkit. Declarative agents run in Microsoft 365 Copilot and Microsoft 365 apps like Teams, Outlook, and SharePoint.
- **[Custom engine agents](/microsoft-365-copilot/extensibility/agents-overview#custom-engine-agents)**, which are fully customized AI assistants. These agents require hosting outside of Microsoft 365, and are typically built using low-code Copilot Studio or pro-code tools like Visual Studio, Visual Studio Code, and Agents Toolkit, using languages such as .NET, Python, and JavaScript, and frameworks like Semantic Kernel or LangChain.

For more information, see the following articles:

- [Choose what type of agent to build](/microsoft-365-copilot/extensibility/agents-overview#choose-what-type-of-agent-to-build)
- [Understand available agent options](m365-agents-admin-guide.md#understand-available-agent-options)

## Who can create, build, and share Copilot agents?

- **Users** can create declarative agents in Agent Builder or SharePoint if enabled by tenant settings (requires Copilot license or subscription)
- **Makers** can use Copilot Studio (lite or full) for low-code agents
- **Developers** can use Copilot Studio SDK or Agents Toolkit for pro-code agents. Developers can also [submit agents to the marketplace](/copilot/microsoft-365/agent-essentials/agent-policies/agent-submit-marketplace)
- Both **Makers** and **Developers** can add actions, connectors, and advanced logic in Copilot Studio or via the Microsoft 365 Agents Toolkit

People in your organization can also [sideload agents](/copilot/microsoft-365/agent-essentials/agent-policies/agent-sideload), [share agents](/microsoft-365/admin/manage/manage-shared-agents), and [publish agents](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#publish-agents), according to tenant policies and admin controls that are configured in the Microsoft 365 admin center. 

For more information, see the following articles:

- [Microsoft 365 Copilot agents admin guide](m365-agents-admin-guide.md)
- [Manage access to Copilot agents](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps#manage-access-to-copilot-agents)

## What tools do I need to create, build, implement, and use Copilot agents?

Depending on what you want to do, Copilot agent tools are available, as summarized in the following table:

| Scenario | Tool |
|--|--|
| Use out-of-the-box Copilot capabilities | **Copilot in Microsoft 365 apps** (Word, Excel, PowerPoint, Outlook, Teams) |
| Build low-code declarative agents | **Copilot Studio** (lite or full) |
| Build pro-code declarative or custom agents | **Teams Toolkit** or **Microsoft 365 Agents SDK** |
| Administer and govern agents | **Microsoft 365 Admin Center** and **Copilot Control System** |

Make sure to review the following resources:

- [Microsoft 365 Copilot agents admin guide](/copilot/microsoft-365/agent-essentials/m365-agents-admin-guide)
- [Planning guide for Copilot extensibility options](/microsoft-365-copilot/extensibility/planning-guide)

## What governance or controls are available for agents?

The following governance options are available for Copilot agents:

- **[Copilot Control System](/copilot/microsoft-365/copilot-control-system/overview)**: Unified dashboard for managing Copilot and agents
- **[Microsoft Purview](/purview/ai-microsoft-purview)**: Compliance, audit, and eDiscovery across all extensibility options
- **Admin Centers**: [Microsoft 365 Admin Center](/microsoft-365/admin/admin-overview/admin-center-overview) and [Power Platform Admin Center](/microsoft-365/admin/admin-overview/admin-center-overview) for configuration and enforcement.

See [Understand agent security, privacy, and compliance](m365-agents-admin-guide.md#understand-agent-security-privacy-and-compliance).

## Can administrators monitor Copilot agent usage? 

Yes. Reports are available to help administrators monitor licenses, agents, and deployments. Custom reports can also be created. See [Copilot Control System measurement and reporting](/copilot/microsoft-365/copilot-control-system/security-governance).

## Can administrators control data sources used by Copilot agents and connectors?

Yes, administrators can control data sources that are used. Administrators can also configure Copilot features, specify sharing permissions, block or unblock agents, and more.

- Administrators can use **Copilot Control System** for agents and **Power Platform Admin Center** for connectors
- **Microsoft Purview** provides unified audit and compliance across all extensibility options
- Inventory and lifecycle controls help manage shared or ownerless agents

For more information, see the following resources:

- [Manage Microsoft 365 Copilot agents and integrated apps](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps)
- [Microsoft 365 Copilot connectors overview](/microsoft-365-copilot/extensibility/overview-copilot-connector)

## How does an agent access data?  

Agents run under an identity, whether it's the user's identity or a managed identity (or service principal) associated with the agent for autonomous tasks. Data access is enforced by organizational security. An agent can use APIs or connectors according to existing permissions assigned. 

Role-based access control (RBAC) is part of the enforcement model. Administrators can restrict agent creation and usage in the Copilot Control System and enforce RBAC policies across environments.

For more information, see the following articles:

- [Copilot Control System security and governance](/copilot/microsoft-365/copilot-control-system/security-governance)
- [Understand agent security, privacy, and compliance](m365-agents-admin-guide.md#understand-agent-security-privacy-and-compliance)

## What controls should administrators implement for Copilot agents?

In general, administrators should take the following actions:

- Use the [Copilot Control System](/copilot/microsoft-365/copilot-control-system/overview) for centralized governance, security, and measurement
- Use [Purview DSPM for AI](/purview/dspm-for-ai?tabs=m365) to identify and mitigate oversharing and insider risks
- Configure [integrated apps settings](/copilot/microsoft-365/microsoft-365-copilot-app-admin-settings) for extensibility enablement and granular controls

For more information, see [Microsoft 365 Copilot agents admin guide](/copilot/microsoft-365/agent-essentials/m365-agents-admin-guide).

## Additional resources

- [Microsoft 365 Copilot agents admin guide](/copilot/microsoft-365/agent-essentials/m365-agents-admin-guide)
- [Microsoft 365 Copilot agents deployment blueprint](m365-agents-blueprint.md)
- [Microsoft 365 agents deployment checklist](m365-agents-checklist.md)
- [Microsoft 365 Copilot agents visual guide](m365-agents-visual-map.md)