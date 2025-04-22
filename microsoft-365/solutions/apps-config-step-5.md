---
title: "Step 5. Configure Microsoft Teams"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: how-to
ms.date: 04/21/2025
description: Step 5. Configure Microsoft Teams in Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 5. Configure Microsoft Teams

Microsoft Teams allows your organization to collaborate and communicate in real-time. Your organization can use Teams to chat between individuals, groups, teams, and channels. They can set up meetings, share apps and files, and make calls. Team also supports adding various apps to bring capability and insight.

Using Intune, Teams can be added, configured, and assigned to your organization's end users. You can also assign Microsoft Teams to your end users to support conditional access, app protection, and single sign-on at your organization.

You can add Microsoft Teams to Intune as a store app (Android, iOS/iPadOS), a Built-In app (Android, iOS/iPadOS), a Windows 10 and later app, or a Managed Google Play store app. However, only the Microsoft Teams for the iOS/iPadOS and Android platforms support app configuration policies.

When you use Intune's app configuration policies, you create and assign configuration settings separately from adding and assigning the app itself. Therefore, you should consider adding the app to Intune without assigning the app. Create and assign the app configuration policy for the app, and then assign the app itself to the device or user.

There are two ways to deliver app configuration using Intune. The first way is to use the mobile device management (MDM) OS channel on enrolled devices for iOS and Android devices. The second way is to use the Mobile Application Management (MAM) channel. For more information, see [Delivery channels for app configuration policies](apps-config-overview.md#delivery-channels-for-app-configuration-policies). For more information about delivery channels, see [Managed App Configuration channel for iOS](https://developer.apple.com/library/content/samplecode/sc2279/Introduction/Intro.html) and [Android in the Enterprise channel for Android](https://developer.android.com/work/managed-configurations).

> [!IMPORTANT]
> When considering configuration setting for Microsoft Teams, be aware that if you use the MAM channel you'll want to consider how you protect the app using app protection policies.

## General configuration settings

Microsoft Teams provides configuration settings that allow you to customize the behavior of Teams on an end user's device. The following table provides a list of general app configuration settings for Teams.

| Key | Description |
|---|---|
| com.microsoft.teams.chat.notifications.IntuneMAMOnly | You can allow chat notifications   when using the  Mobile Application   Management (MAM) channel in Intune. You select the **Managed apps** option when you create an app configuration policy. For more information, see [Notification   settings in Microsoft   Teams](/mem/intune/apps/manage-microsoft-teams#notification-settings-in-microsoft-teams). |
| com.microsoft.teams.channel.notifications.IntuneMAMOnly | You can allow channel   notifications when using the MAM channel in Intune. You select the **Managed   apps** option when you create an app configuration policy. For more information,   see [Notification settings in Microsoft   Teams](/mem/intune/apps/manage-microsoft-teams#notification-settings-in-microsoft-teams). |
| com.microsoft.teams.others.notifications.IntuneMAMOnly | You can allow other   notifications when using the MAM channel in Intune. You select the **Managed   apps** option when you create an app configuration policy. For more information,   see [Notification settings in Microsoft   Teams](/mem/intune/apps/manage-microsoft-teams#notification-settings-in-microsoft-teams). |

For these notifications to show up on iOS/iPadOS and Android devices, your end users must ensure specific settings are set in the Teams and Company Portal apps. For more information, see [Teams notifications](/mem/intune/apps/manage-microsoft-teams#for-the-notifications-to-show-up-on-ios-and-android-devices).

> [!NOTE]
> Microsoft Teams also supports Microsoft Tunnel for Mobile Application Management. For more information, see [Microsoft Tunnel for Mobile Application Management for Android](/mem/intune/protect/microsoft-tunnel-mam-android) and [Microsoft Tunnel for Mobile Application Management for iOS/iPadOS](/mem/intune/protect/microsoft-tunnel-mam-ios).

## Next step

[:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-06.png" alt-text="Step 6 - Configure other apps" border="false" :::](apps-config-step-6.md)

Continue with [Step 6](apps-config-step-6.md) to configure other apps in Microsoft Intune.