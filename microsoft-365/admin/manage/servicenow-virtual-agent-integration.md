---
title: "Integrate Microsoft 365 with ServiceNow Virtual Agent"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 10/21/2022
audience: Admin
ms.topic: integration
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_TOC
ms.custom: AdminSurgePortfolio
ROBOTS: NOINDEX, NOFOLLOW
search.appverid:
- MET150
description: "Configure support integration to test and provide the Microsoft 365 support integration team with feedback."
---

# Integrate Microsoft 365 with ServiceNow Virtual Agent

When you configure the Microsoft 365 support integration app to work with ServiceNow Virtual Agent, you access the self-help created by Microsoft 365 product teams through two different user experiences:

- Microsoft 365 step-by-step and walk-through solutions.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-support-integration-2.png" lightbox="../../media/ServiceNow-guide/servicenow-support-integration-1.png" alt-text="Quick Insights.":::
    :::image type="content" source="../../media/ServiceNow-guide/servicenow-support-integration-2b.png" lightbox="../../media/ServiceNow-guide/servicenow-support-integration-2b.png" alt-text="Quick Insights.":::

- Top web search results from Microsoft 365 knowledge base articles.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-support-integration-1.png" lightbox="../../media/ServiceNow-guide/servicenow-support-integration-1.png" alt-text="Knowledge base article search results.":::

## Before you begin

- Enable Virtual Agent in ServiceNow. For details, see [Activate Virtual Agent](https://docs.servicenow.com/bundle/quebec-now-intelligence/page/administer/virtual-agent/task/activate-virtual-agent.html).

- Install and complete the setup of the Microsoft 365 support integration app from the ServiceNow Store.

- Minimum version of ServiceNow: Rome.

- Role required: ServiceNow admin or virtual_agent_admin.

## Configure Microsoft 365 support integration to work with ServiceNow Virtual Agent

### Standalone fallback topic

Set Microsoft 365 Support as your fallback topic. For details, see [Configure a Virtual Agent chat experience](https://docs.servicenow.com/bundle/quebec-now-intelligence/page/administer/virtual-agent/task/configure-default-chat-experience.html).

:::image type="content" source="../../media/ServiceNow-guide/servicenow-support-integration-3.png" lightbox="../../media/ServiceNow-guide/servicenow-support-integration-3.png" alt-text="Set default chat experience fallback topic.":::

### Topic blocks

If you don’t have any topic created, you can use the standalone fallback topic as above or [create your own virtual agent topic](https://docs.servicenow.com/bundle/rome-now-intelligence/page/administer/virtual-agent/task/create-virtual-agent-topic.html).

Follow these steps to add the Microsoft 365 Support topic block:

1. Under **Utilities**, select **Topic Block**, and add it to your flow.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-topic-block-1.png" lightbox="../../media/ServiceNow-guide/servicenow-topic-block-1.png" alt-text="Add a topic block to your flow.":::

1. Under **Topic Block Properties**, choose **Microsoft 365 Support Topic Block**.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-topic-block-2.png" lightbox="../../media/ServiceNow-guide/servicenow-topic-block-2.png" alt-text="Choose the Support Topic Block property.":::

1. A Microsoft 365 Support Topic Block accesses input text in this order:

    a. Checks for input variable. If the input variable is not empty, fetches the results for the input variable.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-topic-block-3.png" lightbox="../../media/ServiceNow-guide/servicenow-topic-block-3.png" alt-text="Fetches the results for input variable.":::

    b. If the input variable is empty, checks for text entered by the user in the chat window and fetches results for the text.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-topic-block-4.png" lightbox="../../media/ServiceNow-guide/servicenow-topic-block-4.png" alt-text="Checks for text entered in the chat window.":::

    c. If the user didn't enter text, asks the user to enter text to fetch results.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-topic-block-5.png" lightbox="../../media/ServiceNow-guide/servicenow-topic-block-5.png" alt-text="Checks for text entered in the chat window.":::

1. Microsoft 365 Support Topic Block provides an output variable, which is the user’s feedback for the results.

    a. Output variable name: m365_success
    b. Possible output variable values: YES/NO

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-topic-block-6.png" lightbox="../../media/ServiceNow-guide/servicenow-topic-block-6.png" alt-text="Output variable name and values.":::
