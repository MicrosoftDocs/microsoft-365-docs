---
title: Pin Microsoft 365 Copilot Chat to the navigation bar
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 06/16/2025
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
description: "Learn how to improve the use of Microsoft 365 Copilot Chat across your organization by pinning it to the navigation bar in Teams, Outlook, and the Microsoft 365 Copilot app cross the web, desktop, and mobile."
---

# Pin Microsoft 365 Copilot Chat to the navigation bar

> [!NOTE]
> Starting in July 2025 and rolling out over time, Microsoft 365 Copilot Chat will be available in other Microsoft 365 apps like Word, Excel, PowerPoint, and more. The Pin Microsoft 365 Copilot Chat setting will also expand to govern Copilot Chat across all Microsoft 365 apps where available.

As an admin, you can pin Microsoft 365 Copilot Chat to the navigation bar of Teams, Outlook, and the Microsoft 365 Copilot app across the web, desktop, and mobile. Pinning makes it easy for users to access Copilot Chat as the secure and compliant generative AI chat solution that's available to them on their work identity (signed in with a Microsoft Entra account).

> [!NOTE]
> The information in this article is specific to the Copilot Chat experience in the navigation bar of Microsoft 365 apps. You can also [pin the Microsoft 365 Copilot app to the Windows taskbar](pin-copilot-taskbar.md). **Copilot Chat** is an integrated chat experience available within Microsoft 365 apps. The **Copilot app** is a standalone application that provides access to Chat, Search, Agents (if enabled), Notebooks, and Create. To understand the difference between the Copilot app and Copilot Chat, see [Decide which Copilot is right for you](which-copilot-for-your-organization.md).

## Before you begin

:::image type="content" source="media/pin-copilot-mac.png" alt-text="Screenshot showing the Pin Copilot setting on the Copilot settings page in the Microsoft 365 admin center." lightbox="media/pin-copilot-mac.png":::

The following role can access the pinning setting in the Microsoft 365 admin center:

- AI Administrator

To get to this setting, go to the [Copilot settings page](https://go.microsoft.com/fwlink/?linkid=2310640), or:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/).
1. Go to **Copilot** > **Settings**.
1. Select **Pin Microsoft 365 Copilot Chat**.

> [!NOTE]
> Only users who are authenticated with a Microsoft Entra account will have Copilot Chat pinned to their navigation bar.

## Pinning options

Copilot Chat is pinned by default to the navigation bar of Teams, Outlook, and the Microsoft 365 Copilot app for most users eligible for Copilot Chat across web, mobile, and desktop.

Admins can change the pinning settings for Copilot Chat by selecting one of the following options under Settings on the Copilot Control System page in the [Microsoft 365 admin center](https://admin.microsoft.com/).

- **Pin Copilot to the navigation bar (recommended)**: Copilot Chat is automatically pinned for all users. Users aren't prompted.

    :::image type="content" source="media/pin-copilot.png" alt-text="Screenshot showing the option to pin Copilot to the navigation bar.":::

- **Do not pin Copilot Chat to the navigation bar**: Copilot Chat is not automatically pinned to the navigation bar. Copilot Chat also no longer appears in the app launcher. In addition, users are blocked from acquiring or installing the Microsoft 365 Copilot app from the MetaOS store (this restriction doesn't apply to Teams or Outlook).
 
    If you previously selected **Do not pin Copilot to the navigation bar** in the Microsoft 365 admin center and unchecked **Allow users to be asked whether they want to pin it**, your setting configuration is now **Do not pin** and users still don't have Copilot Chat pinned to their navigation bar. Also, if you switch the setting to **Do not pin**, Copilot honors that choice.    
    
    If a user sees Copilot Chat pinned to their navigation bar and chooses to unpin it, Copilot Chat respects that choice in future sessions and unpins Copilot Chat from the navigation bar.

    :::image type="content" source="media/do-not-pin-copilot-setting.png" alt-text="Screenshot showing the option to not pin Copilot for users.":::

You can make changes to Copilot Chat pinning settings at any time. Changes take up to 48 hours to go into effect.

## Pin at a group or user level

For large enterprises with complex needs, you can set up the Pinning policy to apply to specific groups of users. This option isn't recommended for most customers due to management complexity.

1. Sign in to the [Microsoft 365 Apps admin center](https://config.office.com/).
2. In the **Office policies** card, select **Go to Microsoft 365 Cloud Policy**.
3. Select **Create**.
4. Customize the basics and scope of the policy.
5. In policies, look for "Pin Microsoft Copilot to the navigation bar."
6. The flyout panel displays the configuration options. Select an option and apply.
7. Review final changes.
8. Publish.

## User experience

Users can personalize their navigation bar by choosing to pin or unpin Copilot Chat. Users can also adjust the pinning settings within their application preferences, and these choices are specific to Teams, Outlook, the Microsoft 365 Copilot web app ([microsoft365.com](https://M365Copilot.com) and [m365.cloud.microsoft](https://m365.cloud.microsoft/)), Microsoft 365 Copilot desktop app, and Microsoft 365 Copilot mobile app.

A message asking to pin Microsoft 365 Copilot Chat can appear if a user:

- Navigates to [https://microsoft.com/copilot](https://microsoft.com/copilot), [https://microsoft365.com](https://microsoft365.com), or [https://m365.cloud.microsoft/](https://microsoft365.com), and selects **Settings** > **Pin Copilot**.  
- Opens Outlook, Teams, or the Microsoft 365 app on web or desktop.

In the selected pinning scenarios described previously, users see a prompt for pinning Copilot Chat to the navigation bar in the Microsoft 365 Copilot app on web and mobile:

:::image type="content" source="media/pinning-desktop20thsep.png" alt-text="Screenshot showing the prompt for users to pin Copilot Chat." lightbox="media/pinning-desktop20thsep.png":::

The Copilot Chat pinning notification provides users with three options:

- **Ask me later**
- **Do not Pin**
- **Pin and Continue**

If a user selects **Ask me later**, the same message is shown to the user up to three more times, with the pinning dialog shown for a maximum of once per user session. On the final message, the **Don't show again** button replaces the **Ask me later** button. If the user selects **Don't show again**, there are no more notifications to pin Copilot Chat.  

If a user selects **Do not Pin**, there are no more notifications to pin Copilot Chat.

If a user opens the Microsoft 365 Copilot mobile app, they see two options: **Pin and Continue** and **Decline**:

:::image type="content" source="media/pinning-mobile20thsep-small.png" alt-text="Screenshot showing the prompt that appears on mobile interfaces for users to pin Copilot Chat." lightbox="media/pinning-mobile20thsep.png":::

Users with a Microsoft 365 Copilot license don't see any pinning messages. Instead, they see a welcome screen when they use Copilot for the first time.

## Pin Copilot Chat in Microsoft Teams through the Teams admin center

You can change the pinning settings of Copilot Chat for your users in Microsoft Teams only through the Teams admin center. In the Teams admin center, create or modify [App setup policies](/microsoftteams/teams-app-setup-policies#pin-apps) by adding the Copilot app to the policy's Pinned apps. When you assign the policy to users with a Microsoft Entra account, the Copilot app is pinned for them. Like pinning any other app in Teams, Copilot Chat also needs to be allowed for those users through [App permission policies](/microsoftteams/teams-app-permission-policies) or [App centric manage](/microsoftteams/app-centric-management) if you migrated to it.

If you select **Pin Copilot** on the **Copilot** > **Settings** page in the Microsoft 365 admin center, and you have Copilot-pinned App setup policies assigned to users with a Microsoft Entra account, those users have Copilot Chat pinned in the position defined by the App setup policy. Everyone else is pinned in a default position.

If you select **Do not pin Copilot** on the **Copilot** > **Settings** page in the Microsoft 365 admin center, and you have Copilot-pinned App setup policies assigned to users with a Microsoft Entra account, only those users have Copilot Chat pinned.

## More resources

- [Pin Microsoft 365 Copilot to the Windows taskbar](pin-copilot-taskbar.md)
- [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)
- [Microsoft 365 Copilot technical documentation hub](index.yml)
- [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts)
