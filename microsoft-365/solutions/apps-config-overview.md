---
title: "Configure apps using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Configure apps using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Configure apps using Microsoft Intune

Once you've [set up and deployed the capabilities of Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune) and you've [added the apps you want to manage to Intune](/microsoft-365/solutions/apps-add-overview), you can begin the process of creating app configuration policies. App configuration policies will allow members of your organization (end-users) to easily install and use the related apps on their devices. You create app configuration policies directly in Intune that are unique for each app. Then, you can apply each app configuration policy to users or devices.

> [!NOTE]
> Intune is provided as a web-based console to manage, protect, and monitor all of your organization's endpoints, whether those endpoints are devices or apps.

 App configuration policies can help you eliminate app setup problems by letting you assign configuration settings to a policy that is then assigned to end-users before they run the app. The settings are then supplied automatically when the app is configured on the end-user's device. Most importantly, end-users don't need to take action. You can create and use app configuration policies to provide configuration settings for both iOS/iPadOS or Android apps. The configuration policy settings are used when the app checks for these settings, typically the first time the app is run.

For example, an app configuration setting might require you to specify any of the following details:
- A custom port number
- Language settings
- S/MIME settings
- Security and protection settings
- Branding settings (such as a company logo)

If end-users were to enter these settings instead, they could do this incorrectly. App configuration policies can help provide consistency across an enterprise and reduce helpdesk calls from end-users trying to configure settings on their own. By using app configuration policies, the adoption of new apps can be easier and quicker.

The available configuration parameters and the implementation of the configuration parameters are decided by the developers of the application. Documentation from the application vendor should be reviewed to see what configurations are available and how the configurations influence the behavior of the application. For some applications, Intune will populate the available configuration settings.

## Prerequisites

Before you can configure and manage apps with Microsoft Intune, you must follow a few prerequisites to set up Intune, as well as understand key app management configurations.

> [!NOTE]
> If you're new to Intune, start with the [Microsoft Intune free trail](/mem/intune/fundamentals/free-trial-sign-up). Trying out Intune is free for 30 days. When you complete the sign-up process, you'll have a new tenant that you can use to evaluate Intune. A tenant is a dedicated instance of [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-whatis) (Azure AD) where your subscription to Intune is hosted. You can then configure the tenant, which involves many capabilities that you can use to protect your organization. One of those involves adding and configuring apps for Intune.

Follow these steps if you haven't already set up Intune and added the apps you need to manage:
1. Set up and [deploy Intune](/microsoft-365/solutions/apps-guide-overview?toc=%2Fmem%2Fintune%2Ftoc.json&bc=%2Fmem%2Fintune%2Fbreadcrumb%2Ftoc.json&view=o365-worldwide#deploying-intune&preserve-view=true)
2. Understand [Mobile Application Management configurations](/microsoft-365/solutions/apps-guide-overview?toc=%2Fmem%2Fintune%2Ftoc.json&bc=%2Fmem%2Fintune%2Fbreadcrumb%2Ftoc.json&view=o365-worldwide#mobile-application-management-configurations&preserve-view=true)
3. [Understand app types](/microsoft-365/solutions/apps-guide-overview?toc=%2Fmem%2Fintune%2Ftoc.json&bc=%2Fmem%2Fintune%2Fbreadcrumb%2Ftoc.json&view=o365-worldwide#understand-app-types&preserve-view=true)
4. [Add apps to Intune](/microsoft-365/solutions/apps-add-overview?toc=%2Fmem%2Fintune%2Ftoc.json&bc=%2Fmem%2Fintune%2Fbreadcrumb%2Ftoc.json&view=o365-worldwide&preserve-view=true)

## Apps that support app configuration

App configuration can be delivered either through the mobile device management (MDM) OS channel on enrolled devices ([Managed App Configuration](https://developer.apple.com/library/content/samplecode/sc2279/Introduction/Intro.html) channel for iOS or the [Android in the Enterprise](https://developer.android.com/work/managed-configurations) channel for Android) or through the Mobile Application Management (MAM) channel.

Intune represents these different app configuration policy channels as:

- **Managed devices** - The device is managed by Intune as the unified endpoint management provider. The app must be pinned to the management profile on iOS/iPadOS or deployed through Managed Google Play on Android devices. In addition, the app supports the desired app configuration.
- **Managed apps** - An app that has either integrated the Intune App SDK or have been wrapped using the Intune Wrapping Tool and supports App Protection Policies (APP). In this configuration, neither the device's enrollment state or how the app is delivered to the device matter. The app supports the desired app configuration.

Apps may handle app configuration policy settings differently with respect to user preference. For example, with Outlook for iOS and Android, the Focused Inbox app configuration setting will respect the user setting, allowing the user to override admin intent. Other settings may let you control whether a user can or cannot change the setting based on the admin intent.

## General app configuration

As mentioned, you can apply configuration for your managed apps using app configuration policies. You create and assign those policies from [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431). When you create a app configuration policy, you start by selecting to create the policy for **Managed devices** or **Managed apps** as describe above. Then, you add the following policy areas/actions:

- **Basics** - You must add the policy name, the targeted platform, and the targeted app.
- **Settings** - You have two methods for add settings to the policy. You can choose to use the more visual configuration designer, or you can enter the XML data. Both methods can attain the same results, however once the policy is created, the format cannot be changed. Each setting includes a configuration key, a value type, and a configuration value. 
- **Scope tags** - You can optionally set tags that narrow the access scope of policies used based on the role of each Intune admin.
- **Assignments** - You can set which users are assigned the app configuration policy. Once you've selected an assignment group, you can select a [filter](../fundamentals/filters.md) to refine the assignment scope when deploying app configuration policies for managed devices.
- **Review + create** - You and confirm the policy settings and then create the new policy. When you select **Create**, your changes are saved, and the policy is deployed to your groups. The policy is also shown in the app configuration policies list.

For more information, see [App configuration policies](/mem/intune/apps/app-configuration-policies-overview), [iOS managed devices](/mem/intune/apps/app-configuration-policies-use-ios), and [Android managed devices](/mem/intune/apps/app-configuration-policies-use-android).

### Android specific configuration
[Enable connected apps](/mem/intune/apps/app-configuration-policies-use-android#enable-connected-apps)
[Preconfigure the permissions grant state for apps](/mem/intune/apps/app-configuration-policies-use-android#enable-connected-apps)

### iOS/iPadOS specific configuration


## What's in this solution

This solution steps you through the process of creating app configuration policies in Microsoft Intune for specific apps and assigning those policies to your organization. Once you've completed the above prerequisites, you're ready to create app protection policies for your organization in Intune. Using configuration and protection policies as part of your app management efforts allows members of your organization to safely use apps. By managing apps at your organization, you help to protect and secure your organization’s data.

:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-01.png" alt-text="Steps used to configure managed apps with Microsoft Intune." border="false" :::

## Configure the Company Portal

End-users use the Company Portal to securely access company data and do common tasks. End-users can access these tasks and information using either the Company Portal app, Company Portal website, or Intune app. The Company Portal app supports iOS/iPadOS, Linux, macOS, and Windows devices. The Intune app supports Android devices.

> [!NOTE]
> The "Company Portal" is commonly used as the descriptor for the Intune app, Company portal app, and the Company portal website.

As an Intune admin, you can customize the Company Portal user experience for your organization. Specifically, you can set the Company Portal branding, support information, enrollment, privacy, notifications, device categories, app sources, and self-service actions.

## Configure Microsoft Outlook

Outlook for iOS and Android supports app settings that allow unified endpoint management (UEM) administrators (using tools such as Microsoft Endpoint Manager) and Microsoft 365 or Office 365 administrators to customize the behavior of the app.

The Outlook for iOS and Android app is designed to enable users in your organization to do more from their mobile devices, by bringing together email, calendar, contacts, and other files.

The richest and broadest protection capabilities for Microsoft 365 data are available when you subscribe to the Enterprise Mobility + Security suite, which includes Microsoft Intune and Azure Active Directory Premium features, such as conditional access. At a minimum, you will want to deploy a conditional access policy that allows connectivity to Outlook for iOS and Android from mobile devices and an Intune app protection policy that ensures the collaboration experience is protected.

For more information about configuring Microsoft Outlook, go to the following topic:

- [Manage messaging collaboration access by using Outlook for iOS and Android with Microsoft Intune](/mem/intune/apps/app-configuration-policies-outlook)

## Configure Microsoft Office

Office for iOS and Android delivers several key benefits including:

- Combining Word, Excel, and PowerPoint in a way that simplifies the experience with fewer apps to download or switch between. It requires far less phone storage than installing individual apps while maintaining virtually all the capabilities of the existing mobile apps people already know and use.
- Integrating Office Lens technology to unlock the power of the camera with capabilities like converting images into editable Word and Excel documents, scanning PDFs, and capturing whiteboards with automatic digital enhancements to make the content easier to read.
- Adding new functionality for common tasks people often encounter when working on a phone—things like making quick notes, signing PDFs, scanning QR codes, and transferring files between devices.

The richest and broadest protection capabilities for Microsoft 365 data are available when you subscribe to the Enterprise Mobility + Security suite, which includes Microsoft Intune and Azure Active Directory Premium features, such as conditional access. At a minimum, you will want to deploy a conditional access policy that allows connectivity to Office for iOS and Android from mobile devices and an Intune app protection policy that ensures the collaboration experience is protected.

## Configure Microsoft Edge

Edge for iOS and Android is designed to enable users to browse the web and supports multi-identity. Users can add a work account, as well as a personal account, for browsing. There is complete separation between the two identities, which is like what is offered in other Microsoft mobile apps.

For more information about configuring Microsoft Edge, go to the following topic:

- [Manage Microsoft Edge on iOS and Android with Intune](/mem/intune/apps/manage-microsoft-edge)

## Configure Microsoft Teams

Microsoft Teams is the hub for team collaboration in Microsoft 365 that integrates the people, content, and tools your team needs to be more engaged and effective.

The richest and broadest protection capabilities for Microsoft 365 data are available when you subscribe to the Enterprise Mobility + Security suite, which includes Microsoft Intune and Azure Active Directory Premium features, such as conditional access. At a minimum, you'll want to deploy a conditional access policy that allows connectivity to Teams for iOS and Android from mobile devices and an Intune app protection policy that ensures the collaboration experience is protected.

## Configure other apps

Win32

## Verify app configuration

