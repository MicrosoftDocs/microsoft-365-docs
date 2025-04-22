---
title: "Step 3. Configure Microsoft 365"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: how-to
ms.date: 04/21/2025
description: Step 3. Configure Microsoft 365.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---
<!--
https://learn.microsoft.com/deployoffice/about-microsoft-365-apps
https://learn.microsoft.com/deployoffice/deploy-microsoft-365-apps-cloud
-->

# Step 3. Configure Microsoft 365 Apps

[Microsoft 365 Apps in the enterprise](/deployoffice/about-microsoft-365-apps) is a suite of Microsoft Office apps that include Microsoft Word, Excel, PowerPoint, Teams, and more. Microsoft Intune supports adding Microsoft 365 Apps on Windows, iOS/iPadOS, macOS, and Android platforms. Microsoft Intune is the recommended way to assign M365 Apps to the devices and users at your organization. You commonly add M365 Apps to Intune as a group, but you can also add individual Microsoft 365 (M365) store apps for Windows, iOS/iPadOS, and Android.

> [!NOTE]
> App configuration policies apply to iOS/iPadOS and Android platforms. However certain apps, such as Microsoft 365 apps, have configuration options available when adding the apps to Intune.
>
> There are no additional configuration options provided for **Microsoft 365 Apps for macOS**.

 ## Configure Microsoft 365 Apps for Windows 10 and later

Microsoft 365 Apps is a version of Office that's available through Microsoft 365 plans. It includes the applications that you're familiar with, including Access, Excel, OneDrive, OneNote, Outlook, PowerPoint, Publisher, Skype for Business, Teams, and Word. You can use these applications to connect with Microsoft 365 services such as SharePoint Online, Exchange Online, and Skype for Business Online.

Configuration for **Microsoft 365 Apps for Windows 10 and later** in Intune takes place when adding the app to Intune. 

> [!IMPORTANT]
> Before you add Microsoft 365 Apps to Intune, you want to check the prerequisites for the end user's devices at your organization. For more information, see the [Before you start]() section of [Add Microsoft 365 Apps to Windows 10/11 devices with Microsoft Intune](/mem/intune/apps/apps-add-office365).

When you add [Microsoft 365 Apps for Windows 10 and later](/mem/intune/apps/apps-add-office365#select-microsoft-365-apps) to Intune, you also determine how you want these apps configured. After adding the [app suite information](/mem/intune/apps/apps-add-office365#step-1---app-suite-information), you can choose how you want to add the configuration details. Use the [configuration designer](/mem/intune/apps/apps-add-office365#step-2---option-1-configure-app-suite-using-the-configuration-designer) if you don't already have the specific XML configuration data needed for this app type.

> [!NOTE]
> You can only configure the app suite of the Microsoft 365 Apps for business edition using XML data. 

To use the configuration designer, you must set **Configuration settings format** to **Configuration designer**. By choosing **Configuration designer**, the **Add Microsoft 365 Apps** pane shows three additional settings areas:
- Configure app suite
- App suite information
- Properties

:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-10.png" alt-text="Screenshot: Add Microsoft 365 Apps for Windows 10 and later" border="false" :::

### Configure app suite

You can select the Microsoft apps to install on your end user's Windows 10/11 devices. Additionally, if you own licenses for [additional Office apps](/deployoffice/use-the-office-deployment-tool-to-install-volume-licensed-editions-of-visio-2016), such as Microsoft Project and Microsoft Visio, you can also assign them with Intune. 

### App suite information

You can select the app architecture type, default file format, and update channel for the app suite. The **Architecture** setting allows you to select the 32-bit or 64-bit edition of Microsoft 365 Apps to be installed on your end user's devices. The **Default file format** setting allows you to choose the file format for the suite. Microsoft recommends you use the **Office Open XML Format**. You can also set the **Update channel**. This setting defines how often the app is updated with new features. Microsoft recommends selecting the **Monthly Enterprise Channel** along with **Remove other versions** set to **Yes**.

### Properties

You can select additional settings related to computer activation, license terms, background service installation, and languages. 

Shared computer activation lets you deploy Microsoft 365 Apps to computers that are used by multiple users. Normally, users can only install and activate Microsoft 365 Apps on a limited number of devices, such as 5 PCs. Using Microsoft 365 Apps with shared computer activation doesn't count against that limit. For more information, see [Overview of shared computer activation for Microsoft 365 Apps](/deployoffice/overview-shared-computer-activation).

The **Install background service for Microsoft Search in Bing** setting installs a background service that helps determine whether a Microsoft Search in Bing extension for Google Chrome is installed on the device. For more information, see [Microsoft Search in Bing and Microsoft 365 Apps for enterprise](/deployoffice/microsoft-search-bing).

By default, Intune will install Office with the default language of the operating system. Office automatically installs in any languages that have been installed in Windows. Choose any additional languages that you want to install for this app suite.

> [!NOTE]
> You can control updates to Microsoft 365 using Windows ADMX templates in Intune. For more information, see [Use Update Channel and Target Version settings to update Microsoft 365 with Microsoft Intune Administrative Templates](/mem/intune/configuration/administrative-templates-update-office).

For more information about configuring the Microsoft 365 Apps for Windows 10 and later, see [Configure app suite using the configuration designer](/mem/intune/apps/apps-add-office365#step-2---option-1-configure-app-suite-using-the-configuration-designer). For additional information about installing Microsoft 365 Apps for Windows 10 and later, such as [deployment details](/mem/intune/apps/apps-add-office365#deployment-details), [troubleshooting](/mem/intune/apps/apps-add-office365#troubleshooting), and [installation errors](/mem/intune/apps/apps-add-office365#errors-during-installation-of-the-app-suite), see [Add Microsoft 365 Apps to Windows 10/11 devices with Microsoft Intune](/mem/intune/apps/apps-add-office365#troubleshooting).

## Configure Microsoft 365 (Office) for iOS/iPadOS

You can create an app configuration policy in Intune that allows you to configure specific settings for Microsoft 365 (Office) for iOS/iPadOS. For the iOS/iPad app that support [app configuration](/mem/intune/apps/app-configuration-policies-overview#apps-that-support-app-configuration), you can create either an app configuration policy to target [Managed devices](/mem/intune/apps/app-configuration-policies-overview#managed-devices) or [Managed apps](/mem/intune/apps/app-configuration-policies-overview#managed-apps). 

When you choose to target an app configuration policy to **Managed apps**, you're using "MAM channel" to deliver app configuration to end users at your organization. Within the Intune admin center, the MAM channel is referred to as a Managed Apps app configuration policy. The MAM channel is different than the mobile device management (MDM) OS platform channels that are offered when a device is enrolled. By using the MAM channel, apps can receive app configuration policies regardless of the device enrollment state. This is an important difference between mobile application management and mobile device management.

> [!NOTE]
> With Microsoft Intune, app configuration delivered through the mobile device management OS channel is referred to as a **Managed Devices** App Configuration Policy (ACP); app configuration delivered through the App Protection Policy (APP) channel is referred to as a **Managed Apps** App Configuration Policy.
> 
> Microsoft recommends you use the deliver the app configuration  through the App Protection Policy (APP) channel as a **Managed Apps** App Configuration Policy.

Microsoft 365 (Office) for iOS/iPadOS supports the following configuration settings:

| Configuration   action | Description | Keys |
|---|---|---|
| [Manage   the creation of Sticky   Notes](/mem/intune/apps/manage-microsoft-office#manage-the-creation-of-sticky-notes) | Enable or disable the creation   of Stick Notes for work or school accounts. | com.microsoft.office.NotesCreationEnabled |
| [Set   add-ins   preference](/mem/intune/apps/manage-microsoft-office#set-add-ins-preference) | Enable or disable office add-in   platform and/or the Office store portion of the platform. | com.microsoft.office.OfficeWebAddinDisableAllCatalogs<br>com.microsoft.office.OfficeWebAddinDisableOMEXCatalog |
| [Manage   Teams apps running on   Office](/mem/intune/apps/manage-microsoft-office#manage-teams-apps-running-on-office-for-ios-and-android) | Enable or disable Teams apps on   Office. | com.microsoft.office.officemobile.TeamsApps.IsAllowed |
| [Microsoft   365 Feed for iOS and   Android](/mem/intune/apps/manage-microsoft-office#enable-or-disable-microsoft-365-feed-for-ios-and-android) | Enable or disable the Microsoft   365 Feed. | com.microsoft.office.officemobile.Feed.IsAllowed |
| [Copilot with commercial data protection](/mem/intune/apps/manage-microsoft-office#copilot-with-commercial-data-protection) | Enable or disable Copilot in Microsoft 365 app by configuring the following setting in the Intune admin center. | com.microsoft.office.officemobile.BingChatEnterprise.IsAllowed |

You can use the [configuration designer](/mem/intune/apps/app-configuration-policies-use-ios#use-configuration-designer) to add configuration settings for iOS app configuration policies. 

> [!NOTE]
> In addition to specific app configuration settings, certain Microsoft apps support common configuration settings on managed iOS/iPadOS devices. You can configure the following:
> - [Allow only configured organization accounts in apps](/mem/intune/apps/app-configuration-policies-use-ios#allow-only-configured-organization-accounts-in-apps)
> - [Require configured organization accounts in apps](/mem/intune/apps/app-configuration-policies-use-ios#require-configured-organization-accounts-in-apps)

For additional app configuration policy information for iOS/iPadOS, see the following resources:
- [Add app configuration policies for managed iOS/iPadOS devices](/mem/intune/apps/app-configuration-policies-use-ios#create-an-app-configuration-policy)
- [App configuration policies for Intune App SDK managed apps](/mem/intune/apps/app-configuration-policies-managed-app)

## Configure Microsoft 365 (Office) on managed Android device

You can configure Microsoft 365 (Office) on managed Android Enterprise device using the **Managed devices** channel. Configuration settings available for this app when you choose this channel for your policy include [permissions](apps-config-step-6.md#android-enterprise-app-configuration-permissions), general [configuration settings](apps-config-step-6.md#android-enterprise-app-configuration-settings), and configuration for [connected apps](apps-config-step-6.md#connected-apps-configuration). For more information about this channel for managed devices, see, [App configuration policies for the Managed devices channel](apps-config-step-6.md#app-configuration-policies-for-the-managed-devices-channel).

Microsoft 365 (Office) for Android supports the following configuration settings:

| Configuration   action | Description | Keys |
|---|---|---|
| [Manage   the creation of Sticky   Notes](/mem/intune/apps/manage-microsoft-office#manage-the-creation-of-sticky-notes) | Enable or disable the creation   of Stick Notes for work or school accounts. | com.microsoft.office.NotesCreationEnabled |
| [Set   add-ins   preference](/mem/intune/apps/manage-microsoft-office#set-add-ins-preference) | Enable or disable office add-in   platform and/or the Office store portion of the platform. | com.microsoft.office.OfficeWebAddinDisableAllCatalogs<br>com.microsoft.office.OfficeWebAddinDisableOMEXCatalog |
| [Manage   Teams apps running on   Office](/mem/intune/apps/manage-microsoft-office#manage-teams-apps-running-on-office-for-ios-and-android) | Enable or disable Teams apps on   Office. | com.microsoft.office.officemobile.TeamsApps.IsAllowed |
| [Microsoft   365 Feed for iOS and   Android](/mem/intune/apps/manage-microsoft-office#enable-or-disable-microsoft-365-feed-for-ios-and-android) | Enable or disable the Microsoft   365 Feed. | com.microsoft.office.officemobile.Feed.IsAllowed |
| [Data protection settings in M365 for Android](/mem/intune/apps/manage-microsoft-office#data-protection-settings-in-microsoft-365-office) | Enable or disable offline caching when **Save As to Local Storage** is blocked by the app protection policy. | com.microsoft.intune.mam.IntuneMAMOnly.AllowOfflineCachingWhenSaveAsBlocked |
| [Copilot with commercial data protection](/mem/intune/apps/manage-microsoft-office#copilot-with-commercial-data-protection) | Enable or disable Copilot in Microsoft 365 app by configuring the following setting in the Intune admin center. | com.microsoft.office.officemobile.BingChatEnterprise.IsAllowed |

You can use the [configuration designer](/mem/intune/apps/app-configuration-policies-use-ios#use-configuration-designer) to add configuration settings for iOS app configuration policies.

> [!NOTE]
> You can also add Microsoft 365 (Office) as a Managed Google Play store app.

> [!NOTE]
> In addition to specific app configuration settings, certain Microsoft apps support common configuration settings on managed iOS/iPadOS devices. You can configure the following:
> - [Allow only configured organization accounts in apps](/mem/intune/apps/app-configuration-policies-use-ios#allow-only-configured-organization-accounts-in-apps)
> - [Require configured organization accounts in apps](/mem/intune/apps/app-configuration-policies-use-ios#require-configured-organization-accounts-in-apps)

For additional app configuration policy information for iOS/iPadOS, see the following resources:
- [Add app configuration policies for managed iOS/iPadOS devices](/mem/intune/apps/app-configuration-policies-use-ios#create-an-app-configuration-policy)
- [App configuration policies for Intune App SDK managed apps](/mem/intune/apps/app-configuration-policies-managed-app)

### App configuration policy

- iOS/iPadOS there's nothing unique
- Android:
    - Permissions - Permissions granted here will override the “Default app permissions” policy for the selected apps. Learn more about [Android runtime permissions](/mem/intune/apps/app-configuration-policies-use-android). There's a large set of permissions that can be added for Android devices. You specify permissions you want to override. If they aren't chosen/specified explicitly, then the default behavior applies.
    - Configuration Settings - Available keys: `Allowed Accounts`, `Notes creation enabled`, `Teams app enabled`. 
    - Connected apps - Enable users to connect this app across the work and personal profiles. This setting only works for personally owned and corporate-owned work profile devices. Learn more about [connected apps](/mem/intune/apps/app-configuration-policies-use-android).

## Configure Microsoft 365 (Office) as a managed app

If your end user's Android devices isn't managed, you can use the **Managed apps** channel to configuration Microsoft 365 (Office). Configuration settings available for this app when you choose this channel for your policy include general [configuration settings](apps-config-step-6.md#managed-apps-configuration-settings) and configuration for [Microsoft Tunnel](apps-config-step-6.md#connected-apps-configuration). For more information about this channel for managed devices, see, [App configuration policies for the Managed apps channel](apps-config-step-6.md#app-configuration-policies-for-the-managed-apps-channel).

## Policies for Microsoft 365

Intune provides [policies specifically for Microsoft 365 apps](/mem/intune/apps/app-office-policies). You can select specific options to create mobile app management policies for Office mobile apps that connect to Microsoft 365 services. There are many policies for Microsoft 365 apps that you can add to Microsoft Intune and apply to groups of end users.

You must meet the requirements to use policies for Microsoft 365 apps. For more information about requirements, see [Requirements for using the Office cloud policy service](/deployoffice/overview-office-cloud-policy-service#requirements-for-using-the-office-cloud-policy-service). App protection policies aren't supported for other apps that connect to on-premises Exchange or SharePoint services. For related information, see [Overview of the Office cloud policy service for Microsoft 365 Apps for enterprise](/deployoffice/overview-office-cloud-policy-service).

## Configuration policies for individual Microsoft 365 apps

You can also install and configure specific Microsoft 365 apps. These apps are included in specific Microsoft plans and licenses. For more information about app licenses, see [Understand app licenses used in Intune](/microsoft-365/solutions/apps-license-overview).

Microsoft 365 includes the following apps:

- Microsoft Access
- Microsoft Edge
- Microsoft OneNote
- Microsoft Outlook
- Microsoft PowerPoint
- Microsoft Publisher
- Microsoft Skype for Business
- Microsoft Teams
- Microsoft Word
- Microsoft Project
- Microsoft Visio

> [!NOTE]
> Certain Microsoft apps can only be added as a set of Microsoft 365 apps, such as *Microsoft 365 apps for Windows 10 and later*, or as a **[Built-In app](/mem/intune/apps/apps-add-built-in)**.

Each app can be added and configured based on a selected license, platform, and [policy channel](/microsoft-365/solutions/apps-config-overview#apps-that-support-app-configuration). For instance, Microsoft Word for Android devices supports app configuration **Permissions**, **Configuration Settings**, and **Connected Apps**. Microsoft Word for Android managed apps (MAM channel) supports **General configuration settings** and **Microsoft Tunnel for MAM settings**.

For a list of Microsoft apps that have been designed to be configured and protected with Intune, see [Microsoft apps](/mem/intune/apps/apps-supported-intune-apps#microsoft-apps). For more information about Built-In apps, see [Built-In app](/mem/intune/apps/apps-add-built-in).

## Next step

[:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-04.png" alt-text="Step 4 - Configure Microsoft Edge" border="false" :::](apps-config-step-4.md)

Continue with [Step 4](apps-config-step-4.md) to configure Microsoft Edge in Microsoft Intune.
