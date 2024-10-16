---
title: "Understand app management using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 09/12/2024
description: Understand app management using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand app management using Intune

Before you configure, protect, or assign apps to be managed by Intune, you first need to determine your management deployment model. Intune supports mobile device management (MDM), mobile application management (MAM), and both MDM + MAM. Devices that are enrolled with Intune use MDM. MDM enables organizations to protect and secure their resources and data on enrolled devices. Apps that are managed (MAM) on their own without device management (MDM), can be configured and protected using Intune. MAM enables you to manage and protect your organization's data within the managed apps application you deploy using Intune.

## App management using managed devices

Devices enrolled with Intune (or another Mobile Device Management service) are managed devices. Using Intune, if you assign an app to a managed device, you have full assignment capabilities, including assigning apps to the user and the device. You can assign protected apps to the user and device. You can also assign apps based on intent. For example, if your intent is to have the app available for the user to install, you can assign the app as **Available**. If you must have the app installed on the user device, such as Microsoft Outlook or the Company Portal, you can select the app assignment to be **Required**. Additionally, on managed devices, you can uninstall apps and receive app updates from Intune. Also, end users can install available apps from the Company Portal app on their device or from the web-based Company Portal.

> [!NOTE]
> Mobile Device Management (MDM) is where users enroll their devices in Intune. MDM enables organizations to protect and secure their resources and data on enrolled devices. After a device is enrolled, it is a managed device and can receive your organization's  policies, rules, and settings. For example, you can install specific apps, create a password policy, install a VPN connection, and more.

## App management using unmanaged devices

Devices that aren't enrolled in a Mobile Device Management service such as Intune, have different app management capabilities. Using Intune, managed apps that are installed on an unmanaged device use the user's identity (Microsoft Entra ID) to help manage the apps. You can assign an app to a user based on their identity, but you can't assign the app specifically to the user's device when the devices isn't managed. You can assign apps with the **Available** intent. However, you can't assign apps as **Required**. Additionally, apps that are managed using the user's identity can't be uninstalled using Intune, or receive app updates from Intune. Also, end users can't use the Company portal app on their devices to install apps. Instead, end users must install available apps from the web-based Company Portal.

> [!NOTE]
> Apps that are managed without device management using MAM, can be configured and protected using Intune. MAM enables you to manage and protect your organization's data within an application. MAM without MDM is popular for organizations that enable members of their organization to work remotely on their own devices (BYOD).
