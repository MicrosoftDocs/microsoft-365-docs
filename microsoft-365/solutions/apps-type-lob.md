---
title: "Understand line-of-business apps for your managed environment"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: concept-article
ms.date: 04/21/2025
description: Understand line-of-business apps as they apply to a managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand line-of-business apps for Intune

A line-of-business (LOB) app is an app that you add to Microsoft Intune from an app installation file. Line-of-business (LOB) apps are commonly referred to as custom apps and in-house apps because these apps are typically created by your organization. These apps support a specific purpose for your organization. To include LOB apps in your managed environment, you upload the app installation file to Intune and assign the app to devices or groups from Intune. Intune supports LOB apps for Android devices, iOS/iPadOS devices, Windows devices, and macOS devices.

When your organization initially creates an app for the members of your organization to use, they can include support for Intune app configuration policies and app protection policies. This support allows Intune to manage your LOB app. To add this support to your app, your organization must use either the [Intune App SDK](/mem/intune/developer/app-sdk) or the [Intune App Wrapping Tool](/mem/intune/developer/apps-prepare-mobile-application-management).

## Line-of-business apps types

You can create LOB apps that are supported by Intune for each Android, iOS/iPadOS, Windows, and macOS devices.

| App type | Description |
|---|---|
| Android line-of-business (LOB) apps | Android LOB apps are typically developed in-house. This app type requires you to upload an Android *.apk* file to Intune. Intune installs the LOB app on the user's device. |
| iOS/iPadOS LOB apps | iOS/iPadOS LOB apps are typically developed in-house. This app type requires you to upload an iOS *.ipa* file to Intune. Intune installs the LOB app on the user's device. You need to join the [Apple Developer Enterprise Program](https://developer.apple.com/programs/enterprise/) to use this specific app type.   |
| Windows LOB apps | Windows LOB apps are typically developed in-house. This app type requires you to upload a Windows app package file. The file extensions for Windows apps include *.msi*, *.appx*, *.appxbundle*, *.msix*, and *.msixbundle*. Intune installs the LOB app on the user's device using a process called sideloading, which allows an app to be installed that isn't certified by the Microsoft Store using the Intune Management Extension). |
| macOS LOB apps | macOS LOB apps are typically developed in-house. This app type requires you to upload a *.pkg* file to Intune. Intune installs the LOB app on the user's device. |
| macOS apps (DMG) | macOS apps (DMG) are typically developed in-house. This app type requires you to upload a *.dmg* file to Intune. Intune installs the LOB app on the user's device. The Microsoft Intune management agent is necessary to be installed on managed macOS devices in order to enable advanced device management capabilities that aren't supported by the native macOS operating system. The Apple disk image (DMG) file can include one or more apps to deploy. |
| Windows app (Win32) | Win32 apps are typically developed in-house. This app type requires you to upload a Windows app package file. Win32 apps must be contained in a *.intunewin* file to upload to Intune. Intune installs the Win32 app on the user's device using sideloading, which allows an app that isn't certified by the Microsoft Store to be installed. Intune supports both 32-bit and 64-bit operating system architecture for this file type. Win32 apps offer more control within Intune than a Windows LOB app.  |

LOB apps can be added to Intune by first selecting either **Line-of-business app** or specifically **macOS app (DMG)**.

:::image type="content" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-09.png" alt-text="Intune app types" border="true" :::
 
When you select **Line-of-business app**, you can add your specific installation package file. Also, you can choose to use [Test Base](https://go.microsoft.com/fwlink/?linkid=2165798) to help you manage the performance of your LOB app.

:::image type="content" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-10.png" alt-text="Intune - Line-of-business app" border="true" :::

