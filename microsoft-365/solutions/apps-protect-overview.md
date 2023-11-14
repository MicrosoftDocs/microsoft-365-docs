---
title: "Secure and protect apps using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Secure and protect apps using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Secure and protect apps using Microsoft Intune

Once you've [set up and deployed the capabilities of Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune), [added the apps you want to manage to Intune](/microsoft-365/solutions/apps-add-overview), and [configured the apps that you manage in Intune](/microsoft-365/solutions/apps-config-overview), you can begin the process of creating app protection policies. App protection policies (APP) are rules that ensure your organization's data remains safe and contained in a managed app. An app protection policy contains rules that are enforced when the user attempts to access or move "corporate" data, or a set of actions that are prohibited or monitored when the user is inside the app.

Managed apps are apps that you have assigned to users via a unified endpoint management provider, such as Intune. Managed apps support app protection policies, as well as app configuration policies. These apps use mobile application management (MAM) that is provided by the unified endpoint management provider. MAM enables organizations to manage and protect their data within an application. A managed app has either integrated the Intune App SDK or has been wrapped using the Intune Wrapping Tool to support App Protection Policies (APP) and/or app configuration policies. You use MAM policies to configure and protect apps on unmanaged devices, which are personal devices that are not enrolled in Intune.

Using app protection policies provides the benefit of protecting your organization's data at the app level. For end-users, productivity isn't affected and app protection policies don't apply when end-users are using the app in a personal context. 

There are several situations where you commonly should use app protection policies. For instance, if your end-users is using their personal device, you may want to use an app protection policy to control the access to the app by using a PIN. You may want to enforce data sharing restrictions that that your organization's data isn't shared with non-managed apps. Also, you may want to prevent end-users from saving organization data to personal locations.

Organizations can use app protection policies with and without Mobile Device Management (MDM) at the same time. For example, consider an end-user (employee) that uses both a phone issued by the company, and their own personal tablet. The organization issued phone is enrolled in MDM and protected by app protection policies, while the personal device is protected by pp protection policies only.

## Supported platforms

There are three primary platforms that are supported when creating an app protection policy in Intune.

| Platform | Description |
|---|---|
| iOS/iPadOS | You can apply app protection policies to iOS/iPadOS apps that has been   developed to support Intune app protection capabilities. For more   information, see [iOS app protection policy settings in Microsoft   Intune](/mem/intune/apps/app-protection-policy-settings-ios). |
| Android | You can apply app protection policies to Android apps that has   been developed to support Intune app protection capabilities. For more   information, see [Android app protection policy settings   in Microsoft Intune](/mem/intune/apps/app-protection-policy-settings-android). |
| Windows | Currently, you can apply app protection policies to Microsoft Edge for   Windows devices. Using Microsoft Edge, you can control how your   organization's data is access. You can apply app protection to Windows   devices based on data protection and health checks settings. Data protection   settings allow you to control how the movement of data into and out of your   organization (org) context. The org context is defined by documents,   services, and sites accessed by the specified org account. You can use app   protection policy settings to help control external data received into the   org context and org data sent out of the org context. These settings include   receiving and sending org data. Also, you can implement Data Loss Prevention   (DLP) controls, like cut, copy, paste, and save-as restrictions.   Additionally, you can allow or block printing of org data. For more   information, see [App protection policy settings for   Windows](/mem/intune/apps/app-protection-policy-settings-windows). |

For a more information about supported platforms, see [App management capabilities by platform](/mem/intune/apps/app-management#app-management-capabilities-by-platform). 

## Supported apps

For iOS/iPadOS and Android platforms, you can apply app protection policies to any managed app that has been developed to support Intune app protection capabilities. The managed app has either integrated the Intune App SDK or has been wrapped using the Intune Wrapping Tool. For the Windows platform, you can apply app protection policies to Microsoft Edge for Windows. Microsoft Edge, as well as most Microsoft applications, have been integrated to support Intune by using the Intune App SDK.

## App protection

App protection can be applied to supported managed apps on supported platform devices that are either enrolled with Microsoft Intune, enrolled in a third-party Mobile device management (MDM) solution, or are not enrolled in any mobile device management solution. When creating an app protection policy, you specifically choose the app you want to protect, select the data protection settings, determine your access requirements, and apply conditional launch settings. Different settings are available for the different supported platforms.

| Platform  | App protection categories |
|---|---|
| iOS/iPadOS  | Data protection, Access requirements, Conditional launch |
| Android | Data protection, Access requirements, Conditional launch |
| Windows | Data protection, Health checks |

### Data protection
### Access protection (access requirements)
### Launch protection (conditional launch)


## How app protection policies protect app data

### With enrollment (MDM, devices channel)
### Without enrollment (MAM, app channel)


## Understand app protection framework

https://learn.microsoft.com/en-us/mem/intune/apps/app-protection-policy#app-protection-policy-data-protection-framework