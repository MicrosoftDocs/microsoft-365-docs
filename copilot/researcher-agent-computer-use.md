---
title: Researcher with Computer Use admin configuration
description: The following instructions help you configure the admin settings for the Researcher agent with Computer Use in Microsoft 365 Copilot.
f1.keywords:
- NOCSH
ms.author: vpattnaik
author: vpattnai
manager: dansimp
ms.date: 11/04/2025
audience: Admin
ms.reviewer: dansimp
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- m365copilot

ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Researcher with Computer Use admin configuration

## Overview

For onboarding instructions, check out this short video:

> [!VIDEO https://www.youtube.com/embed/N3vLF9mnd8w]

Researcher with Computer Use is a powerful extension that builds on the capabilities of the Researcher agent. With Computer Use, Researcher agent can securely interact with public, gated, and interactive web content through virtual computer-enabling users to uncover deeper insights, take action, and generate richer reports grounded in both their work data and the web. For more details, see [Use Researcher with Computer use in Microsoft 365 Copilot](https://support.microsoft.com/topic/1f274537-6648-46e8-8264-052a49b92af4).

:::image type="content" source="media/computer-use-active-option.png" alt-text="Screenshot showing the computer use option active in Researcher agent." lightbox="media/computer-use-active-option.png":::

## Configure admin settings for Researcher agent with Computer Use

Follow these instructions to configure admin settings for Researcher agent with **Computer Use** by following the setup instructions.

1. Navigate to [Microsoft Admin Controls (MAC) Agents](https://admin.cloud.microsoft/?#/copilot/agents) page.

    :::image type="content" source="media/microsoft-admin-control-agents-page.png" alt-text="Screenshot showing the Microsoft Admin Controls Agents page." lightbox="media/microsoft-admin-control-agents-page.png":::

2. In the left navigation pane, select **Researcher** under **Agents**, and check if there's another tab for **Computer use**.

   :::image type="content" source="media/computer-use-researcher-agent.png" alt-text="Screenshot showing the option to allow Researcher to access work data." lightbox="media/computer-use-researcher-agent.png":::

3. Customize users that have access to Researcher with Computer Use.

    a. There are three options for configuring who has access to the experience-

    - Allow all users in your organization
    - Allow specific users or groups only
    - No users in your organization

    b. For users that have it disabled, the **Computer Use** option will appear grayed out.

    :::image type="content" source="media/computer-use-enabled.png" alt-text="Screenshot showing the Computer Use option enabled in Researcher Agent." lightbox="media/computer-use-enabled.png":::

    :::image type="content" source="media/computer-use-disabled.png" alt-text="Screenshot showing the Computer Use option disabled in Researcher Agent." lightbox="media/computer-use-disabled.png":::

4. Configure **Work access** for Researcher with Computer Use

    a. The work option allows users to toggle on **Work** in the Sources menu, allowing Researcher agent to leverage a user's work content, for example, emails, chats, files, with Computer Use.
    
    b. When enabled by admins, users must still manually toggle on Work access.
    
    c. When disabled, the **Work** source will appear grayed out and not selectable.

    :::image type="content" source="media/work-toggle-enabled.png" alt-text="Screenshot showing the Work option enabled in Researcher agent." lightbox="media/work-toggle-enabled.png":::

    :::image type="content" source="media/work-toggle-disabled.png" alt-text="Screenshot showing the Work option disabled in Researcher agent." lightbox="media/work-toggle-disabled.png":::

5. Select which websites are allowed for Computer Use.

    a. There are three options for configuring websites the virtual device can access:<br>
    - All websites<br>
    - Allow specific URLs or domains only<br>
    - Exclude specific URLs or domains

    b. You can allow "All websites", block some with the "Exclude specified" option, or only allow certain sites with the "Allow specified" option.

### Learn more about Researcher with Computer Use

- [Introducing Researcher with Computer Use in Microsoft 365 Copilot](https://techcommunity.microsoft.com/blog/microsoft365copilotblog/introducing-researcher-with-computer-use-in-microsoft-365-copilot/4464766)
- [Get started using Researcher with Computer Use](https://support.microsoft.com/topic/1f274537-6648-46e8-8264-052a49b92af4)
- [Frequently asked questions for Researcher with Computer Use](researcher-agent-computer-use-faq.yml)
