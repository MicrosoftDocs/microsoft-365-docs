---
title: "Step 2. Assign apps to groups"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 09/12/2024
description: Step 2. Assign apps to groups.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 2. Assign apps to users, groups, and devices

Working with managed apps in Intune involves several steps. You should complete the following steps before assigning apps to members of your organization:
- [Acquire the apps your organization needs](/microsoft-365/solutions/apps-purchase-overview) based on [platform](/microsoft-365/solutions/apps-purchase-store#add-store-apps-based-on-platform)
- [Add the apps to Intune](/microsoft-365/solutions/apps-add-overview)
- [Create and assigned an app configuration policy](/microsoft-365/solutions/apps-config-overview) for each app
- [Create and assigned an app protection policy](/microsoft-365/solutions/apps-protect-overview) for each app

You may find it easiest to group the apps you want to assign based on the platforms your organization supports. For instance, if you're organization support iOS devices, you should focus on assigning each of your iOS apps before assigning apps for another platform, such as Android. Also, you may find it helpful to follow an app policy naming convention, so you can clearly track your app policies.

> [!NOTE]
> If you need to know [core and advanced app settings](/mem/intune/apps/apps-supported-intune-apps#core-app-settings) for Microsoft apps that have been designed to support Intune, see the [Microsoft apps](/mem/intune/apps/apps-supported-intune-apps) list. For a list of other apps that support Intune, see [Partner productivity apps](/mem/intune/apps/apps-supported-intune-apps#core-app-settings).

## Specific apps to assign

If you've already purchased and added an app to Intune, you may still need to assign it to your members of your organization. When you add an app to Intune, you can immediately set the app assignment. However, you can add an app without assigning it to members of your organization, where you may want to create app configuration, protection, and conditional access policies related to the app.

There are specific apps that you'll want to require on a user's device, such as the Company Portal, Microsoft Outlook, Microsoft Edge, Microsoft Teams, and Microsoft 365 apps.

> [!NOTE]
> If the user modifies a required app, such as deleting it, Intune will automatically reinstall the app. For more information about required apps, see [Installing, updating, or removing required apps](/mem/intune/apps/apps-add#installing-updating-or-removing-required-apps).

### Company Portal

If your organization is managing apps with Intune, you need to use the Company Portal. End users at your organization use the Company Portal to securely access company data and do common tasks. End users can access these tasks and information using either the Company Portal app, Company Portal website, or Intune app. The Company Portal supports iOS/iPadOS, Linux, macOS, and Windows devices. The Intune app supports Android devices.

Intune allows you to customize the Company Portal so that it better supports your organization. Specifically, you can set the Company Portal branding, support information, enrollment, privacy, notifications, device categories, app sources, and self-service actions.

> [!NOTE]
> The "Company Portal" is commonly used as the descriptor for the Intune app, Company portal app, and the Company portal website.
> 
> You don't need to use the Company Portal if you are only managing devices (MDM). If you are using **MAM** or **MDM + MAM**, you need to use the Company Portal.

### Microsoft Outlook

Microsoft Intune makes it easy to provide Microsoft Outlook to your end users at your organization. Outlook provides secure email, calendar, contacts, and files. You can choose to add app configuration and protection policies for Microsoft Outlook to iOS/iPadOS or Android devices. For related information, see [Microsoft apps](/mem/intune/apps/apps-supported-intune-apps#microsoft-apps) and [Configure Microsoft Outlook](/microsoft-365/solutions/apps-config-step-2).

### Microsoft 365 Apps

Microsoft 365, formerly known as Microsoft Office, is a suite of productivity apps that include Microsoft Word, Excel, PowerPoint, Teams, and more. Assigning Microsoft 365 apps to the devices and users at your organization is the recommended way to install Microsoft 365 apps. You can deliver Microsoft 365 apps to Windows, iOS, Android, and macOS platforms.

### Microsoft Edge

Microsoft Edge for iOS and Android is designed to enable users to browse the web and supports multi-identity. Users can add a work account, as well as a personal account, for browsing. There's complete separation between the two identities, which is similar to what is offered in other Microsoft mobile apps.

### Microsoft Teams

Microsoft Teams is the hub for team collaboration in Microsoft 365 that integrates the people, content, and tools your team needs to be more engaged and effective.

## Other apps to assign

You can add apps to Intune that support management capabilities using the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431). Once you add an app to Intune, you can assign the app to devices and users. Intune helps install the app on your users' devices.

For more information about the different types of apps you can manage with Intune, see [Managed app types](/microsoft-365/solutions/apps-type-overview#managed-app-types).

## Assign app process

After you've added an app to Microsoft Intune, you can assign the app to users and devices. It's important to note that you can deploy an app to a device whether or not the device is managed by Intune. Instead of the *device* being managed by Intune, the *app* would be managed by Intune.

Apps are handled differently when assigning an app to a user versus assigning the app to a device. If your organization only manages apps using Intune, rather than enrolling and managing devices, you assign apps to users or groups of users. This is the Mobile Application Management (MAM) approach to securing and protecting your organization using Intune. If your organization manages both devices and users, you can follow the MDM + MAM approach to management.

> [!NOTE]
> To compare the available options when assigning managed apps to enrolled devices versus devices not enrolled with Intune, see [Options when assigning managed apps](/mem/intune/apps/apps-deploy#options-when-assigning-managed-apps).

You can assign an app to members of your organization when you add the app to Intune, or later after you have assigned the app policies. For details about assigning managed apps from Intune, see [Assign an app](/mem/intune/apps/apps-deploy#options-when-assigning-managed-apps).

## Next step

[:::image type="content" source="../media/assign-managed-apps/assign-managed-apps-03.png" alt-text="Step 3. Verify and monitor app assignments." border="false" :::](apps-assign-step-3.md)

Continue with [Step 3](apps-assign-step-3.md) to verify and monitor app assignments using Microsoft Intune.