---  
title: Microsoft 365 Copilot app settings for IT admins
description: The Microsoft 365 Copilot app has features and settings that Enterprise and organization admins can configure. Admins can turn on search, pin Microsoft 365 Copilot Chat, allow or block agents, allow pages and notices, and map the Copilot key to the Microsoft 365 Copilot app.
author: MandiOhlinger
ms.author: mandia
manager: dansimp
ms.date: 07/15/2025
ms.topic: overview
ms.service: microsoft-365-copilot
ms.subservice: 
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
ms.custom:  
ms.reviewer: libbymc
search.appverid: MET150
f1.keywords: 
audience: Admin
ai-usage: ai-assisted
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Microsoft 365 Copilot app features that admins can control

The [Microsoft 365 Copilot app](microsoft-365-copilot-app-overview.md) is an everyday AI productivity app for work or school.

The app includes some settings and features that IT admins can configure, including pinning Microsoft 365 Copilot Chat, allowing or blocking agents, and more.

This article:

- Lists and describes the different settings that affect the Microsoft 365 Copilot app.
- Provides article links that have more information about configuring the feature.

This article applies to:

- Microsoft 365 Copilot

## Prerequisites

To use the features in this article, you need the following role-based access control (RBAC) roles:

- **Global Administrator** - This role can configure the Microsoft 365 admin center features.
- **Office Apps admin** - This role can create the Cloud policies for the Microsoft 365 Copilot app.

To learn more, see [Admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Settings that configure the app experience

When users open the Microsoft 365 Copilot app, there's a navigation bar. You can show or hide some features on the navigation bar, depending on your license.

:::image type="content" source="media/microsoft-365-copilot-app-admin-settings/microsoft-365-copilot-app-left-navigation.png" alt-text="Screen shot that shows the Microsoft 365 Copilot app left navigation and its features for users with a Microsoft 365 Copilot license.":::

The following table lists the Copilot app settings that you can configure.

| Setting | Description | Related content |
|---|---|---|
| Search | ✅ Turned on by default <br/><br/>In the **[Microsoft 365 admin center](https://admin.microsoft.com)** > **Settings** > **Search & intelligence**, you can turn on Microsoft Search in the Copilot app. By default, Microsoft Search is allowed and turned on.<br/><br/> You can also enable **Item insights** and show recommended files. Users can turn off Item insights, but we recommend that it stays on. | - [Set up Microsoft Search](/microsoftsearch/setup-microsoft-search) <br/> - [Item insights in Microsoft 365](/graph/item-insights-overview) |
| Chat | ✅ Pinned by default, depending on license. <br/><br/> Depending on your license, Microsoft 365 Copilot Chat might be automatically pinned in the Copilot app. If not, you can pin Chat to the Copilot app. | [Pin Microsoft 365 Copilot Chat to the navigation bar](pin-copilot-chat-navbar.md). <br/><br/> There are Chat features you can configure that affect the Chat experience in the Copilot app, like allowing web searches. To learn more, see [Manage Microsoft 365 Copilot Chat](/copilot/manage).|
| Agents | ✅ Built-in agents turned on by default <br/><br/>In the **[Microsoft 365 admin center](https://admin.microsoft.com)** > **Settings** > **Integrated Apps**, admins can deploy or block agents from showing in the Copilot app. End users can also add agents to their Copilot app experience. | [Manage agents for Microsoft 365 Copilot](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps) |
| Pages | ✅ Allowed by default <br/><br/>Use Cloud Policy to allow users to create and view Copilot Pages in the Copilot app. | [Admin policies for Copilot Pages and Copilot Notebooks](/microsoft-365/loop/cpcn-admin-configuration) |
| Notebooks | ✅ Allowed by default <br/><br/>Use Cloud Policy to allow users to create and view Copilot Notebooks in the Copilot app. | [Admin policies for Copilot Pages and Copilot Notebooks](/microsoft-365/loop/cpcn-admin-configuration) |
| Create | ✅ Built-in. <br/><br/>The built-in features aren't configurable. <br/><br/>You can use Cloud Policy to set up and publish organization brand kits that are shown when users select **Create**. | [Create enterprise brand manager policy and allow organizational asset library (OAL) access](enterprise-brand-manager.md) |
| Copilot Key and Windows + C shortcut | ✅ Configured by default <br/><br/>Admins can map the Copilot key to the Microsoft 365 Copilot app. End users can also manually configure. | [Policy CSPs to manage the Copilot key](/windows/client-management/manage-windows-copilot#policies-to-manage-the-copilot-key) <br/><br/>You can also use the [Microsoft Intune settings catalog](/intune/intune-service/configuration/settings-catalog) (Windows AI category) to configure the hardware key on the keyboard. |

## Related content

- [What is the Microsoft 365 Copilot app?](microsoft-365-copilot-app-overview.md)
- [Updated Windows and Microsoft 365 Copilot Chat experience](/windows/client-management/manage-windows-copilot)
