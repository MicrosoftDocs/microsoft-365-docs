---
title: "Secure and protect apps using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: solution-overview
ms.date: 03/29/2024
description: Secure and protect apps using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
- m365solution-overview
ms.custom:
keywords:
---

# Secure and protect apps using Microsoft Intune

Once you've [set up and deployed the capabilities of Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune), [added the apps you want to manage to Intune](/microsoft-365/solutions/apps-add-overview), and [configured the apps that you manage in Intune](/microsoft-365/solutions/apps-config-overview), you can begin the process of creating app protection policies. App protection policies (APP) are rules that ensure your organization's data remains safe and contained in a managed app. These policies enforce how your end-users access and move "corporate" data, as well as how you control actions that are prohibited or monitored when end-users are using the app. This enforcement allows you to control how data is accessed and shared by apps on mobile devices at your organization.

The content provided in this solution will help you understand the different aspects of app protection for each of the supported platforms. In addition, this solution will step you through creating your app protection policies based on our recommended settings for basic, enhanced, and high level app protection.

Managed apps are apps that you have assigned to users via a unified endpoint management provider, such as Intune. Managed apps support app protection policies, as well as app configuration policies. These apps use mobile application management (MAM) that is provided by the unified endpoint management provider. MAM enables organizations to manage and protect their data within an application. A managed app in Intune is a [protected app](/mem/intune/apps/apps-supported-intune-apps) that has Intune app protection policies applied to it and is assigned and managed by Intune. A managed app has either integrated the Intune App SDK or has been wrapped using the Intune Wrapping Tool to support App Protection Policies (APP) and/or app configuration policies. You can use MAM policies to configure and protect apps on unmanaged devices, which are your end-user's personal devices that aren't MDM enrolled in Intune.

> [!TIP]
> For information about when you should consider deploying MAM policies, see [Migration guide: Set up or move to Microsoft Intune](/mem/intune/fundamentals/deployment-guide-intune-setup).

Using app protection policies provides the benefit of protecting your organization's data at the app level. For end-users, productivity isn't affected and app protection policies don't apply when end-users are using the app in a personal context. There are several situations where you commonly should use app protection policies. For instance, if your end-users are using their personal device, you may want to use an app protection policy to control the access to the app by using a PIN. You may want to enforce data sharing restrictions that your organization's data isn't shared with nonmanaged apps. Also, you may want to prevent end-users from saving organization data to personal locations. For more information, see [Benefits of using App protection policies](/mem/intune/apps/app-protection-policy#benefits-of-using-app-protection-policies).

> [!IMPORTANT]
> You can use Intune to help enforce a [Zero Trust](/security/zero-trust/zero-trust-overview) security strategy for your organization. Zero Trust is an approach to use when designing and implementing a set of security principles. For more information, see [Zero Trust with Microsoft Intune](/mem/intune/fundamentals/zero-trust-with-microsoft-intune) and [Zero Trust identity and device access configurations](/microsoft-365/security/office-365-security/zero-trust-identity-device-access-policies-overview).

Organizations can use app protection policies with and without Mobile Device Management (MDM) at the same time. For example, consider an end-user (employee or organization member) that uses both a phone issued by the company, and their own personal tablet. The organization issued phone is enrolled in MDM and protected by app protection policies, while the personal device is protected by app protection policies only.

## Supported platforms

There are three primary platforms that are supported when creating an app protection policy in Intune.

| Platform | Description |
|---|---|
| iOS/iPadOS | You can apply app protection policies to iOS/iPadOS apps that have been developed to support Intune app protection capabilities. You can apply app protection to groups of users that sign into iOS/iPadOS devices. Specifically, you can apply app protection based on data protection, access requirements, and conditional launch settings within an app protection policy for iOS/iPadOS. For more information, see [iOS app protection policy settings in Microsoft Intune](/mem/intune/apps/app-protection-policy-settings-ios). |
| Android | You can apply app protection policies to Android apps that have been developed to support Intune app protection capabilities. You can apply app protection to groups of users that sign into Android devices. Specifically, you can apply app protection based on data protection, access requirements, and conditional launch settings within an app protection policy for Android. For more information, see [Android app protection policy settings in Microsoft Intune](/mem/intune/apps/app-protection-policy-settings-android). |
| Windows | Currently, you can apply app protection policies to Microsoft Edge for Windows devices. Using Microsoft Edge, you can control how your organization's data is accessed. You can apply app protection to groups of users that sign in to Windows devices. Specifically, you can apply app protection based on data protection and health checks settings within an app protection policy for Windows. Data protection settings allow you to control how the movement of data into and out of your organization (org) context. The org context is defined by documents, services, and sites accessed by the specified org account. You can use app protection policy settings to help control external data received into the org context and org data sent out of the org context. These settings include receiving and sending org data. Also, you can implement Data Loss Prevention (DLP) controls, like cut, copy, paste, and save-as restrictions. Additionally, you can allow or block printing of org data. For more information, see [App protection policy settings for Windows](/mem/intune/apps/app-protection-policy-settings-windows). |

For a more information about supported platforms, see [App management capabilities by platform](/mem/intune/apps/app-management#app-management-capabilities-by-platform).

## Supported apps

For iOS/iPadOS and Android platforms, you can apply app protection policies to any managed app that has been developed to support Intune app protection capabilities. The managed app has either integrated the [Intune App SDK](/mem/intune/developer/app-sdk) or has been wrapped using the [Intune App Wrapping Tool](/mem/intune/developer/apps-prepare-mobile-application-management#intune-app-wrapping-tool). For the Windows platform, you can enable data protection of corporate data on personal Windows devices using [Windows MAM](/mem/intune/apps/protect-mam-windows). Windows MAM is where you apply app protection policies to Microsoft Edge for Windows. Microsoft Edge, as well as most Microsoft applications, have been integrated to support Intune by using the Intune App SDK. For a list of apps that include SDK integration, see [Microsoft Intune protected apps](/mem/intune/apps/apps-supported-intune-apps).

## Prerequisites

Before you can protect apps with Microsoft Intune, you must follow a few prerequisites to set up Intune, as well as understand key app management configurations.

> [!NOTE]
> If you're new to Intune, start with the [Microsoft Intune free trial](/mem/intune/fundamentals/free-trial-sign-up). Trying out Intune is free for 30 days. When you complete the sign-up process, you'll have a new tenant that you can use to evaluate Intune. A tenant is a dedicated instance of [Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-whatis) (Microsoft Entra ID) where your subscription to Intune is hosted. You can then configure the tenant, which involves many capabilities that you can use to protect your organization. One of those involves adding and configuring apps for Intune.

Follow these steps if you haven't already set up Intune and added the apps you need to manage and protect:
1. Set up and [deploy Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune&preserve-view=true)
2. Understand [application protection](apps-protect-overview.md#app-protection)
3. [Understand app types](/microsoft-365/solutions/apps-guide-overview#understand-app-types&preserve-view=true)
4. [Add apps to Intune](/microsoft-365/solutions/apps-add-overview)

> [!IMPORTANT]
> To use Microsoft Intune beyond the free trial, you'll need to acquire a license from Microsoft. For more information about licenses that include Microsoft Intune, see [Microsoft Intune licensing](/mem/intune/fundamentals/licenses).
> 
> Although many apps that you can deploy to the members of your organization are free, some apps may require either a license, subscription, or account for each user to use the app. For more information about app licenses, see [Understand app licenses used in Intune](/microsoft-365/solutions/apps-license-overview). 

## App protection

App protection can be applied to supported managed apps on supported device platforms that are either enrolled with Microsoft Intune, enrolled in a third-party Mobile device management (MDM) solution, or aren't enrolled in any mobile device management solution.

When creating an app protection policy, you choose the following details in the following order:

1. The platform
2. The app you want to protect
3. The data protection settings for the app
4. The access requirements for the app
5. The conditional launch settings for the app

In addition to the above list, you can also choose [scope tags](/mem/intune/fundamentals/scope-tags) and [app assignments](/mem/intune/apps/apps-deploy).

> [!IMPORTANT]
> The Intune Company Portal app is required on Android devices because it enables device users to receive app protection policies as a [Device Policy Controller](https://support.google.com/work/android/answer/6192678). It enables device users to receive app protection policies. For more information, see [How to configure the Intune Company Portal apps, Company Portal website, and Intune app](/mem/intune/apps/company-portal-app) and [Customize and configure the Company Portal](/microsoft-365/solutions/apps-config-step-1).

### App protection categories by platform

Different app protection settings are available for each supported platform. It's important to recognize that the iOS/iPadOS and Android platform have the same app protection categories. However, Windows is different. The Windows platform protects organization data by managing the flow of data through Microsoft Edge to your organization's storage locations.

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-15.png" alt-text="App data protection categories." border="false" :::

> [!TIP]
> To see where app protection and compliance policies fit into the overall Intune architecture, see [High-level architecture for Microsoft Intune](/mem/intune/fundamentals/high-level-architecture).

When you create an app protection policy, you choose the platform, the app to target, as well as the specific settings from the app protection categories.

### How app protection policies protect app data

Your end-users (members of your organization) use mobile devices for both personal and work tasks. While making sure your end-users can be productive, you want to prevent your organization's data from moving to locations where you cannot secure it, for both intentional and unintentional situations. You'll also want to protect company data that is accessed from devices that aren't managed by you. You can use Intune app protection policies independent of any mobile device management (MDM) solution. This independence helps you protect your company's data with or without enrolling devices in a device management solution. By implementing app-level protection policies, you can restrict access to company resources and keep data within the purview of your IT department.

When apps are used without restrictions, company and personal data can get intermingled. Company data can end up in locations like personal storage or transferred to apps beyond your purview and result in data loss. The following table provides details about data, device, and app protection.

| Data,   device, and app protection | Description |
|---|---|
| Apps   without app protection policies | When apps are used without   restrictions, company and personal data can get intermingled. Company data   can end up in locations like personal storage or transferred to apps beyond   your purview and result in data loss.  |
| Data   protection with app protection policies | You can use App protection   policies to prevent company data from saving to the local storage of the   device. You can also restrict data movement to other apps that aren't   protected by App protection policies.  |
| Data   protection with app protection policies on managed devices | Provides both app and device   management and protection. |
| Data   protection with app protection policies for devices without enrollment | App protection policies can help   protect company data at the app level. However, there are limitations related   to deploying apps, provisioning device certificate profiles, and provisioning   device organization settings. You can avoid these limitations by enrolling and managing the devices in Intune. |

For more information, see [How app protection policies protect app data](/mem/intune/apps/app-protection-policy#how-app-protection-policies-protect-app-data).

## What's in this solution

This solution helps you understand app data protection in Microsoft Intune. In addition, this solution provides recommended steps for creating app protection policies in Intune for specific apps and assigning those policies to members of your organization. Once you've completed the above [prerequisites](#prerequisites), you're ready to create app protection policies for your organization in Intune. Using configuration and protection policies as part of your app management efforts allows members of your organization to safely use apps. By managing apps at your organization, you help to protect and secure your organization’s data.

To learn about app protection in Intune, see the following topics:
- [Understand app data protection](apps-protect-data-protection.md)
- [Understand app protection access requirements](apps-protect-access-requirements.md)
- [Understand app protection conditional launch](apps-protect-conditional-launch.md)
- [Understand app protection health checks](apps-protect-health-checks.md)

To follow the recommended settings when adding app protection policies in Intune, see the following topics:
1. [Apply minimum data protection](apps-protect-step-1.md)
2. [Apply enhanced data protection](apps-protect-step-2.md)
3. [Apply high data protection](apps-protect-step-3.md)
4. [Understand app protection delivery](apps-protect-step-4.md)
5. [Verify and monitor app protection](apps-protect-step-5.md)
6. [Use app protection actions](apps-protect-step-6.md)

[:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-steps.png" alt-text="Step 1. Apply minimum data protection." border="false" :::](apps-protect-step-1.md)

After you've completed the above steps, you're ready to deploy, manage, and monitor the managed apps your organization uses.
