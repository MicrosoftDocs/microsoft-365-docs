---
title: "Overview of app types available for managed environments"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 03/29/2024
description: Understand the app types that are available for managed environments.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# App types for managed environments

There are many types of apps you may want to use at your organization that can either be acquired or created. By understanding and grouping apps based the types presented in this article, you'll have a better understanding of apps that can be managed by Microsoft Intune. An app that can be managed supports Intune's [app protection policies](/mem/intune/apps/app-protection-policy). App protection policies are rules that ensure that your organization's data remains safe and contained in your managed apps. This overview provides a view of app types based on how apps are acquired, created, used, installed, and run.

> [!NOTE]
> Managed apps are enhanced by being integrated to support the [Intune App SDK](/mem/intune/developer/app-sdk) or wrapped using the [Intune App Wrapping Tool](/mem/intune/developer/apps-prepare-mobile-application-management). This integration allows managed apps to support Microsoft Intune's app protection policies and app configuration policies. 

There are several app types that you'll want to consider when determining which apps you want to provide and manage at your organization. Understanding the complete breadth of app types is an important step toward understanding apps that can be assigned, delivered, and managed using the Intune product family.

The users of apps and devices at your organization (your company's workforce) might have several [app requirements](apps-add-step-1.md). Before adding apps to Intune and making them available to the members of your organization, you may find it helpful to assess and understand a few app fundamentals. You must determine [app requirements](apps-add-step-1.md) that the users at your company need, such as the platforms and capabilities that the members of your organization needs. You must determine whether to use Intune to manage both the devices and apps, or have Intune manage just the apps without managing the devices. Also, you must determine the apps and capabilities that the members of your organization needs, and who needs them. The information in this article helps you get started by understanding app types. Later in this content set, you'll step through the process of assessing your organization's app requirements.

## Managed app types

You can add apps to Intune that support management capabilities using the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431). Once you add an app to Intune, you can assign the app to devices and users. Intune helps install the app on your users' devices.

| App type | Description |
|---|---|
| Apps from the store (store apps) | Apps that are purchased or downloaded from a third-party, such as Google, Microsoft, or Apple. These apps have been uploaded by the app developer to either the [Google Play store](https://play.google.com/store/apps), the [Microsoft app store](https://apps.microsoft.com/store/apps), or [Apple's app store](https://www.apple.com/app-store/). The provider of a store app maintains and provides updates to the app. You select the app in the store list and add it by using Intune as an available app for your users. |
| Apps created in-house or as a custom app (line-of-business) | Apps that your organization created or designed for your organization. These apps are often called Line-of-Business (LOB) apps. Intune installs the app on the device (you supply the installation file). These apps are created in-house or as a custom app. The functionality of this type of app has been created for one of the Intune supported platforms, such as Windows, iOS/iPadOS, macOS, or Android. You must have a separate file to install this app type from Intune. Also, you provide updates of the app to users by adding and deploying the updates using Intune.|
| Apps that are built in (built-in apps) | Curated managed apps that provide specific functionality. Intune installs the app on the device. |
| Apps on the web (web link or web app) | Intune creates a shortcut to the web app on the device home screen. Web apps are client-server applications. The server provides the web app, which includes the UI, content, and functionality. Additionally, modern web hosting platforms commonly offer security, load balancing, and other benefits. This type of app is separately maintained on the web. You use Intune to point to this app type. You also assign which groups of users can access the app. |
| Specific Microsoft apps | Intune provides specific Microsoft apps with specialized settings that you can select when adding the apps to Intune. |

Each of these app types is described in detail:
- [Store apps](apps-type-store.md)
- [Line-of-business apps](apps-type-lob.md)
- [Built-in apps](apps-type-built-in.md)
- [Web apps](apps-type-web.md)
- [Microsoft apps](apps-type-microsoft.md)
