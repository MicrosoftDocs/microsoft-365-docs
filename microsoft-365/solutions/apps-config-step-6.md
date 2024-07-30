---
title: "Step 6. Configure other apps"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 03/29/2024
description: Step 6. Configure other apps in Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 6. Configure other apps

App configuration policies can be deployed based on the **Managed devices** channel or the **Managed apps** channel. It's important to know the different capabilities that each channel offers. For more information about these channels, see [Delivery channels for app configuration policies](apps-config-overview.md#delivery-channels-for-app-configuration-policies).

> [!NOTE]
> Not all apps integrated with the Intune App SDK or the Intune App Wrapping Tool include configuration settings, however those apps may include app protection settings.
>
> Additionally, you can use Graph API to accomplish app configuration tasks. For details, see [Graph API Reference MAM Targeted Config](/graph/api/resources/intune-shared-targetedmanagedappconfiguration?view=graph-rest-beta&viewFallbackFrom=graph-rest-1.0&preserve-view=true). For more information about Intune and Graph, see [Working with Intune in Microsoft Graph](/graph/api/resources/intune-graph-overview?view=graph-rest-1.0&preserve-view=true).

## App configuration policies for the Managed devices channel

When you choose Managed devices,** you can choose to target your app configuration policy to either **iOS/iPadOS** or **Android Enterprise** devices. For **iOS/iPadOS** apps, you can choose a single associated **Built-In iOS app** or **iOS store app**. For **Android Enterprise** apps, you can choose a single associated **Managed Google Play store app** or **Managed Google Play web link**.

When you select the **Managed devices** channel, you find that iOS/iPadOS has different standard configuration options than Android Enterprise. When you select **iOS/iPadOS** as the platform for your configuration policy, you can add standard configuration keys for the specific app. When you select **Android Enterprise** as the platform for your configuration policy, you must select a **Profile Type** that specifies how your app is targeted based on the Android device profile. Additionally, you can add standard configuration keys for the specific app, and you can also choose to enable [Connected apps](#connected-apps-configuration).

### Configure specific Android Enterprise apps

Managed Home Screen, Google Chrome for Android, and Microsoft Launcher are [Android Enterprise](/mem/intune/apps/app-configuration-policies-use-android) apps that can be configured for the **Managed devices** channel. Each of these apps supports configuring the following areas:

- [Permissions](#android-enterprise-app-configuration-permissions)
- [Configuration Settings](#android-enterprise-app-configuration-settings)
- [Connected apps](#connected-apps-configuration)

> [!NOTE]
> You must adhere to the following prerequisites:
>
> - The user's Android Enterprise device must be enrolled in Intune. For more information, see [Set up enrollment of Android Enterprise personally-owned work profile devices](/mem/intune/enrollment/android-work-profile-enroll).
> - Managed Home Screen, Google Chrome for Android, and Microsoft Launcher are added as a Managed Google Play app. For more information about Managed Google Play, see [Connect your Intune account to your Managed Google Play account](/mem/intune/enrollment/connect-intune-android-enterprise).

For more information about configuring these apps, see the following resources:

- [Configure the Microsoft Managed Home Screen app for Android Enterprise](/mem/intune/apps/app-configuration-managed-home-screen-app)
- [Configure Google Chrome for Android devices using Intune](/mem/intune/apps/apps-configure-chrome-android)
- [Configure Microsoft Launcher](/mem/intune/apps/configure-microsoft-launcher)

#### Android Enterprise app configuration permissions

When creating an app configuration policy for an Android Enterprise device using the **Managed devices** channel, you can add **Permissions** within the **Settings** pane. Permissions granted will override the "Default app permissions" policy for the selected apps. You can set the Permission state for each permission. You can choose from Prompt, Auto grant, or Auto deny. By default, Android apps that require device permissions, such as access to location or the device camera, prompt users to accept or deny permissions. For more information, see [Preconfigure the permissions grant state for apps](/mem/intune/apps/app-configuration-policies-use-android#preconfigure-the-permissions-grant-state-for-apps).

#### Android Enterprise app configuration settings

If the managed app supports configuration settings, the Configuration settings format dropdown box is visible. You can set the configuration values by using either the configuration designer or by entering JSON data. Both methods accomplish the same configuration setting results. Additional, setting keys, types, and values may be available for the specific app. Check with the app developer to determine if there are additional configuration settings available for an app. For more information, see [Add app configuration policies for managed Android Enterprise devices](/mem/intune/apps/app-configuration-policies-use-android).

#### Connected apps configuration

You can allow users using Android personally owned and corporate-owned work profiles to turn on connected apps experiences for supported apps. This app configuration setting enables apps to connect and integrate app data across the work and personal app instances. For example, connecting a calendar app can show work and personal events together. Some apps might not support connected apps. Additionally, this setting only works for personally owned and corporate-owned work profile devices. For more information, see [Enable connected apps](/mem/intune/apps/app-configuration-policies-use-android#enable-connected-apps).

## App configuration policies for the Managed apps channel

When you choose the **Managed apps** channel, you can choose you can select the app(s) you would like to target with the policy. You can target an app configuration policy to **Selected apps**, **All apps**, **All Microsoft apps**, or **Core Microsoft apps**. **All Apps** include all Microsoft and partner apps that have integrated the Intune SDK. **Microsoft Apps** include all Microsoft apps that have integrated the Intune SDK. **Core Microsoft apps** include a set of specific Microsoft apps. **Selected apps** allows you to apply an app configuration policy to specific apps. These specific apps can include **Public apps** and **Custom apps**. **Public apps** are apps contained in a predefined app group, such as store apps that you have added to Intune. **Custom apps** are apps that you that you have added from an app store and have also added to Intune.

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

For more information about Microsoft Tunnel for MAM, see [Microsoft Tunnel for Mobile Application Management](/mem/intune/protect/microsoft-tunnel-mam).

#### Managed apps configuration settings

Similar to app configuration policies for managed devices, if the managed app supports configuration settings, the **Configuration settings** dropdown box is visible. You can set the configuration values by using either the configuration designer or by entering JSON data. Both methods accomplish the same configuration setting results. Additional, setting keys, types, and values may be available for the specific app. Check with the app developer to determine if there are additional configuration settings available for an app.

## Obtain settings for other apps

Not every app supports app configuration. Check with the app developer to see if their app supports app configuration policies or for [troubleshooting specific app configuration settings](/mem/intune/apps/app-configuration-policies-overview?branch=main#troubleshooting). For a list of Microsoft and partner apps, see [Microsoft Intune protected apps](/mem/intune/apps/apps-supported-intune-apps).

## Custom apps

A line-of-business (LOB) app is an app that you add to Intune from an app installation file. This kind of app is typically written in-house. Intune installs the LOB app on the user's device. An organization that creates a LOB app can integrate that app with Intune using the [Intune App SDK](/mem/intune/developer/app-sdk) for iOS or Android.

Win32 apps that your organization creates can be added to Intune. These apps are a type of LOB app. When you add a Win32 app to Intune, you can select to customize specific installation settings, such as the how the app is installed and uninstalled. The amount of time required to install the app. Any actions associated with installing the app, such as restarting the device. Additionally, you can set specific requirements when you're adding a Win32 app, such as **Operating system architecture**, **Minimum operating system**, **Disk space required (MB)**, **Physical memory required (MB)**, **Minimum number of logical processors required**, and **Minimum CPU speed required (MHz)**. You can also add requirement rules, detection rules, app dependencies, and app supersedence. For more information, see [Win32 app management in Microsoft Intune](/mem/intune/apps/apps-win32-app-management).

## Next step

[:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-07.png" alt-text="Step 7 - Verify app configuration" border="false" :::](apps-config-step-7.md)

Continue with [Step 7](apps-config-step-7.md) to verify other apps in Microsoft Intune.
