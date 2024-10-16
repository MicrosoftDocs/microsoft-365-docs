---
title: "Understand app assignments using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 09/12/2024
description: Understand app assignments using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand app assignments using Intune

When you set an application's assignment, you're setting whether the app will be **Required**, **Available for enrolled devices**, **Available with or without enrollment**, or **Uninstalled**. Each of these options has additional suboptions, such as availability, installation deadline, and restart grace period.

> [!NOTE]
> App assignment options are dependent on the app platform (the platform of the device where the app will be installed). Not all app types support all assignment intents.

| Assignment | Description |
|---|---|
| Required | The app is installed on devices for the selected groups. Some platforms may have additional prompts for the end user to acknowledge before app installation begins. |
| Available for enrolled devices | Assign the app to groups of users whose devices are enrolled with Intune. The users can install the app from the Company Portal app or website. |
| Available with or without enrollment | Assign this app to groups of users whose devices aren't enrolled with Intune. Users must be assigned an Intune license. |
| Uninstall | The app is uninstalled from devices in the selected groups if Intune has previously installed the application onto the device via an **Available for enrolled devices** or **Required** assignment using the same deployment.  |

> [!NOTE]
> You can assign apps based on your intent. For example, if your intent is to have the app available for a group to install, you can assign the app as **Available for enrolled devices** or **Available with or without enrollment**. If you must have the app installed for users, groups, or devices, such as Microsoft Outlook or the Company Portal, you can set the app assignment to be **Required**.

## Include or exclude assignments

To set the availability of an app, you include and exclude app assignments to a group of users or devices by using a combination of include and exclude group assignments. This capability can be useful when you make the app available by including a large group, and then narrow the selected users by excluding a smaller group. The smaller group might be a test group or an executive group.

Important scenarios exist when including or excluding app assignments:

- Exclusion takes precedence over inclusion in the following same group type scenarios:
  - Including user groups and excluding user groups when assigning apps
  - Including device groups and excluding device group when assigning apps

    For example, if you assign a device group to the **All corporate users** user group, but exclude members in the **Senior Management Staff** user group, **All corporate users** except the **Senior Management staff** get the assignment, because both groups are user groups.

- Intune doesn't evaluate user-to-device group relationships. If you assign apps to mixed groups, the results may not be what you want or expect.

    For example, if you assign a device group to the **All Users** user group, but exclude an **All personal devices** device group, **All users** get the app. The exclusion doesn't apply. As a result, it's not recommended to assign apps to mixed groups.

When assigning groups, groups that have already been assigned or selected are disabled. To select a disabled group, you can remove it from the app's assigned list.

## User versus device context

When an app is assigned as **Available for enrolled devices**, it's deployed in device context. Device content is where the managed app is installed directly to the device by Intune.

When an app is deployed in user context, the managed app is installed for that user on the device where you've selected the **Available with or without enrollment** assignment type. The user's context is recognized by the user's identity using Microsoft Entra ID. The user context is used to recognize how the app is managed, as opposed to device context. App installation on the user's device happens when the user signs in to the device.

> [!NOTE]
> The device context assignment is higher priority than a user context assignment.

As a best practice, create and assign apps specifically for your user groups. Make sure to separate your user groups from device groups.

Intune provides precreated **All Users** and **All Devices** groups when creating policies in the Microsoft Intune admin center. The groups have built-in optimizations for your convenience. It's highly recommended that you use these groups to target all users and all devices instead of any "all users" or "all devices" groups that you might create yourself.

## End user app process

End users at your organization use the Company Portal to view and manage apps that you've assigned from Intune. End users must first sign in to the Company Portal. Then, they can find and install the apps that they need. End users can also use the Company Portal to view the managed apps that they have installed on their device, check the device status, and uninstall apps.

When you assign a managed app from Intune, you select whether you want the app **Available** or **Required**. Available apps are selected by you or your organization, and are appropriate and useful for work or school. These apps are optional to install, and are the only apps you find in the Company Portal to install. Required apps are necessary for members of your organization to accomplish their work or tasks at your organization. These apps are automatically installed for end users without intervention.

Apps are made available to end users based on their device type. For example, if your end users are using the Company Portal website on a Windows device, you have access to Windows apps, but not iOS apps.

End users can also use the Company Portal to view their device compliance status. Device compliance is listed with a status of **Can access company resources**, **Checking access**, or **Can't access company resources**.

> [!NOTE]
> End users can request an app for work or school. For more information about how end users request apps, see [Request an app for work or school](/mem/intune/user-help/install-apps-cpapp-windows#request-an-app-for-work-or-school).
