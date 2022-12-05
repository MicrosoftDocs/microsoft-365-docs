---
title: "Purchase apps for a managed environment"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Understand how to purchase apps for a managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Purchase apps for a managed environment

There are a variety of apps that you can use with Microsoft Intune. Some apps are free for your workforce to use, while other apps require either a license and/or an account for each user to use the app. For instance, Microsoft Outlook requires both a license and an account to use the app. Within the Intune console, you can select store apps and freely add them to Intune. Based on the supported integration with Intune, you can then configure these apps so that your workforce can easily set them up based on your unique company requirements and also set up app protection policies for each app.

> [!NOTE]
> You can use Intune policies to block end-users from accessing the app store on their devices. You can also remove the limited purchases restriction by allowing end-users to add new accounts to their device. Doing so will enable end users to have the ability to purchase store apps.

## Apps available for purchase

Common types of apps purchases:
- [Individual store apps](#individual-store-apps)
- [Volume purchased apps](#volume-purchased-apps)
- [Partner productivity apps](#partner-productivity-apps)
- [Partner UEM apps](#partner-uem-apps)
- [In-app purchases](#in-app-purchases)

### Individual store apps

Intune integrates directly with the different supported platform stores. Within Intune, you can find and select free store apps for Windows, iOS, and Android. Intune displays the available store apps directly in the Intune console. When [adding an app to Intune](../apps-add-apps.md), you can select each app by platform and choose the users and devices that will receive the app.

> [!NOTE]
> Intune only shows free store apps. Apps that require a payment method will not be displayed as a store app from within Intune.

### Volume purchased apps

Each device platform has a method to purchase apps for your organization in bulk:
- Apple provides the [Apple Business Manager](../apps-purchase-volume.md#apple-business-manager)
- Google provides[Managed Google Play](../apps-purchase-volume.md#managed-google-play)
- Microsoft provide the [Microsoft Store for Business](../apps-purchase-volume.md#microsoft-store-for-business)

### Partner productivity apps

There are several [Intune partner productivity apps](/mem/intune/apps/apps-supported-intune-apps.md#partner-productivity-apps) that support Intune configuration and protection. These apps are available from a variety of sources and often provide support for both iOS/iPadOS and Android devices.

Areas of support include the following:
- [Core Intune app protection policy settings](/mem/intune/apps/apps-supported-intune-apps.md#core-app-settings)
- [Advanced Intune app protection policy and app configuration policy settings](/mem/intune/apps/apps-supported-intune-apps.md#advanced-app-settings)

### Partner UEM apps

In addition to standard store apps, you can add specific [partner UEM apps](/mem/intune/apps/apps-supported-intune-apps.md#partner-uem-apps) to Intune. These apps are also available in either the Google Play Store or the Apple App Store. However, these apps are  capable of supporting advanced app protection policy and app configuration policy settings.

### In-app purchases

Many apps offer core functionality for free, however there are those apps that provide additional capabilities that you can purchase from within the app. Purchase additional app functionality is called "in-app purchase". You can choose to block in-app purchases specifically for iOS devices using device restriction settings. On Android devices, you can allow access to all apps in Google Play store remove the limited purchases restriction by allowing users to add new accounts to the device. However, doing so will enable end users to have the ability to purchase apps from the Google Play store using personal accounts, as well as conduct in-app purchases. 

## Microsoft apps that support Intune

You and your workforce may use Microsoft Office, OneDrive, Excel, and Outlook on a regular basis, which are all supported by Microsoft Intune. However, there are dozens of other Microsoft apps for Android and iOS/iPadOS that support a variety of app capabilities supported by Intune. These capabilities include the following:
- Core app protection policy settings
- App configuration
- Org allowed accounts (iOS, Android)
- Sync policy managed app data with native apps (iOS, Android)
- Org data notifications (iOS, Android)
- Open data into Org documents (iOS, Android)
- Save copies of org data (iOS, Android)

For complete list of supported Microsoft apps, see [Microsoft Intune protected apps](/mem/intune/apps/apps-supported-intune-apps).

## Apps included with Microsoft 365 E5 license

To use Microsoft Intune, your organization must purchase a license. Microsoft apps are included with specific Microsoft 365 licenses. For instance, common areas of functionality included with an E5 enterprise license are displayed in the following table.

| Capability / Feature | Details |
|---|---|
| **Microsoft 365 apps** | Includes online apps, such as Microsoft Word, Excel, PowerPoint, OneNote, Outlook, and more |
| **Email, calendar, and scheduling** | Includes Microsoft Exchange and Outlook desktop client |
| **Meetings, calling, and chat** | Includes Microsoft Teams |
| **Social, intranet, and storage** | Includes SharePoint, Yammer Enterprise, and Viva Connections |
| **Content services** | Includes Microsoft Graph API, Microsoft Search, Microsoft Stream, and more |
| **Project and task management** | Includes Microsoft Planning and Microsoft To-Do |
| **Analytics** | Includes Productivity Score, Secure Score, Compliance Management, and Power BI Pro |
| **Viva Insights and Viva Learning** | Includes Personal insights in Teams, Viva Learning in Teams, and more |
| **Automation, app building, and chatbots** | Power Apps for Microsoft 365, Power Automate for Microsoft 365, and more |
| **Information protection** | Azure Information Protection, Automatic sensitivity labeling in Office 365 apps, Endpoint Data Loss Prevention, and more |
| **Threat protection** | Microsoft Defender Antimalware, Microsoft Defender Firewall, Application Guard for Office 365, and more |
| **Clock access security broker** | Microsoft Defender for Cloud Apps Discovery, Microsoft Developer for Cloud Apps, Office 365 Cloud App Security |
| **Identity and access management** | Azure Active Directory Premium, Multi Factor Authentication, Microsoft Advanced Threat Analytics, and more |
| **Data lifecycle management** | Rules-based Retention Policies, Machine Learning-bsaed Retention, and more |
| **eDiscovery and auditing** | Content Search, eDiscovery, and more |
| **Insider rick management** | Communication Compliance, Priviledged Access Management, and more |
| **Windows** | Windows 11 Edition, Azure Virtual Desktop, and Universal Print |

