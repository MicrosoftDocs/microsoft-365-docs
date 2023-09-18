---
title: "Step 4. Configure Microsoft Edge"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Step 4. Configure Microsoft Edge in Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 4. Configure Microsoft Edge

Microsoft Edge provides AI-powered web browsing capabilities. Edge can be added, configured, and protected with Intune. Using Intune, you can assign Microsoft Edge to your end-users to support conditional access, app protection, single sign-on, and app configuration. You can add Microsoft Edge to Intune as a store app (Android, iOS/iPadOS), a Built-In app (Android, iOS/iPadOS), a Windows 10 and later app, a macOS app, or a Managed Google Play store app.

There are two ways to deliver app configuration using Intune:
1. Use the mobile device management (MDM) OS channel on enrolled devices. 
    - For iOS devices, use the [Managed App Configuration channel for iOS](https://developer.apple.com/library/content/samplecode/sc2279/Introduction/Intro.html) 
    - For Android devices, use the [Android in the Enterprise channel for Android](https://developer.android.com/work/managed-configurations)
2. Use the Mobile Application Management (MAM) channel

Microsoft Edge supports multi-identity. Users can add a work account, as well as a personal account, for browsing. There is complete separation between the two identities, which is similar to other Microsoft mobile apps.

> [!NOTE]
> Configuring Microsoft Edge using Intune applies to the following platforms:
> - iOS/iPadOS 14.0 or later
> - Android 8.0 or later for enrolled devices and Android 9.0 or later for unenrolled devices



https://learn.microsoft.com/en-us/mem/intune/apps/manage-microsoft-edge
https://learn.microsoft.com/en-us/mem/intune/apps/app-configuration-policies-use-ios#allow-only-configured-organization-accounts-in-apps
https://learn.microsoft.com/en-us/mem/intune/apps/app-configuration-policies-use-android#allow-only-configured-organization-accounts-in-apps

- Edge iOS devices
    - nothing predefined, however several key settings
- Edge Android MAM
    - General configuration settings
    - Microsoft Tunnel for Mobile Application Management settings
    - Edge configuration settings (get screenshot)
- 

## Next step
<!--
[![Step 5 to manage apps and licenses](../media/configure-managed-apps/configure-managed-apps-07.png)](apps-config-step-5.md)
-->
Continue with [Step 5](apps-config-step-5.md) to manage apps and licenses in Microsoft Intune.