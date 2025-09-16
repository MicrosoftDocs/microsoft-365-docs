---
title: "Manage agents with embedded file content as a knowledge source in the Microsoft 365 admin center"
ms.author: aaroncz
author: aczechowski
manager: dansimp
ms.date: 06/18/2025
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
description: "Learn how to manage agents with embedded file content as knowledge in the Microsoft 365 admin center, including file uploads, container handling, and sensitivity labels."
---

# Manage agents with embedded file content as a knowledge source in the Microsoft 365 admin center

Agent builders can use [Copilot Studio agent builder](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build) to upload files for the agent to use as knowledge. The uploaded files are stored in tenant-owned [SharePoint Embedded](/sharepoint/dev/embedded/overview) containers, and the file content is embedded as knowledge for the agent to use in responses. To learn about how your users build agents, see [Build agents with Copilot Studio agent builder](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build#embedded-file-content).

This article explains how embedded files are handled, how admins can manage agents and containers, and what to expect when working with sensitivity labels and deletion workflows.

## Supported file types and limits

:::image type="content" source="../../media/knowledge-agent-upload.png" alt-text="Screenshot showing the screen to upload a file as a knowledge source for an agent." lightbox="../../media/knowledge-agent-upload.png":::

Embedded knowledge agents support uploading files as knowledge sources. Only the text content of these files is used for grounding.

### Supported file types

- `.doc`, `.docx`  
- `.ppt`, `.pptx`  
- `.xls`, `.xlsx`  
- `.pdf`  
- `.txt`  

### Maximum file size

- 150 MB for `.doc`, `.ppt`, `.xls`, `.xlsx`, and `.txt`
- 512 MB for `.docx`, `.pptx`, and `.pdf`  

Files that exceed these limits aren't accepted.

### Maximum number of files

Users can upload up to **20 files per agent**.

## SharePoint Embedded containers

When a file is uploaded to an agent, it's stored in a SharePoint Embedded container that's provisioned and owned by the tenant. These containers are automatically created and appear in the SharePoint admin center and PowerShell under the application name `Declarative Agent`.

>[!IMPORTANT]
> Don't delete these containers. Doing so might break the functionality of agents that rely on them.

## View agent metadata

On the **Agents** page in the Microsoft 365 admin center, you can filter the agent inventory to view only agents that use embedded files as knowledge sources.

:::image type="content" source="../../media/knowledge-agent-filter.png" alt-text="Screenshot showing the agents and connectors page in the Microsoft 365 admin center with the filters highlighted." lightbox="../../media/knowledge-agent-filter.png":::

For each agent, the following metadata is available:

- **File name** – The name of the uploaded file.  
- **File sensitivity** – The sensitivity label applied to the file. (Coming in July 2025)
- **SharePoint container ID** – The unique identifier for the container storing the file.  

This metadata helps you track and audit the use of embedded content across agents.

## Delete agents

You can delete agents directly from the Microsoft 365 admin center. When an agent is deleted, the following actions occur:

1. The agent is removed from the inventory.  
2. All associated files are deleted.  
3. The underlying SharePoint Embedded container is also deleted.  

:::image type="content" source="../../media/knowledge-agent-delete.png" alt-text="Screenshot showing the pop-up window that appears when deleting an agent." lightbox="../../media/knowledge-agent-delete.png":::

This deletion process is **irreversible**. Once an agent is deleted, it might take up to **24 hours** for the deletion to propagate to all users who had access to it. During this time, users might still see the agent listed, but they'll no longer be able to interact with it once the deletion is complete.

>[!NOTE]
>
> - The deletion workflow differs slightly depending on how the agent was created:
> - Agents created using Copilot Studio agent builder or the Microsoft 365 Agents Toolkit can be deleted from the Microsoft 365 admin center.  
> - Agents created from Copilot Studio can be managed and deleted from the Power Platform admin center.

## Sensitivity labels and access control

>[!IMPORTANT]
> This feature is expected to roll out in July 2025.

Sensitivity labels are applied to the embedded content in the agent based on the most restrictive label from the uploaded files. The following rules determine how the sensitivity label is applied:

- The label applied to the agent is determined by whichever of the following is more restrictive:
  - Most restrictive sensitivity label of all files uploaded (for example, the highest priority of the labels on the uploaded files).
  - The [default sensitivity label policy](/purview/default-sensitivity-labels-policies#default-sensitivity-label-policy) applied by the organization, if one is configured.
- If a default sensitivity labeling policy is in place, a label is automatically assigned.  
- Sensitivity labels are only applied if the agent is created using Copilot Studio Agent Builder, and if the agent has embedded files in it.

You can view the sensitivity label for each agent in the **Overview** tab of the Microsoft 365 admin center.

:::image type="content" source="../../media/knowledge-agent-idea.png" alt-text="Screenshot showing the overview details of an agent." lightbox="../../media/knowledge-agent-idea.png":::

### User access and visibility

- If a user doesn't have extract rights to any of the sensitivity labels applied to the uploaded files, they won't be able to access the agent.  
- If a user does have extract rights, they're able to view the agent’s sensitivity label in the agent details pane.  

To learn more, see [Sensitivity labels for agent embedded content](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build#sensitivity-labels-for-agent-embedded-content).
