---
ms.date: 06/19/2023
title: "Summary of compliance capabilities for Loop experiences"
ms.reviewer: dancost, tonchan
ms.author: mikeplum
author: MikePlumleyMSFT
manager: dansimp
recommendations: true
audience: Admin
f1.keywords:
- NOCSH
ms.service: loop
ms.localizationpriority: medium
ms.topic: article
ms.collection:
- Strat_SP_admin
- Microsoft 365-collaboration
- Tier3
search.appverid:
- SPO160
- MET150
description: "Learn about the compliance how to manage Loop components capabilities for Loop experiences."
---

# Summary of compliance capabilities for Loop

Loop experiences offer many compliance features. This article provides a summary of the compliance features frequently requested that are **not available** yet in Loop.

## Summary of compliance capabilities for Loop components

Loop components created outside of the Loop app in other Microsoft 365 apps (such as [Teams](https://support.microsoft.com/office/first-things-to-know-about-loop-components-in-microsoft-teams-ee2a584b-5785-4dd6-8a2d-956131a29c81), [Outlook](https://support.microsoft.com/office/use-loop-components-in-outlook-9b47c279-011d-4042-bd7f-8bbfca0cb136), [Whiteboard](https://support.microsoft.com/office/loop-components-in-whiteboard-c5f08f54-995e-473e-be6e-7f92555da347), [Word for the web](https://support.microsoft.com/office/use-loop-components-in-word-for-the-web-645cc20d-5c98-4bdb-b559-380c5a27c5e5)) are stored in the creator's OneDrive. For example, if User A creates a Loop component within a Teams chat with User B, that Loop component is stored in User A's OneDrive and is shared with User B.

Because Loop components are stored as files in OneDrive, there are many capabilities you're already familiar with that function just like any other file in SharePoint Online. Here are the notable differences from Office files in OneDrive that are **not available** yet for Loop components:

* MIP
* DLP
* Graph API to convert .loop file content into HTML
* MCAS?

//TODO: add links to all the bullets

## Summary of compliance capabilities for content created in Loop workspaces

For Loop app workspace content specifically, this article describes many of the benefits of this approach: [Introducing Syntex repository services: Microsoft 365 superpowers for your app](https://devblogs.microsoft.com/microsoft365dev/introducing-syntex-repository-services-microsoft-365-superpowers-for-your-app/).

The capabilities below are **not available** yet for content created in Loop workspaces. While we continue to improve rapidly in this area, if you require any of these capabilities, Microsoft recommends proactively disabling Loop workspaces using the instructions here: [Manage Loop workspaces in Syntex repository services](/microsoft-365/loop/loop-workspaces-configuration):

* Intune Device Management Support
* Third-party tools for discovery workflows and Graph API export
* Full eDiscovery export using Purview
* Tenant admin experience: Discovery of all Loop workspaces in Purview or SPO Tenant Admin center
* Tenant admin experience: Restoring a deleted workspace or pages
* Retention Policies, Retention Labels, and Preservation Hold
* Legal Hold
* Sensitivity Labeling (Microsoft Information Protection) at the File-level and Container-level
* Multiple owners on a workspace
* Data Loss Prevention (DLP)
* Granular audit logs that describe all activity related to item/entity creation, access, alteration, and deletion
* Stream audit log data to 1st and 3rd-party systems for ingestion and analysis
* Alerting on unusual data movement or access patterns
* Multi-Geo support learn more
* MCAS?

//TODO: add links to all the bullets

*This list of capabilities is not exhaustive*

> [!NOTE]
> This list of capabilities applies only to content created in Loop workspaces. It does not apply to Loop components created in either Teams, Outlook, Whiteboard or Word for the web.

## Related topics

- [Overview of Loop components in Microsoft 365](/microsoft-365/loop/loop-components-teams)
- [Overview of Loop workspaces storage and permissions](/microsoft-365/loop/loop-workspaces-storage-permission)
