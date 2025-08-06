---
title: Loop experience examples based on admin settings
ms.author: jenz
author: jenzamora
manager: jtremper
audience: Admin
ms.topic: article
ms.service: loop
ms.reviewer: michalbr, dancost
ms.date: 07/02/2025
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
- M365-collaboration
- essentials-compliance
- magic-ai-copilot
description: View example screenshots illustrating Loop experiences when admin settings are customized from their default configurations.
f1.keywords:
- CSH
ms.custom: 
- NewAdminCenter_Update
- chat-teams-channels-revamp
appliesto: 
- Microsoft Teams
---

# Loop experience examples based on admin settings

This article provides example screenshots and descriptions for the most common Microsoft [Loop admin settings](loop-admin-configuration.md) configurations. Use the sections below to understand the user experience for each scenario, based on how you have configured Loop in your organization.

## Default configuration

The screenshots in this section illustrate the typical user experience when Loop admin settings are left in their default Enabled state. These examples help IT administrators understand what users see and can do when no custom restrictions are applied.

### Loop components in Teams and Outlook

Users can create and share Loop components directly within Teams and Outlook messages. When creating a new Loop component or when a Loop component link is pasted into a message, it renders as an interactive component, allowing recipients to collaborate in real time without leaving the message context.

:::image type="content" source="media/outlook-web-draft.png" alt-text="Screenshot showing an Outlook draft message containing an interactive Loop component.":::
*Outlook draft message with Loop component*<br><br>

:::image type="content" source="media/teams-web-message.png" alt-text="Screenshot showing a Teams sent message containing an interactive Loop component.":::
*Teams sent message with same Loop component*<br><br>

### Loop components in the Loop app

:::image type="content" source="media/loop-component-editor-full.png" alt-text="Screenshot showing the Loop component editor and viewer for a Loop component.":::
*Loop component editor/viewer enabling full screen interaction with the same Loop component*<br><br>

:::image type="content" source="media/loop-can-create-full.png" alt-text="Screenshot showing the Loop app user interface for creating new components or workspaces.":::
*Loop app user experience for creating new components or new workspaces*<br><br>

## Expected user experience when all Loop creations are Disabled

When admin controls are all set to Disabled, users can't create new Loop files or new SharePoint Embedded containers. Existing Loop files and workspaces remain accessible; users can still find, open, and edit them if they have the appropriate permissions. No existing data is deleted.

Loop content and icons may still appear in Microsoft 365 apps, including Microsoft365.com and the Loop component viewer/editor (loop.cloud.microsoft). Previously created files remain visible and accessible, and shared links continue to work as permitted by file permissions.

There are no extra licensing requirements for the Loop component viewer/editor beyond OneDrive access. Users can access Loop content via loop.cloud.microsoft or the All apps view in Microsoft365.com. To hide the Loop icon in the All apps view, disable OneDrive access for those users or use a conditional access policy to block access to loop.cloud.microsoft.

## Loop workspace creation Disabled, Loop component creation Enabled

When Loop admin settings allow users to create Loop components but block the creation of Loop workspaces, users have access to a focused set of features. Users can continue to create and collaborate on Loop components within Teams and Outlook, maintaining real-time collaboration and productivity. However, the ability to create new workspaces in the Loop app is disabled. This configuration enables IT administrators to restrict workspace creation while still supporting collaborative component use across Microsoft 365 apps. Users can also open and edit Loop components in full screen using the Loop component viewer/editor.

### Loop components in Teams and Outlook, unchanged

Refer to [Loop components in Teams and Outlook](#loop-components-in-teams-and-outlook) as the configuration and experience is the same in this scenario.

### Loop components in the Loop app, Loop workspace creation Disabled

In this scenario, workspace creation is not enabled for the user at any point. As a result, no workspaces appear, including the "My workspace" personal workspace, and users can't create new workspaces. The Loop component viewer/editor remains available, so users can open and interact with Loop components created in other Microsoft 365 apps such as Teams or Outlook.

:::image type="content" source="media/loop-component-editor.png" alt-text="Screenshot showing the Loop component editor and viewer for a Loop component, with workspace creation turned off by the administrator":::
*Loop component viewer/editor enabling full screen interaction with a Loop component*<br><br>

When users access the Loop app in this configuration and select the **Create** button, no creation options are presented. This is because the admin setting for workspace creation is disabled. Users can't create new workspaces from the Loop app under this policy configuration.

:::image type="content" source="media/loop-app-workspace-create-disabled.png" alt-text="Screenshot showing the Loop app Create menu clicked, with workspace creation turned off by the administrator.":::
*Loop app Create menu opened, showing no workspace creation options because workspace creation is disabled by the administrator*<br><br>

### Loop workspace experience when workspace creation is Disabled after initial Enablement

In this scenario, workspace creation was initially enabled for the user, allowing them to create workspaces and content. After the administrator disabled workspace creation, the user lost the ability to create new workspaces or content. However, all previously created workspaces and files remain visible and accessible, subject to existing permissions. IT administrators should note that disabling workspace creation doesn't remove or restrict access to existing content; users retain access based on their current permissions for each workspace and file.

:::image type="content" source="media/loop-app-workspace-create-disabled-with-content.png" alt-text="Screenshot showing the Loop app Create menu clicked, with workspace creation turned off by the administrator, and previously created content visible.":::
*Loop app Create menu opened, displaying existing content while workspace creation is disabled by the administrator*<br><br>

## Related topics

### Admin

- [Summary of Compliance, Lifecycle, Governance](loop-compliance-summary.md)
- [Requirements](cpcn-loop-requirements.md)
- [Storage](loop-storage.md)
- [Permissions](cpcn-loop-permission.md)
- [Admin toggles](loop-admin-configuration.md)
- [Data Integrations Admin Settings](loop-data-integrations-configuration.md)

### End-User Experience

- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
- [Use Loop components in Outlook](https://support.microsoft.com/office/9b47c279-011d-4042-bd7f-8bbfca0cb136)
- [Use Loop components in OneNote](https://support.microsoft.com/office/use-loop-components-in-onenote-ed8a43d9-f6fd-4ad6-bc9d-8841db4da459)
- [Loop components in Whiteboard](https://support.microsoft.com/office/loop-components-in-whiteboard-c5f08f54-995e-473e-be6e-7f92555da347)
- [Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)
