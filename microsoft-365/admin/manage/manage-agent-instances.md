---
title: Manage agent instances in Microsoft 365 admin center
description: Manage agent instances in Microsoft 365 admin center.
#customer intent: As an IT admin, I want to manage agents for Microsoft 365 Copilot so that I can control their availability and functionality within my organization.
f1.keywords:
- NOCSH
ms.author: frankroj
author: frankroj
manager: scotv
ms.date: 11/21/2025
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

# Manage agent instances in Microsoft 365 admin center

Once an admin activates an agent, requestor can create instances of that agent. The Microsoft 365 admin center provides a centralized view for managing these instances:

- **Agent Registry Page** - Navigate to **Agents** > **Agent Registry** to see how many instances are created for a specific agent.

- **Agent Details Flyout** - Selecting an agent opens a flyout panel displaying the total count of instances associated with that agent in the **Overview** tab.

- **See Instance Details** - Selecting **See Details** brings up a detailed list of all instances created under that agent. From this screen, administrators can:

  - **Manage individual instances** - Access and update settings for each instance.
  - **Review security and compliance status** - Ensure every instance meets organizational standards.
  - **Apply and customize licenses** - Assign licenses and configure options at the instance level.

This streamlined experience helps administrators maintain control, compliance, and flexibility across all agent instances.

## Block agent instances

You can block or unblock agent instances for the entire organization using the same controls available for any other app in the Microsoft 365 admin center. Blocking an instance stops it and any actions it's performing.

To block or unblock an agent:

1. In the [Microsoft 365 admin center](https://admin.microsoft.com/), go to **Agents** > **All Agents**.

1. Select an agent from the list.

1. A panel opens. Under the **Overview** tab, **Instance availability** is displayed.

1. Select **See details** to see all instances created by that agent. From here, administrators can manage individual instances.

1. Select an instance and choose **Block**.

To restore functionality, the administrator can **Unblock** the instance at any time.

## Delete agent instances

Administrators can delete an instance from the Microsoft 365 admin center when it's no longer needed.

1. In the left navigation pane, select **Agents** > **All agents**.

1. Choose the agent that owns the instance you want to delete.

1. A panel opens. Under the **Overview** tab, **Instance availability** is displayed.

1. Select **See details** to see all instances created by that agent.

1. Select the instance you want to delete, then select **Delete**.

1. Confirm the deletion when prompted.

1. Notify the owner of Deletion.

1. Provide access to Instance's OneDrive and Outlook data for 30 days (about 4 and a half weeks).

1. Remove or reassign Microsoft 365 licenses tied to the instance.

1. After 30 days, all instance accounts and data are permanently deleted. Audit logs are kept.

1. Once deleted, the instance no longer appears in the list.
