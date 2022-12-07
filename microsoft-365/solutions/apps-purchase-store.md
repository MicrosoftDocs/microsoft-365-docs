---
title: "Add standard store apps to Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Add standard store apps to Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Add store apps to Intune

Many of the standard store apps displayed within the Intune console are freely available for you to add and deploy to members of your organization. You also have options to purchase store apps for each device platform.

The following table provides the different categories avilable for store apps:

| Store   app category | Description |
|---|---|
| Free   store apps | You can freely add these apps to   Intune and deploy them to the members of your organization. These apps do not   require any additional cost to use.  |
| Purchased   apps | You must purchase licenses for   these apps before adding to Intune. Each device platform (Windows, iOS,   Android) offers a standard method to purchase licenses for these apps. Intune   provides methods to manage the app license for each end users. |
| Apps   requiring an account, subscription, or license from the app developer | You can freely add and deploy   the app from Intune, but the app requires an account, subscription, or   license from the app developer to use. |
| Apps   included with your Intune license | Based on your Microsoft Intune   license, you may already have Microsoft app licenses available to add and   deploy. |

> [!NOTE]
> In addition to purchasing app licenses, you can create a Intune policies that allow end users to add personal accounts to their devices and purchase unmanaged apps.

## Add available apps based on platform

Intune displays apps that are either freely available, or you own a licenses for the apps. 



## Removing store limitations

An Android Enterprise fully managed device will not allow employees to install any apps that are not approved by the organization. Also, employees will not be able to remove any installed apps against policy. If you wish to allow users to access the full Google Play store to install apps rather than only having access to the approved apps in Managed Google Play store, you can set the **Allow access to all apps in Google Play store** to **Allow**. With this setting, the user can access all the apps in the Google Play store using their corporate account, however purchases may be limited. You can remove the limited purchases restriction by allowing users to add new accounts to the device. Doing so will enable end users to have the ability to purchase apps from the Google Play store using personal accounts, and conduct in-app purchases. For more information, see [Android Enterprise device settings to allow or restrict features using Intune](/mem/intune/configuration/device-restrictions-android-for-work).
