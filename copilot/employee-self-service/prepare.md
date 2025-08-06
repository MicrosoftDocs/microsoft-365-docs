---
title: Prepare to deploy the Employee Self-Service agent
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
description: Learn about the first stage in the deployment process for the Employee Self-Service agent.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Prepare to deploy the Employee Self-Service agent

> [!NOTE]
> The Employee Self-Service agent is currently in limited public preview. Deployment processes are subject to change before this product becomes generally available.

Preparation is the first step to deploying the Employee Self-Service (ESS) agent. You need to meet the [prerequisites](prerequisites.md). The following roles are required to prepare the agent for deployment.

|Role                                           |Activities to perform |Configuration areas |
|-----------------------------------------------|----------------------|--------------------|
|Global admin                                   |Assign the Power Platform Administrator role. |Microsoft admin center |
|Power Platform Administrator                   |Assign the Environment Maker role. |Power Platform admin center |
|Environment Maker                              |Create environments required for customizing and testing the ESS agent. |Power Platform admin center and Microsoft Copilot Studio |
|InfoSec/IT Infrastructure/Change control board |Configure infrastructure requirements for third-party ISV integration. |Network firewall policies and single sign-on |

## Assign the Power Platform administrator role

1. Sign in as a Global admin to your [admin center](https://admin.microsoft.com).
1. Select **Roles**, then choose **Role assignments**.
1. In the **Microsoft Entra ID** section, find the **Power Platform Administrator** role.
1. Add identified users in the **Assigned** section.

## Set up your Power Platform environment and assign the Environment Maker role

1. Sign into the [Power Platform admin center](https://admin.powerplatform.microsoft.com) as a Power Platform administrator.
1. Create a new environment, or install the ESS agent on an existing environment.
1. Select **+New** in the ribbon to create a new environment. Configure the following features:
    1. **Make this environment a Managed Environment**: Enable or disable based on your governance.
    1. **Get new features early**: Not required.
    1. Add a **Dataverse data store**.
1. Under **Access**, select **Security roles**.
1. From the list of security roles, select **Environment Maker**. Choose **Members** in the top ribbon.
1. Select **Add people** in the ribbon to add the designated person who can configure and publish the ESS agent. This person is typically the agent owner in your organization.

> [!NOTE]
> Environment Makers can't install new agents. Only the environment administrators can install new agents.

> [!IMPORTANT]
> Important: Familiarize yourself with the Power Platform subscription plans and billing policies for your tenant. We recommend you perform initial [capacity planning](prerequisites.md#capacity-planning) before enabling and configuring the ESS agent to make sure you don't incur additional billing.

## Infrastructure setup for third-party ISV integration

Most organizations secure their third-party HR systems and knowledge sources from external networks to protect sensitive information about employees, organizations, knowledge assets, and other data.

You need to make these systems accessible to the Power Platform environment where the ESS agent is hosted in order to integrate them into the agent.

These systems must be configured with allowlists for the source IP addresses from the Power Platform environment where the ESS agent is hosted and executed.

[Learn about Power Platform URLs and IP address ranges](/power-platform/admin/online-requirements).

[Learn about Managed connectors outbound IP addresses](/connectors/common/outbound-ip-addresses#power-platform).

## Preparation checklist

Use the following checklist to make sure you're ready to move on to the next stage of deployment. If any of these checks fail, you need to repeat the steps in this article.

|Role                      |Verification steps |Result |
|--------------------------|-------------------|-------|
|Environment administrator |1. Sign into the Power Platform admin center. </br>2. Select Environments to confirm your newly created environment is listed. </br>3. Confirm the following settings for your new environment: Dataverse= yes, release cycle = standard. |Pass/Fail |
|Environment administrator |Confirm agents can be installed from Copilot Studio. |Pass/Fail |
|Environment maker         |Access your newly created environment from Copilot Studio. |Pass/Fail |
