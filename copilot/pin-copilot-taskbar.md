---
title: Pin Microsoft 365 Copilot app to the Windows Taskbar
description: "Learn how to improve the use of Microsoft 365 Copilot across your organization by pinning the Copilot app to the Windows taskbar."
f1.keywords:
- NOCSH
ms.author: aaroncz
author: aczechowski
manager: dansimp
ms.reviewer: christin,vmirapur
ms.date: 08/05/2025
audience: Admin
ms.topic: how-to
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
---

# Pin Microsoft 365 Copilot app to the Windows taskbar

As an admin, you can pin the Microsoft 365 Copilot app to the Windows taskbar of managed devices. This behavior gives users quick access to the Microsoft 365 Copilot app, which includes Copilot Chat, Search, Agents, and more, if these capabilities are already available to them. If your organization uses Microsoft Intune, use the Microsoft 365 admin center to automatically pin the app on all Windows 10 and Windows 11 Intune-managed devices with the Copilot app installed. This single toggle simplifies the pinning process instead of manually creating and deploying a Start layout policy. The setting is off by default.

> [!NOTE]
> The information in this article is specific to the Microsoft 365 Copilot app and the Windows taskbar. You can also [pin the Copilot Chat experience to the navigation bar](pin-copilot-chat-navbar.md) in Microsoft 365 apps. The **Microsoft 365 Copilot app** is a standalone application that provides access to Chat, Search, Agents (if enabled), Notebooks, and Create. **Copilot Chat** is an integrated chat experience available within Microsoft 365 apps. To understand the difference between the Copilot app and Copilot Chat, see [Decide which Copilot is right for you](which-copilot-for-your-organization.md).

## Prerequisites

- To configure Copilot taskbar pinning in the Microsoft 365 admin center, you need to be assigned the **Intune Administrator** role.

- To configure this setting in the Microsoft 365 admin center, your tenant must have at least one active Intune license.

  > [!TIP]
  > If you don't have an Intune license, you can pin the app by directly using the StartLayout configuration. For more information, see [Configure the Windows Taskbar Pinned Apps with Policy Settings](/windows/configuration/taskbar/pinned-apps?tabs=intune&pivots=windows-11).

- Install the Microsoft 365 Copilot app before you configure this policy. For more information, see the [Microsoft 365 Copilot adoption guide and overview for IT admins](microsoft-365-copilot-enablement-resources.md) and [Add Microsoft Store apps to Microsoft Intune](/intune/intune-service/apps/store-apps-microsoft). If the app isn't installed, this setting has no effect.

- To allow users to keep their preference to unpin the app, their device must be running one of the following versions of Windows 11 or later:

  - Windows 11, version 24H2 with [KB5058499][KB-24]
  - Windows 11, version 23H2 with [KB5058502][KB-23]

  For more information, see [Windows 11 - release information](/windows/release-health/windows11-release-information).

  > [!NOTE]
  > These updates aren't required to use the setting to pin the app.

## Configure settings

:::image type="content" source="media/pin-copilot-taskbar/pin-copilot-taskbar-admin-center-1200.png" alt-text="A screenshot of the Microsoft 365 admin center showing the Copilot setting to Pin Microsoft 365 Copilot app to Windows taskbar." lightbox="media/pin-copilot-taskbar/pin-copilot-taskbar-admin-center-1200.png":::

To configure this setting:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/).
1. Go to **Copilot** > **Settings** > **User access**.
1. Select the setting to **Pin Microsoft 365 Copilot app to the Windows taskbar**.
1. Choose one of the following options and then select **Save**:

    - **Pin the Microsoft 365 Copilot app to the Windows taskbar for all eligible devices (recommended)**

        Select this option to automatically pin the Microsoft 365 Copilot app to the Windows taskbar. When you enable this setting, this Copilot app appears to the right of other apps that are already pinned on the taskbar. The user isn't notified when this action is applied on the device.

        :::image type="content" source="media/pin-copilot-taskbar/pin-copilot-taskbar.png" alt-text="Screenshot that shows the Windows taskbar with the Microsoft 365 Copilot app pinned to the far right.":::

        If the user previously pinned the app to their taskbar, this policy doesn't change their configuration.

        The user can manually unpin the app from the taskbar. Their preference is respected during future policy refreshes on the following versions of Windows 11 or later:

        - Windows 11, version 24H2 with [KB5058499][KB-24]
        - Windows 11, version 23H2 with [KB5058502][KB-23]

    - **Do not pin Copilot app to the Windows taskbar**

        This option is the default setting. When you select this option, managed policy doesn't affect the user's taskbar. In other words, the Microsoft 365 Copilot app isn't pinned to the Windows taskbar unless you take action. Users can still pin the app themselves.

You can change these settings at any time. Changes take up to 48 hours to apply on devices and might require a restart.

## Troubleshoot

Use the following information to help troubleshoot use of this setting.

### The setting isn't available

This behavior assigns a Start layout policy to Intune-managed devices. Intune is a prerequisite to manage this setting. If the setting isn't available, you likely don't have any Intune licenses assigned. For more information, see [Microsoft Intune licensing](/intune/intune-service/fundamentals/licenses).

### The options to configure the setting are greyed out

There are several instances where you can't change the configuration of the setting in the Microsoft 365 admin center:

- Manage this policy in Intune. You used the Intune admin center to configure a policy for Start layout, so you can't now manage it in the Microsoft 365 admin center. To configure this policy, go to the [Intune admin center](https://intune.microsoft.com). For more information on how to add or edit the Microsoft 365 Copilot app to your existing policy, see [Deploy the taskbar configuration](/windows/configuration/taskbar/pinned-apps?tabs=intune&pivots=windows-11#deploy-the-taskbar-configuration).

- The policy's filter was removed and you can't make changes.

- Your organization has a large number of device policies. The Microsoft 365 admin center isn't able to determine your current Start layout configuration.

## More resources

- [Pin Microsoft 365 Copilot Chat to the navigation bar](pin-copilot-chat-navbar.md)
- [Configure the Windows Taskbar Pinned Apps with Policy Settings](/windows/configuration/taskbar/pinned-apps?tabs=intune&pivots=windows-11)
- [Create a policy using settings catalog in Microsoft Intune](/intune/intune-service/configuration/settings-catalog)

<!--links-->

[KB-24]: https://support.microsoft.com/topic/e31ba7c2-ff65-4863-a462-a66e30840b1a
[KB-23]: https://support.microsoft.com/topic/65d38dd2-e149-4462-9699-e2482f60b16b
