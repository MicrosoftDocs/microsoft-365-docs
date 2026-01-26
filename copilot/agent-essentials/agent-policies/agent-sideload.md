---
title: Sideload Microsoft Copilot agents at your organization
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
description: Learn how to sideload Microsoft Copilot agents at your organization.
---

# Sideload Microsoft Copilot agents at your organization

Members of your organization can build and share agents within your organization without publishing them to the organizational catalog or marketplace. This approach to deploying agents is called sideloading. You can determine whether your organization allows members of your organization to upload an agent, or custom app package, in the Teams app. Uploading the agent via Teams, will allow the agent to be used within Teams and within the M365 Copilot app.

> [!NOTE]
> Declarative agents built with SharePoint can’t be sideloaded.

Enabling sideloading allows custom agents to be used personally or across your organization without having to submit it to the Teams app store. Members of your organization can then upload and test custom agents with a limited audience, such as a single user or group of users, before they distribute them more widely.

To enable sideloading for your organization:

1. Open [Microsoft Teams admin center](https://admin.teams.microsoft.com/) in your browser.
2. Select **Teams apps** > **Setup policies** > **Global (Org-wide default)**.
3. Enable sideloading by setting **Upload custom apps** to **On**.

Once you have enabled sideloading for your organization, members of your organization can upload agent zip files. For more information, see [Deploy agents via ZIP package](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-publish#deploy-agents-via-zip-package).

