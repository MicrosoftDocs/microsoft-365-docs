---
title: Overview of the Employee Self-Service agent
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 7/3/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
robots: NOINDEX, NOFOLLOW
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn about the Employee Self-Service agent and the steps you need to follow to deploy it to your organization.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Overview of the Employee Self-Service agent

>[!NOTE]
>The Employee Self-Service agent is currently in limited public preview. Deployment processes are subject to change before this product becomes generally available.

The Employee Self-Service (ESS) agent answer policy-related questions, assist with IT help, and simplify HR tasks to help your employees. The agent makes it easier to:

- Retrieve the right information at the right time in the flow of work. Users can access the agent in the environments they already work, including Teams and Microsoft 365 Copilot Chat.
- Take action on essential HR and IT tasks without navigating to multiple tools and workspaces. ESS can even help run diagnostics on Microsoft 365 products and services.
- Complete other tasks important for your organization. The ESS agent includes preconfigured templates, but IT admins can also customize it for their employee workflows. You can even connect it to third-party HR and IT systems.

## What's new

|Version  |Changes |
|---------|--------|
|1.0.0.64 |Hard agent handoff base template without context passing (Topic is disabled by default). |
|1.0.0.66 |Internal licensing validation |
|1.0.0.62 |ESS package name to Employee Self-Service Agent |
|1.0.0.61 |No functional changes |
|1.0.0.60 |Added default starter prompts |
|1.0.0.59 |Internal naming standards fix |
|1.0.0.58 |Supported back the UserContext flow among ESS Core package and ISV packages.</br> The UserContext setup is the same as existing way of adding ISV specific user context topics as redirected topics in the topic "[Admin] - User Context - Setup" |
|1.0.0.71 |  |

## Get started with the Employee Self-Service agent

The Employee Self-Service agent is built on top of Microsoft 365 Copilot and Copilot Studio. The following articles can help you understand governance, security, privacy, and Responsible AI terms for both Microsoft 365 Copilot and Microsoft Copilot Studio.

### Microsoft 365 Copilot resources

Before you deploy the Employee Self-Service agent, read through the documentation and familiarize yourself with the areas of deployment and configuration. The ESS agent inherits the Copilot stack, which needs to be considered for initial installation and for operational policies. You can refer to the [Copilot hub](/copilot/microsoft-365) for documentation on architecture, trust, security, compliance, and best practices in Microsoft 365 Copilot.

- [Microsoft 365 Copilot hub](../index.yml)
- [Overview of Microsoft 365 Copilot.](../microsoft-365-copilot-overview.md)
- [Microsoft 365 Copilot architecture](../microsoft-365-copilot-architecture.md)
- [Address oversharing concerns in Microsoft 365 Copilot deployment blueprint](../microsoft-365-copilot-blueprint-oversharing.md)
- [Microsoft 365 Copilot privacy](../microsoft-365-copilot-privacy.md)
- [Microsoft 365 Copilot service description](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot)
- [What is responsible AI?](https://support.microsoft.com/topic/what-is-responsible-ai-33fc14be-15ea-4c2c-903b-aa493f5b8d92)

### Microsoft Copilot Studio resources

- [Copilot Studio documentation home](/microsoft-copilot-studio)
- [Topics in Copilot Studio](/microsoft-copilot-studio/guidance/topics-overview)
- [Analytics in Copilot Studio](/microsoft-copilot-studio/analytics-overview)
- [Copilot Studio security and governance](/microsoft-copilot-studio/security-and-governance)
- [Personal data requests for Copilot Studio](/microsoft-copilot-studio/personal-data-summary)
- [Responsible AI in Copilot Studio](/microsoft-copilot-studio/responsible-ai-overview)

## Roles and responsibilities

The ESS Agent involves multiple roles across different service areas. Operators in each of these areas should understand the configuration entirely for better operational efficiency.

The **Admin** works in the Microsoft admin center to assign roles.

The **Maker** works in Microsoft Copilot Studio to configure the agent. The maker sets up user context, knowledge sources (including M365 data and ISV connectors), topics, and ISV packages. All of this information goes through orchestration to reach the end user.

The **End user** accesses the Employee Self-Service agent in Microsoft 365 Chat or through Microsoft Teams.

## Structure of the Employee Self-Service agent

The Employee Self-Service agent consists of three main parts: the agent itself, domain topic packages, and Power Platform connectors and actions.

[![Infographic showing the structure of the Employee Self-Service agent.](../media/ess/structure-big.png)](../media/ess/structure-big.png#lightbox)

[Learn more about how Copilot architecture works](../microsoft-365-copilot-architecture.md)
