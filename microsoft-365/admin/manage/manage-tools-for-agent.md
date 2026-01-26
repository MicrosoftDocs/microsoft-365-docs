---
title: Manage Tools for Agent 365 in the Microsoft 365 admin center
description: Manage Tools for Agent 365 in the Microsoft 365 admin center.
#customer intent:
f1.keywords:
- NOCSH
ms.author: frankroj
author: frankroj
manager: scotv
ms.date: 11/18/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- m365copilot
- magic-ai-copilot
- operations-pod
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
---

# Manage Tools for Agent 365 in the Microsoft 365 admin center

> [!IMPORTANT]
>
> This feature is available for Frontier tenants only. The ability to allow or disallow MCP servers in Microsoft 365 admin center is in the process of rolling out and might not be available in your region yet.

## Overview

The **Tools** page in the [Microsoft 365 admin center](https://admin.microsoft.com/) provides a centralized view of all AI-powered tools and Microsoft Copilot Protocol (MCP) servers available in your organization. These tools enable administrators to manage interactions with user data, workflows, and requests in a secure and consistent manner.

Each tool listed here represents a service that supports Copilot experiences across Microsoft 365 apps. Administrators can monitor availability, manage access, and ensure compliance with organizational policies.

## Key components on the Tools page

### Toolbar Actions

**Block Tool** - Prevents the selected tool from being used by agents or workflows.
**Unblock Tool** - Restores access to a previously blocked tool.

### Filters

- **Status** - Filter tools by their current state, for example **Available** or **Blocked**.
- **Type** - Narrow down tools by type, for example **MCP Server**.
- **Publisher** - View tools published by Microsoft or other providers.

### Columns

- **Name** - The tool's display name, for example **Microsoft Teams MCP Server**.
- **Status** - Indicates whether the tool is **Available** or **Blocked**.
- **Type** - Identifies the tool category, for example **MCP Server**.
- **Publisher** - Shows the publisher, for example Microsoft for first-party tools.

### Common MCP servers

The following are examples of MCP servers:

- **Microsoft Teams MCP Server** - Enables Copilot to manage chats, channels, and user interactions in Teams.
- **Microsoft Word MCP Server** - Supports Copilot features in Word documents.
- **Microsoft 365 Calendar MCP Server** - Provides scheduling and calendar integration.
- **Microsoft Outlook Mail MCP Server** - Powers Copilot for email workflows.
- **SharePoint MCP Server** - Enables Copilot to interact with SharePoint content.
- **OneDrive MCP Server** - Supports file-based Copilot actions in OneDrive.

:::image type="content" source="../../media/agents/mcp-servers.png" alt-text="Screenshot showing a list of MCP servers in the Tools page of the Microsoft 365 admin center." lightbox="../../media/agents/mcp-servers.png":::

### Status indicators

- **Available** - Tool is active and ready for use.
- **Blocked** - Tool is disabled and can't be accessed by agents.
