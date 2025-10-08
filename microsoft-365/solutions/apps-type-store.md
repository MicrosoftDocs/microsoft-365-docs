---
title: "Understand store apps for your managed environment"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: concept-article
ms.date: 04/21/2025
description: Understand store apps as they apply to a managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand store apps for Intune

Microsoft, Apple, and Google each provide an app store. You can use Intune to deploy store apps to your organization's workforce. Deploying apps from the stores offers increased protection over allowing end-users to install apps on their own. Also, many store apps have been designed to support a managed environment such as Microsoft Intune. 

In addition to protecting app data, Intune supports configuring app settings, such as email settings. Store apps are the most common type of apps that you would provide to the members of your organization. Common types of store apps that support Intune include [Microsoft apps](/mem/intune/apps/apps-supported-intune-apps#microsoft-apps), [partner productivity apps](/mem/intune/apps/apps-supported-intune-apps#partner-productivity-apps), and [Partner unified endpoint management (UEM) apps](/mem/intune/apps/apps-supported-intune-apps#partner-uem-apps).

## Apps from the store

You can add the following store app types to Intune.

| App type | Description |
|---|---|
| Android store apps | Android store apps are available to add to Intune from the [Google Play store](https://play.google.com/store/apps). Intune can deploy these apps to Android devices. |
| Managed Google Play apps | Managed Google Play apps are available to add to Intune from the [Managed Google Play store](https://play.google.com/work). Intune can deploy these apps specifically to Android Enterprise devices. Intune provides an app type specifically for Managed Google Play apps, which makes it easy to add this type of app. There are three types of Managed Google Play apps:<ul><li>Managed Google Play store app</li><li>Managed Google Play private app</li><li>Managed Google Play web apps</li></ul>   |
| iOS/iPadOS store apps | iOS store apps are available to add to Intune from [Apple's app store](https://www.apple.com/app-store/). Intune can deploy these apps to iOS/iPadOS devices. | 
| Microsoft Store apps | Microsoft Store apps are available to add to Intune from the [Microsoft app store](https://apps.microsoft.com/store/apps). Intune can deploy these apps to Windows devices. |

Store app can be added to Intune by first selecting the app type.

:::image type="content" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-08.png" alt-text="Intune app types" border="true" :::
 
> [!NOTE]
> Microsoft Store for Business will be retired in the first quarter of 2023. However, admins can still leverage the connection to Store for Business and Education from their UEM solution to deploy apps to managed Windows 11 devices until they are retired in 2023.

Intune integrates directly with the app stores when adding apps for many app scenarios. In addition, Intune provides capabilities to assign, configure, protect, manage, and retire the apps that you need to manage. Also, Intune provides several reports to keep track of app protection, installation, and licensing.
