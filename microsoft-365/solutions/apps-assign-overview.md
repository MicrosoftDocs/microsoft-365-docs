---
title: "Assign and deploy apps using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 04/16/2024
description: Assign and deploy apps using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Assign and deploy apps using Microsoft Intune

Once you've [set up and deployed the capabilities of Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune), [added](/microsoft-365/solutions/apps-add-overview), [configured](/microsoft-365/solutions/apps-config-overview), and [secured](/microsoft-365/solutions/apps-protect-overview) your managed apps using Intune, you can begin the process to assign and deploy apps to end user's devices using Intune.

The apps you assign and deploy using Intune are managed apps. Managed apps are apps that you have assigned to users via a unified endpoint management provider, such as Intune. Managed apps support app protection policies and app configuration policies. These apps use mobile application management (MAM) that is provided by the unified endpoint management provider. MAM enables organizations to manage and protect their data within an application. A managed app in Intune is oftentimes a [protected app](/mem/intune/apps/apps-supported-intune-apps) that has Intune app protection policies applied to it and is assigned and managed by Intune. A managed app has either integrated the Intune App SDK or has been wrapped using the Intune Wrapping Tool to support App Protection Policies (APP) and/or app configuration policies. You can use MAM policies to configure and protect apps on unmanaged devices, which are your end-user's personal devices that aren't MDM enrolled in Intune. Those unmanaged devices receive managed apps based on their organization's credentials they use to access the app's data.

The content provided in this solution helps you understand the different aspects of assigning and deploying apps for each of the supported platforms.

> [!TIP]
> For information about when you should consider deploying MAM policies, see [Migration guide: Set up or move to Microsoft Intune](/mem/intune/fundamentals/deployment-guide-intune-setup).

## Benefits of assigning and deploying apps

Intune offers several advantages when assigning and deploying apps to your organization. The following list provides the benefits:
- [App-level data protection](#app-level-data-protection)
- [Multiple platform support](#multiple-platform-support)
- [Automated app updates](#automated-app-updates)  
- [App versatility](#app-versatility)

### App-level data protection

By assigning and deploying apps from Intune, you can protect your organization's data at the app-level. Intune applies this protection using app protection policies. By implementing app-level policies, you can restrict access to company resources and keep data within the purview of your IT department. You can use Intune app protection policies independently of any mobile-device management (MDM) solution. This independence helps you protect your company's data with or without enrolling devices in a device management solution.<p>

In addition, you can protect data at the app-level using selective wipe. When a device is lost or stolen, or if the employee leaves your organization, you want to make sure company app data is removed from the device. However, you might not want to remove personal data on the device, especially if the device is an employee-owned device. To selectively remove company app data, you can create a wipe request for a selected user.

> [!NOTE]
> Managed apps are enhanced by being integrated to support the [Intune App SDK](/mem/intune/developer/app-sdk) or wrapped using the [Intune App Wrapping Tool](/mem/intune/developer/apps-prepare-mobile-application-management). This integration allows managed apps to support Microsoft Intune's app protection policies and app configuration policies. 

### Multiple platform support

There are four platforms where you can assign and deploy apps that you've added to Intune. In addition, you can monitor app assignments to ensure end users at your organization successfully have the apps they need to accomplish their work. 

You can assign and deploy apps based on the following available platforms:
- Android/Android Enterprise
- iOS/iPadOS
- macOS
- Windows 10/11

Each platform offers different app management capabilities. For a more information about supported platforms, see [App management capabilities by platform](/mem/intune/apps/app-management#app-management-capabilities-by-platform).

### Automated app updates  

Many app types that used in Intune support automatic updates. These apps ensure that members of your organization are using the latest and most secure versions of their apps. By using Intune, you can select apps from the related app platform store, such as the Apple apps store, the Google Play store, and the Microsoft store. Intune supports automated app updates for built-in apps that include curated apps, such as Microsoft 365 apps and third-party apps for iOS/iPadOS and Android devices. Also, Intune supports automated app updates for web apps. However, a

> [!IMPORTANT]
> An app written in-house or as a custom app must be updated manually.

### App versatility

Intune supports a variety app types and app functionality. For example, Intune supports store apps by platform. Intune integrates with Apple apps store, the Google Play store, and the Microsoft store to seemlessly allow you to find apps in the store and add them to Intune before assigning them to members of your organization. Also, Intune support [Windows apps (Win32)](/mem/intune/apps/apps-win32-add) along with [Win32 app supersedence](/mem/intune/apps/apps-win32-supersedence), [Enterprise App Catalog app (Win32)](/mem/intune/apps/apps-add-enterprise-app), [cross platform web apps](/mem/intune/apps/web-app), and many store apps that integrate with Microsoft technologies. For a list of app types, see [Specific app type details](/mem/intune/apps/apps-add). In addition, Intune supports creating and assigning configuration policies that help to ensure an app is installed on end users' devices based on your organization's requirements. The same is true when applying app protection policies to your organization's users and devices. To better understand app types, purchases, and licenses, see [Purchase and add apps for Microsoft Intune](/microsoft-365/solutions/apps-guide-overview?view=o365-worldwide).

> [!IMPORTANT]
> You can use Intune to help enforce a [Zero Trust](/security/zero-trust/zero-trust-overview) security strategy for your organization. Zero Trust is an approach to use when designing and implementing a set of security principles. For more information, see [Zero Trust with Microsoft Intune](/mem/intune/fundamentals/zero-trust-with-microsoft-intune) and [Zero Trust identity and device access configurations](/microsoft-365/security/office-365-security/zero-trust-identity-device-access-policies-overview).

Organizations can protect their data using Intune app management with and without Mobile Device Management (MDM) at the same time. For example, consider an end-user (employee or organization member) that uses both a phone issued by the company, and their own personal tablet. The organization issued phone is enrolled in MDM and protected by app protection policies, while the personal device is protected by app protection policies only.

## Prerequisites

Before you can assign apps with Microsoft Intune, you must follow a few prerequisites to set up Intune, as well as understand key app management concepts.

> [!NOTE]
> If you're new to Intune, start with the [Microsoft Intune free trial](/mem/intune/fundamentals/free-trial-sign-up). Trying out Intune is free for 30 days. When you complete the sign-up process, you'll have a new tenant that you can use to evaluate Intune. A tenant is a dedicated instance of [Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-whatis) (Microsoft Entra ID) where your subscription to Intune is hosted. You can then configure the tenant, which involves many capabilities that you can use to protect your organization. One of those involves adding and configuring apps for Intune.

Follow these steps if you haven't already set up Intune and added the apps you need to manage and protect:
1. Set up and [deploy Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune&preserve-view=true)
2. Understand how to [purchase and add apps for Microsoft Intune](/microsoft-365/solutions/apps-guide-overview)
3. [Configure apps using Microsoft Intune](/microsoft-365/solutions/apps-config-overview)
4. [Secure and protect apps using Microsoft Intune](/microsoft-365/solutions/apps-protect-overview)

> [!IMPORTANT]
> To use Microsoft Intune beyond the free trial, you'll need to acquire a license from Microsoft. For more information about licenses that include Microsoft Intune, see [Microsoft Intune licensing](/mem/intune/fundamentals/licenses).
> 
> Although many apps that you can deploy to the members of your organization are free, some apps may require either a license, subscription, or account for each user to use the app. For more information about app licenses, see [Understand app licenses used in Intune](/microsoft-365/solutions/apps-license-overview). 

## What's in this solution

This solution helps you understand the concepts related to assigning apps using Microsoft Intune. In addition, this solution provides recommended steps to follow when assigning apps to devices and members of your organization. Once you've completed the above [prerequisites](#prerequisites), you're ready to assign apps to your organization in Intune. In addition, using configuration and protection policies as part of your app management efforts allows members of your organization to safely use apps. By managing apps at your organization, you help to protect and secure your organization’s data.

To learn about app deploying using Intune, see the following articles:
- [Understand app management](apps-protect-data-protection.md)
- [Understand app assignments](apps-protect-access-requirements.md)
- [Understand app deployment](apps-protect-conditional-launch.md)

To follow the recommended steps when assigning managed apps to your organization using Intune, see the following articles:
- [Step 1. Confirm users and devices](apps-assign-step-1.md)
- [Step 2. Assign apps to groups](apps-assign-step-2.md)
- [Step 3. Verify app assignments](apps-assign-step-3.md)
- [Step 4. Troubleshoot app deployment issues ](apps-assign-step-4.md)

[:::image type="content" source="../media/assign-managed-apps/assign-managed-apps-steps.png" alt-text="Step 1. Apply minimum data protection." border="false" :::](apps-assign-step-1.md)

After you've completed the above steps, you're ready to manage and monitor the managed apps your organization uses.
