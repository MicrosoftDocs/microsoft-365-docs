---
title: "Understand app management using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 05/07/2024
description: Understand app management using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand app management using Intune

Microsoft Intune is a cloud-based service that protects your organization's data by using mobile device management (MDM) and mobile application management (MAM). You can use Intune protect your organization's data at the app level (MAM) on both company devices and users' personal devices, such as smartphones, tablets, and laptops. Intune provide data protection for apps have been enhanced to support Intune and deployed using Intune, as well as data protection for devices that have been enrolled in Intune.

Before you configure, protect, or assign apps to be managed by Intune, you first need to determine your management deployment model. Intune supports mobile device management (MDM), mobile application management (MAM), and both MDM + MAM. Devices that are enrolled with Intune use MDM. MDM enables organizations to protect and secure their resources and data on enrolled devices. Apps that are managed (MAM) on their own without device management (MDM), can be configured and protected using Intune. MAM enables you to manage and protect your organization's data within an application.

## App management using managed devices

Devices enrolled with Intune (or another Mobile Device Management service) are managed devices. Using Intune, if you assign an app to a managed device, you have full assignment capabilities, including assigning apps to the user and the device. You can assign protected apps to the user and device. You can also assign apps based on intent. For example, if your intent is to have the app available for the user to install, you can assign the app as **Available**. If you must have the app installed on the user device, you can select the app assignment to be **Required**. Additionally, on managed devices, you can uninstall apps and receive app updates from Intune. Also, end users can install available apps from the Company Portal app on their device or from the web-based Company Portal.

> [!NOTE]
> Mobile Device Management (MDM) is where users enroll their devices in Intune. MDM enables organizations to protect and secure their resources and data on enrolled devices. After a device is enrolled, it is a managed device and can receive your organization's  policies, rules, and settings. For example, you can install specific apps, create a password policy, install a VPN connection, and more.

## App management using unmanaged devices

Devices that aren't enrolled in a Mobile Device Management service such as Intune, have different app management capabilities. Using Intune, managed apps that are installed on an unmanaged device use the user's identity (Entra ID) to help manage the apps. You can assign an app to a user based on their identity, but you can't assign the app specifically to the user's device. You can assign a protected app to an end user. You can also assign apps with the **Available** intent. However, you can't assign apps as **Required**. Additionally, apps that are managed by the user's identity using Intune can't be uninstalled from Intune, or receive app updates from Intune. Also, enusers can't use the Company portal app on their devices to install apps. Instead, end users must install available apps from the web-based Company Portal.

> [!NOTE]
> Apps that are managed (MAM) without device management (MDM), can be configured and protected using Intune. MAM enables you to manage and protect your organization's data within an application. MAM without MDM is popular for organizations that enable members of their organization to work remotely on their own devices (BYOD).

[:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-steps.png" alt-text="Step 1. Apply minimum data protection." border="false" :::](apps-assign-step-1.md)

After you've completed the above steps, you're ready to deploy, manage, and monitor the managed apps your organization uses.
