---
title: "Understand line-of-business apps for your managed environment"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Understand line-of-business apps as they apply to a managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand line-of-business apps for a managed environment

Line-of-business (LOB) apps are commonly referred to as custom apps and in-house apps. LOB apps are apps that have been created in-house for your organization and support a specific purpose for your organization. LOB apps are uploaded to Intune and deployed by Intune. LOB apps are supported for Android devices, iOS/iPadOS devices, Windows, and macOS devices.

When your organization creates apps for your workforce to use, they can design the app to support Intune app protection policies. You or your organization can use either the Intune App Wrapping Tool or the Intune App SDK to enable app protection policies.

> [!NOTE]
> In addition to creating your own LOB apps, you can install specific [3rd party protected apps](/mem/intune/apps/apps-supported-intune-apps) that are designed to work with Intune.

## Custom apps types

You can create LOB apps that are supported by Intune for each Android, iOS/iPadOS, Windows, and macOS devices. 

| App type | Description |
|---|---|
| Android line-of-business (LOB) apps | Android LOB apps are typically developed in-house. This app type requires you to upload an Android *.apk* file to Intune. Intune installs the LOB app on the user's device. |
| iOS/iPadOS LOB apps | iOS/iPadOS LOB apps are typically developed in-house. This app type requires you to upload an iOS *.ipa* file to Intune. Intune installs the LOB app on the user's device.   |
| Windows LOB apps | Windows LOB apps are typically developed in-house. This app type requires you to upload a Windows app package file. The file extensions for Windows apps include *.msi*, *.appx*, *.appxbundle*, *.msix*, and *.msixbundle*. Intune installs the LOB app on the user's device using a process called sideloading, which allows an app that isn't certified by the Microsoft Store to be installed. |
| macOS LOB apps | macOS LOB apps are typically developed in-house. This app type requires you to upload an Android *.pkg* file to Intune. Intune installs the LOB app on the user's device. |
| macOS apps (DMG) | macOS apps (DMG) apps are typically developed in-house. This app type requires you to upload an Android *.dmg* file to Intune. Intune installs the LOB app on the user's device. The Microsoft Intune management agent is necessary to be installed on managed macOS devices in order to enable advanced device management capabilities that are not supported by the native macOS operating system. |
| Windows app (Win32) | Windows LOB apps are typically developed in-house. This app type requires you to upload a Windows app package file. Win32 apps must be contained in a *.intunewin* file to upload to Intune. Intune installs the LOB app on the user's device using a process called sideloading, which allows an app that isn't certified by the Microsoft Store to be installed. Intune supports both 32-bit and 64-bit operating system architecture for this file type. |

