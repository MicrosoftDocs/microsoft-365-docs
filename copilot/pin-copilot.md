---
title: Pin Microsoft Copilot to the navigation bar
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 09/23/2024
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
description: "Learn how to improve organization use of Microsoft Copilot by pinning it to the navigation bar in Teams, Outlook, and the Microsoft 365 App."
---

# Pin Microsoft Copilot to the navigation bar

As an administrator, you can encourage your organization to use Microsoft Copilot by pinning Copilot to the navigation bar of Teams, Outlook, and the Microsoft 365 App, including [microsoft365.com](https://www.office.com/), Microsoft 365 desktop app, and the Microsoft 365 mobile app.  

Admin pinning allows you to set Microsoft Copilot to appear on the navigation bar for the applications listed previously. This setting is only applicable for users who are signed in with a Microsoft Entra account for your tenant.

## Before you begin

:::image type="content" source="media/pin-copilot-settings.png" alt-text="Screenshot showing the Pin Copilot setting on the Copilot settings page in the Microsoft 365 admin center." lightbox="media/pin-copilot-settings.png":::

Global administrators can access this setting in the Microsoft 365 admin center by navigating to **Copilot** > **Settings**.

> [!NOTE]
> Admin pinning is only applicable to users who are authenticated with a Microsoft Entra account.

## Pinning options

By default, Microsoft Copilot is not pinned to the navigation bar, and users will be asked if they want to pin Microsoft Copilot starting mid-September 2024.

Administrators can change this behavior by selecting an option for pinning Microsoft Copilot to the navigation bar:

1. **Pin Microsoft Copilot (recommended by Microsoft)**: Microsoft Copilot is automatically pinned for all users. Users will not be prompted.

:::image type="content" source="media/copilot-pin-toggle.png" alt-text="Screenshot showing the option to pin Copilot to the navigation bar.":::

2. **Do not pin Microsoft Copilot**: Microsoft Copilot is not automatically pinned to the navigation bar. When this option is selected, administrators can determine if users receive automatic prompts to pin using the checkbox.

:::image type="content" source="media/copilot-not-pin.png" alt-text="Screenshot showing the option to not Pin Copilot to the navigation bar.":::

Global administrators can make changes to Microsoft Copilot pinning settings at any time. Changes take up to 48 hours to go into effect.

> [!NOTE]
> Users with a license for Microsoft 365 Copilot will have Microsoft Copilot pinned by default.

## User experience

Users can personalize their navigation bar by choosing to pin or unpin Microsoft Copilot. Users can adjust the pinning settings within their application preferences, and these choices are specific to Teams, Outlook, the Microsoft 365 web app ([microsoft365.com](https://www.office.com/) and [m365.cloud.microsoft](https://m365.cloud.microsoft/)), Microsoft 365 desktop app, and Microsoft 365 mobile app.

A message asking to pin Microsoft Copilot can appear if a user:

- Navigates to [https://microsoft.com/copilot](https://microsoft.com/copilot), [https://microsoft365.com](https://microsoft365.com), or [https://m365.cloud.microsoft/](https://microsoft365.com), and selects **Settings** > **Pin Copilot**.  
- Opens Outlook, Teams, or the Microsoft 365 app on web or desktop.

In the selected pinning scenarios described previously, users will see a prompt for pinning Microsoft Copilot to the navigation bar in the Microsoft 365 app on web and mobile:

:::image type="content" source="media/pinning-desktop20thsep.png" alt-text="Screenshot showing the prompt for users to pin Copilot." lightbox="media/pinning-desktop20thsep.png":::

The Microsoft Copilot pinning notification provides users with three options:

- **Ask me later**
- **Do not Pin**
- **Pin and Continue**

If a user selects **Ask me later**, the same message will be shown to a user up to three more times, with the pinning dialog shown for a maximum of once per user session. On the final message, the 'Ask me later' button is replaced by a ‘Don’t show again’ button. If the user selects **Don’t show again**, there are no additional notifications to pin Microsoft Copilot.  

If a user selects **Do not Pin**, there are no additional notifications to pin Microsoft Copilot.

If a user opens the Microsoft 365 mobile app, they will see two options: **Pin and Continue** or **Decline**:

:::image type="content" source="media/pinning-mobile20thsep-small.png" alt-text="Screenshot showing the prompt that appears on mobile interfaces for users to pin Copilot." lightbox="media/pinning-mobile20thsep.png":::

Users with a paid version of Microsoft 365 Copilot will not see any pinning messages. They see a welcome screen when they visit Copilot for the first time.

## When Microsoft Copilot will be pinned in each app

If you choose to pin Microsoft Copilot for all users, it will be pinned in the Microsoft 365 app for desktop, mobile, and web starting mid-September. Microsoft Copilot will be pinned in Microsoft Teams, Microsoft Outlook, and the Microsoft 365 web app soon after.

To learn more about the Microsoft Copilot announcement, see [Frequently asked questions for Microsoft Copilot with enterprise data protection](https://aka.ms/MsftCopilot-BlogFAQ).

## More resources

- [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)
- [Microsoft 365 Copilot technical documentation hub](index.yml)
- [Copilot Lab](https://copilot.cloud.microsoft/)
