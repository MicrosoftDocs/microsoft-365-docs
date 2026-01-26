---
# Required metadata
# For more information, see https://learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata
# For valid values of ms.service, ms.prod, and ms.topic, see https://learn.microsoft.com/en-us/help/platform/metadata-taxonomies

title: Set up Frontline Agent
description: This article shows how to configure and deploy the Frontline Agent.
author:      npienkowska # GitHub alias
ms.author:   npienkowska # Microsoft alias
manager: viseshag
ms.service: microsoft-365
ms.topic: article
ms.date:     01/05/2026
ms.subservice: add-ins
---

# Set up Frontline Agent for frontline workers

### Overview

Frontline Agent is an AI‑powered assistant in Microsoft 365 Copilot and Microsoft Teams designed to support frontline workers and managers in their day‑to‑day operations. It helps frontline teams stay informed, complete tasks, and access the right information at the right time, all within the flow of work.

Frontline Agent works alongside Teams chats, channels, and existing Microsoft 365 services such as SharePoint, enabling organizations to scale frontline communication and operations without introducing new tools or workflows.

Built on Microsoft 365, Frontline Agent works within your existing Microsoft Teams security and compliance framework. You can use Microsoft Purview to mitigate and manage the risk associated with AI usage, including with Frontline Agent [here](/purview/ai-microsoft-purview). 

The agent is currently rolling out for users with a Microsoft 365 Copilot license. As an IT administrator, you set up Frontline Agent to ensure it aligns with your organization’s policies for security, compliance, and device management.

### What scenarios does Frontline Agent enable?

__Quick access to information and guidance__

Frontline Agent allows workers to quickly find answers, documents, and guidance from approved sources such as SharePoint or Teams channels. This quick guidance is essential in environments with frequent employee turnover or limited time for training.

__Catch up on missed communications at the start of a shift__

Frontline Agent helps frontline workers quickly catch up on important messages, updates, and tasks at the start of a shift without scrolling through long chat histories. It summarizes relevant conversations and highlights any actions that need to be taken, reducing missed information.

__Draft end-of-shift handovers__

Frontline Agent helps frontline managers create clear and consistent end‑of‑shift handovers, ensuring continuity across shifts. It summarizes completed work, flags open items, and captures key updates that need to be passed to the next shift all from Teams chat and channel messages. 

### Prerequisites

1. __Identify the scenarios and training plan:__ Based on your organization's frontline workflows and the agent's capabilities, establish the most likely used prompts. Share these prompts with your frontline workers and set up a one-time training session to help them understand how to use the agent.

2. __Select an initial group of users:__ We suggest launching the agent at a few locations that are already using Microsoft Teams so you can observe how your frontline workers are adopting the use cases.

1. __Purchase Microsoft 365 Copilot and assign licenses:__ Work with your sales team to purchase Microsoft 365 Copilot licenses for the initial set of users.

### How to set it up

The agent is discoverable from the Microsoft 365 Copilot app store for all users who have the Microsoft 365 Copilot license. To pin the agent for those users in Microsoft 365 Copilot, click [here](/microsoft-365/admin/manage/agent-registry?). If you’d like the agent to also show up in the Teams chat rail or scope down the SharePoint sites the agent has access to, follow these instructions.

> [!NOTE]
> If you don’t scope down to a set of SharePoint sites, the agent provides answers from all the sites each user has access to.

1. Go to **Teams Admin center** > **Frontline management** > **Manage frontline teams** and then select **Agents**.

    :::image type="content" alt-text="Screenshot indicates Agents page." source="media/setupfrontlineagent/managefrontlineteamsagents.png" lightbox="media/setupfrontlineagent/managefrontlineteamsagents.png":::

2. Click **Frontline Agent**. To limit the agent to specific SharePoint sites, paste in each Home site URL. If you add 10 sites and a user only has access to two, the agent uses information from only those two sites.

    :::image type="content" alt-text="Screenshot indicates Agent Configuration Page and two SharePoint site URLs." source="media/setupfrontlineagent/2agentsharepointscoping.png" lightbox="media/setupfrontlineagent/2agentsharepointscoping.png":::

3. Select **Manage apps** at the top or by navigating to **Teams apps** > **Manage apps**. Search for and select **Frontline Agent**. 

    :::image type="content" alt-text="Screenshot indicates Manage apps screen with Frontline Agent selected." source="media/setupfrontlineagent/3manageapps.png" lightbox="media/setupfrontlineagent/3manageapps.png":::

4. Select **Users and groups**.

    :::image type="content" alt-text="Screenshot indicates Users and groups screen." source="media/setupfrontlineagent/4usersandgroups.png" lightbox="media/setupfrontlineagent/4usersandgroups.png":::

5. Select **Edit availability** and specify the set of individuals or Microsoft 365 group you want to deploy the agent to. Click **Apply**.

    :::image type="content" alt-text="Screenshot indicates Edit availability screen on the right pane with group Seattle Store 121 selected." source="media/setupfrontlineagent/5editagentavailability.png" lightbox="media/setupfrontlineagent/5editagentavailability.png":::

6. Go to **Teams apps** > **Setup policies** and click **Add**.

    :::image type="content" alt-text="Screenshot indicates App setup policies page which has two policies and an Add button." source="media/setupfrontlineagent/6setuppolicies.png" lightbox="media/setupfrontlineagent/6setuppolicies.png":::

7. Add a name for your policy. Then, click **Add apps**.

    :::image type="content" alt-text="Screenshot indicates a policy with the name of Frontline Agent policy and a button in the middle of the page titled Add apps." source="media/setupfrontlineagent/7addapps.png" lightbox="media/setupfrontlineagent/7addapps.png":::

8. Search for Frontline Agent and click **Add**. Then, select **Save**.

    :::image type="content" alt-text="Screenshot indicates user searching for Frontline Agent in the Add installed apps right pane." source="media/setupfrontlineagent/8addinstalledapps.png" lightbox="media/setupfrontlineagent/8addinstalledapps.png":::

9. Then, click the checkmark to the left of the name of the policy and click **Manage users** and then **Assign users**. Add the set of individuals and click **Apply**. 

    :::image type="content" alt-text="Screenshot indicates that Frontline Agent policy is on the App setup policies page and user can click to Assign users." source="media/setupfrontlineagent/9assignpolicy.png" lightbox="media/setupfrontlineagent/9assignpolicy.png":::

10. The Frontline Agent sends a welcome message from the Microsoft Teams chat rail to each user. Your users can now use the agent!
