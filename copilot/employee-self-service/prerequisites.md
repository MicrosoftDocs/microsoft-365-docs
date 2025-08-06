---
title: Prerequisites to deploy the Employee Self-Service agent
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
description: Learn about the prerequisites you need to meet before deploying the Employee Self-Service agent.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Prerequisites to deploy the Employee Self-Service agent

>[!NOTE]
>The Employee Self-Service agent is currently in limited public preview. Deployment processes are subject to change before this product becomes generally available.

You need to confirm the following prerequisites are met before deploying the Employee Self-Service agent (ESS) to your organization.

## Licensing

The ESS Agent is built on top of Microsoft 365 Copilot. Users need the following licenses depending on the tools they use at work.

|Role                          |Workload/tools |Licensing and access |
|------------------------------|---------------|---------------------|
|Users                         |Microsoft 365 Copilot |[Microsoft 365 Copilot](../microsoft-365-copilot-licensing.md)       |
|Users                         |Microsoft Power Platform* |[Licensing overview for Power Platform](/power-platform/admin/pricing-billing-skus) </br>[Request limits and allocations](/power-platform/admin/api-request-limits-allocations)|
|Users                         |Microsoft Teams |[Manage user access to Microsoft Teams](/microsoftteams/user-access) |
|Environment admins and makers |Copilot Studio  |[Copilot Studio licensing and subscriptions](/microsoft-copilot-studio/requirements-licensing-subscriptions) |

*Premium licenses are required for some third-party connectors.

## Set up Copilot Studio capacity

The ESS agent uses agent flows. You need to set up the Copilot Studio capacity. [Learn about Copilot Studio capacity](/microsoft-copilot-studio/requirements-messages-management).

### Capacity planning

The ESS Agent operates on Copilot, requiring Copilot licenses. Users without assigned licenses are automatically billed on a Pay-as-you-go basis. [Learn how to set up your consumption meter](/power-platform/admin/pay-as-you-go-overview).

Users without Copilot licenses consume the ESS Agent, it requires proactive capacity planning to make sure the consumption cost is optimized for this usage. A basic guideline to follow is that any messages generated from LLM output incur more cost for users in the Pay-as-you-go plan.

The ESS agent performs LLM compute for the following scenarios in addition to the included Topics:

- Enabling Microsoft 365 Self-Help incurs LLM compute for determining the type of user query.
- Live agent hand-off package invokes LLM compute for summarizing the chat history and handing off to the live agent.

Use the following sample benchmarks to understand capacity planning for ESS agent deployment:

>[!IMPORTANT]
>These samples are for reference only. Each deployment of the ESS agent varies within the number of flows, actions, and more depending on the level of customization, including use of third-party ISV packages.

#### Sample 1: Last 28 days (28d)

|Capacity plan metric                  |Sample consumption      |
|--------------------------------------|------------------------|
|Enabled users                         |40,000                  |
|Monthly active users (MAU)            |1,100 (3% of activated) |
|Total conversations                   |5,129                   |
|Total interactions                    |6,917                   |
|Average interactions per conversation |1.34                    |
|Average conversations per user        |~5                      |
|Average interactions per user         |~6                      |

#### Sample 2: Last two months

|Capacity plan metric                  |Sample consumption      |
|--------------------------------------|------------------------|
|Enabled users                         |40,000                  |
|Monthly active users (MAU)            |2,075 (5% of activated) |
|Total conversations                   |11,000                  |
|Total interactions                    |16,000                  |
|Average interactions per conversation |1.45                    |
|Average conversations per user        |~5                      |
|Average interactions per user         |~8                      |

#### Sample 3

A sample capacity plan with costing for approximately 1,000 users:

|Scenario type |Knowledge search **without** user context cached |Knowledge search **with** user context cached |Topics |Verbatims |
|-------------|------------------|--------------|------------|----------|
|Example |What is the parental leave policy? |What is the parental leave policy? |What is my cost center #? |I'm being discriminated against |
|Frequency |81% |2% |14% |3% |
|Price for users without Microsoft 365 Copilot per query |16 cents |12 cents |5 cents |1 cent |

Steps breakdown:

**Knowledge search without user context cached**

- Agent orchestrator determines intent (scenario type): 0
- Flow actions for third-party call
  - 4 cents (33 actions x 13 cents / 100 actions for users without Microsoft 365 Copilot)
  - 0 for users with Microsoft 365 Copilot
- Tenant call for content: 10c
- Orchestrator summarizes content: 2c

**Knowledge search with user context cached**

- Agent orchestrator determines intent: 0
- Graph call for content: 10c
- Orchestrator summarizes content: 2c

**Topics**

- Agent orchestrator determines intent: 0
- Flow actions for third-party call:
  - 0 for users with Microsoft 365 Copilot
  - 4 cents (33 actions x 13 cents / 100 actions for users without Microsoft 365 Copilot)
- Non-LLM answer: 1c

**Verbatims**

- Agent orchestrator determines intent: 0
- Non-LLM answer: 1c

>[!NOTE]
>The average price per user without a Microsoft 365 Copilot license is 15 cents per query.

## Required roles

The ESS Agent includes several different technical components and configuration areas, which require different Microsoft 365 roles for deployment. We recommend you use the least privileged role possible to perform each necessary activity. For roles with elevated privileges, use just-in-time access.

|Role |Description |Activities performed |Configuration areas |
|-----|------------|---------------------|--------------------|
|Global admin |User who has permissions to configure and delegate other roles |Assign user roles |Microsoft admin center |
|Power Platform administrator |User who has power to configure Power Platform environments and assign roles within Power Platform |- Create environments </br> - Assign user roles </br> - Install ESS agent |- Power Platform </br> - Microsoft Copilot Studio |
|Power Platform maker |User who has permission to make changes in a specific Power Platform environment. We recommend you have the agent owner for this agent perform this role. |Configure ESS agent |- Power Platform </br> - Microsoft Copilot Studio |
|ISV administrators |Users who manage third-party solutions |Provide configuration inputs for ISV applications |ISV application's administration and configuration interface |
|Information security |Infrastructure team who manages and controls enterprise application security policies |- Allowlist inbound requests for ISV endpoints </br>- Manage single sign-on configurations |- Network firewall policies </br>- Single sign-on applications |
|Change control board |Team that manages changes in an organization relating to deploying an enterprise application |- Approve technical architecture </br> - Approve data security, compliance, and governance policies </br> - Approve responsible AI policies |N/A |

[Learn more about role-based security roles for Power Platform](/power-platform/admin/database-security)

### Nonconfiguration required roles

These roles don't need to work in the technical configuration areas, but they're crucial to the success of the agent.

- Human resources representatives
- Information technology representatives
- Legal and privacy representatives

All of these roles are responsible for:

- Identifying knowledge sources relating to their area of specialty
- Providing frequent queries
- Identifying sensitive topics
