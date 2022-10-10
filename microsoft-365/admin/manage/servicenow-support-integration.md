---
title: "Enable Microsoft 365 support integration for ServiceNow Virtual Agent"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Adm_TOC
ms.custom: AdminSurgePortfolio
ROBOTS: NOINDEX, NOFOLLOW
search.appverid:
- MET150
description: "Configure the support integration experimental feature to test and provide the Microsoft 365 support integration team with feedback."
---

# Enable Microsoft 365 support integration for ServiceNow Virtual Agent

> [!IMPORTANT]
> Support integration for ServiceNow Virtual Agent is an experimental feature being rolled out for users to test and provide the Microsoft 365 support integration team with feedback.

When you configure the Microsoft 365 support integration app to work with ServiceNow Virtual Agent, you gain access to **Recommended Solutions** through two different user experiences:

- **Quick Insights** Similar to what appears on the Incidents page, the ServiceNow Virtual Agent displays **Recommended articles** and **Recommend solutions** based on the text entered.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-support-integration-1.png" lightbox="../../media/ServiceNow-guide/servicenow-support-integration-1.png" alt-text="Quick Insights.":::

- **Branching Experience** Branching integrates with the search and assistant feature to guide users through a troubleshooting flow that returns responses based on the text entered.

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-support-integration-2.png" lightbox="../../media/ServiceNow-guide/servicenow-support-integration-2.png" alt-text="Branching Experience.":::

## Before you begin

- Enable Virtual Agent in ServiceNow. For details, see [Activate Virtual Agent](https://docs.servicenow.com/bundle/quebec-now-intelligence/page/administer/virtual-agent/task/activate-virtual-agent.html).

- Download and complete the setup of the Microsoft 365 support integration app from the ServiceNow Store.

- Minimum version of Microsoft 365 support integration: v1.0.10.

- Minimum version of ServiceNow: Quebec.

- Role required: Admin.

## Configure Microsoft 365 support integration to work with ServiceNow Virtual Agent

- Set Microsoft 365 Support as your fallback topic. For details, see [Configure a Virtual Agent chat experience](https://docs.servicenow.com/bundle/quebec-now-intelligence/page/administer/virtual-agent/task/configure-default-chat-experience.html).

    :::image type="content" source="../../media/ServiceNow-guide/servicenow-support-integration-3.png" lightbox="../../media/ServiceNow-guide/servicenow-support-integration-3.png" alt-text="Set default chat experience fallback topic.":::