---
title: "Purchase and add apps in your managed environment"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Purchase and add managed apps as part of your managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Purchase and add apps in your managed environment

To help protect and secure your organization’s data, you can provided your organization's workforce with managed apps so they can safely collaborate and be productive. Managed apps are those apps that have been enhanced to support special protective functionality. This functionality is managed and maintained by the Microsoft Intune product family’s integrated management platform. The platform provides a web-based console to manage, protect, and monitor all of your organization's endpoints, whether those endpoints are devices or apps. This console helps keep your organization's cloud and on-premises devices, apps, and data secure. The Microsoft Intune product family integrates Microsoft Intune, Microsoft Endpoint Configuration Manager, Desktop Analytics, and Windows Autopilot.

> [!NOTE]
> Endpoints include the mobile devices, desktop computers, virtual machines, embedded devices, servers, and shared devices that your organization uses. Examples of shared and specialized devices include retail point of sale devices, ruggedized devices, digital interactive whiteboards, conference room devices, and holographic wearable computers. Additionally, endpoints include the apps used by your organization.

By protecting and managing your organization's endpoints using Microsoft Intune, you accomplish the following actions:
- Protect the data that the people at your organization are accessing.
- Ensure your organization is using proper credentials to access and share company data.
- Safeguard the devices and apps that access your organization resources.
- Ensure that new members of your organization have a great experience on-boarding to your organization.
- Confirm security rules are in place based on your organizations requirements.
- Confirm that every member of your organization has a device that is configured and protected.
- Ensure that all your corporate services are easily available to end users on all the devices they use.
- Ensure that end users get the best possible experience based on first class support for all the products that they need to use.

You can use Microsoft Intune to manage the apps that your company's workforce uses on their devices. This functionality is called mobile application management (MAM). MAM in Intune is designed to protect organization data at the application level, including custom apps and store apps. App management can be used on organization-owned devices and personal devices. When it is used with personal devices, only organization-related access and data is managed.

The users of apps and devices at your company (your company's workforce) might have several app requirements. Before adding apps to Intune and making them available to your workforce, you may find it helpful to assess and understand a few app fundamentals. There are various types of apps that are available for Intune. You must determine app requirements that are needed by the users at your company, such as the platforms and capabilities that your workforce needs. You must determine whether to use Intune to manage the devices (including apps) or have Intune manage the apps without managing the devices. Also, you must determine the apps and capabilities that your workforce needs, and who needs them. The information in this article helps you get started.

Microsoft Intune supports two MAM configurations:
- **Intune MDM + MAM**: IT administrators can only manage apps using MAM and app protection policies on devices that are enrolled with Intune mobile device management (MDM). To manage apps using MDM + MAM, customers should use the Intune console in the Microsoft Intune admin center.
- **MAM without device enrollment**: MAM without device enrollment, or MAM-WE, allows IT administrators to manage apps using MAM and app protection policies on devices not enrolled with Intune MDM. This means apps can be managed by Intune on devices enrolled with third-party EMM providers. To manage apps using MAM-WE, customers should use the Intune console in the Microsoft Intune admin center. Also, apps can be managed by Intune on devices enrolled with third-party enterprise mobility management (EMM) providers or not enrolled with an MDM at all.

When apps are managed in Intune, administrators can:
- **Protect company data at the app level.** You can add and assign mobile apps to user groups and devices. This allows your company data to be protected at the app level. You can protect company data on both managed and unmanaged devices because mobile app management doesn't require device management. The management is centered on the user identity, which removes the requirement for device management.
- **Configure apps to start or run with specific settings enabled.** In addition, you can update existing apps already on the device.
- **Assign policies to limit access and prevent data from being used outside your organization.** You choose the setting for these policies based on your organization's requirements. For example, you can:
  - Require a PIN to open an app in a work context.
  - Control the sharing of data between apps.
  - Prevent the saving of company app data to a personal storage location.
- **Support apps on a variety of platforms and operating systems.** Each platform is different. Intune and Configuration Manager provides available settings specifically for each supported platform.
- **See reports about which apps are used, and track their usage.** In addition, Intune and Configuration Manager provides endpoint analytics to help you assess and resolve problems.
- **Do a selective wipe by removing only organization data from apps.**
- **Ensure personal data is kept separate from managed data.** End-user productivity isn't affected and policies don't apply when using the app in a personal context. The policies are applied only in a work context, which gives you the ability to protect company data without touching personal data.

## Understand app types

The users of apps and devices at your company (your company's workforce) might have several app requirements. Before adding apps to Intune and making them available to your workforce, you may find it helpful to assess and understand a few app fundamentals. There are various types of apps that are available for Intune. You must determine app requirements that are needed by the users at your company, such as the platforms and capabilities that your workforce needs. You must determine whether to use Intune to manage the devices (including apps) or have Intune manage the apps without managing the devices. Also, you must determine the apps and capabilities that your workforce needs, and who needs them. 

Intune supports a wide range of app types. The available options differ for each app type. Intune lets you # and assign the following app types:

| App types | Installation | Updates |
|---|---|---|
| Apps from the store (store apps) | Intune installs the app on the device.  | App updates are automatic. |
| Apps written in-house or as a custom app (line-of-business) | Intune installs the app on the device (you supply the installation file). | You must update the app. |
| Apps that are built-in (built-in apps) | Intune installs the app on the device.  | App updates are automatic. |
| Apps on the web (web link) | Intune creates a shortcut to the web app on the device home screen. | App updates are automatic. |
| Apps from other Microsoft services  | Intune creates a shortcut to the app in the Company Portal. | App updates are automatic. |

## Purchase apps

Often times, before you can distribute an app to your workforce, you must either purchase the app or purchase a license to use the app. Some apps are free, however you may still need to follow the purchase process in order to distribute those apps to your workforce.

## Add apps to Intune

Before you can distribute protected apps to your workforce, you must add the apps to Microsoft Intune. Intune allows you to add and distribute a wide variety of app types to your workforce.

## Learning for administrators

The following resources help administrators learn concepts about using MEM and Intune.

[Simplify device management with Microsoft Intune](/training/modules/simplify-device-management-with-microsoft-endpoint-manager/)
Description: Learn about modern management and the Microsoft Intune and how the business management tools in Microsoft 365 can simplify management of all your devices.

[Set up Microsoft Intune](/training/modules/set-up-microsoft-intune/)
Description: Microsoft Intune, which is a part of Microsoft Intune, helps you protect the devices, apps, and data that the people at your organization use to be productive. After completing this module, you will have set up Microsoft Intune. Set up includes reviewing the supported configurations, signing up for Intune, adding users and groups, assigning licenses to users, granting admin permissions, and setting the MDM authority.
