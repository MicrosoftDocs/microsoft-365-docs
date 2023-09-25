---
title: "Step 6. Configure other apps"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Step 6. Configure other apps in Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 6. Configure other apps

App configuration policies can be deployed based on the **Managed devices** channel or the **Managed apps** channel. It's important to know the the different capabilities that each channel offers. For more information about these channels, see [Delivery channels for app configuration policies](apps-config-overview.md#delivery-channels-for-app-configuration-policies).

> [!NOTE]
> Not all apps integrated with the Intune App SDK or the Intune App Wrapping Tool include configuration settings, however those apps may include app protection settings.
>
> Additionally, you can use Graph API to accomplish app configuration tasks. For details, see [Graph API Reference MAM Targeted Config](/graph/api/resources/intune-shared-targetedmanagedappconfiguration?view=graph-rest-beta&viewFallbackFrom=graph-rest-1.0&preserve-view=true). For more information about Intune and Graph, see [Working with Intune in Microsoft Graph](/graph/api/resources/intune-graph-overview?view=graph-rest-1.0&preserve-view=true).

## App configuration policies for the Managed devices channel

When you choose **Managed devices** you can choose to target your app configuration policy to either **iOS/iPadOS** or **Android Enterprise** devices. For **iOS/iPadOS** apps, you can choose a single associated **Built-In iOS app** or **iOS store app**. For **Android Enterprise** apps, you can choose a single associated **Managed Google Play store app** or **Managed Google Play web link**. 

When you select the **Managed devices** channel, you'll find that iOS/iPadOS has different standard configuration options than Android Enterprise. When you select **iOS/iPadOS** as the platform for your configuration policy, you can add standard configuration keys for the specific app. When you select **Android Enterprise** as the platform for your configuration policy, you must select a **Profile Type** that specifies how your app is targeted based on the Android device profile. Additionally, you can add standard configuration keys for the specific app, and you can also choose to enable [Connected apps](#connected-apps-configuration).

### Configure specific Android Enterprise apps

Managed Home Screen, Google Chrome for Android, and Microsoft Launcher are [Android Enterprise](/mem/intune/apps/app-configuration-policies-use-android) apps that can be configured for the **Managed devices** channel. Each of these apps support configuring the following areas:
- [Permissions](#app-configuration-permissions)
- [Configuration Settings](#app-configuration-settings)
- [Connected apps](#connected-apps-configuration)

> [!NOTE]
> You must adhere to the following prerequisites:
> - The user's Android Enterprise device must be enrolled in Intune. For more information, see [Set up enrollment of Android Enterprise personally-owned work profile devices](../enrollment/android-work-profile-enroll.md).
> - Managed Home Screen, Google Chrome for Android, and Microsoft Launcher are added as a Managed Google Play app. For more information about Managed Google Play, see [Connect your Intune account to your Managed Google Play account](../enrollment/connect-intune-android-enterprise.md).

For more information about configuring these apps, see the following resources:
- [Configure the Microsoft Managed Home Screen app for Android Enterprise](/mem/intune/apps/app-configuration-managed-home-screen-app)
- [Configure Google Chrome for Android devices using Intune](/mem/intune/apps/apps-configure-chrome-android)
- [Configure Microsoft Launcher](/mem/intune/apps/configure-microsoft-launcher)

#### App configuration permissions

When creating an app configuration policy for an Android Enterprise device using the **Managed devices** channel, you can add **Permissions** within the **Settings** pane. Permissions granted will override the "Default app permissions" policy for the selected apps. You can set the Permission state for each permission. You can choose from Prompt, Auto grant, or Auto deny. By default, Android apps that require device permissions, such as access to location or the device camera, prompt users to accept or deny permissions. For more information, see [Preconfigure the permissions grant state for apps](/mem/intune/apps/app-configuration-policies-use-android#preconfigure-the-permissions-grant-state-for-apps).

#### App configuration settings

If the managed app supports configuration settings, the Configuration settings format dropdown box is visible. You can set the configuration values by using either the configuation designer or by entering JSON data. Both methods accomplish the same configuration setting results. Additional, setting keys, types, and values may be available for the specific app. Check with the app developer to determine if there are additional configuation settings available for an app. For more information, see [Add app configuration policies for managed Android Enterprise devices](/mem/intune/apps/app-configuration-policies-use-android).

#### Connected apps configuration

You can allow users using Android personally-owned and corporate-owned work profiles to turn on connected apps experiences for supported apps. This app configuration setting enables apps to connect and integrate app data across the work and personal app instances. For example, connecting a calendar app can show work and personal events together. Some apps might not support connected apps. Additionally, this setting only works for personally-owned and corporate-owned work profile devices. For more information, see [Enable connected apps](/mem/intune/apps/app-configuration-policies-use-android#enable-connected-apps).
 
## App configuration policies for the Managed apps channel

When you choose the **Managed apps** channel, you can choose you can select the app(s) you would like to target with the policy. You can to target an app configuration policy to **Selected apps**, **All apps**, **All Microsoft apps**, or **Core Microsoft apps**. **All Apps** include all Microsoft and partner apps that have integrated the Intune SDK. **Microsoft Apps** include all Microsoft apps that have integrated the Intune SDK. **Core Microsoft apps** include a set of specific Microsoft apps. **Selected apps** allows you to apply an app configuration policy to specific apps. These specific apps can include **Public apps** and **Custom apps**. **Public apps** are apps contained in a predefined app group, such as store apps that you have added to Intune. **Custom apps** are apps that you that you have added from an apps store and have also added to Intune.

> [!NOTE]
> The MAM channel supports Microsoft Launcher and includes general configuration settings and Microsoft Tunnel settings.

### Core Microsoft Apps

As part of targeting the **Managed apps** channel, you can select to only target **Core Microsoft apps**. The Core Microsoft apps group includes the following Microsoft apps:

- Edge
- Excel
- Office
- OneDrive
- OneNote
- Outlook
- PowerPoint
- SharePoint
- Teams
- To Do
- Word

#### Google apps and the settings catalog

With the settings catalog, you can choose which settings you want to configure for specific Android apps using the **Managed apps** channel. Click on Add settings to browse or search the catalog for the settings you want to configure.

### Microsoft Tunnel for Mobile Application Management settings

Microsoft Tunnel is a VPN gateway solution for Microsoft Intune that runs in a container on Linux and allows access to on-premises resources from iOS/iPadOS and Android Enterprise devices. When you use the Microsoft Tunnel VPN Gateway, you can extend Tunnel support by adding Tunnel for Mobile Application Management (MAM). Tunnel for MAM extends the Microsoft Tunnel VPN gateway to support devices that run Android or iOS, and that aren't enrolled with Microsoft Intune.

> [!NOTE]
> This capability is available when you add Microsoft Intune Plan 2 or Microsoft Intune Suite as an add-on license. For more information, see [Use Intune Suite add-on capabilities](/mem/intune/fundamentals/intune-add-ons).

For more information about Microsoft Tunnel for MAM, see [Microsoft Tunnel for Mobile Application Management](\memdocs\intune\protect\microsoft-tunnel-mam).

## Obtain settings for other apps

Not every app supports app configuration. Check with the app developer to see if their app supports app configuration policies or for [toubleshooting specific app configuation settings](/mem/intune/apps/app-configuration-policies-overview?branch=main#troubleshooting). For a list of Microsoft and partner apps, see [Microsoft Intune protected apps](/mem/intune/apps/apps-supported-intune-apps).

## Next step
<!--
[![Step 7 - Verify app configuration](../media/configure-managed-apps/configure-managed-apps-07.png)](apps-config-step-5.md)
-->
Continue with [Step 7](apps-config-step-5.md) to verify app configuration in Microsoft Intune.