---
title: Upload Microsoft 365 Copilot custom agents
f1.keywords:
ms.author: erikre
author: ErikRe
manager: dansimp
ms.date: 11/12/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
description: Learn how to upload Microsoft 365 Copilot custom agents.
---

# Upload Microsoft 365 Copilot custom agents

The Copilot Control System in Microsoft 365 admin center provides a method to upload a custom agent, so that you can manage those agents for your organization from your agent inventory. 

To upload an agent, the agent must be contained in a ZIP packet file. The ZIP file contains resources, such as manifest files, configuration files, icons, branding, and embedded knowledge files. 

Your Copilot agent ZIP file can be downloaded from Copilot Studio by selecting **Agents** > *the name of your agent* > **Channels**. Select the channel you use to publish, such as **Teams and Microsoft 365 Copilot**. Select **Availability options** > **Download .zip**.

> [!NOTE]
> The ZIP packet file (.zip) can also be used to share agents. For more information, see [Sideload agents for personal use](../agent-policies/agent-sideload.md).

To upload an agent as a ZIP packet file to the Microsoft 365 admin center:

1. Open Copilot Control System in [Microsoft 365 admin center](https://admin.microsoft.com/) in your browser.
2. Select **Copilot** > **Agents** > **Upload custom agent**.
3. Select **Choose File** to find and select the agent ZIP file.
    The ZIP file is validated.
4. Verify the agent’s name, icon, and host products. Then, select **Next**.
5. Select the assigned users. Then, select **Next**.

    > [!NOTE]
    > You can select a small audience for testing purposes. For instance, select **Just me**, or a single test group to narrow the availability of the agent.

6. Review the agent’s permissions and capabilities. Then, select **Next**.
7. Select Finish deployment to review and finish the agent’s deployment.

:::image type="content"  source="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-deploy-new.png" alt-text="Screenshot of deploying a new agent within M365 the Copilot Control System."  lightbox="/copilot/microsoft-365/agent-essentials/media/m365-agents-admin-guide/agent-deploy-new.png":::

To manage, assign, and publish the agent, see [Assign and deploy agents](agent-deploy.md).