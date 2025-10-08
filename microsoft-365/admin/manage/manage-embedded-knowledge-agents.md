---
title: Manage agents with embedded file content as a knowledge source
description: Learn how to manage agents with embedded file content in the Microsoft 365 admin center, including file uploads, SharePoint containers, and sensitivity labels.
#customer intent: As an admin, I want to understand how to manage agents with embedded file content in the Microsoft 365 admin center so that I can ensure proper functionality and compliance.
ms.author: aaroncz
author: aczechowski
manager: dansimp
ms.date: 09/19/2025
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
---

# Manage agents with embedded file content as a knowledge source

Agent creators can use [Copilot Studio (lite)](/microsoft-365-copilot/extensibility/copilot-studio-lite-build) to upload files for the agent to use as knowledge. Copilot stores the uploaded files in tenant-owned [SharePoint Embedded](/sharepoint/dev/embedded/overview) containers. It then embeds the file content as knowledge for the agent to use in responses. For more information about how to build agents, see [Build agents with Copilot Studio (lite)](/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge#embedded-file-content).

This article explains how to handle embedded files, how you can manage agents and containers, and what to expect with sensitivity labels and deletion workflows.

## Supported file types and limits

:::image type="content" source="../../media/knowledge-agent-upload.png" alt-text="Screenshot showing the screen to upload a file as a knowledge source for an agent." lightbox="../../media/knowledge-agent-upload.png":::

Embedded knowledge agents support uploading files as knowledge sources. Copilot only uses the text content of these files for grounding.

### Supported file types

- `.doc`, `.docx`
- `.ppt`, `.pptx`
- `.xls`, `.xlsx`
- `.pdf`
- `.txt`

### Maximum file size

| File type | Maximum file size |
|---------|---------|
| `.doc`, `.ppt`, `.xls`, `.xlsx`, `.txt` | 150 MB |
| `.docx`, `.pptx`, and `.pdf` | 512 MB |

Files that exceed these limits aren't accepted.

### Maximum number of files

Users can upload up to 20 files per agent.

## SharePoint Embedded containers

When you upload a file to an agent, Copilot stores the file in a SharePoint Embedded container. The Microsoft 365 service automatically creates this container and your organization owns it. The container appears in the SharePoint admin center and PowerShell under the application name `Declarative Agent`.

>[!IMPORTANT]
> Don't delete these containers. Deleting these containers might break the functionality of agents that rely on them.

## View agent metadata

On the **Agents** page in the Microsoft 365 admin center, you can filter the agent inventory to view only agents that use embedded files as knowledge sources.

:::image type="content" source="../../media/knowledge-agent-filter.png" alt-text="Screenshot showing the agents and connectors page in the Microsoft 365 admin center with the filters highlighted." lightbox="../../media/knowledge-agent-filter.png":::

For each agent, the following metadata is available:

- **File name**: The name of the uploaded file.

- **File sensitivity**: The sensitivity label applied to the file.

- **SharePoint container ID**: The unique identifier for the container storing the file.

This metadata helps you track and audit the use of embedded content across agents.

## Delete agents

You can delete agents directly from the Microsoft 365 admin center. When you delete an agent, the following actions occur:

1. Microsoft 365 removes the agent from the inventory.

1. It deletes all associated files.

1. It deletes the underlying SharePoint Embedded container.

:::image type="content" source="../../media/knowledge-agent-delete.png" alt-text="Screenshot showing the pop-up window that appears when deleting an agent." lightbox="../../media/knowledge-agent-delete.png":::

This deletion process is *irreversible*. Once you delete an agent, it might take up to 24 hours for the deletion to propagate to all users who had access to the agent. During this time, users might still see the agent listed, but they can't interact with it.

> [!NOTE]
>
> The deletion workflow differs slightly depending on how you created the agent:
>
> - If you created the agent by using Copilot Studio (lite) or the Microsoft 365 Agents Toolkit, you can delete it from the Microsoft 365 admin center.
> - If you created the agent from Copilot Studio (full), you can manage and delete it from the Power Platform admin center.

## Sensitivity labels and access control

The service applies sensitivity labels to the embedded content in the agent based on the most restrictive label from the uploaded files. The following rules determine how the service applies sensitivity labels:

- Whichever of the following labels are more restrictive:

  - Most restrictive sensitivity label of all files uploaded. For example, the highest priority of the labels on the uploaded files.

  - If your organization configured and applied a [default sensitivity label policy](/purview/default-sensitivity-labels-policies#default-sensitivity-label-policy).

- If a default sensitivity labeling policy is in place, the service automatically assigns a label.

- The service only applies sensitivity labels if:

  - You create the agent using Copilot Studio (lite).

  - The agent includes embedded files.

You can view the sensitivity label for each agent in the **Overview** tab of the Microsoft 365 admin center.

:::image type="content" source="../../media/knowledge-agent-idea.png" alt-text="Screenshot showing the overview details of an agent." lightbox="../../media/knowledge-agent-idea.png":::

### User access and visibility

- If a user doesn't have extract rights to any of the sensitivity labels applied to the uploaded files, they can't access the agent.
- If a user has extract rights, they can view the agent's sensitivity label in the agent details pane.

For more information, see [Sensitivity labels for agent embedded content](/microsoft-365-copilot/extensibility/copilot-studio-lite-knowledge#sensitivity-labels-for-agent-embedded-content).
