---
title: "Overview of app types available for a managed environment"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Understand the app types that are available in a managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# App types available for a managed environment

There are a wide variety of apps available that can be either acquired or created. By understanding and grouping apps based on type, you'll have a better understanding of apps that can be managed. This overview provide a view of app types based on how apps are acquired, created, used, installed, and run.

> [!NOTE]
> A managed app supports Microsoft Intune's [App Protection Policies (APP)](/mem/intune/apps/app-protection-policy) by being integrated with either the Intune App SDK or wrapped using the Intune Wrapping Tool.

There are several app types that you'll want to consider when determining which apps you want to manage and provide to your workforce. Understanding the complete breadth of app types is an important step to understanding apps that can be assign, delivered and managed using the Intune product family.

The users of apps and devices at your company (your company's workforce) might have several app requirements. Before adding apps to Intune and making them available to your workforce, you may find it helpful to assess and understand a few app fundamentals. There are various types of apps that are available for Intune. You must determine app requirements that are needed by the users at your company, such as the platforms and capabilities that your workforce needs. You must determine whether to use Intune to manage the devices (including apps) or have Intune manage the apps without managing the devices. Also, you must determine the apps and capabilities that your workforce needs, and who needs them. The information in this article helps you get started.

## General app types

| App type | Description |
|---|---|
| Apps from the store (store apps) | Apps that are purchased or downloaded from a 3rd party, such as Google, Microsoft, or Apple. These apps have been uploaded by the app developer to either the Microsoft store, the iOS/iPadOS store, or the Android store. The provider of a store app maintains and provides updates to the app. You select the app in the store list and add it by using Intune as an available app for your users. |
| Apps created in-house or as a custom app (line-of-business) | Apps that are created by or for your organization. These apps are often called Line-of-Business (LOB) apps. Intune installs the app on the device (you supply the installation file). Apps that are created in-house or as a custom app are line-of-business (LOB) apps. The functionality of this type of app has been created for one of the Intune supported platforms, such as Windows, iOS/iPadOS, macOS, or Android. Your organization creates and provides you with updates as a separate file. You provide updates of the app to users by adding and deploying the updates using Intune.|
| Apps that are built-in (built-in apps) | Curated managed apps that provide specific functionality. Intune installs the app on the device. |
| Apps on the web (web link or web app) | Intune creates a shortcut to the web app on the device home screen. Web apps are client-server applications. The server provides the web app, which includes the UI, content, and functionality. Additionally, modern web hosting platforms commonly offer security, load balancing, and other benefits. This type of app is separately maintained on the web. You use Intune to point to this app type. You also assign which groups of users can access the app. |
| Specific Microsoft apps | Intune provides specific Microsoft apps with specialized settings that you can select when adding the apps to Intune. |
| Other apps | Description |

## Apps from the store

You can add store apps to Intune using the Intune service UI. Once you add an app to Intune, you can assign the app to devices and users. Intune install the app on your users' devices.

| App type | Description |
|---|---|
| Android store apps | Android store apps are available to add to Intune from the [Google Play store](https://play.google.com/store/apps). Intune can deploy these apps to Android devices. |
| Managed Google Play apps | Managed Google Play apps are available to add to Intune from the managed Google Play Store. Intune can deploy these apps specifically to Android Enterprise devices. Also, you need to have a Google administrator account to access the managed Google Play Store. There are three types of Managed Google Play apps:<ul><li>Managed Google Play store app</li><li>Managed Google Play private app</li><li>Managed Google Play web link</li></ul> |
| iOS/iPadOS store apps | iOS store apps are available to add to Intune from [Apple's app store](https://www.apple.com/app-store/). Intune can deploy these apps to iOS devices. | 
| Microsoft store apps | Microsoft store apps are available to add to Intune from the [Microsoft app store](https://apps.microsoft.com/store/apps). Intune can deploy these apps to Windows devices. |
| Microsoft store for business | Microsoft store apps are available to add to Intune from the [Microsoft store for business](https://www.microsoft.com/business-store). You can either obtain free apps or purchase apps for your organization, for you individually, or in volume. Intune can deploy these apps to Windows devices. **NOTE:** Microsoft Store for Business will be retired in the first quarter of 2023. |

## Apps created in-house or as a custom app

Custom apps are commonly referred to as line-of-business (LOB) apps. LOB apps are apps that have been created in-house for your organization and support a specific purpose for your organization. LOB apps are uploaded to Intune and deployed by Intune. LOB apps are supported for Android devices, iOS/iPadOS devices, Windows, and macOS devices.

When your organization creates apps for your workforce to use, they can design the app to support Intune app protection policies. You or your organization can use either the Intune App Wrapping Tool or the Intune App SDK to enable app protection policies.

> [!NOTE]
> In addition to creating your own LOB apps, you can install specific [3rd party protected apps](/mem/intune/apps/apps-supported-intune-apps) that are designed to work with Intune.

### Custom apps types

You can create LOB apps that are supported by Intune for each Android, iOS/iPadOS, Windows, and macOS devices. 

| App type | Description |
|---|---|
| Android line-of-business (LOB) apps | Android LOB apps are typically developed in-house. This app type requires you to upload an Android *.apk* file to Intune. Intune installs the LOB app on the user's device. |
| iOS/iPadOS LOB apps | iOS/iPadOS LOB apps are typically developed in-house. This app type requires you to upload an iOS *.ipa* file to Intune. Intune installs the LOB app on the user's device.   |
| Windows LOB apps | Windows LOB apps are typically developed in-house. This app type requires you to upload a Windows app package file. The file extensions for Windows apps include *.msi*, *.appx*, *.appxbundle*, *.msix*, and *.msixbundle*. Intune installs the LOB app on the user's device using a process called sideloading, which allows an app that isn't certified by the Microsoft Store to be installed. |
| macOS LOB apps | macOS LOB apps are typically developed in-house. This app type requires you to upload an Android *.pkg* file to Intune. Intune installs the LOB app on the user's device. |
| macOS apps (DMG) | macOS apps (DMG) apps are typically developed in-house. This app type requires you to upload an Android *.dmg* file to Intune. Intune installs the LOB app on the user's device. The Microsoft Intune management agent is necessary to be installed on managed macOS devices in order to enable advanced device management capabilities that are not supported by the native macOS operating system. |
| Windows app (Win32) | Windows LOB apps are typically developed in-house. This app type requires you to upload a Windows app package file. Win32 apps must be contained in a *.intunewin* file to upload to Intune. Intune installs the LOB app on the user's device using a process called sideloading, which allows an app that isn't certified by the Microsoft Store to be installed. Intune supports both 32-bit and 64-bit operating system architecture for this file type. |

## Apps that are built-in

| App type | Description |
|---|---|
| Built-in iOS/iPadOS app | description |
| Built-in Android app | description |


## Apps on the web

| App type | Description |
|---|---|
| iOS/iPadOS web clip | description |
| Windows web link | description |
| Web link | Cross platform web apps |

## Specific Microsoft apps

| App type | Description |
|---|---|
| Microsoft 365 apps for Windows 10 and later | description |
| Microsoft 365 apps for macOS | description |
| Microsoft Edge for Windows 10 and later | description |
| Microsoft Edge for macOS| description |
| Microsoft Defender for Endpoint for macOS | description |

## Other apps

| App type | Description |
|---|---|
| Android Enterprise system apps | description |