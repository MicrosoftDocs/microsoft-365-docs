---
title: "Configure apps using Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 03/29/2024
description: Configure apps using Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Configure apps using Microsoft Intune

Once you've [set up and deployed the capabilities of Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune) and you've [added the apps you want to manage to Intune](/microsoft-365/solutions/apps-add-overview), you can begin the process of creating app configuration policies. App configuration policies allow members of your organization (end users) to easily install and use the related apps on their devices. By using app configuration policies, you can help you eliminate app setup problems. You can assign configuration settings to a policy that is then assigned to end users before they run the app. The settings are then supplied automatically when the app is configured on the end user's device. Most importantly, end users don't need to take action. You can create and use app configuration policies to provide configuration settings for both iOS/iPadOS or Android apps. The configuration policy settings are used when the app checks for these settings, typically the first time the app is run.

> [!NOTE]
> App configuration policies are not always needed or not required. The app developer must incorporate app configuration support into the app to allow app configuration via Intune.
>
> Intune is provided as a web-based console to manage, protect, and monitor all of your organization's endpoints, whether those endpoints are devices or apps.
> 
> Similar to app protection policies, app configuration policies should be assigned to end users and/or devices before assigning the related app. 

You create app configuration policies directly in Intune that are unique for each app and each group of end users. Then, you can apply each app configuration policy to end users and/or devices. There are many different settings you can use to configuration an app. For example, an app configuration setting might require you to specify any of the following details:
- A custom port number
- Language settings
- S/MIME settings
- Security and protection settings
- Branding settings (such as a company logo)

If end users were to enter these settings instead, they could enter them incorrectly. App configuration policies can help provide consistency across an enterprise and reduce helpdesk calls from end users trying to configure settings on their own. By using app configuration policies, the adoption of new apps can be easier and quicker. 

## Benefits of app configuration policies

App configuration policies can help you streamline apps installation, increase app adoption, reduce setup problems, and ensure app configuration consistency. In addition, by having the apps configured in a consistent manner with correct settings, your organizational data is better protected.

:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-12.png" alt-text="Benefits of configuring apps using Microsoft Intune" border="false" :::

The available configuration parameters and the implementation of the configuration parameters are decided by the developers of the application. Documentation from the application vendor should be reviewed to see what configurations are available and how the configurations influence the behavior of the application. For some applications, Intune will populate the available configuration settings.

> [!NOTE]
> Depending on the type of app, you may have the option to customize specific app information when adding an app to Intune. Common app information includes the name, description, publisher, minimum operating system, privacy URL, and other attributes of the app. This information is detailed as part of adding an app, rather than specific app configuration. For instance, **Microsoft 365 Apps for Windows 10 and later** offers configuration when adding the app (or app suite) to Intune. Note that app configuration policies are provided for the iOS/iPadOS and Android platforms.

## Prerequisites

Before you can configure and manage apps with Microsoft Intune, you must follow a few prerequisites to set up Intune, as well as understand key app management configurations.

> [!NOTE]
> If you're new to Intune, start with the [Microsoft Intune free trial](/mem/intune/fundamentals/free-trial-sign-up). Trying out Intune is free for 30 days. When you complete the sign-up process, you'll have a new tenant that you can use to evaluate Intune. A tenant is a dedicated instance of [Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-whatis) (Microsoft Entra ID) where your subscription to Intune is hosted. You can then configure the tenant, which involves many capabilities that you can use to protect your organization. One of those involves adding and configuring apps for Intune.

Follow these steps if you haven't already set up Intune and added the apps you need to manage:
1. Set up and [deploy Intune](/microsoft-365/solutions/apps-guide-overview#deploying-intune&preserve-view=true)
2. Understand [Mobile Application Management configurations](/microsoft-365/solutions/apps-guide-overview#mobile-application-management-configurations&preserve-view=true)
3. [Understand app types](/microsoft-365/solutions/apps-guide-overview#understand-app-types&preserve-view=true)
4. [Add apps to Intune](/microsoft-365/solutions/apps-add-overview)

> [!IMPORTANT]
> To use Microsoft Intune beyond the free trial, you'll need to acquire a license from Microsoft. For more information about licenses that include Microsoft Intune, see [Microsoft Intune licensing](/mem/intune/fundamentals/licenses).
> 
> Although many apps that you can deploy to the members of your organization are free, some apps may require either a license, subscription, or account for each user to use the app. For more information about app licenses, see [Understand app licenses used in Intune](/microsoft-365/solutions/apps-license-overview). 

## Apps that support app configuration

Apps that have been specifically enhanced to support a unified endpoint management provider, such as Microsoft Intune, can support configuration. Apps that can be configured using an Intune app configuration policy have been enabled to support configuration settings using the Intune App SDK or the Intune App Wrapping Tool. For a list of apps that have been enhanced to support Intune, see [Microsoft Intune protected apps](/mem/intune/apps/apps-supported-intune-apps). Note that an app doesn't have to support app configuration or app protection in order to be assigned to end users and/or devices.

> [!NOTE]
> Apps that support configuration in Microsoft Intune support the [AppConfig](https://www.appconfig.org/) community standard.

## Determine your management deployment model

Before you configure apps to be managed by Intune, you first need to determine your management deployment model. Intune supports mobile device management (MDM), mobile application management (MAM), and both MDM + MAM. Devices that are enrolled with Intune use MDM. MDM enables organizations to protect and secure their resources and data on enrolled devices. Apps that are managed (MAM) on their own without device management (MDM), can be configured and protected using Intune. MAM enables you to manage and protect your organization's data within an application.

| Management   deployment model | Description |
|---|---|
| MDM  | Devices that are enrolled with   Intune use MDM. MDM enables organizations to protect and secure their   resources and data on enrolled devices. When you are using MDM only, your app   configuration policy channel must be set to **Managed devices**. For more   information about MDM, see [Microsoft Intune   enrollment](/mem/intune/fundamentals/deployment-guide-enrollment). |
| MAM | Apps that are managed (MAM)   without device management (MDM), can be configured and protected using   Intune. MAM enables you to manage and protect your organization's data   within an application. When you choose to manage only the apps on devices   used by members of your organization without enrolling or managing devices,   your  app configuration policy channel   must be set to **Managed apps** . This configuration is commonly referred to   as MAM without device enrollment. You can manage apps using MAM by using Intune configuration and protection policies on devices not enrolled   with Intune MDM. MAM is ideal to help protect organization data on mobile   devices used by members of your organization for both personal and work   tasks.<p>**NOTE:**<br>You can't deploy apps to the device. The end user has to get the   apps from the store.<p>For more information, see [MAM without device   management](/mem/intune/fundamentals/deployment-plan-protect-apps#mam-without-device-management). |
| MDM +   MAM | Intune allows you to manage   devices (MDM) and manage apps (MAM). This configuration is commonly referred   to as MAM + MDM. You can manage apps using MAM on devices that are enrolled   with Intune MDM. A configuration policy that is delivered through the **Manged   apps** channel will take precedence over a configuration policy delivered   through the **Managed devices** channel. For more information about MDM +   MAM, see [MAM with device   management](/mem/intune/fundamentals/deployment-plan-protect-apps#mam-with-device-management). |

It is important to understand that you have different app configuration options and capabilities depending on the management workflow you use at your organization. For more information about MAM, see [MAM configurations](/mem/intune/fundamentals/deployment-plan-protect-apps#mam-configurations). For more information about management deployment models, see [Enroll in device management, application management, or both](/mem/intune/fundamentals/what-is-intune#enroll-in-device-management-application-management-or-both).

## What process should you follow?

:::image type="content" source="../media/configure-managed-apps/guide.png" alt-text="Common process to configure apps using Microsoft Intune" border="false" :::

## App configuration process flow

Once you have added an app to Intune, you can assign the app configuration policy to end users. The configuration policy will be used when the app is installed on the end user's device.

:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-13.png" alt-text="Process flow when configuring apps using Microsoft Intune" border="false" :::

## Delivery channels for app configuration policies

It's important to understand the difference between app configuration policies that support **Managed devices** verses **Managed apps**. Managed devices are those devices that have been enrolled in a unified endpoint management provider, such as Microsoft Intune. These enrolled devices use mobile device management (MDM) provided by the unified endpoint management provider. MDM enables organizations to protect and secure their resources and data on enrolled devices. Managed apps are apps that you have assigned to users via a unified endpoint management provider, such as Intune. Managed apps support app configuration policies and app protection policies. These apps use mobile application management (MAM) that is provided by the unified endpoint management provider. MAM enables organizations to manage and protect their data within an application.

When you create an app configuration policy in Intune, there are two ways to deliver app configuration using Intune:
1. Use the mobile device management (MDM) OS channel on enrolled devices
    - For iOS devices, use the [Managed App Configuration channel for iOS](https://developer.apple.com/library/content/samplecode/sc2279/Introduction/Intro.html) 
    - For Android devices, use the [Android in the Enterprise channel for Android](https://developer.android.com/work/managed-configurations)
2. Use the Mobile Application Management (MAM) channel

Intune represents these different app configuration policy channels as:
- **Managed devices** - The device is managed by Intune as the unified endpoint management provider. The app must be pinned to the management profile on iOS/iPadOS or deployed through Managed Google Play on Android devices. In addition, the app supports the desired app configuration.
- **Managed apps** - An app that has either integrated the Intune App SDK or have been wrapped using the Intune Wrapping Tool and supports App Protection Policies (APP) and/or app configuration policies. In this configuration, neither the device's enrollment state or how the app is delivered to the device matters. The app supports the desired app configuration. Using a **Managed apps** app configuration policy allows you to protect apps on unmanaged (nonenrolled) devices.

Apps may handle app configuration policy settings differently with respect to user preference. For example, with Outlook for iOS and Android, the **Focused Inbox** app configuration setting respects the user setting, allowing the user to override admin intent. Other settings may let you control whether a user can or can't change the setting based on the admin intent.

With Microsoft Intune, app configuration delivered through the MDM OS channel is referred to as a **Managed Devices** App Configuration Policy (ACP). App configuration delivered through the App Protection Policy channel is referred to as a **Managed Apps** App Configuration Policy.

> [!IMPORTANT]
> App configuration within Intune is dependant on the management workflow (MDM, MAM, or MDM+MAM) that you and your organization uses. For more information, see [Determine your management deployment model](#determine-your-management-deployment-model).

## Understand the app configuration policy

As mentioned, you can apply configuration for your managed apps using app configuration policies. You create and assign those policies from [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431). When you create an app configuration policy, you start by selecting to create the policy for **Managed devices** or **Managed apps** as describe above. Then, you add the following policy areas/actions:

- **Basics** - You must add the policy name, the targeted platform, and the targeted app.
- **Settings** - You have two methods for add settings to the policy. You can choose to use the more visual configuration designer, or you can enter the XML data. Both methods can attain the same results, however once the policy is created, the format can't be changed. Each setting includes a configuration key, a value type, and a configuration value. It's important to note that App configuration keys are case sensitive. You must use the proper casing to ensure the configuration takes effect.
- **Scope tags** - You can optionally set tags that narrow the access scope of policies used based on the role of each Intune admin.
- **Assignments** - You can set which users are assigned the app configuration policy. Once you've selected an assignment group, you can select a [filter](/mem/intune/fundamentals/filters) to refine the assignment scope when deploying app configuration policies for managed devices.
- **Review + create** - You and confirm the policy settings and then create the new policy. When you select **Create**, your changes are saved, and the policy is deployed to your groups. The policy is also shown in the app configuration policies list.

For more information, see [App configuration policies](/mem/intune/apps/app-configuration-policies-overview), [iOS managed devices](/mem/intune/apps/app-configuration-policies-use-ios), and [Android managed devices](/mem/intune/apps/app-configuration-policies-use-android).

### General app configuration for managed devices

<!--
https://learn.microsoft.com/en-us/mem/intune/apps/app-configuration-policies-overview#managed-devices
-->

To support app configuration for apps deployed through Intune on enrolled devices, apps must be written to support the use of app configurations as defined by the OS. Consult your app vendor for details for which app config keys they support for delivery through the MDM OS channel. There are generally four scenarios for app configuration delivery when using the MDM OS channel:

| Configuration   scenario | Description |
|---|---|
| Only allow organization accounts | Some companies have a requirement to capture all communications information within their corporate  environment, as well as, ensure the devices are only used for corporate   communications. To support these requirements, multiple Microsoft apps for   iOS and Android on enrolled devices can be configured to only allow a single organization account to be provisioned within the app.<p>For more   information, see the following setting:<ul><li>[Android setting](/mem/intune/apps/app-configuration-policies-use-android#allow-only-configured-organization-accounts-in-apps)</li><li>[iOS   setting](/mem/intune/apps/app-configuration-policies-use-ios#allow-only-configured-organization-accounts-in-apps)</li></ul> |
| Account   setup configuration settings | Used with managed devices   that   have been enrolled in a unified   endpoint management (UEM) solution. Any UEM     provider is supported. For certain M365 apps for iOS/iPadOS and Android,   such Microsoft Outlook,  you have   the  ability to "push"   account configurations to users leveraging hybrid Modern Authentication   users. For more   information on   account setup configuration, see [Account setup with modern authentication in   Exchange     Online](/exchange/clients-and-mobile-in-exchange-online/outlook-for-ios-and-android/setup-with-modern-authentication#account-setup-configuration-via-enterprise-mobility-management). |
| General   app configuration settings | An app configuration policy   contains a **General configuration settings** section in the **Settings**   pane. In this section you can type the **Name** and **Value** to configure   the setting for the app. The **Name** is also known as the **Key**. |
| App   specific configuration settings | Several apps also contain a   unique app configuration section in the **Settings** pane of an app   configuration policy. To learn which apps support configuration, see the   [Microsoft and third-party apps   list](/mem/intune/apps/apps-supported-intune-apps). For third-party apps, you   may need to see the app developer's documentation or contact them directly to   learn about their app's configuration keys and values.  |

### General app configuration for managed apps

<!--
https://learn.microsoft.com/en-us/mem/intune/apps/app-configuration-policies-overview#managed-apps
-->


Delivery of app configuration through the MAM channel doesn't require the device to be enrolled or for the app to be managed or delivered through the unified endpoint management solution. There are three scenarios for app configuration delivery using the MAM channel:

- General app configuration settings
- S/MIME configuration settings
- Advanced APP data protection settings, which extend the capabilities offered by App Protection Policies

### Additional app configuration capabilities

Certain supported apps can be configured to add additional capabilities. These capabilities may depend on app platform, app configuration policies, and the specific app itself.

#### Enable connected Android apps

You can allow end users using Android personally owned and corporate-owned work profiles to turn on connected apps experiences for supported apps. This app configuration setting enables apps to connect and integrate app data across the work and personal app instances on Android. For an app to provide this experience, the app needs to integrate with Google's connected apps SDK, which means only limited apps support it. You can turn on the connected apps setting proactively, and when apps add support, users are able to enable the connected apps experience. For more information, see [Enable connected apps](/mem/intune/apps/app-configuration-policies-use-android#enable-connected-apps).

#### Grant state for Android apps

You can preconfigure app permissions to access Android device features. By default, Android apps that require device permissions, such as access to location or the device camera, prompt users to accept or deny permissions. For more information, see [Preconfigure the permissions grant state for apps](/mem/intune/apps/app-configuration-policies-use-android#enable-connected-apps).

## Microsoft apps configuration

Specific Microsoft apps that have been enhanced to support a unified endpoint management provider, such as Microsoft Intune, support a common set of configuration capabilities. These configuration capabilities are in addition to the specific app configuration settings that a protected Microsoft app may have available. Protected [Microsoft apps](/mem/intune/apps/apps-supported-intune-apps#microsoft-apps) include common settings, such as the following:

- Organization allowed accounts mode
- S/MIME settings

#### Configure access by only organization accounts

<!-- https://learn.microsoft.com/en-us/mem/intune/apps/manage-microsoft-edge#only-allow-work-or-school-accounts -->

You can control which work or school accounts are added to Microsoft apps on managed devices. You can limit access to only allowed organization user accounts and block personal accounts within the apps (if supported) on enrolled devices. iOS configuration keys used in this scenario include `IntuneMAMAllowedAccountsOnly` and `IntuneMAMUPN`. The Android configuration key is `com.microsoft.intune.mam.AllowedAccountUPNs`.

The following apps support configuring access by only organization accounts:

- iOS/iPadOS:
    - Edge for iOS (44.8.7 and later)
    - Office, Word, Excel, PowerPoint for iOS (2.41 and later)
    - OneDrive for iOS (10.34 and later)
    - OneNote for iOS (2.41 and later)
    - Outlook for iOS (2.99.0 and later)
    - Teams for iOS (2.0.15 and later)
- Android:
    - Edge for Android (42.0.4.4048 and later)
    - Office, Word, Excel, PowerPoint for Android (16.0.9327.1000 and later)
    - OneDrive for Android (5.28 and later)
    - OneNote for Android (16.0.13231.20222 or later)
    - Outlook for Android (2.2.222 and later)
    - Teams for Android (1416/1.0.0.2020073101 and later)

For more information, see [iOS/iPadOS - Allow only configured organization accounts in apps](/mem/intune//apps/app-configuration-policies-use-ios#allow-only-configured-organization-accounts-in-apps) and [Android - Allow only configured organization accounts in apps](/mem/intune/apps/app-configuration-policies-use-android#allow-only-configured-organization-accounts-in-apps).

## What's in this solution

This solution steps you through the process of creating app configuration policies in Microsoft Intune for specific apps and assigning those policies to your organization. Once you've completed the above prerequisites, you're ready to create app protection policies for your organization in Intune. Using configuration and protection policies as part of your app management efforts allows members of your organization to safely use apps. By managing apps at your organization, you help to protect and secure your organization’s data.

[:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-01.png" alt-text="Step 1 - Customize and configure the Company Portal" border="false" :::](apps-config-step-1.md)

### Configure the Company Portal

If your organization is managing devices with Intune, you need to use the Company Portal app. End users at your organization use the Company Portal to securely access company data and do common tasks. End users can access these tasks and information using either the Company Portal app, Company Portal website, or Intune app. The Company Portal app supports iOS/iPadOS, Linux, macOS, and Windows devices. The Intune app supports Android devices.

> [!NOTE]
> The "Company Portal" is commonly used as the descriptor for the Intune app, Company portal app, and the Company portal website.
> 
> You don't need to use the Company Portal if you are only managing devices (MDM). If you are using **MAM** or **MDM + MAM**, you need to use the Company Portal.

As an Intune admin, you can customize the Company Portal user experience for your organization. Specifically, you can set the Company Portal branding, support information, enrollment, privacy, notifications, device categories, app sources, and self-service actions.

For recommended app configuration steps, see [Customize and configure the Company Portal](apps-config-step-1.md).

### Configure Microsoft Outlook

Outlook for iOS and Android supports app settings that allow unified endpoint management (UEM) administrators (using tools such as Microsoft Intune) and Microsoft 365 or Office 365 administrators to customize the behavior of the app.

The Outlook for iOS and Android app is designed to enable users in your organization to do more from their mobile devices, by bringing together email, calendar, contacts, and other files.

The richest and broadest protection capabilities for Microsoft 365 data are available when you subscribe to the Enterprise Mobility + Security suite, which includes Microsoft Intune and Microsoft Entra ID P1 or P2 features, such as conditional access. 

> [!NOTE]
> In additional to implementing app configuration policies, you'll want to deploy a conditional access policy that allows connectivity to Outlook for iOS and Android from mobile devices and an Intune app protection policy that ensures the collaboration experience is protected.

For recommended app configuration steps, see [Configure Microsoft Outlook](apps-config-step-2.md).

### Configure Microsoft 365 Apps

Microsoft 365 (M365), formerly known as Microsoft Office, is a suite of productivity apps that include Microsoft Word, Excel, PowerPoint, Teams, and more. Microsoft Intune is the recommended way to install M365 Apps to the devices and users at your organization.

Windows, iOS, and Android delivers several key benefits including:

- Combining Word, Excel, and PowerPoint in a way that simplifies the experience with fewer apps to download or switch between. It requires far less phone storage than installing individual apps while maintaining virtually all the capabilities of the existing mobile apps people already know and use.
- Integrating Office Lens technology, which will help your organization use their device's camera capabilities. These capabilities include converting images into editable Word and Excel documents, scanning PDFs, and capturing whiteboards with automatic digital enhancements to make the content easier to read.
- Adding new functionality for common tasks people often encounter when working on a phone—things like making quick notes, signing PDFs, scanning QR codes, and transferring files between devices.

The richest and broadest protection capabilities for Microsoft 365 data are available when you subscribe to the Enterprise Mobility + Security suite, which includes Microsoft Intune and Microsoft Entra ID P1 or P2 features.

For recommended app configuration steps, see [Configure Microsoft 365 Apps](apps-config-step-3.md).

### Configure Microsoft Edge

Edge for iOS and Android is designed to enable users to browse the web and supports multi-identity. Users can add a work account, as well as a personal account, for browsing. There's complete separation between the two identities, which is like what is offered in other Microsoft mobile apps.

For recommended app configuration steps, see [Configure Microsoft Edge](apps-config-step-4.md).

### Configure Microsoft Teams

Microsoft Teams is the hub for team collaboration in Microsoft 365 that integrates the people, content, and tools your team needs to be more engaged and effective.

For recommended app configuration steps, see [Configure Microsoft Teams](apps-config-step-5.md).

### Configure other apps

Microsoft Intune supports configuring specific apps that have been enhanced to support Intune. The apps include [Microsoft apps](/mem/intune/apps/apps-supported-intune-apps#microsoft-apps), [partner productive apps](/mem/intune/apps/apps-supported-intune-apps#partner-productivity-apps), and [partner UEM apps](/mem/intune/apps/apps-supported-intune-apps#partner-uem-apps). For partner productivity apps, you may need to contact the app vendor for specific details about Intune related setting and support.

For recommended app configuration steps, see [Configure other apps](apps-config-step-6.md).

### Verify app configuration

Intune provides an **App configuration status** report to help you monitor the apps you've deployed to your end users. Additionally, Intune provides diagnostic logs and configuration status per device. 

For recommended app configuration steps, see [Monitor app configuration](apps-config-step-7.md).

Once you've completed the above steps, you are ready to protect, assign, and monitor the managed apps your organization uses.
