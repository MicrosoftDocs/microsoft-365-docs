---
title: Agent handoff for Employee Self-Service agent
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 11/17/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
ms.localizationpriority: medium
ms.collection: m365copilot
description: "Learn about agent handoff for the Employee Self-Service agent."
appliesto:
- ✅ Microsoft 365 Copilot
---

# Agent Handoff for Employee Self-Service agent

Agent handoff allows the Employee Self-Service agent to delegate user queries to other specialized agents within the system. When a user prompt falls outside the Employee Self-Service agent's primary scope, but can be better handled by another agent in Microsoft 365 Copilot, agent handoff transfers the conversation to the appropriate agent.

These agents can include a line of business (LOB) agent published by the tenant from Microsoft 365 Copilot, Copilot Studio, or Azure Foundry, or a third-party agent available in the Microsoft 365 Copilot agent store, like Workday, Now Assist, or SAP Joule.

To enhance this, Employee Self-Service agent now supports contextual handoff, which passes both the conversation history and the user's original prompt to the target agent. This forwarding avoids a disconnected experience where users would have to repeat their query, providing a smooth transition and maintaining continuity.

This functionality is achieved through a @mention capability within the Employee Self-Service agent, which recommends and invokes the appropriate specialized agent. This design ensures employees receive the most accurate and context-aware responses all inside Employee Self-Service. Employees don't need to know which agent to talk to or navigate to other agents to get their queries answered. Agent handoff creates a unified and context-aware conversational experience that improves employee satisfaction.

## Creating Custom handoff Topics with the Sample Template

You can create your own handoff topics for specialized scenarios by using the sample handoff template provided. A sample template topic named **Agenthandoff-scenarioname** is found in the Employee Self-Service solution. We can use this template to create our own handoff topics.

### Locate the GPT ID of an agent

You need the GPT ID for Step 3 of [How to use the Sample Template:](#how-to-use-the-sample-template). To identify the GPT ID of your Copilot Agent in Microsoft 365 Chat, follow these steps:

1. **Open Developer Tools**
    1. In your browser, open the Microsoft 365 Chat experience.
    1. Select **F12** (or select and hold, and select **Inspect** from the context menu) to open the Developer Tools.
2. **Go to the Network tab**
    1. Navigate to the **Network** tab in Developer Tools.
    1. Ensure that you select the **Fetch/XHR** filter to capture API calls.
3. **Filter Requests**
    1.  In the search bar within the Network tab, enter **getGPTList**.
    1. This search filters the network requests to only show the relevant API calls that return the list of configured agents.
4. Inspect the response.
    1. Select any of the filtered getGPTList requests.
    1. Open the **Response** tab to view the JSON payload containing all agents configured in your environment.
5. **Find Your agent**
    1. Use Ctrl + F (Windows) or Cmd + F (Mac) to search for your target agent by name.
    1. Locate the field named **gptId** in the corresponding JSON object.
6. **Copy the GPT ID**
    1. Copy the value of the **gptId** field.
    1. This value uniquely identifies your Copilot Agent and is required for further configuration or integration steps.

### How to use the Sample Template:

1. **Clone the Topic**: Make a copy of the **Agenthandoff-scenarioname** topic and give it a descriptive name that reflects its purpose.
2. **Update the Topics Description**: In the cloned topic, edit the trigger node. In the **Describe what the topic does** section, provide a clear and comprehensive description of the user intents that should trigger this handoff. For better intent matching, add a set of valid example phrases. This description and examples are used by the model to route user queries correctly.
3. **Locate GptId of the Target Agent for Handoff**: This GptId uniquely identifies the agent within the Power Platform environment. You may need to check with the owner of the target agent to get its agent identifier.
4. **Set Handoff Agent ID**: In the topic's flow, find the **SetVariable** node that sets the **Topic.HandoffAgentId**. Replace the placeholder value with the GPT ID of the agent. See [Locate the GPT ID of an agent](#locate-the-gpt-id-of-an-agent) for the steps to get the GPT ID.
5. **Customize the User Message** (*Optional*): You can modify the message shown to the user before the handoff occurs. This message is defined in the **Question** node and informs the user they're being transferred to a specialist.

By following these steps, you can build and deploy custom routing logic to any agent in your ecosystem.

> [!NOTE]
> Handoff only works if the target agent is configured and available in the customer's environment.

## Handoff Accelerators

The Employee Self-Service agent solution comes with a set of preconfigured handoff topics that are designed to work with common enterprise systems. These topics serve as ready-to-use templates for routing queries to the correct specialized agent.

The available out-of-the-box handoff topics include:

|Table name                                 |Description  |Package       |
|-------------------------------------------|-------------|--------------|
|Workday employee handoff scenarios         |Routes queries about a user's own information, such as job function, contact details, education, leave balance, and providing feedback.  |Workday       |
|Workday manager handoff scenarios          |Routes queries related to a manager's direct reports, including service anniversaries, job functions, cost center, team goals, and employee transfers. |Workday       |
|ServiceNow ITSM employee handoff scenarios |Routes common IT-related tasks, such as requesting equipment or software, managing approvals, reporting asset issues, and reporting lost or damaged assets. |ServiceNow IT |

By default, all these topics are **disabled**. You must manually configure and enable them to activate the handoff functionality.

## Handoff in action

Check out [this video](https://www.youtube.com/watch?v=UzAOD6DreA0&list=PLR9nK3mnD-OUov7JnGBoy_u3TwSrIT1Ln&index=2) to see an example of the Employee Self-Service agent handoff.
