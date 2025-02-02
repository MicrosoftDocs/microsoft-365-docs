---
title: "Purchase apps in-volume for Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 03/29/2024
description: Purchase apps in-volume for Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Purchase apps in-volume for Intune

<!--
## Types of volume purchased apps 
## Volume purchased apps by platform
-->

App licenses that you purchase in-volume are purchased through a volume purchase program (VPP). Apple lets you purchase multiple app licenses using Apple Business Manager](https://support.apple.com/guide/apple-business-manager/sign-up-axm402206497). Depending on your Microsoft Intune license, you may already have Microsoft app licenses available to add and deploy.

> [!NOTE]
> The Managed Google Play store and Microsoft Store only supports free apps. For more information, see [Managed Google Play](apps-purchase-volume.md#managed-google-play) and [Microsoft Store](apps-purchase-volume.md#microsoft-store).

## Apple Business Manager<!-- What is it? -->

[Apple Business Manager](https://business.apple.com/) is a web-based portal that allows you to purchase apps that can be managed by Intune. Apple lets you purchase multiple licenses for an app that you can use for your organization on iOS/iPadOS and macOS devices. Once you set up Apple Business Manager, you can purchase the apps that you need. After purchasing apps, you can synchronize and manage your purchased licenses using Intune. In addition to managing apps, you can use Intune to enroll and manage the Apple devices used by your organization.

> [!NOTE]
> If your organization is a school, you can use [Apple School Manager](https://school.apple.com/) to purchase apps. Once the apps are purchased, you can sync Apple School Manager with Microsoft Intune, where you can manage those apps. For Apple School Manager set up details, see [Set up Apple School Manager](https://support.apple.com/guide/deployment-education/set-up-apple-school-manager-edu42181fe4b).

### Set up Apple Business Manager<!-- How to set up? -->

You can purchase app licenses from Apple Business Manager in-volume. Before purchasing licenses, first determine the number of licenses you need. Once you've purchased the app licenses, you can then synchronize your volume purchase information with Intune and track your volume-purchased app use. Purchasing app licenses helps you efficiently manage apps within your company and retain ownership and control of purchased apps. Before you use Microsoft Intune to manage the iOS/iPadOS and macOS apps that your organization would like to use, you must follow Apple's guidelines to check requirements, sign-up, and purchase apps.

Follow Apple's guidelines to set up Apple Business Manager:
1. Confirm you meet the [requirements](https://support.apple.com/guide/apple-business-manager/program-requirements-axm6d9dc7acf/web) to use Apple Business Manager.
2. [Sign up for Apple Business Manager](https://support.apple.com/guide/apple-business-manager/sign-up-axm402206497).

After you've signed up to use Apple Business Manager and purchased your app licenses, you can sync from Microsoft Intune to manage your Apple apps on the Apple devices used at your organization. Managing apps with Intune includes setting the app configuration policies, setting the app protection policies, assigning the apps, and monitor the apps. 

### Purchase apps using Apple Business Manager<!-- How do you buy apps? -->

Using Apple Business Manager, you can find and purchase [standard apps](https://support.apple.com/guide/apple-business-manager/select-and-purchase-content-axmc21817890), [custom apps](https://support.apple.com/guide/apple-business-manager/learn-about-custom-apps-axm58ba3112a), and [unlisted apps](https://support.apple.com/guide/deployment/distribute-unlisted-apps-dep36d738732). Custom and unlisted apps are apps that have been tailored specifically for your organization by apps developers that you, or your organization, have worked with directly.

Before you can purchase apps using Apple Business Manager, you must add a payment method to Apple Business Manager. A payment method is required to purchase any app, including free apps.

Follow Apple's guidelines to add payment information and purchase apps using Apple Business Manager:
1. [Add a payment method to Apple Business Manager](https://support.apple.com/guide/apple-business-manager/review-content-payment-billing-information-axm746a59fa2)
2. [Find, select, and purchase apps from Apple Business Manager](https://support.apple.com/guide/apple-business-manager/select-and-purchase-content-axmc21817890)

> [!TIP]
> To see all available apps in Apple Business Manager, your Apple Business Manager role must be **Administrator** or **Content Manager**.

For related information about purchasing apps, see [Intro to purchasing content in Apple Business Manager](https://support.apple.com/guide/apple-business-manager/intro-to-purchasing-content-axme19b23f7f).

### Sync purchased Apple app licenses with Microsoft Intune<!-- What does sync mean (certs)? How to sync? -->

Microsoft Intune helps you manage apps you purchased from Apple Business Manager by synchronizing app license information (location tokens) you download from Apple Business Manager. Location tokens are volume purchase licenses that were commonly known as Volume Purchase Program (VPP) tokens. With VPP tokens, you can assign and manage licenses purchased using Apple Business Manager. These tokens are then downloaded from Apple Business Manager and uploaded (synched) into Microsoft Intune. Each token is commonly valid for one year.  

> [!NOTE]
> VPP apps can only be added via a connector to the service. The connector syncs the location tokens. 

Follow the Intune guidelines to upload and sync an Apple VPP token:
- Upload multiple location tokens per tenant](/mem/intune/apps/vpp-apps-ios#upload-an-apple-vpp-or-apple-business-manager-location-token) using Intune.

In addition to synchronizing location tokens, Intune help you track how many licenses are available and have been used for purchased apps, and helps you install apps up to the number of licenses you own.

> [!NOTE]
> You can also synchronize, manage, and assign books you purchased from Apple Business Manager with Intune to iOS/iPadOS devices. 

For more information, see [How to manage iOS and macOS apps purchased through Apple Business Manager with Microsoft Intune](/mem/intune/apps/vpp-apps-ios).

#### Assign a volume-purchase iOS/iPadOS app using Intune

Once Apple apps have been integrated and synced with Intune, you can deploy the app to members of your organization by assigning the app to groups of users listed in Intune. To assign an app, you must already have users added to Intune and groups of uses created. For more information, see [Add users and grant administrative permission using Intune](/mem/intune/fundamentals/users-add) and [Add groups to organize users and devices using Intune](/mem/intune/fundamentals/groups-add).

Follow the Intune guidelines to assign iOS/iPadOS apps:
- [Assign apps to groups with Microsoft Intune](/mem/intune/apps/apps-deploy)

## Microsoft Store<!-- What is it? -->

[Microsoft Store](https://apps.microsoft.com/apps) is a web-based portal that allows you to find apps that can be managed by Intune. Admins can browse, deploy, and monitor Microsoft Store applications inside Intune. Upon deployment, Intune automatically keeps the apps up to date when a new version becomes available. The Microsoft Store supports UWP apps, desktop apps packaged in *.msix*, and now Win32 apps packaged in *.exe* or *.msi* installers.

### Access Microsoft Store<!-- How to set up? -->

You can add free apps to Microsoft Intune from the Microsoft Store. Oftentimes, those free apps that require a license can be added to Intune and distributed to your organization. However, you may need a license, subscription, or user account to use the app. Before you use Microsoft Intune to manage the apps your purchase, you should check requirements. 

Microsoft Store requirements:
- Confirm that your [mobile device management (MDM) authority](/mem/intune/fundamentals/mdm-authority-set) is set to **Microsoft Intune**.

> [!NOTE]
> The Microsoft Store for Business no longer supports purchasing apps.

### Acquiring apps using Microsoft Store<!-- How do you buy apps? -->

You can add apps from the Microsoft Store to Intune. You'll need to check with the app vendor or developer to determine the licensing for your organization.

Select apps that you want to include in Intune:
1. Find and select the apps from Microsoft Store.
2. Add the apps to Intune.
3. Assign the apps to devices and groups.

## Managed Google Play<!-- What is it? -->

Managed Google Play apps are available to add to Intune from the [Managed Google Play store](https://play.google.com/work). Intune can deploy these apps specifically to Android Enterprise devices. You can use Intune to deploy apps through the Managed Google Play store for any Android Enterprise device scenarios, including personally owned work profile, dedicated, fully managed, and corporate-owned work profile enrollments. 

There are three types of Managed Google Play apps:
- [Managed Google Play store app](/mem/intune/apps/apps-add-android-for-work#managed-google-play-store-apps)
- [Managed Google Play private app](/mem/intune/apps/apps-add-android-for-work#managed-google-play-private-lob-apps)
- [Managed Google Play web apps](/mem/intune/apps/apps-add-android-for-work#managed-google-play-web-links)

> [!NOTE]
> The Managed Google Play store no longer supports purchasing apps. You can still purchase apps from developers and add them to your private store.

### Add a Managed Google Play store app to Intune

Managed Google Play apps are available to add to Intune from the managed Google Play Store. Intune can deploy these apps specifically to Android Enterprise devices. Intune provides the **Managed Google Play app** type as an option within Intune, which makes it easy to add these apps to Intune. You can browse and approve Managed Google Play apps in a view hosted within Intune. You don't have to reauthenticate with a different account when adding these apps.

Follow the Intune guidelines to add Managed Google Play apps:
- Confirm that your [mobile device management (MDM) authority](/mem/intune/fundamentals/mdm-authority-set) is set to **Microsoft Intune**.
- Ensure that Android Enterprise is available in your country or region. For more information, see [Is Android Enterprise available in my country?](https://support.google.com/work/android/answer/6270910)
- [Add a Managed Google Play store app directly in the Microsoft Intune](/mem/intune/apps/apps-add-android-for-work#add-a-managed-google-play-store-app-directly-in-the-microsoft-endpoint-manager-admin-center).

> [!NOTE]
> As an alternative, you can specifically connect Your Intune tenant to Managed Google Play, approve Managed Google Play apps, and sync those apps with Microsoft Intune. This process follows similar steps used to approve and sync apps for other platforms. For more information, see [Add a Managed Google Play store app in the Managed Google Play console (Alternative)](/mem/intune/apps/apps-add-android-for-work#add-a-managed-google-play-store-app-in-the-managed-google-play-console-alternative).

To make it easier for you to configure and use Android Enterprise management, upon connecting your Intune tenant to Managed Google Play, Intune will automatically add four common Android Enterprise related apps to the Intune admin center. The four are the following apps:

- **[Microsoft Intune](https://play.google.com/store/apps/details?id=com.microsoft.intune)** - Used for Android Enterprise fully managed scenarios. This app is automatically installed to fully managed devices during the device enrollment process.
- **[Microsoft Authenticator](https://play.google.com/store/apps/details?id=com.azure.authenticator)** - Helps you sign-in to your accounts if you use two-factor verification. This app is automatically installed to fully managed devices during the device enrollment process.
- **[Intune Company Portal](https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal)** - Used for App Protection Policies and Android Enterprise personally owned work profile scenarios. This app is automatically installed to fully managed devices during the device enrollment process.
- **[Managed Home Screen](https://play.google.com/store/apps/details?id=com.microsoft.launcher.enterprise)** - Used for Android Enterprise dedicated multi-app kiosk scenarios. IT admins should create an assignment to install this app on dedicated devices that are going to be used in multi-app kiosk scenarios.
