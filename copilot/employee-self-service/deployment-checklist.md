---
title: A checklist for deploying the Employee Self-Service agent
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
description: An overview guide for deploying the Employee Self-Service agent.
appliesto:
- ✅ Microsoft 365 Copilot
---

# Employee Self-Service agent quick-start setup guide

This article has a checklist to help you set up and deploy the Employee Self-Service agent in Copilot Studio quickly to start seeing value right away. Begin with the essentials for a fast launch and have the flexibility to expand into more advanced scenarios later.

## Overview of deployment steps

|Step |Focus                                       |Time          |Goal                             |
|-----|--------------------------------------------|--------------|---------------------------------|
|1    |Power Platform environment                  |15-30 minutes |Create the workspace.            |
|2    |Install Employee Self-Service agent starter |10 minutes    |Prepare the base agent.          |
|3    |Brand your agent                            |15 minutes    |Employee trust.                  |
|4    |Add knowledge source                        |30 minutes    |Instant value.                   |
|5    |Customize topics                            |30 minutes    |Provide relevant answers.        |
|6    |Refine instructions                         |15 minutes    |Have a consistent tone.          |
|7    |Add agent                                   |20 minutes    |Expand reach.                    |
|8    |Test and publish                            |20 minutes    |Go live.                         |
|9    |Grow over time                              |Ongoing       |Continually refine and improve.  |

## Step 1: Set up your Power Platform environment

**What you're doing**: Creating the workspace your Employee Self-Service agent lives in and securely connect it to your organization's data and systems.

**Why this step matters**: Each Power Platform environment acts as a secure sandbox, keeping your configurations isolated, compliant, and easy to manage.

### Deployment steps checklist

- Create or confirm your Power Platform environment.
- [Verify](prepare.md) you have Maker and Admin permissions.
- Ensure Dataverse is enabled.
- Confirm you can access Copilot Studio in this environment.

### Deployment steps documentation

|Article  |Purpose  |
|---------|---------|
|[Prepare to deploy Employee Self-Service Agent](prepare.md) |Covers prerequisites for deployment. |
|[Work with Power Platform environments in Copilot Studio](/microsoft-copilot-studio/environments-first-run-experience) |Covers how agents live in environments, how to create and switch them, and best practices. |
|[Design your Copilot Studio production environment strategy](/microsoft-copilot-studio/guidance/project-design-production-environment-strategy) |Information on shared versus dedicated environments and design considerations. |
|[Governance and Security best practices](/microsoft-copilot-studio/guidance/sec-gov-phase2) |Environment isolation, ALM, DLP policies, and so on. |

## Step 2: Install the Employee Self-Service agent starter

**What you're doing**: Customers should begin by deploying either the Employee Self-Service HR agent or the Employee Self-Service IT agent with the out-of-the-box Employee Self-Service template that comes preconfigured with HR or IT scenarios, respectively. With the upcoming multi-agent preview, customers have the flexibility to configure both Employee Self-Service HR and IT agents within the same environment. If customers start with a single vertical agent (HR or IT), they can migrate their existing configuration to the multi-agent architecture later.

**Why this step matters**: Installation gives you a working foundation that ensures your setup follows best practices for employee service delivery.

### Installation checklist

- In Copilot Studio, select **Create** > **Managed Agents**, and pick which version of the Employee Self-Service Agent you want to start with: **HR** or **IT**.
- Name your agent (for example, "Ask HR" or "IT Help Desk").
- Confirm successful installation in your environment. In Copilot Studio, select **Agents** to confirm the newly created agent is listed.

### Installation documentation

|Article                                           |Purpose                        |
|--------------------------------------------------|-------------------------------|
|[Install Employee Self-Service Agent](install.md) |Covers the installation steps. |

## Step 3: Brand and personalize your agent

**What you're doing**: Adding your company's branding, such as name, logo, and tone, to make the experience feel familiar to employees.

**Why this step matters**: Branding builds trust and drives adoption by giving your agent a friendly, recognizable personality.

### Branding checklist

- Add your organization's logo and color theme.
- Update the agent name and welcome message.
- Set a conversational tone that fits your culture.

### Branding documentation

|Article  |Purpose  |
|---------|---------|
|Microsoft Copilot Studio documentation |Branding and setup context. |
|Agent Builder and customize sections |Covers the **Configure** tab for editing the agent's name, description, logo, and instructions. |
|Customize Employee Self-Service Agent | How to customize the agent to suit your organization's needs. |

## Step 4: Add your first knowledge source

**What you're doing**: Connecting your Employee Self-Service agent to an internal knowledge base (for example, SharePoint or OneDrive).

**Why this step matters**: Starting with knowledge retrieval scenarios delivers quick value. Employees can immediately ask policy or process questions and get the answers they need.

### Knowledge source checklist

- Connect a SharePoint site or document library.
- Start with HR or IT FAQs (for example, "How do I update my benefits?").
- Test responses in Copilot Studio's test bot.

### Knowledge source Documentation

|Article                                           |Purpose                         |
|--------------------------------------------------|--------------------------------|
|[Install Employee Self-Service Agent](install.md) | Covers the installation steps. |

## Step 5: Customize Topics 

**What you're doing**: Tailoring topics so your agent understands and responds to the most relevant employee questions.

**Why this step matters**: Topics define what the agent listens for. A few well-crafted topics ensure quick success and reduce noise.

### Customizing topics checklist

- Review prebuilt topics in the Employee Self-Service agent template.
- Rename or edit content to fit your organization's language.
- Add 3–5 custom topics for your top employee needs.

### Customizing topics documentation

|Article  |Purpose  |
|---------|---------|
|[Topics in Copilot Studio](/microsoft-copilot-studio/guidance/topics-overview) |What topics are, how to author them, trigger phrases, nodes, and so on. |
|[Use Copilot Studio Agent Builder to build agents](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build) |Includes topic authoring context in the agent builder. |

## Step 6: Refine agent instructions

**What you're doing**: Adjusting system and behavior instructions to guide how the agent responds.

**Why this step matters**: Good instructions ensure the right tone, accuracy, and escalation path.

### Refining agent instructions checklist

- Review the system message ("You're the Employee Self-Service agent for...").
- Define fallback or escalation behaviors.
- Save and publish your updates.

### Refining agent instructions documentation

|Article  |Purpose  |
|---------|---------|
|[Copilot Studio Agent Builder (**Configure Describe** tab)](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build) |Shows where you edit instructions, system messages, and how they sync. |
|[Orchestrate agent behavior with generative AI](/microsoft-copilot-studio/advanced-generative-actions) |Gives context on how instructions influence topic selection and fallback logic. |

## Step 7: Add another agent for handoff (Optional for a unified entry point)

**What you're doing**: Linking your Employee Self-Service agent to another agent (like Workday or ServiceNow) to complete tasks.

**Why this step matters**: Handoffs expand what your Employee Self-Service agent can do without rebuilding workflows. For example, "view my leave balance" can seamlessly hand off to the Workday agent.

### Agent checklist

- Identify a system where an agent already exists.
- Add it as another agent handoff in the **Agents** tab of the Employee Self-Service agent in Copilot Studio.
- Test the handoff flow end-to-end.

### Agent documentation

|Article                                                                  |Purpose                                            |
|-------------------------------------------------------------------------|---------------------------------------------------|
|[Add other agents](/microsoft-copilot-studio/authoring-add-other-agents) |Information about adding agents in Copilot Studio. |

## Step 8: Test and publish

**What you're doing**: Testing your agent before making it available to employees.

**Why this step matters**: Testing ensures a polished experience from day one.

### Test and publish checklist 

- Use Test Bot in Copilot Studio to simulate questions.
- Validate responses for clarity and accuracy.
- Publish to Microsoft Teams or Copilot for pilot users.
- Gather early feedback and refine.

### Test and publish documentation

|Article  |Purpose  |
|---------|---------|
|[Use Copilot Studio Agent Builder to build agents](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build) |Includes how to test the agent in the builder/test pane. |
|[Manage agents for Microsoft 365 Copilot](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps) |Explains how to publish, deploy, enable, or disable agents using the Microsoft 365 admin UI. |
|[Using agents in Microsoft 365 Copilot Chat](/copilot/agents) |Covers how agents show up in Copilot Chat, enabling and billing.|

## Step 9: Grow over time

**What you're doing**: Building on your foundation as your confidence and needs evolve.

**Why this step matters**: The Employee Self-Service agent grows with your organization. You can gradually enable advanced features and integrations.

### Ideas for later

- Add more knowledge sources (Workday, ServiceNow, SuccessFactors).
- Configure task-completion scenarios.
- Enable multilingual responses.
- Monitor analytics and feedback trends.

### Growth documentation

|Article  |Purpose  |
|---------|---------|
|[Configure and create multilingual agents](/microsoft-copilot-studio/multilingual) |Adding secondary languages and enabling Employee Self-Service Agent to respond in more languages than English. |
|[Build enhanced connectors with the Power Platform Connector SDK](/power-platform/release-plan/2025wave1/microsoft-copilot-studio/build-enhanced-connectors-power-platform-connector-sdk-powerfx) |Building tailored connectors to systems. |
|[Orchestrate agent behavior with generative AI](/microsoft-copilot-studio/advanced-generative-actions) |Adding generative orchestration, combining topics/tools/knowledge. |
|[Design your Copilot Studio production environment strategy](/microsoft-copilot-studio/guidance/project-design-production-environment-strategy) |Scaling and environment strategy as your OSS agent grows. |
|[Phase 2 of Governance and Security best practices](/microsoft-copilot-studio/guidance/sec-gov-phase2) |Scaling securely, ALM, and governance. |
