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

A line-of-business (LOB) app is an app that you add to Microsoft Intune from an app installation file. Line-of-business (LOB) apps are commonly referred to as custom apps and in-house apps because they are typically created in-house for your organization and support a specific purpose for your organization. To include LOB apps in your managed environment, you upload the app installation file to Intune and assign the app to devices or groups from Intune. LOB apps are supported by Intune for Android devices, iOS/iPadOS devices, Windows, and macOS devices.

When your organization initially creates an app for your workforce to use, they can include support for Intune app configuration policies and app protection policies. This support allows Intune to manage your LOB app. To to add this support to your app, your organization must use either the Intune App Wrapping Tool or the Intune App SDK.

> [!NOTE]
> Managed apps are enhanced by being integrated to support the [Intune App SDK](/mem/intune/developer/app-sdk) or wrapped using the [Intune App Wrapping Tool](/mem/intune/developer/apps-prepare-mobile-application-management). This integration allows managed apps to support Microsoft Intune's app protection policies.

## Line-of-business apps types

You can create LOB apps that are supported by Intune for each Android, iOS/iPadOS, Windows, and macOS devices.

| App type | Description |
|---|---|
| Android line-of-business (LOB) apps | Android LOB apps are typically developed in-house. This app type requires you to upload an Android *.apk* file to Intune. Intune installs the LOB app on the user's device. |
| iOS/iPadOS LOB apps | iOS/iPadOS LOB apps are typically developed in-house. This app type requires you to upload an iOS *.ipa* file to Intune. Intune installs the LOB app on the user's device. You need to join the iOS Developer Enterprise Program to use this app type.   |
| Windows LOB apps | Windows LOB apps are typically developed in-house. This app type requires you to upload a Windows app package file. The file extensions for Windows apps include *.msi*, *.appx*, *.appxbundle*, *.msix*, and *.msixbundle*. Intune installs the LOB app on the user's device using a process called sideloading, which allows an app that isn't certified by the Microsoft Store to be installed. |
| macOS LOB apps | macOS LOB apps are typically developed in-house. This app type requires you to upload an Android *.pkg* file to Intune. Intune installs the LOB app on the user's device. |
| macOS apps (DMG) | macOS apps (DMG) apps are typically developed in-house. This app type requires you to upload an Android *.dmg* file to Intune. Intune installs the LOB app on the user's device. The Microsoft Intune management agent is necessary to be installed on managed macOS devices in order to enable advanced device management capabilities that are not supported by the native macOS operating system. |
| Windows app (Win32) | Windows LOB apps are typically developed in-house. This app type requires you to upload a Windows app package file. Win32 apps must be contained in a *.intunewin* file to upload to Intune. Intune installs the LOB app on the user's device using a process called sideloading, which allows an app that isn't certified by the Microsoft Store to be installed. Intune supports both 32-bit and 64-bit operating system architecture for this file type. Win32 apps offer more control within Intune than a Windows LOB app.  |

## Android line-of-business (LOB) apps