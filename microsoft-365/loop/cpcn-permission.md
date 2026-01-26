---
title: Overview of Copilot Pages and Copilot Notebooks permissions
ms.author: odocspr
author: officedocspr5
manager: jtremper
audience: Admin
ms.topic: concept-article
ms.service: loop
ms.reviewer: michalbr, brmeersm, derekliddell, dancost
ms.date: 01/26/2026
ms.update-cycle: 180-days
ms.localizationpriority: medium
search.appverid: MET150
ms.collection: 
- M365-collaboration
- essentials-compliance
- magic-ai-copilot
description: Learn about Copilot Pages and Copilot Notebooks permissions in the Microsoft 365 ecosystem.
f1.keywords:
- CSH
ms.custom: 
- NewAdminCenter_Update
- chat-teams-channels-revamp
appliesto: 
- Microsoft Teams
---

# Overview of Copilot Pages and Copilot Notebooks permissions

## Content permissions mechanism

Copilot Pages and Copilot Notebooks are stored in user-owned [SharePoint Embedded](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/cta) containers.

### Sharing Mechanism

- **Copilot Notebooks** can be shared. For end-user instructions, see [How to Share a Microsoft 365 Copilot Notebook](https://support.microsoft.com/en-us/topic/how-to-share-a-microsoft-365-copilot-notebook-e8faaac5-4976-402d-b0a3-ea61f01555ff).
  - Chat conversations in shared Copilot Notebooks are private and each user has their own set of chats.
  - Anyone you share with gains access to all the files referenced in the notebook.
  - Access to linked files is granted automatically where possible. Some linked files may remain restricted if permissions can’t be updated.
  - If your notebook includes a Microsoft OneNote section or page, you’ll need to share the entire OneNote notebook so others can access that content. [Learn more about how to share a OneNote notebook.](https://support.microsoft.com/en-us/office/how-to-share-a-onenote-notebook-d4a74a14-44a3-411e-8fb5-06e73ddf047f)
- **Page Sharing**: Grants access to a specific page (not the whole notebook) with options for edit or read-only access. The user can choose to use a company share link or people-specific share link, based on your organizational sharing settings.

  :::image type="content" source="media/cpcn-share-page.png" alt-text="Screenshot showing the Share button in the upper corner of a Copilot Page.":::
  The Share button in the upper corner of a Copilot Page.

  :::image type="content" source="media/cpcn-share-link.png" alt-text="Screenshot showing the Sharing Link copied to clipboard dialog with Settings option.":::
  After choosing Page or Component in the Share button (previous screen), The share link is copied to the clipboard, and sharing Settings are available.

  :::image type="content" source="media/cpcn-share-settings.png" alt-text="Screenshot showing the Share settings available for the Copilot Page permissions.":::
  The share link settings and permissions configuration, just like all other files in SharePoint or OneDrive.

## Guest/External sharing

External users (guests) can't access shared Copilot Pages directly via link. Copilot Notebooks don't support external sharing.

**Workaround for external access:** If an external user manually adds a Copilot Page sharing link to their Loop workspace and cross-tenant guest access is configured, they can access the page within the Loop workspace experience.

### Disabling guest sharing

To disable guest sharing for Copilot Pages and Copilot Notebooks containers, see [application external sharing override](/sharepoint/dev/embedded/concepts/app-concepts/sharing-and-perm#application-external-sharing-override) and use application ID `a187e399-0c36-4b98-8f04-1edc167a0996`. This setting controls external sharing for all SharePoint Embedded containers of this type.

## Related articles

- [Summary of compliance, lifecycle, governance](cpcn-compliance-summary.md)
- [Requirements](cpcn-requirements.md)
- [Storage](cpcn-storage.md)
- [Admin policies](cpcn-admin-configuration.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview management](cpcn-loop-purview-management.md)
