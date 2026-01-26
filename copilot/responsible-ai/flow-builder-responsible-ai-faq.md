---
title: "FAQ for Workflows agent"
description: "Get answers to frequently asked questions about responsible AI and Workflows agent in Microsoft 365 Copilot."
ms.author: ralinga
author: sbasi19
ms.reviewer: cyanderson
manager: dansimp
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.update-cycle: 180-days
ms.date: 09/19/2025
ms.custom: 
  - transparency-note
---

# FAQ for Workflows agent

These frequently asked questions describe the AI impact of Workflows agent, the AI assistant embedded in Microsoft 365 Copilot that helps you build automation flows using natural language.

## What is Workflows agent?

Workflows agent is an AI-powered assistant within Microsoft 365 Copilot that helps you create, edit, and manage automation flows across Microsoft 365 apps such as Outlook, Teams, SharePoint, and Planner. You describe what you want to automate in natural language, and Workflows agent generates the corresponding flow for you. It also helps answer questions about your flows and provides documentation links as needed.

## What are Workflows agent’s capabilities?

Workflows agent can:

- Create new flows from scratch based on your descriptions.
- Edit existing flows according to your instructions.
- Answer questions about the flow you’re working on.
- Provide descriptions of your flows in plain language.
- Offer helpful documentation links about Microsoft 365 automation.
- Filter out unrelated questions.
- Suggest when to save or test your flow.

## What is Workflows agent's intended use?

Workflows agent is designed to make building automation workflows easier and faster, so you can get value from automation with minimal technical effort.

## How is Workflows agent evaluated? What metrics are used to measure performance?

Microsoft tracks several key metrics to ensure Workflows agent performs well and provides a positive experience. These include uptime (to ensure availability), user feedback through thumbs up/down on AI outputs, and reports of biased or inappropriate responses. This feedback helps maintain fairness, compliance, and quality.

## What are the limitations of Workflows agent? How can users minimize these limitations?

- Workflows agent supports only a limited set of Microsoft 365 connectors; non-Microsoft and custom connectors aren't supported.
- Workflows agent can't currently fix errors in existing flows automatically.
- Since Workflows agent relies on natural language input in chat to specify locations like SharePoint sites or Teams channels, it might occasionally identify the wrong site or channel if the names are ambiguous or similar.
- AI-generated flows should always be reviewed and tested before use in production.
- Workflows agent is only available in English.

To minimize these limitations:

- Provide clear and precise names when referencing sites, lists, or teams.
- Review and test all flows before enabling them.

## How does Workflows agent connect to services like SharePoint or Teams?

To connect to services such as SharePoint or Teams, mention the site, list, or team name in your natural language prompt. For example, you can say "save the response to the 'Invoices' list on the 'ContosoCRM' SharePoint site" or "post a message in the 'Budget Planning' channel of the 'Global Finance Operations' team."

If Workflows agent can't resolve a location by name, it prompts you to confirm or provide the URL to ensure accuracy and avoid errors. This helps avoid mistakes in environments where multiple sites or channels might have similar names.

## What operational factors and settings allow for effective and responsible use?

- Workflows agent is available within Microsoft 365 Copilot and subject to your organization’s access policies.
- Always review and test AI-generated flows in the visual designer before enabling them.
- Administrators manage Workflows agent access and settings through the Microsoft 365 admin center.
- Training users on AI capabilities and limitations helps ensure responsible use.

## How can administrators manage Workflows agent in their organization?

Administrators can enable or disable Workflows agent for users through the Microsoft 365 admin center under Copilot settings. They can assign access to all users, specific groups, or disable it completely. Usage can be monitored to maintain security and compliance.
