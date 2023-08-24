---
ms.date: 08/21/2023
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

Because Loop components are stored as files in OneDrive, there are many capabilities you're already familiar with that function just like any other file in OneDrive of SharePoint. Here are the notable differences from Office files in OneDrive that are **not available** yet for Loop components:

- [Sensitivity Labeling](/microsoft-365/compliance/information-protection) (Microsoft Information Protection) at the File-level
- End-user ability to see [Data Loss Prevention (DLP)](/microsoft-365/compliance/dlp-learn-about-dlp) policy tips
- Graph API to convert Loop content into HTML for export
- [Conditional Access](/azure/active-directory/conditional-access/overview) 

## Summary of compliance capabilities for content created in Loop workspaces

Content created in a Loop workspace is stored in Syntex repository services. You can learn more about it here: [Introducing Syntex repository services: Microsoft 365 superpowers for your app](https://devblogs.microsoft.com/microsoft365dev/introducing-syntex-repository-services-microsoft-365-superpowers-for-your-app/).

Syntex repository services has many of the same compliance capabilities as the rest of SharePoint and OneDrive. However, the capabilities below are **not available** yet for content created in Loop workspaces. While we continue to improve rapidly in this area, if you require any of these capabilities, Microsoft recommends proactively disabling Loop workspaces using the instructions here: [Manage Loop workspaces in Syntex repository services](/microsoft-365/loop/loop-workspaces-configuration):

- [Intune Device Management Support](/mem/intune/remote-actions/device-management)
- Graph API to convert Loop content into HTML for export
- Tenant admin experience: Restoring a deleted workspace
- End-user ability to see or set [Retention Labels](/microsoft-365/compliance/retention-policies-sharepoint)
- [Sensitivity Labeling](/microsoft-365/compliance/information-protection) (Microsoft Information Protection) at the File-level and Container-level
- End-user ability to see [Data Loss Prevention (DLP)](/microsoft-365/compliance/dlp-learn-about-dlp) policy tips
- Multiple owners on a workspace
- [Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) account move support
- [Conditional Access](/azure/active-directory/conditional-access/overview) 

*This list of capabilities is not exhaustive*

> [!NOTE]
> The list of capabilities in this section applies to content created in Loop workspaces (Syntex repository services). It does not apply to Loop components created in either Teams, Outlook, Whiteboard or Word for the web (which are created in OneDrive).

## Related topics

- [Overview of Loop components in Microsoft 365](/microsoft-365/loop/loop-components-teams)
- [Overview of Loop workspaces storage and permissions](/microsoft-365/loop/loop-workspaces-storage-permission)
