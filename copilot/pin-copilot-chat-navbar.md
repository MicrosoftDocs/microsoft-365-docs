---
title: Pin Microsoft 365 Copilot Chat in the Microsoft 365 apps
description: "Learn how to pin Microsoft 365 Copilot Chat in Microsoft 365 apps across web, desktop, and mobile. Improve user access with admin configuration settings."
#customer intent: As an IT admin, I want to pin Microsoft 365 Copilot Chat in Microsoft 365 apps so that users can easily access the secure and compliant generative AI solution.
f1.keywords:
- NOCSH
author: kwekuako
ms.author: kwekua
manager: scotv
ms.date: 09/26/2025
ms.update-cycle: 180-days
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


# Pin Microsoft 365 Copilot Chat in the Microsoft 365 apps

You can pin Microsoft 365 Copilot Chat in Microsoft 365 apps across web, desktop, and mobile platforms. For example, Microsoft Teams and Microsoft Outlook. This article explains how to configure pinning settings to improve user access to Copilot Chat as your organization's secure and compliant generative AI solution.

> [!NOTE]
> The information in this article is specific to the Copilot Chat experience in the navigation bar of Microsoft 365 apps. You can also [pin the Microsoft 365 Copilot app to the Windows taskbar](pin-copilot-taskbar.md). **Copilot Chat** is an integrated chat experience available within Microsoft 365 apps. The **Copilot app** is a standalone application that provides access to Chat, Search, Agents (if enabled), Notebooks, and Create. To understand the difference between the Copilot app and Copilot Chat, see [Decide which Copilot is right for you](which-copilot-for-your-organization.md).

## Before you begin

To configure the Copilot Chat pinning setting in the Microsoft 365 admin center, you need to be assigned the [**AI administrator**](/entra/identity/role-based-access-control/permissions-reference) role.

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Open the Copilot settings page

To get to this setting, go to the [Copilot settings page](https://admin.microsoft.com/Adminportal/Home?ref=/copilot/settings/:/CopilotSettings/PinCopilot), or:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/).
1. Go to **Copilot** > **Settings**.
1. Select **Pin Microsoft 365 Copilot Chat**.

Continue to the next section for a description of each option in this setting.

## Pinning options

:::image type="content" source="media/pin-copilot-microsoft-365-apps2.png" alt-text="Screenshot of Microsoft 365 admin center showing selected checkbox for Pin Copilot Chat in Microsoft 365 apps setting." lightbox="media/pin-copilot-microsoft-365-apps2.png":::

Copilot Chat is pinned by default to the navigation bar of the Microsoft 365 apps and the Microsoft 365 Copilot app. This behavior applies for most users eligible for Copilot Chat across web, mobile, and desktop.

To change the pinning settings for Copilot Chat, select one of the following options:

- **Pin Copilot Chat in Microsoft 365 apps (recommended)**: Copilot Chat is automatically pinned for all users. Users aren't prompted. This option is the default.

- **Do not pin Copilot Chat in Microsoft 365 apps**: If you choose this option, Copilot Chat won't be available by default for users in the Microsoft 365 Copilot app, Teams and Outlook. Users can still visit their app store and add Copilot themselves.

    If you previously selected **Do not pin Copilot to the navigation bar** in the Microsoft 365 admin center and unchecked **Allow users to be asked whether they want to pin it**, your setting configuration is now **Do not pin** and users still don't have Copilot Chat pinned. Also, if you switch the setting to **Do not pin Copilot Chat in Microsoft 365 apps**, Copilot honors that choice.

    If a user sees Copilot Chat pinned to their navigation bar and chooses to unpin it, Copilot Chat respects that choice in future sessions and unpins Copilot Chat from the navigation bar.

You can make changes to Copilot Chat pinning settings at any time. Changes take up to 48 hours to go into effect.

### Pin the Copilot app on the Windows taskbar

You can pin the Microsoft 365 Copilot app to the Windows taskbar of managed devices.

This setting applies only to users who have an active Intune license. To view or configure Copilot taskbar pinning in the Microsoft 365 admin center, you need to be a member of the **Intune Administrator** role.

:::image type="content" source="media/pin-copilot-microsoft-365-win-taskbar.png" alt-text="Screenshot showing the link to pin Microsoft 365 Copilot app to the Windows taskbar." lightbox="media/pin-copilot-microsoft-365-win-taskbar.png":::

For more information, see [Pin Microsoft 365 Copilot app to the Windows taskbar](pin-copilot-taskbar.md).

If your organization doesn't have an Intune subscription, then you see the following page:

:::image type="content" source="media/pin-copilot-microsoft-365-no-intune.png" alt-text="Screenshot showing the link to pin Microsoft 365 Copilot app to the Windows taskbar if you don't have an Intune subscription.":::

## Pin at a group or user level

For large organizations with complex needs, set up the pinning policy to apply to specific groups of users. This option isn't recommended for most customers due to management complexity.

1. Sign in to the [Microsoft 365 Apps admin center](https://config.office.com/).

1. In the **Office policies** card, select **Go to Microsoft 365 Cloud Policy**.

1. Select **Create**.

1. Customize the basics and scope of the policy.

1. In policies, search for and select "Pin Microsoft 365 Copilot Chat."

    The flyout panel displays the configuration options.

1. Select an option and select **Apply**. For example, if you select **Enabled**, the behavior is the same as **Pin Copilot Chat in Microsoft 365 apps**.

    The status of this policy now shows as *Configured* in the list.

1. Select **Next** to review final changes.

1. After you review the configuration, select **Create** to publish the policy.

## User experience

Unlicensed Copilot Chat users can choose to pin or unpin Copilot Chat. Users can also adjust the pinning settings within their application settings. These choices are specific to Microsoft Teams, Outlook, and the Microsoft 365 Copilot app.

> [!NOTE]
> Only users who authenticate with a Microsoft Entra account can have Copilot Chat pinned to their navigation bar.

## Pin Copilot Chat in Microsoft Teams through the Teams admin center

You can only change the pinning settings of Copilot Chat for your users in Microsoft Teams through the Teams admin center. In the Teams admin center, create or modify [App setup policies](/microsoftteams/teams-app-setup-policies#pin-apps) by adding the Copilot app to the policy's Pinned apps. When you assign the policy to users with a Microsoft Entra account, the Teams app pins the Copilot app for them.

Like when you pin any other app in Teams, you also need to allow Copilot Chat for those users. To allow use of the Copilot Chat app in Teams, use one of the following options, depending on your Teams configuration:

- [App permission policies](/microsoftteams/teams-app-permission-policies)
- [App centric management](/microsoftteams/app-centric-management)

If you select **Pin Copilot** on the **Copilot** > **Settings** page in the Microsoft 365 admin center, and you assign a Copilot-pinned app setup policy to users with a Microsoft Entra account, the Teams app pins Copilot Chat for those users in the position defined by the app setup policy. Everyone else has Copilot Chat pinned in a default position.

If you select **Do not pin Copilot** on the **Copilot** > **Settings** page in the Microsoft 365 admin center, and you assign a Copilot-pinned app setup policy to users with a Microsoft Entra account, the Teams app only pins Copilot Chat for those users.

## Related content

- [Pin Microsoft 365 Copilot to the Windows taskbar](pin-copilot-taskbar.md)
- [Data, privacy, and security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)
