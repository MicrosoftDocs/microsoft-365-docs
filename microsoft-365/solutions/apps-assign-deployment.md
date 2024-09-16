---
title: "Understand app deployment using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 09/12/2024
description: Understand app deployment using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand app deployment using Intune

After you add an app to Intune, you can use Intune to assign the managed app to groups of users or devices. To deploy a managed app, you start by targeting a group. Microsoft Entra ID is used, and can help determine any type of conditional access. Then, the request is passed through authentication and authorization before reaching the location where the app will be installed from, such as the Apple App Store. Next, the app is installed on the end user's device based on any app configuration policies that have been created for the app and deployed to the user or device.

> [!TIP]
> To see where app protection and compliance policies fit into the overall Intune architecture, see [High-level architecture for Microsoft Intune](/mem/intune/fundamentals/high-level-architecture).

This architecture diagram includes application management details available in Microsoft Intune.

:::image type="content" source="/mem/intune/fundamentals/media/high-level-architecture/intunearchitecture_wh.png" alt-text="High-level architectural diagram for Microsoft Intune"  lightbox="/mem/intune/fundamentals/media/high-level-architecture/intunearchitecture_wh.png" :::

## Platform specific app settings

App capabilities provided by Microsoft Intune differ depending on the device platform that the setting applies to. However, there are some app commonalities that all platforms offer. The following table provides details about app settings that are important for you to be aware of. 

| Platform | App setting details |
|---|---|
| All   platforms | To receive app updates on   devices that aren't enrolled with Intune, device users must go to their   organization's Company Portal and manually install app updates. |
| All   platforms | For   almost all app types and platforms, Available   assignments are only valid when assigning to   user groups, not device groups. Win32 apps can be assigned to either user or   device groups. |
| All   platforms | The app is only displayed as   available if the user logged into the Company Portal is the primary user who   enrolled the device and the app is applicable to the device. |
| Android | Apps   deployed as Required to corporate-owned work profile and corporate-owned   fully managed devices can't be uninstalled manually by the user. |
| Android | For unenrolled Android devices, you can use managed Google Play to deploy store   apps and line-of-business (LOB) apps to users. Once deployed, you can   use Mobile Application Management (MAM) to manage the applications.   Managed Google Play apps targeted as Available with or without   enrollment will appear in the Play Store app on the end user's device,   and not in the Company Portal app.  |
| Android  | If you deploy an Android app   as Available with or without enrollment, reporting status will only be   available on enrolled devices. |
| Android   Enterprise | For Android Enterprise   personally owned work profile, when managed Google Play pre-production track   apps are assigned as required, create two identical user groups and assign   the pre-production track as "available" to one and "required"   to the other. The result is that the pre-production track successfully   deploys to the device. |
| iOS | For managed iOS store apps only,   when you add these apps to Microsoft Intune and assign them as Required, the   apps are automatically created with both Required and Available intents. |
| iOS | iOS   Store apps (not iOS/iPadOS VPP apps) that are targeted with required intent   will be enforced on the device at the time of the device check-in and will   also show in the Company Portal app. |
| iOS | When   conflicts occur in Uninstall on device removal setting, the app isn't removed from the device when the device is no longer managed. |
| iOS/iPadOS | assign   iOS/iPadOS and Android apps (line-of-business and store-purchased apps) to   devices that aren't enrolled with Intune. |
| iOS/iPadOS | o   configure what happens to managed apps when devices are no longer managed,   you can select the intended setting under Uninstall on device removal. |
| iOS/iPadOS | If   you have created an iOS/iPadOS VPN profile that contains per-app VPN   settings, you can select the VPN profile under VPN. When the app is run, the VPN connection is opened. |
| iOS/iPadOS | To configure whether a required   iOS/iPadOS app is installed as a removable app by end users, you can select   the setting under Install as removable. |
| iOS/iPadOS | You can prevent the iCloud   backup of the managed iOS/iPadOS app. |
| macOS | You can prevent the iCloud   backup of the managed macOS app. |

