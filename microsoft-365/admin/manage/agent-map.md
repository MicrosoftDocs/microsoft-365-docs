---
title: Use Agent Map in the Microsoft 365 admin center
ms.date: 12/12/2025
description: The Agent Map is a feature within the Microsoft 365 admin center designed to provide IT administrators with an intuitive visualization of agents in their Microsoft account.
author: sericks007
ms.topic: concept-article
ms.custom:
  - ai-gen-docs-bap
  - ai-gen-description
ms.reviewer: sericks
ms.author: jenniferge
manager: tapanm
ms.service: microsoft-365-copilot
---

# Use Agent Map in the Microsoft 365 admin center

> [!IMPORTANT]
>
> You need to be part of the [Frontier preview program](https://adoption.microsoft.com/copilot/frontier-program/) to get **early access** to Microsoft Agent 365. Frontier connects you directly with Microsoft's latest AI innovations. Frontier previews are subject to the existing preview terms of your customer agreements. As these features are still in development, their availability and capabilities might change over time.

The Agent Map is a feature within the Microsoft 365 admin center that provides IT administrators with an intuitive visualization of agents in their Microsoft account.

The Agent Map serves as an interactive interface for viewing, organizing, and managing agents registered within your tenant. It presents agents spatially on a map. With the map you can:

- Identify clusters.
- Review agent metrics.
- Access detailed information for each agent. Detailed information that can be accessed for each agent include:
  - Publisher.
  - Type.
  - Platform.
  - Version.
  - Connectivity.

This feature complements the **Registry** tab by offering a more visual and scalable solution for environments with large numbers of agents. The data reflected in Agent Map is the same data available in the **Registry** tab.

## Who can access Agent Map?

The Agent Map is currently available exclusively to Frontier customers. You don't need a special license beyond membership in the Frontier group. Administrators must add users to the Frontier group to see the **Agent Map** tab within the Microsoft 365 admin center. If the tab doesn't appear, confirm Frontier group membership or escalate through your Microsoft contact.

## Navigating the Agent Map

### Locating the Agent Map

To access the Agent Map, sign in to the Microsoft 365 admin center and go to **Agents** > **All Agents**. Eligible users see the **Agent Map** tab before the **Registry** tab. When you select the tab, the map loads agents from your tenant and displays them as icons grouped by platform and other metrics. The Agent Map currently supports a maximum of 800 agents.

### Clustering

By default, the Agent Map clusters agents by platform, such as Copilot Studio (lite), Microsoft Corporation, and others. This clustering helps you quickly see how agents are distributed across platforms.

The following clusters appear on the Agent Map:

- Copilot Studio (lite).
- Copilot Studio (full).
- Microsoft 365 Agents Toolkit.
- Microsoft Corporation.
- Others.

### Filtering agents

You can filter the Agent Map by platform, publisher, and metrics such as blocked agents. Apply or remove filters to refine the visualization. For example, selecting **Copilot Studio (lite)** displays only those agents, while blocked agent filters show all agents with restricted status.

## Interface features

- **Zoom in/out**: Adjust the map view for closer inspection or broader visualization.

- **Fit to view**: Automatically scales the map to display all agents present in your environment.

- **Full screen mode**: Enables a larger display, ideal for IT teams monitoring agents in shared spaces.

The map is designed for ease of use, particularly in large environments where list-based views might be overwhelming.

## Agent details

When you select an agent icon, you can see more details about the agent, including:

- Details:
  - Description.
  - Publisher.
  - Agent type.
  - Platform.
  - Last updated.
  - Version.
- Users.
- Data and tools.
- Security and compliance.
- Agent activity.

## Known issues

- **Filter malfunction**: In some environments, filters you apply in the registry don't synchronize with the map, or you can't remove filters once you set them. This issue might occur if you're running an older version of the Agent Map. A fix is coming soon.

- **Agent count mismatch**: You might see discrepancies between the total agent count displayed in the registry and the map. Both should show the same data. This issue might occur if you're running an older version of the Agent Map. A fix is coming soon.

For direct support, contact your Microsoft account representative. Feedback on the Agent Map is actively encouraged to inform future development.
