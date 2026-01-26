---
title: Pin Microsoft 365 Copilot and its companion apps to the Windows taskbar
description: "Learn how to improve the use of Microsoft 365 Copilot across your organization by pinning the Copilot app to the Windows taskbar."
f1.keywords:
- NOCSH
author: kwekuako
ms.author: kwekua
manager: scotv
ms.reviewer: christin,vmirapur
ms.update-cycle: 180-days
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
- operations-pod
---

# Pin Microsoft 365 Copilot and its companion apps to the Windows taskbar

As an admin, you can pin the Microsoft 365 Copilot app together with selected companion apps to the Windows 11 taskbar on Intune-managed devices. This provides users with quick access to Copilot features such as Chat, Search, and Agents. In addition, these lightweight companion apps provide quick access to files, people, and your calendar directly from the Windows 11 taskbar. You can configure this behavior in the Microsoft 365 admin center to automatically pin the apps on all eligible Windows 11 Intune-managed devices where they are installed. The setting is off by default. Follow the steps to download, install and configure the companion apps.

For more information, see [Overview of Microsoft 365 companion apps](/microsoft-365-apps/companions/overview).

## Before you begin

To configure Copilot taskbar pinning in the Microsoft 365 admin center, you need to be assigned the Intune Administrator role.  

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you cannot use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Step 1: Download and install companion apps

Companion apps aren't installed by default. You can download them here: [Download Microsoft 365 companion apps](https://go.microsoft.com/fwlink/?linkid=2295923).

The companion apps suite includes:

- **People app**: Find people in the organization (and others they have communicated with), pin close collaborators to accelerate workflows, and quickly learn about people in current meetings without disrupting workflow.
- **File search app**: Find your Microsoft 365 files, preview file contents, share files with colleagues, and access recently used documents. Non-Microsoft files aren't included in search results.
- **Calendar app**: Access Microsoft 365 calendar, view upcoming events, join meetings, and search for appointments directly from the taskbar.

For more information, see [Get started with Microsoft 365 companions](https://support.microsoft.com/office/a27df74a-cc41-4e74-8216-51091dc30194).

> [!NOTE]
> The information in this article is specific to the Microsoft 365 Copilot app and the Windows taskbar. You can also [pin the Copilot Chat experience in the Microsoft 365 apps](pin-copilot-chat-navbar.md).

## Step 2: Install the Microsoft 365 Copilot app

The **Microsoft 365 Copilot app** is a standalone application that provides access to Chat, Search, Agents (if enabled), Notebooks, and Create. **Copilot Chat** is an integrated chat experience available within Microsoft 365 apps. To understand the difference between the Copilot app and Copilot Chat, see [Decide which Copilot is right for you](which-copilot-for-your-organization.md).

1. Install the Microsoft 365 Copilot app before you configure this policy. For more information, see the [Microsoft 365 Copilot adoption guide and overview for IT admins](microsoft-365-copilot-enablement-resources.md) and [Add Microsoft Store apps to Microsoft Intune](/intune/intune-service/apps/store-apps-microsoft). If the app isn't installed, this setting has no effect.
2. Companion apps must be installed via the Microsoft 365 companion apps installer.
    1. Service dependencies for companions: Exchange Online + SharePoint (OneDrive) Online required Teams optional for certain features.  
3. Windows versions to respect user unpin preference (optional):
    1. Windows 11, version 24H2 with KB5058499
    1. Windows 11, version 23H2 with KB5058502  

## Step 3: Configure companion apps in the Microsoft 365 admin center

To configure this setting in the Microsoft 365 admin center, your tenant must have at least one active Intune license.  If you don't have an Intune license, you can pin the app by using an XML configuration file. For more information, see [Configure the Windows Taskbar Pinned Apps with Policy Settings](/windows/configuration/taskbar/pinned-apps?tabs=intune&pivots=windows-11).

To configure this setting in the Microsoft 365 admin center, you need to be assigned the Intune Administrator role.

  > [!IMPORTANT]
  > Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/).
1. Go to **Copilot** > **Settings** > **User access**.
1. Select **Pin Microsoft 365 Copilot and its companion apps to the Windows taskbar.**.
1. Choose one of the following options and then select **Save**:

    - **Pin Microsoft 365 Copilot and its companion apps to the Windows taskbar (recommended)**

        :::image type="content" source="media/pin-copilot-taskbar/pin-comp-apps.png" alt-text="Screenshot that shows the toggle to pin Microsoft 365 Copilot and the companion apps to the taskbar.":::

        Select this option to automatically pin the Microsoft 365 Copilot app and the companion apps to the Windows taskbar. When you enable this setting, this Copilot and companion apps appear to the right of other apps that are already pinned on the taskbar. The user isn't notified when this action is applied on the device. You have the option to remove the companion apps from getting pinned to the Windows taskbar by expanding the "Customize" arrow and uncheck "Pin the Microsoft 365 companion apps to the Windows taskbar" checkbox.  The options to pin only the companion apps and not Microsoft 365 Copilot app is not available.

        :::image type="content" source="media/pin-copilot-taskbar/companion-apps.png" alt-text="Screenshot that shows the Windows taskbar with the Microsoft 365 Copilot app and companion apps pinned.":::

        If the user previously pinned the app to their taskbar, this policy doesn't change their configuration. The user can manually unpin the app from the taskbar. Their preference is respected during future policy refreshes on the following versions of Windows 11 or later:
        
        1. Windows 11, version 24H2 with [KB5058499][KB-24]
        1. Windows 11, version 23H2 with [KB5058502][KB-23]

    - **Do not pin Copilot and its companion apps to the Windows taskbar (default)**

        This is the default setting: managed policy does not pin Microsoft 365 Copilot or companion apps to the Windows taskbar. Users may still pin these apps manually. You can change these settings at any time. Changes take up to 48 hours to apply on devices and might require a restart.
        
        You can change these settings at any time. Changes take up to 48 hours to apply on devices and might require a restart.

## Announce the companion apps

Before deploying the companion apps, it's recommended to send a notification to your organization about the companion apps deployment.

Join the [Ask a question - Microsoft Q&A](/answers/questions/ask/) to connect with other users, ask questions, and share insights.  

With the companion apps on their taskbar, user can enjoy:

- **Instant access**: users can quickly find people, files, and calendar events right from the Windows taskbar, without switching apps or losing context.
- **Streamlined workflows**: Pinning these apps makes it easier to collaborate, join meetings, and locate important files, saving time throughout the day.
- **Personalization**: Users can choose which apps to keep on their taskbar, pin favorites, and customize their experience.  

## Troubleshooting companion app issues

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
