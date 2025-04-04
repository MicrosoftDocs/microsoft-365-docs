---
title: Pin Microsoft 365 Copilot Chat to the navigation bar
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 03/31/2025
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
description: "Learn how to improve organization use of Microsoft 365 Copilot Chat by pinning it to the navigation bar in Teams, Outlook, and the Microsoft 365 Copilot app."
---

# Pin Microsoft 365 Copilot Chat to the navigation bar

As an administrator, you can pin Copilot to the navigation bar of Teams, Outlook, and the Microsoft 365 Copilot app, across the web, desktop, and mobile. Pinning makes it easy for your users to access Microsoft 365 Copilot Chat as the secure and compliant generative AI chat solution that’s available to them on their work identity (signed in with a Microsoft Entra account).

>[!NOTE]
>
> - Starting on May 1, 2025, and rolling out over time, Microsoft 365 Copilot Chat will be pinned by default in the navigation bar of Teams, Outlook, and the Microsoft 365 Copilot app for most users eligible for Copilot Chat across web, mobile, and desktop.
> - If you previously selected 'Do not pin Copilot to the navigation bar' in the Microsoft 365 admin center, and also unchecked the 'Allow users to be asked whether they want to pin it' option, your setting configuration will be “Do not pin” and your users still won’t have Copilot pinned in their navigation bar. Also, if an admin switches the setting to 'Do not pin,' Copilot honors that choice. If a user sees Copilot pinned in their navigation bar and chooses to unpin it, Copilot respects that choice in future sessions.

## Before you begin

:::image type="content" source="media/pin-copilot-mac.png" alt-text="Screenshot showing the Pin Copilot setting on the Copilot settings page in the Microsoft 365 admin center." lightbox="media/pin-copilot-mac.png":::

The following roles can access this setting in the Microsoft 365 admin center:

- Global Administrator
- AI Administrator

To get to this setting, go to the [Copilot settings page](https://go.microsoft.com/fwlink/?linkid=2310640), or:

1. Sign in to the Microsoft 365 admin center.
1. Go to **Copilot** > **Settings**.
1. Select **Pin Microsoft 365 Copilot Chat**.

> [!NOTE]
> Admin pinning is only applicable to users who are authenticated with a Microsoft Entra account.

## Pinning options

By default, Microsoft 365 Copilot Chat isn't pinned to the navigation bar, and users are asked if they want to pin Copilot.

Administrators can change this behavior by selecting an option for pinning Microsoft 365 Copilot Chat to the navigation bar:

1. **Pin Copilot to the navigation bar (recommended)**: Microsoft 365 Copilot Chat is automatically pinned for all users. Users aren't prompted.

:::image type="content" source="media/pin-copilot.png" alt-text="Screenshot showing the option to pin Copilot to the navigation bar.":::

2. **Do not pin Copilot Chat to the navigation bar**: Microsoft 365 Copilot Chat isn't automatically pinned to the navigation bar. When this option is selected, administrators can determine if users receive automatic prompts to pin using the checkbox.

:::image type="content" source="media/do-not-pin-copilot-setting.png" alt-text="Screenshot showing the option to Do not pin Copilot for users.":::

When you uncheck the 'Allow users to be asked whether they want to pin it' option, Microsoft 365 Copilot Chat no longer appears in the App Launcher.

Global Admins and AI Admins can make changes to Microsoft 365 Copilot Chat pinning settings at any time. Changes take up to 48 hours to go into effect.

## Upcoming changes for pinning Copilot

Starting May 1, 2025 and rolling out over time, Microsoft 365 Copilot Chat is pinned to the navigation bar of Teams, Outlook, and the Microsoft 365 Copilot app by default for most users who are eligible for Copilot Chat across web, mobile, and desktop.

Admins can change the pinning settings by selecting an option for pinning Microsoft 365 Copilot Chat to the navigation bar:

1. **Pin Copilot to the navigation bar (recommended)**: Microsoft 365 Copilot Chat is automatically pinned for all users. Users aren't prompted.
1. **Do not pin Copilot to the navigation bar**: Microsoft 365 Copilot Chat isn't automatically pinned to the navigation bar.

If you previously selected **Do not pin Copilot to the navigation bar** and also unchecked the "Allow users to be asked whether they want to pin it" option, your setting configuration will be **Do not pin** and your users still won’t have Copilot pinned in their navigation bar.

If an admin switches the setting to Do not pin, Copilot honors that choice. If a user sees Copilot pinned in their navigation bar and chooses to unpin it, Copilot respects that choice in future sessions.  

## Pin at a group or user level

For large enterprises with complex needs, the Pinning policy can be set up to apply to specific groups of users. This option is not recommended for most customers due to the management complexity.

To do this:

1. Sign in to the [Microsoft 365 Apps admin center](https://config.office.com/).
2. In the **Office policies** card, select **Go to Microsoft 365 Cloud Policy**.
3. Select **Create**.
4. Customize the basics and scope of the policy.
5. In policies, look for “Pin Microsoft Copilot to the navigation bar.”
6. The flyout panel displays the configuration options. Select an option and apply.
7. Review final changes.
8. Publish.

## User experience

>[!NOTE]
> Beginning on May 1, 2025, and rolling out over time, most users will have Copilot Chat pinned by default, and they won't see any pinning messages.

Users can personalize their navigation bar by choosing to pin or unpin Microsoft 365 Copilot Chat. Users can adjust the pinning settings within their application preferences, and these choices are specific to Teams, Outlook, the Microsoft 365 Copilot web app ([microsoft365.com](https://M365Copilot.com) and [m365.cloud.microsoft](https://m365.cloud.microsoft/)), Microsoft 365 Copilot desktop app, and Microsoft 365 Copilot mobile app.

A message asking to pin Microsoft 365 Copilot Chat can appear if a user:

- Navigates to [https://microsoft.com/copilot](https://microsoft.com/copilot), [https://microsoft365.com](https://microsoft365.com), or [https://m365.cloud.microsoft/](https://microsoft365.com), and selects **Settings** > **Pin Copilot**.  
- Opens Outlook, Teams, or the Microsoft 365 app on web or desktop.

In the selected pinning scenarios described previously, users see a prompt for pinning Copilot to the navigation bar in Microsoft 365 Copilot (app) on web and mobile:

:::image type="content" source="media/pinning-desktop20thsep.png" alt-text="Screenshot showing the prompt for users to pin Copilot." lightbox="media/pinning-desktop20thsep.png":::

The Microsoft 365 Copilot Chat pinning notification provides users with three options:

- **Ask me later**
- **Do not Pin**
- **Pin and Continue**

If a user selects **Ask me later**, the same message is shown to a user up to three more times, with the pinning dialog shown for a maximum of once per user session. On the final message, the 'Don't show again' button replaces the 'Ask me later' button. If the user selects **Don't show again**, there are no more notifications to pin Copilot.  

If a user selects **Do not Pin**, there are no more notifications to pin Microsoft 365 Copilot Chat.

If a user opens the Microsoft 365 Copilot mobile app, they see two options: **Pin and Continue** or **Decline**:

:::image type="content" source="media/pinning-mobile20thsep-small.png" alt-text="Screenshot showing the prompt that appears on mobile interfaces for users to pin Copilot." lightbox="media/pinning-mobile20thsep.png":::

Users with a paid version of Microsoft 365 Copilot won't see any pinning messages. They see a welcome screen when they visit Copilot for the first time.

## Pin Copilot in Microsoft Teams through the Teams admin center

You can pin Microsoft 365 Copilot Chat for your users in Microsoft Teams only through the Teams admin center. In the Teams admin center, create or modify [App setup policies](/microsoftteams/teams-app-setup-policies#pin-apps) by adding the Copilot app to the policy's Pinned apps. When you assign the policy to users with a Microsoft Entra account, the Copilot app is pinned for them. Like pinning any other app in Teams, Copilot also needs to be allowed for those users through [App permission policies](/microsoftteams/teams-app-permission-policies) or [App centric manage](/microsoftteams/app-centric-management) if you migrated to it.

If you select Pin Copilot through the Microsoft 365 admin center **Copilot** > **Settings** page, and you have Copilot-pinned App setup policies assigned to users with a Microsoft Entra account, those users have Copilot Chat pinned in the position defined by the App setup policy. Everyone else is pinned in a default position.

If you select Do not pin Copilot through the Microsoft 365 admin center **Copilot** > **Settings** page, and you have Copilot-pinned App setup policies assigned to users with a Microsoft Entra account, only those users have Copilot Chat pinned.

## More resources

- [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)
- [Microsoft 365 Copilot technical documentation hub](index.yml)
- [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts)
