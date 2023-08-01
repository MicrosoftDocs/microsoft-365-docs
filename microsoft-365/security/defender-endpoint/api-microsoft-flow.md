---
title: How to use Power Automate Connector to set up a Flow for events
ms.reviewer: 
description: Use Microsoft Defender for Endpoint Flow connector to create a flow that will be triggered anytime a new event occurs on your tenant.
keywords: flow, supported apis, api, Microsoft flow, query, automation, power automate
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: how-to
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# How to use Power Automate Connector to set up a Flow for events

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Automating security procedures is a standard requirement for every modern Security Operations Center (SOC). For SOC teams to operate in the most efficient way, automation is a must. Use Microsoft Power Automate to help you create automated workflows and build an end-to-end procedure automation within a few minutes. Microsoft Power Automate supports different connectors that were built exactly for that.  

Use this article to guide you in creating automations that are triggered by an event, such as when a new alert is created in your tenant. Microsoft Defender API has an official Power Automate Connector with many capabilities. 

:::image type="content" source="images/api-flow-0.png" alt-text="The Actions page in the Microsoft Defender 365 portal" lightbox="images/api-flow-0.png" :::

> [!NOTE]
> For more information about premium connectors licensing prerequisites, see [Licensing for premium connectors](/power-automate/triggers-introduction#licensing-for-premium-connectors).

## Usage example

The following example demonstrates how to create a Flow that is triggered anytime a new Alert occurs on your tenant. You'll be guided on defining what event starts the flow and what next action will be taken when that trigger occurs.  

1. Log in to [Microsoft Power Automate](https://make.powerautomate.com).

2. Go to **My flows** \> **New** \> **Automated-from blank**.

    :::image type="content" source="images/api-flow-1.png" alt-text="The New flow pane under My flows menu item in the Microsoft Defender 365 portal" lightbox="images/api-flow-1.png":::

3. Choose a name for your Flow, search for "Microsoft Defender ATP Triggers" as the trigger, and then select the new Alerts trigger.

    :::image type="content" source="images/api-flow-2.png" alt-text=" The Choose your flow's trigger section in the Microsoft Defender 365 portal" lightbox="images/api-flow-2.png" :::

Now you have a Flow that is triggered every time a new Alert occurs.

:::image type="content" source="images/api-flow-3.png" alt-text="A trigger description" lightbox="images/api-flow-3.png":::

All you need to do now is choose your next steps.
For example, you can isolate the device if the Severity of the Alert is High and send an email about it.
The Alert trigger provides only the Alert ID and the Machine ID. You can use the connector to expand these entities.

### Get the Alert entity using the connector

1. Choose **Microsoft Defender ATP** for the new step.

2. Choose **Alerts - Get single alert API**.

3. Set the **Alert ID** from the last step as **Input**.

    :::image type="content" source="images/api-flow-4.png" alt-text="The Alerts pane"  lightbox="images/api-flow-4.png":::

### Isolate the device if the Alert's severity is High

1. Add **Condition** as a new step.

2. Check if the Alert severity **is equal to** High.

   If yes, add the **Microsoft Defender ATP - Isolate machine** action with the Machine ID and a comment.

    :::image type="content" source="images/api-flow-5.png" alt-text="The Actions pane"  lightbox="images/api-flow-5.png":::

3. Add a new step for emailing about the Alert and the Isolation. There are multiple email connectors that are easy to use, such as Outlook or Gmail.

4. Save your flow.

You can also create a **scheduled** flow that runs Advanced Hunting queries and much more!

## Related topic
- [Microsoft Defender for Endpoint APIs](apis-intro.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
