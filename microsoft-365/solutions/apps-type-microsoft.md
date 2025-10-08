---
title: "Understand Microsoft apps for Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: concept-article
ms.date: 04/21/2025
description: Understand Microsoft apps as they apply to a managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand Microsoft apps in Intune

There are specific Microsoft app types that allow you to install and manage Microsoft 365 apps, Microsoft Edge, and Microsoft Defender for Endpoint. The app types are specific to Windows 10 and later, and also macOS. Users must have an account and license to use these apps, such as one of the license you can select for Microsoft Intune.

> [!NOTE]
> For licensing and plan information related to device and app management, see [Microsoft 365 enterprise plans](/microsoft-365/enterprise).

## Microsoft apps that support Intune

You and the members of your organization may use Microsoft Office, OneDrive, Excel, and Outlook regularly, which are all supported by Microsoft Intune. However, there are dozens of other Microsoft apps for Android and iOS/iPadOS that support various app capabilities supported by Intune. These include the following capabilities:
- Core app protection policy settings
- App configuration
- Org allowed accounts (iOS, Android)
- Sync policy managed app data with native apps (iOS, Android)
- Org data notifications (iOS, Android)
- Open data into Org documents (iOS, Android)
- Save copies of org data (iOS, Android)

> [!NOTE]
> Many of the Microsoft apps connect the user to services, such as OneDrive. 

For complete list of supported Microsoft apps, see [Microsoft Intune protected apps](/mem/intune/apps/apps-supported-intune-apps).

## Specific Microsoft apps

| App type | Description |
|---|---|
| Microsoft 365 apps for Windows 10 and later | This app type allows you to choose one or more Microsoft 365 Apps for managed devices running Windows 10 or later. Users must have an account and license to use these apps. When you add Microsoft 365 Apps to Intune, you can install your choice of Microsoft 365 Apps on managed devices running Windows 10 or later.  |
| Microsoft 365 apps for macOS | This app type allows you to choose one or more Microsoft 365 Apps for managed devices running macOS. Users must have an account and license to use these apps. |
| Microsoft Edge for Windows 10 and later |  You can assign and install Microsoft Edge version 77 and later to devices you manage that run Windows 10 and macOS. |
| Microsoft Edge for macOS|  You can assign and install Microsoft Edge version 77 and later to devices you manage that run Windows 10 and macOS. These app types make it easy for you to assign Microsoft Edge to macOS devices without requiring you to use the macOS app wrapping tool. To help keep the apps more secure and up to date, the app comes with Microsoft AutoUpdate (MAU). |
| Microsoft Defender for Endpoint for macOS | You can also assign and install Microsoft Defender for Endpoint to devices you manage that run macOS. This app type makes it easy for you to assign Microsoft Defender for Endpoint to macOS devices without requiring you to use the macOS app wrapping tool. To help keep the apps more secure and up to date, the app comes with Microsoft AutoUpdate (MAU). |

Microsoft apps can be added to Intune by selecting one of the Microsoft app types.

:::image type="content" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-13.png" alt-text="Microsoft app types" border="true" :::
 