---
title: Prerequisites to deploy the Employee Self-Service agent
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 11/05/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn about the prerequisites you need to meet before deploying the Employee Self-Service agent.
appliesto:
- ✅ Microsoft 365 Copilot
---

# Prerequisites to deploy the Employee Self-Service agent

You need to confirm the following prerequisites are met before deploying the Employee Self-Service agent to your organization.

## Licensing

The Employee Self-Service agent is built on top of Microsoft 365 Copilot. Users need the following licenses depending on the tools they use at work.

|Role                          |Workload/tools |Licensing and access |
|------------------------------|---------------|---------------------|
|Users                         |Microsoft 365 Copilot |[Microsoft 365 Copilot](../microsoft-365-copilot-licensing.md) |
|Users                         |Microsoft Teams |[Manage user access to Microsoft Teams](/microsoftteams/user-access) |
|Environment admins and makers |Copilot Studio  |[Copilot Studio licensing and subscriptions](/microsoft-copilot-studio/requirements-licensing-subscriptions) |
|Environment admins and makers |Microsoft 365 Copilot |[Microsoft 365 Copilot](../microsoft-365-copilot-licensing.md) |
|Environment admins and makers |Teams          |[Manage user access to Microsoft Teams](/microsoftteams/user-access) |

## Set up Copilot Studio capacity

The Employee Self-Service agent uses agent flows. You need to set up the Copilot Studio capacity. [Learn about Copilot Studio capacity](/microsoft-copilot-studio/requirements-messages-management?tabs=new#prepaid-capacity).

When there are users with no Microsoft 365 Copilot Chat licenses required to consume the Employee Self-Serve agent, an alternative option is to purchase Microsoft Copilot Studio prepaid message capacity.

## Configure Pay-As-You-Go (PayG) in the Power Platform Administration Center (PPAC)

> [!NOTE]
> The [Power Platform documentation](/power-platform/admin/pay-as-you-go-set-up?tabs=new) has detailed configuration steps.

To configure a Power Platform environment for the Employee Self-Service agent when there are PayG users using the agent:

- Create a billing plan in PPAC.
- Link an Azure subscription and resource group.
- Select the target environment.
- Choose Copilot Studio for the product.

> [!NOTE]
> When setting up PayG, this step is critical because Copilot Studio must be chosen as a product. This step isn't covered in the PPAC.

Users who don't have Microsoft 365 Copilot Chat licenses can consume the Employee Self-Service agent once when PayG is configured for the environment where the agent's deployed, provided tenant administrators in the Microsoft 365 admin center (MAC) deploy the agent for those users.

### Set up prepaid messages

See the [Power Platform documentation](/power-platform/admin/manage-copilot-studio-messages-capacity) for detailed steps in setting up prepaid messages.

When there are users with no Microsoft 365 Copilot Chat licenses required to consume ESS Agent, another alternative option is to purchase Microsoft Copilot Studio prepaid message capacity. 

## Capacity planning

The Employee Self-Service agent operates on Copilot, requiring Copilot licenses. Users without assigned licenses are automatically billed on a Pay-as-you-go basis. [Learn how to set up your consumption meter](/power-platform/admin/pay-as-you-go-overview).

Users without Copilot licenses consume the Employee Self-Service agent, it requires proactive capacity planning to make sure the consumption cost is optimized for this usage. A basic guideline to follow is that any messages generated from LLM output incur more cost for users in the Pay-as-you-go plan.

The Employee Self-Service agent performs LLM compute for the following scenarios in addition to the included Topics:

- Enabling Microsoft 365 Self-Help incurs LLM compute for determining the type of user query.
- Live agent hand-off package invokes LLM compute for summarizing the chat history and handing off to the live agent.

Use the following sample benchmarks to understand capacity planning for Employee Self-Service agent deployment:

>[!IMPORTANT]
>These samples are for reference only. Each deployment of the Employee Self-Service agent varies within the number of flows, actions, and more depending on the level of customization, including use of third-party external system solution packages.

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

> [!IMPORTANT]
> The above samples are only for reference. Each deployment of the Employee Self-Service agent varies with the number of flows, actions, and so on, depending on the level of customizations applied in the accelerator packages used to connect to other systems.

## Identity, authentication, and single sign-on (SSO)

The Employee Self-Service agent is built on Copilot Studio, which is part of Microsoft 365 stack. Microsoft 365 relies primarily on Entra ID as an Identity Provider (IdP), which means the Employee Self-Service agent also relies on Entra for user authentication.

There are organizations with multiple Identity Providers (IdPs) such as Okta, Ping, and so on, for managing user authentication. We expect you to have your identity store federated with Entra. We also expect that the other external systems, such as Workday, SAP SuccessFactors, and so on, that you intend to integrate with the Employee Self-Service agent may also use other IdPs for user authentication.

We recommend configuring single sign-on (SSO) in Entra, as the Employee Self-Service agent trusts Entra for authentication.

The following table lists the various authentication methods in the order of preference for the agent:

|Identity provider (IdP) |Workday |SAP SuccessFactors |ServiceNow |
|------------------------|--------|-------------------|-----------|
|Entra |1. [Entra ID](/connectors/workdaysoap/#microsoft-entra-id-integrated) </br>2. [Microsoft Entra ID integrated with API Management](/connectors/workdaysoap/#microsoft-entra-id-integrated-with-api-management) |1. [Microsoft Entra ID using SuccessFactor (Preview)](/connectors/sapodata/#microsoft-entra-id-using-successfactors-preview) </br>2. [Microsoft Entra ID integrated (with APIM)](/connectors/sapodata/#microsoft-entra-id-integrated-with-apim) |[Microsoft Entra ID user login](/connectors/service-now/#microsoft-entra-id-user-login) |
|Entra federated with a cloud-based third-party IdP |1. [Entra ID](/connectors/workdaysoap/#microsoft-entra-id-integrated) </br>2. [Microsoft Entra ID integrated with API Management](/connectors/workdaysoap/#microsoft-entra-id-integrated-with-api-management) |1. [Microsoft Entra ID using SuccessFactor (Preview)](/connectors/sapodata/#microsoft-entra-id-using-successfactors-preview) </br>2. [Microsoft Entra ID integrated (with APIM)](/connectors/sapodata/#microsoft-entra-id-integrated-with-apim) |[Microsoft Entra ID user login](/connectors/service-now/#microsoft-entra-id-user-login) |
|Entra NOT federated with any third-party IdP |1. [OAuth2.0](/connectors/workdaysoap/#microsoft-entra-id-integrated-with-api-management) </br>2. [Basic](/connectors/workdaysoap/#basic) |1. [Basic](/connectors/workdaysoap/#basic) |1. [OAuth2.0](/connectors/workdaysoap/#microsoft-entra-id-integrated-with-api-management) </br>2. [Basic](/connectors/workdaysoap/#basic) |

## Required roles

The ESS Agent includes several different technical components and configuration areas, which require different Microsoft 365 roles for deployment. We recommend you use the least privileged role possible to perform each necessary activity. For roles with elevated privileges, use just-in-time access.

|Role |Description |Activities performed |Configuration areas |
|-----|------------|---------------------|--------------------|
|Global admin |User who has permissions to configure and delegate other roles |Assign user roles |Microsoft admin center |
|Power Platform administrator |User who has power to configure Power Platform environments and assign roles within Power Platform |- Create environments </br> - Assign user roles </br> - Install the Employee Self-Service agent |- Power Platform </br> - Microsoft Copilot Studio |
|Power Platform maker |User who has permission to make changes in a specific Power Platform environment. We recommend you have the agent owner for this agent perform this role. |Configure the Employee Self-Service agent |- Power Platform </br> - Microsoft Copilot Studio |
|External system administrators |Users who manage third-party solutions |Provide configuration inputs for external systems to be integrated with Employee Self-Service agents. |Administration and configuration interface |
|Information security |Infrastructure team who manages and controls enterprise application security policies |- Allowlist inbound requests for external system endpoints </br>- Manage single sign-on configurations |- Network firewall policies </br>- Single sign-on applications |
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
