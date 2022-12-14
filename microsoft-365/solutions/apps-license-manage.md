---
title: "Manage app licenses used in Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Manage app licenses used in Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Manage app licenses used in Intune

Before you can manage app licenses in Intune, you much first purchase them. Purchasing app licenses involves first creating a business account for each platform according to each vendor's process. This process is commonly called a "volume purchase program" where you purchase app tokens. Each token represents a individual user license for the related app. Once you have purchased the app tokens that you need, you can sync those tokens with Intune. When the tokens have been sync'd, you can add the app to Intune and then assign the app to end users.

For more information about purchasing apps in-volume for each platform type, see [Purchase apps in-volume for Intune](apps-purchase-volume.md).

## Manage app store tokens

Once you have purchases the licenses as tokens for the apps you want to assign to the members of your organization, you can manage those tokens in Intune. As previously mentioned, Intune provides volume purchased store apps as tokens for each of the following categories:
- Microsoft Store for Business
- Apple Apps Store
- Google Play Store

### Manage tokens from Microsoft Store for Business

[Microsoft Store for Business](https://www.microsoft.com/business-store) is the location to find and purchase apps for the Windows devices that are used by members of your organization. By connecting the Microsoft Store for Business to Microsoft Intune, you can manage volume-purchased apps directly from Intune. Once you connect the Microsoft Store for Business to Intune, you can synchronize the list of apps you have purchased (or that are free) from the store with Intune. Then, you can add the apps to Intune and assign the apps to members of your organization in the same way you assign any other app. Additionally, you can track how many licenses are available and how many are being used. For more information, see [How to manage volume purchased apps from the Microsoft Store for Business with Microsoft Intune](/mem/intune/apps/windows-store-for-business).

### Manage tokens from Apple Apps Store

[Apple Business Manager](https://business.apple.com/) and [Apple School Manager](https://school.apple.com/) is the location to find and purchase apps for the iOS/iPadOS and macOS devices that are used by members of your organization. Apple lets you purchase multiple licenses for an app that you want to use in your organization from these locations. You can then synchronize your volume purchase information with Intune and track your volume-purchased app use. Purchasing app licenses helps you efficiently manage apps within your company and retain ownership and control of purchased apps.

You must create an Apple ID and purchase the app license from Apple. Once you complete the purchase process, you will be able to download and synchronize the related app tokens with Intune. This synchronization process will allow you to track how many licenses are available and have been used for iOS/iPadOS and macOS purchased apps. Then, you can add the apps to Intune and assign the apps to members of your organization in the same way you assign any other app. For more information, see [How to manage iOS and macOS apps purchased through Apple Business Manager with Microsoft Intune](/mem/intune/apps/vpp-apps-ios).

> [!NOTE]
> You can also synchronize, manage, and assign books you purchased from Apple Business Manager with Intune to iOS/iPadOS devices. For more information, see [How to manage iOS/iPadOS eBooks you purchased through a volume-purchase program](/mem/intune/apps/vpp-ebooks-ios).

### Manage tokens from Google Play Store

[Managed Google Play](https://play.google.com/work) is the location to find and purchase apps for the Android devices that are used by members of your organization. Managed Google Play is Google's enterprise app store and sole source of applications for Android Enterprise in Intune. By connecting the Managed Google Play store to Microsoft Intune, you can manage volume-purchased apps directly from Intune.  You can use Intune to orchestrate app deployment through Managed Google Play for any Android Enterprise scenario (including personally-owned work profile, dedicated, fully managed, and corporate-owned work profile enrollments). How you add Managed Google Play apps to Intune differs from how Android apps are added for non-Android Enterprise scenarios. Store apps, line-of-business (LOB) apps, and web apps are approved in or added to Managed Google Play, and then synchronized into Intune so that they appear in the Client Apps list. Once they appear in the Client Apps list, you can manage assignment of any Managed Google Play app as you would any other app. For more information, see [Add Managed Google Play apps to Android Enterprise devices with Intune](/mem/intune/apps/apps-add-android-for-work).

## View app store connector status

Your Intune tenant maintains a connection with each of the apps stores to ensure that your app tokens for each store are update-to-date and correctly synched. The store connections are called connectors. You can confirm the status of each connector by viewing the **Connector status** pane listed in the **Tenant admin** workload. If you find that the connector is not in-sync, you can navigate within Intune to the **Connectors and tokens** workload to manually sync the connector and tokens for each store.

## Monitor app licenses used in Intune

Intune provides a list of all the app licenses your tenant currently has in use. You can see the license name, the total number of licenses, the available licenses left to use, and the current licenses in use. When you view this list, you can also sync your volume purchased (VPP) licenses to be certain the list is up-to-date. For related information, see [Intune app management overview](/mem/intune/apps/app-management).
