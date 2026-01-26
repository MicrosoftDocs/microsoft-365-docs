---
title: Microsoft 365 Copilot app settings for IT admins
description: Learn how to configure Microsoft 365 Copilot app settings, including enabling search, managing agents, and customizing navigation for your organization.
#customer intent: As an Microsoft 365 Copilot administrator, I want to configure settings for the Copilot app.
author: kwekuako
ms.author: kwekua
ms.reviewer: libbymc
manager: scotv
ms.date: 09/16/2025
ms.update-cycle: 180-days
ms.topic: overview
ms.service: microsoft-365-copilot
ms.collection:
- scotvorg
- m365copilot
- magic-ai-copilot
- operations-pod
ms.custom: 
search.appverid: MET150
f1.keywords:
audience: Admin
ai-usage: ai-assisted
appliesto:
- ✅ Microsoft 365 Copilot
---


# Microsoft 365 Copilot app features that admins can control

The [Microsoft 365 Copilot app](microsoft-365-copilot-app-overview.md) is an everyday AI productivity app for work or school. IT administrators configure Microsoft 365 Copilot app settings to customize the experience for their organization. It includes settings and features for pinning Microsoft 365 Copilot Chat, allowing or blocking agents, and more.

This article lists and describes the different settings that affect the Microsoft 365 Copilot app. Follow the provided links for more information about how to configure each feature.

This article applies to:

- Microsoft 365 Copilot

## Prerequisites

To use the features in this article, you need the **Office Apps admin** role-based access control (RBAC) role. This role can create the cloud policies for the Microsoft 365 Copilot app.

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Settings that configure the app experience

When users open the Microsoft 365 Copilot app, they see a navigation bar. You can show or hide some features on the navigation bar, depending on your license.

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
