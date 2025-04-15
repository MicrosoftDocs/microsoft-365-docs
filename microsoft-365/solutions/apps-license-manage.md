---
title: "Manage app licenses used in Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 07/15/2024
description: Manage app licenses used in Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Manage app licenses used in Intune

Before you can manage app licenses in Intune, you much first add the apps to Intune. Part of adding the app to Intune may require you to purchase app licenses for your organization. For iOS/iPadOS apps, this process involves first creating a business account for the platform according to Apple's guidelines. This process is commonly called a "volume purchase program" where you purchase app tokens. Each token represents an individual user license for the related app. Once you've purchased the app tokens that you need, you can sync those tokens with Intune. When the tokens have been synched, you can add the app to Intune, and then assign the app to end users.

For more information about purchasing apps in-volume for each platform type, see [Purchase apps in-volume for Intune](apps-purchase-volume.md).

## Manage app store licenses

Once you have purchases the licenses as tokens for the apps you want to assign to the members of your organization, you can manage those tokens in Intune. As previously mentioned, Intune provides volume purchased store apps as tokens for apps available in the Apple Apps Store.

### Manage tokens from Apple Apps Store

[Apple Business Manager](https://business.apple.com/) and [Apple School Manager](https://school.apple.com/) are the locations to find and purchase apps for the iOS/iPadOS and macOS devices that are used by members of your organization. Apple lets you purchase multiple licenses for an app that you want to use in your organization from these locations. You can then synchronize your volume purchase information with Intune and track your volume-purchased app use. Purchasing app licenses helps you efficiently manage apps within your company and retain ownership and control of purchased apps.

You must create an Apple ID and purchase the app license from Apple. Once you complete the purchase process, you'll be able to download and synchronize the related app tokens with Intune. This synchronization process allows you to track how many licenses are available and have been used for iOS/iPadOS and macOS purchased apps. Then, you can add the apps to Intune and assign the apps to members of your organization in the same way you assign any other app. For more information, see [How to manage iOS and macOS apps purchased through Apple Business Manager with Microsoft Intune](/mem/intune/apps/vpp-apps-ios).

> [!NOTE]
> You can also synchronize, manage, and assign books you purchased from Apple Business Manager with Intune to iOS/iPadOS devices. For more information, see [How to manage iOS/iPadOS eBooks you purchased through a volume-purchase program](/mem/intune/apps/vpp-ebooks-ios).

## View app store connector status

Your Intune tenant maintains a connection with each of the apps stores to ensure that your app tokens for each store are update-to-date and correctly synched. The store connections are called connectors. You can confirm the status of each connector by viewing the **Connector status** tab listed in the **Tenant status** page (select **Tenant administration** > **Tenant status** > **Connector status**). If you find that the connector isn't in-sync, you can navigate within Intune to the **Connectors and tokens** workload to manually sync the connector and tokens for each store.

:::image type="content" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-16.png" alt-text="Connector status in Intune" border="false" :::

## Monitor app licenses used in Intune

Intune provides a list of all the app licenses your tenant currently has in use. You can see the license name, the total number of licenses, the available licenses left to use, and the current licenses in use. When you view this list, you can also sync your volume purchased (VPP) licenses to be certain the list is up-to-date. For related information, see [Monitor app information and assignments with Microsoft Intune](/mem/intune/apps/apps-monitor).

:::image type="content" source="../media/purchase-add-managed-apps/purchase-add-managed-apps-17.png" alt-text="App licenses in Intune" border="false" :::