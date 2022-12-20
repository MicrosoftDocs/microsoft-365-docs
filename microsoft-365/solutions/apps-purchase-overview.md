---
title: "Purchase apps for Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Understand how to purchase apps for Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Purchase apps for Intune

There are a variety of apps that you can use with Microsoft Intune. Some apps are free for your workforce to use, while other apps require either a license and/or an account for each user to use the app. For instance, Microsoft Outlook requires both a license and an account to use the app. Within the Intune console, you can select store apps and freely add them to Intune. Based on the supported integration with Intune, you can then configure these apps so that your workforce can easily set them up based on your unique company requirements and also add app protection policies for each app to protect your company's data.

> [!NOTE]
> Many of the apps available from Intune are free to add to Intune and assign to members of your organization. Apps that you must purchase to add to Intune are available through a volume purchase program. For app licensing information, see [Understand app licenses used in Intune](apps-license-overview.md).

## Apps available for purchase

Whether an app is freely available or you must purchase the app, you must follow similar processes to obtain the app. 

Common types of apps to purchase and/or add:
- [Individual store apps](#individual-store-apps)
- [Volume purchased apps](#volume-purchased-apps)
- [Partner productivity apps](#partner-productivity-apps)
- [Partner UEM apps](#partner-uem-apps)
- [In-app purchases](#in-app-purchases)

### Individual store apps

Intune integrates directly with the different supported platform stores. Within Intune, you can find and select free store apps for Windows, iOS, and Android. Intune displays the available store apps directly in the Intune console. When [adding an app to Intune](apps-add-overview.md), you can select each app by platform and choose the users and devices that will receive the app.

> [!NOTE]
> Intune only shows free store apps. Apps that require a payment method will not be displayed as an available store app from within Intune unless you have a license for the app.

For more information about store apps, see [Purchase store apps for Intune](apps-purchase-store.md).

### Volume purchased apps

Some app stores give you the ability to purchase multiple licenses for an app (or book) that you want to distribute to the members of your organization. Buying licenses in bulk can help you reduce the administrative overhead of tracking multiple purchased copies of apps. Microsoft Intune helps you manage apps and books that you purchased through such a program. You import license information from the store vendor, and track how many licenses you have used. This process helps to ensure that you don't install more copies of the app than you own.

> [!NOTE]
> You can use Intune policies to block end-users from accessing the app store on their devices. You can also remove purchase restriction by allowing end-users to add new accounts to their device. Doing so will enable end-users to be able to purchase store apps for their personal use.

Each of the following device platforms has a method to purchase apps for your organization in bulk:
- Apple provides the [Apple Business Manager](apps-purchase-volume.md#apple-business-manager)
- Microsoft provide the [Microsoft Store for Business](apps-purchase-volume.md#microsoft-store-for-business)

> [!NOTE]
> Managed Google Play only supports free apps.

For more information about volume purchased apps, see [Purchase apps in volume for Intune](apps-purchase-volume.md).

### Partner productivity apps

There are several [Intune partner productivity apps](/mem/intune/apps/apps-supported-intune-apps.md#partner-productivity-apps) that support Intune configuration and protection. These apps are available from a variety of sources and often provide support for both iOS/iPadOS and Android devices. You may need to work directly with the app vendor to purchase a license, subscription, or account for each user to use the related app.

Areas of support include the following:
- [Core Intune app protection policy settings](/mem/intune/apps/apps-supported-intune-apps.md#core-app-settings)
- [Advanced Intune app protection policy and app configuration policy settings](/mem/intune/apps/apps-supported-intune-apps.md#advanced-app-settings)

### Partner UEM apps

In addition to standard store apps that can be managed, you can add specific [partner UEM apps](/mem/intune/apps/apps-supported-intune-apps.md#partner-uem-apps) to Intune. These apps are also available in either the Google Play Store or the Apple App Store. However, these apps are capable of supporting advanced app protection policy and app configuration policy settings. You may need to work directly with the app vendor to purchase a license, subscription, or account for each user to use the related app.

### In-app purchases

Many apps offer core functionality for free, however there are those apps that provide additional capabilities that you can purchase from within the app. Purchasing additional app functionality within an app is called "in-app purchases". 

### iOS in-app purchase settings

You can choose to block in-app purchases specifically for iOS devices using device restriction settings. To force users to enter the Apple ID password for each in-app or ITunes purchase, you can set **Require iTunes Store password for all purchases** to **Yes**. However, the default is **Not configured**. Intune doesn't change or update this setting. By default, the OS might allow purchases without prompting for a password every time. To block in-app purchases from the Apple store, set **Block in-app purchases** to **Yes**. When set to **Not configured** (default), Intune doesn't change or update this setting. By default, the OS might allow store purchases within a running app.

### Android in-app purchase settings

On Android devices, you can allow access to all apps in Google Play store by allowing users to add new accounts to the device. However, doing so will enable end users not only to have the ability to conduct in-app purchases from the Google Play store using personal accounts, but purchase apps as well.

## Verify purchased apps in Intune

You can verify the apps that you have purchased to use with Intune by checking details within Intune. You can manage app store tokens, view app store connectors, and monitor app licenses from Intune. For more information, see [Manage app licenses used in Intune](apps-license-manage.md).