---
title: Microsoft Defender for Endpoint Flow connector
ms.reviewer: 
description: Use Microsoft Defender for Endpoint Flow connector to automate security and create a flow that will be triggered any time a new alert occurs on your tenant.
keywords: flow, supported apis, api, Microsoft flow, query, automation
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
MS.technology: mde
ms.custom: api
---

# Microsoft Power Automate (formerly Microsoft Flow), and Azure Functions

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Automating security procedures is a standard requirement for every modern Security Operations Center. The lack of professional cyber defenders forces SOC to work in the most efficient way and automation is a must. Microsoft Power Automate supports different connectors that were built exactly for that. You can build an end-to-end procedure automation within a few minutes.

Microsoft Defender API has an official Power Automate Connector with many capabilities.

:::image type="content" alt-text="Image of edit credentials1." source="images/api-flow-0.png":::

> [!NOTE]
> For more details about premium connectors licensing prerequisites, see [Licensing for premium connectors](/power-automate/triggers-introduction#licensing-for-premium-connectors).


## Usage example

The following example demonstrates how to create a Flow that is triggered any time a new Alert occurs on your tenant.

1. Log in to [Microsoft Power Automate](https://flow.microsoft.com).

2. Go to **My flows** \> **New** \> **Automated-from blank**.

    :::image type="content" alt-text="Image of edit credentials2." source="images/api-flow-1.png":::

3. Choose a name for your Flow, search for "Microsoft Defender ATP Triggers" as the trigger, and then select the new Alerts trigger.

    :::image type="content" alt-text="Image of edit credentials3." source="images/api-flow-2.png":::

Now you have a Flow that is triggered every time a new Alert occurs.

:::image type="content" alt-text="Image of edit credentials4." source="images/api-flow-3.png":::

All you need to do now is choose your next steps.
For example, you can isolate the device if the Severity of the Alert is High and send an email about it.
The Alert trigger provides only the Alert ID and the Machine ID. You can use the connector to expand these entities.

### Get the Alert entity using the connector

1. Choose **Microsoft Defender ATP** for the new step.

2. Choose **Alerts - Get single alert API**.

3. Set the **Alert ID** from the last step as **Input**.

    :::image type="content" alt-text="Image of edit credentials5." source="images/api-flow-4.png" lightbox="images/api-flow-4.png":::

### Isolate the device if the Alert's severity is High

1. Add **Condition** as a new step.

2. Check if the Alert severity **is equal to** High.

   If yes, add the **Microsoft Defender ATP - Isolate machine** action with the Machine ID and a comment.

    :::image type="content" alt-text="Image of edit credentials6." source="images/api-flow-5.png" lightbox="images/api-flow-5.png":::

3. Add a new step for emailing about the Alert and the Isolation. There are multiple email connectors that are very easy to use, such as Outlook or Gmail.

4. Save your flow.

You can also create a **scheduled** flow that runs Advanced Hunting queries and much more!

## Related topic
- [Microsoft Defender for Endpoint APIs](apis-intro.md)
