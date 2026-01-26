---
title: Prepare to deploy the Employee Self-Service agent
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 11/12/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn about the first stage in the deployment process for the Employee Self-Service agent.
appliesto:
- ✅ Microsoft 365 Copilot
---

# Prepare to deploy the Employee Self-Service agent

Preparation is the first step to deploying the Employee Self-Service agent. You need to meet the [prerequisites](prerequisites.md). The following roles are required to prepare the agent for deployment.

|Role                                           |Activities to perform |Configuration areas |
|-----------------------------------------------|----------------------|--------------------|
|Global admin                                   |Assign the Power Platform Administrator role. |Microsoft admin center |
|Power Platform Administrator                   |Assign the Environment Maker role. |Power Platform admin center |
|Environment Maker                              |Create environments required for customizing and testing the Employee Self-Service agent. |Power Platform admin center and Microsoft Copilot Studio |
|InfoSec/IT Infrastructure/Change control board |Configure infrastructure requirements for external systems integration. |Network firewall policies and single sign-on |

## Power Platform environment strategy for the Employee Self-Service agent

The Employee Self-Service agent starters are tailored to each vertical, such as HR or IT, and each starter comes with its own unique set of topics and connectors. While it may be necessary to use separate Power Platform environments for better governance, if you want to link these vertical-specific agent starters to a single, central agent, we advise you to keep all the vertical agent starters within one Power Platform environment.

## Assign the Power Platform administrator role

1. Sign in as a Global admin to your [admin center](https://admin.microsoft.com).
1. Select **Roles**, then choose **Role assignments**.
1. In the **Microsoft Entra ID** section, find the **Power Platform Administrator** role.
1. Add identified users in the **Assigned** section.

## Set up your Power Platform environment

- To learn more about managed environments, refer to this [Power Platform article](/power-platform/admin/managed-environment-overview) about managed environments.
- To learn more about creating a new Power Platform, refer to this [Power Platform article](/power-platform/admin/create-environment?tabs=new) about environment creation.
- To create an environment with a Dataverse database, refer to these [Power Platform instructions](/power-platform/admin/create-environment?tabs=new%22%20\l%20%22create-an-environment-with-a-database).

## Assign the Environment Maker role

- To assign a security role to a user, refer to these [Power Platform instructions](/power-platform/admin/assign-security-roles?tabs=new).
- To understand the role-permissions model, refer to these [Power Platform instructions](/power-platform/admin/security-roles-privileges?tabs=new).

> [!NOTE]
> Environment Makers can't install new agents. Only the environment administrators can install new agents.

> [!IMPORTANT]
> Important: Familiarize yourself with the Power Platform subscription plans and billing policies for your tenant. We recommend you perform initial [capacity planning](prerequisites.md#capacity-planning) before enabling and configuring the Employee Self-Service agent to make sure you don't incur additional billing.

> [!CAUTION]
> Environments created with the Dataverse Database have the **System Administrator** role. This role has full permission to customize or administer the environment, including creating, modifying, and assigning security roles. This role can view all data in the environment. This built-in role can't be modified.

## Allow the external systems connector within Power Platform

Most enterprise organizations have Data Loss Prevention (DLP) policies setup for maintaining security and compliance within their Power Platform ecosystem. The connectors that need to be used with the Employee Self-Service agent must be allowed within Power Platform for the connector to be available for customization.

Work with your enterprise information security and/or Power Platform administrators to allowlist the connectors to be used with the Employee Self-Service agent.

## Infrastructure setup for external systems integration

Most organizations secure their third-party HR systems and knowledge sources from external networks to protect sensitive information about employees, organizations, knowledge assets, and other data.

You need to make these systems accessible to the Power Platform environment where the Employee Self-Service agent is hosted in order to integrate them into the agent.

These systems must be configured with allowlists for the source IP addresses from the Power Platform environment where the Employee Self-Service agent is hosted and executed.

[Learn about Power Platform URLs and IP address ranges](/power-platform/admin/online-requirements).

[Learn about Managed connectors outbound IP addresses](/connectors/common/outbound-ip-addresses#power-platform).

## Preparation checklist

Use the following checklist to make sure you're ready to move on to the next stage of deployment. If any of these checks fail, you need to repeat the steps in this article.

|Role                      |Verification steps |Result |
|--------------------------|-------------------|-------|
|Environment administrator |1. Sign into the Power Platform admin center. </br>2. Select Environments to confirm your newly created environment is listed. </br>3. Confirm the following settings for your new environment: Dataverse= yes, release cycle = standard. |Pass/Fail |
|Environment administrator |Confirm agents can be installed from Copilot Studio. |Pass/Fail |
|Environment maker         |Access your newly created environment from Copilot Studio. |Pass/Fail |
