---
title: Pin Microsoft 365 Copilot Chat in the Microsoft 365 apps
f1.keywords:
- NOCSH
ms.author: aaroncz
author: aczechowski
manager: dansimp
ms.date: 06/16/2025
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
description: "Learn how to improve the use of Microsoft 365 Copilot Chat across your organization by pinning it to the navigation bar in Teams, Outlook, and the Microsoft 365 Copilot app cross the web, desktop, and mobile."
---

# Pin Microsoft 365 Copilot Chat in the Microsoft 365 apps

As an admin, you can pin Microsoft 365 Copilot Chat in the Microsoft 365 apps and the Microsoft 365 Copilot app across the web, desktop, and mobile. Pinning makes it easy for users to access Copilot Chat as the secure and compliant generative AI chat solution that's available to them on their work identity (signed in with a Microsoft Entra account).

> [!NOTE]
> The information in this article is specific to the Copilot Chat experience in the navigation bar of Microsoft 365 apps. You can also [pin the Microsoft 365 Copilot app to the Windows taskbar](pin-copilot-taskbar.md). **Copilot Chat** is an integrated chat experience available within Microsoft 365 apps. The **Copilot app** is a standalone application that provides access to Chat, Search, Agents (if enabled), Notebooks, and Create. To understand the difference between the Copilot app and Copilot Chat, see [Decide which Copilot is right for you](which-copilot-for-your-organization.md).

## Before you begin

:::image type="content" source="media/pin-copilot-microsoft-365-apps2.png" alt-text="Screenshot showing selected checkbox of Pin Copilot Chat in Microsoft 365 apps." lightbox="media/pin-copilot-microsoft-365-apps2.png":::

The following role can access the pinning setting in the Microsoft 365 admin center:

- [AI administrator](/entra/identity/role-based-access-control/permissions-reference)

To get to this setting, go to the [Copilot settings page](https://go.microsoft.com/fwlink/?linkid=2310640), or:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/).
1. Go to **Copilot** > **Settings**.
1. Select **Pin Microsoft 365 Copilot Chat**.

> [!NOTE]
> Only users who are authenticated with a Microsoft Entra account will have Copilot Chat pinned to their navigation bar.

## Pinning options

Copilot Chat is pinned by default to the navigation bar of the Microsoft 365 apps and the Microsoft 365 Copilot app for most users eligible for Copilot Chat across web, mobile, and desktop.

> [!NOTE]
> Copilot Chat is *not* pinned by default for users in the European Economic Area (EEA) and Switzerland.

Admins can change the pinning settings for Copilot Chat by selecting one of the following options under Settings on the Copilot Control System page in the [Microsoft 365 admin center](https://admin.microsoft.com/).

- **Pin Copilot Chat in Microsoft 365 apps (recommended)**: Copilot Chat is automatically pinned for all users. Users aren't prompted.

- **Do not pin Copilot Chat in Microsoft 365 apps**: Copilot Chat is not automatically pinned to the navigation bar. Copilot Chat also no longer appears in the app launcher. In addition, users are blocked from acquiring or installing the Microsoft 365 Copilot app from the MetaOS store (this restriction doesn't apply to Teams or Outlook).

    If you previously selected **Do not pin Copilot to the navigation bar** in the Microsoft 365 admin center and unchecked **Allow users to be asked whether they want to pin it**, your setting configuration is now **Do not pin** and users still don't have Copilot Chat pinned. Also, if you switch the setting to **Do not pin Copilot Chat in Microsoft 365 apps**, Copilot honors that choice.

    If a user sees Copilot Chat pinned to their navigation bar and chooses to unpin it, Copilot Chat respects that choice in future sessions and unpins Copilot Chat from the navigation bar.

You can make changes to Copilot Chat pinning settings at any time. Changes take up to 48 hours to go into effect.

## Pin Copilot app on the Windows taskbar

You can pin the Microsoft 365 Copilot app to the Windows taskbar of managed devices.

This setting is only applicable to users who have an active Intune license. To view or configure Copilot taskbar pinning in the Microsoft 365 admin center, you need to be a member of the **Intune Administrator** role.

:::image type="content" source="media/pin-copilot-microsoft-365-win-taskbar.png" alt-text="Screenshot showing the link to pin Microsoft 365 Copilot app to the Windows taskbar." lightbox="media/pin-copilot-microsoft-365-win-taskbar.png":::

For more information, see [Pin Microsoft 365 Copilot app to the Windows taskbar](pin-copilot-taskbar.md).

If your organization doesn't have an Intune subscription, then you'll see the following page:

:::image type="content" source="media/pin-copilot-microsoft-365-no-intune.png" alt-text="Screenshot showing the link to pin Microsoft 365 Copilot app to the Windows taskbar if you don't have an Intune subscription.":::

## Pin at a group or user level

For large enterprises with complex needs, you can set up the Pinning policy to apply to specific groups of users. This option isn't recommended for most customers due to management complexity.

1. Sign in to the [Microsoft 365 Apps admin center](https://config.office.com/).
2. In the **Office policies** card, select **Go to Microsoft 365 Cloud Policy**.
3. Select **Create**.
4. Customize the basics and scope of the policy.
5. In policies, look for "Pin Microsoft Copilot to the navigation bar."

   The flyout panel displays the configuration options.
6. Select an option and apply.
7. Review final changes.
8. Publish.

## User experience

Unlicensed Copilot Chat users can choose to pin or unpin Copilot Chat. Users can also adjust the pinning settings within their application preferences, and these choices are specific to Microsoft Teams, Outlook and the Microsoft 365 Copilot app.

## Pin Copilot Chat in Microsoft Teams through the Teams admin center

You can change the pinning settings of Copilot Chat for your users in Microsoft Teams through the Teams admin center only. In the Teams admin center, create or modify [App setup policies](/microsoftteams/teams-app-setup-policies#pin-apps) by adding the Copilot app to the policy's Pinned apps. When you assign the policy to users with a Microsoft Entra account, the Copilot app is pinned for them. Like pinning any other app in Teams, Copilot Chat also needs to be allowed for those users through [App permission policies](/microsoftteams/teams-app-permission-policies) or [App centric manage](/microsoftteams/app-centric-management) if you migrated to it.

If you select **Pin Copilot** on the **Copilot** > **Settings** page in the Microsoft 365 admin center, and you have Copilot-pinned App setup policies assigned to users with a Microsoft Entra account, those users have Copilot Chat pinned in the position defined by the App setup policy. Everyone else is pinned in a default position.

If you select **Do not pin Copilot** on the **Copilot** > **Settings** page in the Microsoft 365 admin center, and you have Copilot-pinned App setup policies assigned to users with a Microsoft Entra account, only those users have Copilot Chat pinned.

## More resources

- [Pin Microsoft 365 Copilot to the Windows taskbar](pin-copilot-taskbar.md)
- [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)
- [Microsoft 365 Copilot technical documentation hub](index.yml)
- [Copilot Prompt Gallery](https://m365.cloud.microsoft/copilot-prompts)
