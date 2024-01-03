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

Once you've [set up and deployed the capabilities of Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune), [added the apps you want to manage to Intune](/microsoft-365/solutions/apps-add-overview), and [configured the apps that you manage in Intune](/microsoft-365/solutions/apps-config-overview), you can begin the process of creating app protection policies. App protection policies (APP) are rules that ensure your organization's data remains safe and contained in a managed app. These policies enforce how your end-users access or move "corporate" data and control actions that are prohibited or monitored when the user is using the app. This enforcement and control allow you to control how data is accessed and shared by apps on mobile devices. 

Managed apps are apps that you have assigned to users via a unified endpoint management provider, such as Intune. Managed apps support app protection policies, as well as app configuration policies. These apps use mobile application management (MAM) that is provided by the unified endpoint management provider. MAM enables organizations to manage and protect their data within an application. A managed app in Intune is a [protected app](/mem/intune/apps/apps-supported-intune-apps) that has Intune app protection policies applied to it and is assigned and managed by Intune. A managed app has either integrated the Intune App SDK or has been wrapped using the Intune Wrapping Tool to support App Protection Policies (APP) and/or app configuration policies. You can use MAM policies to configure and protect apps on unmanaged devices, which are your end-user's personal devices that aren't enrolled in Intune. 

Using app protection policies provides the benefit of protecting your organization's data at the app level. For end-users, productivity isn't affected and app protection policies don't apply when end-users are using the app in a personal context. There are several situations where you commonly should use app protection policies. For instance, if your end-users are using their personal device, you may want to use an app protection policy to control the access to the app by using a PIN. You may want to enforce data sharing restrictions that your organization's data isn't shared with nonmanaged apps. Also, you may want to prevent end-users from saving organization data to personal locations.

Organizations can use app protection policies with and without Mobile Device Management (MDM) at the same time. For example, consider an end-user (employee) that uses both a phone issued by the company, and their own personal tablet. The organization issued phone is enrolled in MDM and protected by app protection policies, while the personal device is protected by app protection policies only.

## Supported platforms

There are three primary platforms that are supported when creating an app protection policy in Intune.

| Platform | Description |
|---|---|
| iOS/iPadOS | You can apply app protection policies to iOS/iPadOS apps that have been developed to support Intune app protection capabilities. You can apply app protection to groups of users that sign into iOS/iPadOS devices. Specifically, you can apply app protection based on data protection, access requirements, and conditional launch settings within an app protection policy for iOS/iPadOS. For more information, see [iOS app protection policy settings in Microsoft Intune](/mem/intune/apps/app-protection-policy-settings-ios). |
| Android | You can apply app protection policies to Android apps that have been developed to support Intune app protection capabilities. You can apply app protection to groups of users that sign into Android devices. Specifically, you can apply app protection based on data protection, access requirements, and conditional launch settings within an app protection policy for Android. For more information, see [Android app protection policy settings   in Microsoft Intune](/mem/intune/apps/app-protection-policy-settings-android). |
| Windows | Currently, you can apply app protection policies to Microsoft Edge for Windows devices. Using Microsoft Edge, you can control how your organization's data is accessed. You can apply app protection to groups of users that sign in to Windows devices. Specifically, you can apply app protection based on data protection and health checks settings within an app protection policy for Windows. Data protection settings allow you to control how the movement of data into and out of your organization (org) context. The org context is defined by documents, services, and sites accessed by the specified org account. You can use app protection policy settings to help control external data received into the org context and org data sent out of the org context. These settings include receiving and sending org data. Also, you can implement Data Loss Prevention (DLP) controls, like cut, copy, paste, and save-as restrictions.   Additionally, you can allow or block printing of org data. For more information, see [App protection policy settings for   Windows](/mem/intune/apps/app-protection-policy-settings-windows). |

For a more information about supported platforms, see [App management capabilities by platform](/mem/intune/apps/app-management#app-management-capabilities-by-platform). 

## Supported apps

For iOS/iPadOS and Android platforms, you can apply app protection policies to any managed app that has been developed to support Intune app protection capabilities. The managed app has either integrated the [Intune App SDK](/mem/intune/developer/app-sdk) or has been wrapped using the [Intune App Wrapping Tool](/mem/intune/developer/apps-prepare-mobile-application-management#intune-app-wrapping-tool). For the Windows platform, you can enable data protection of corporate data on personal Windows devices using [Windows MAM](/mem/intune/apps/protect-mam-windows). Windows MAM is where you apply app protection policies to Microsoft Edge for Windows. Microsoft Edge, as well as most Microsoft applications, have been integrated to support Intune by using the Intune App SDK.

## Prerequisites

Before you can protect apps with Microsoft Intune, you must follow a few prerequisites to set up Intune, as well as understand key app management configurations.

> [!NOTE]
> If you're new to Intune, start with the [Microsoft Intune free trial](/mem/intune/fundamentals/free-trial-sign-up). Trying out Intune is free for 30 days. When you complete the sign-up process, you'll have a new tenant that you can use to evaluate Intune. A tenant is a dedicated instance of [Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-whatis) (Microsoft Entra ID) where your subscription to Intune is hosted. You can then configure the tenant, which involves many capabilities that you can use to protect your organization. One of those involves adding and configuring apps for Intune.

Follow these steps if you haven't already set up Intune and added the apps you need to manage and protect:
1. Set up and [deploy Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune&preserve-view=true)
2. Understand [application protection](/microsoft-365/solutions/apps-protect-overview#app-protection&preserve-view=true)
3. [Understand app types](/microsoft-365/solutions/apps-guide-overview#understand-app-types&preserve-view=true)
4. [Add apps to Intune](/microsoft-365/solutions/apps-add-overview)

> [!IMPORTANT]
> To use Microsoft Intune beyond the free trial, you'll need to acquire a license from Microsoft. For more information about licenses that include Microsoft Intune, see [Microsoft Intune licensing](/mem/intune/fundamentals/licenses).
> 
> Although many apps that you can deploy to the members of your organization are free, some apps may require either a license, subscription, or account for each user to use the app. For more information about app licenses, see [Understand app licenses used in Intune](/microsoft-365/solutions/apps-license-overview). 

## App protection

App protection can be applied to supported managed apps on supported platform devices that are either enrolled with Microsoft Intune, enrolled in a third-party Mobile device management (MDM) solution, or aren't enrolled in any mobile device management solution. 

When creating an app protection policy, you choose the following details in the following order:

1. The platform
2. The app you want to protect
3. The data protection settings for the app
4. The access requirements for the app
5. The conditional launch settings for the app

In addition to the above list, you can also choose scope tags and app assignments.

> [!IMPORTANT]
> The Intune Company Portal app is required on devices because it enables device users to receive app protection policies. For more information, see [How to configure the Intune Company Portal apps, Company Portal website, and Intune app](/mem/intune/apps/company-portal-app) and [Customize and configure the Company Portal](/microsoft-365/solutions/apps-config-step-1).

### App protection categories by platform

Different app protection settings are available for each supported platform. It's important to recognize that the iOS/iPadOS and Android platform have the same app protection categories. However, Windows is different. The Windows platform protects organization data by managing the flow of data through Microsoft Edge to your organization's storage locations.

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-15.png" alt-text="App data protection categories" border="false" :::

> [!TIP]
> To see where app protection and compliance policies fit into the overall Intune architecture, see [High-level architecture for Microsoft Intune](/mem/intune/fundamentals/high-level-architecture).

When you create an app protection policy, you choose the platform, the app to target, as well as the specific settings from the app protection categories.

### How app protection policies protect app data

Your employees use mobile devices for both personal and work tasks. While making sure your employees can be productive, you want to prevent your organization's data from moving to locations where it you cannot secure it, for both intentional and unintentional situations. You'll also want to protect company data that is accessed from devices that aren't managed by you. You can use Intune app protection policies independent of any mobile device management (MDM) solution. This independence helps you protect your company's data with or without enrolling devices in a device management solution. By implementing app-level protection policies, you can restrict access to company resources and keep data within the purview of your IT department.

When apps are used without restrictions, company and personal data can get intermingled. Company data can end up in locations like personal storage or transferred to apps beyond your purview and result in data loss. The following table provides details about data, device and app protection.

| Data,   device, and app protection | Description |
|---|---|
| Apps   without app protection policies | When apps are used without   restrictions, company and personal data can get intermingled. Company data   can end up in locations like personal storage or transferred to apps beyond   your purview and result in data loss.  |
| Data   protection with app protection policies | You can use App protection   policies to prevent company data from saving to the local storage of the   device. You can also restrict data movement to other apps that aren't   protected by App protection policies.  |
| Data   protection with app protection policies on managed devices | Provides both app and device   management and protection. |
| Data   protection with APP for devices without enrollment | App protection policies can help   protect company data at the app level. However, there are limitations related   to deploying apps, provisioning device certificate profiles, and provisioning   device organization settings. |

For more information, see [How app protection policies protect app data](/mem/intune/apps/app-protection-policy#how-app-protection-policies-protect-app-data).

## What's in this solution

This solution helps you understand app data protection in Microsoft Intune. In addition, this solution provides recommended steps for creating app protection policies in Intune for specific apps and assigning those policies to members of your organization. Once you've completed the above [prerequisites](#prerequisites), you're ready to create app protection policies for your organization in Intune. Using configuration and protection policies as part of your app management efforts allows members of your organization to safely use apps. By managing apps at your organization, you help to protect and secure your organization’s data.

Follow these steps to add apps to Intune:
1. [Apply minimum data protection](apps-protect-step-1.md)
2. [Apply enhanced data protection](apps-protect-step-2.md)
3. [Apply high data protection](apps-protect-step-3.md)
4. [Understand app protection delivery](apps-protect-step-4.md)
5. [Verify and monitor app protection](apps-protect-step-5.md)
6. [Use app protection actions](apps-protect-step-6.md)

[:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-steps.png" alt-text="Step 1. Apply minimum data protection" border="false" :::](apps-protect-step-1.md)

After you completed the above steps, you are ready to deploy, manage, and monitor the managed apps your organization uses.
