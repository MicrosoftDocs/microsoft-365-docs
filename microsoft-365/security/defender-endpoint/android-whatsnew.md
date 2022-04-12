---
title: What's new in Microsoft Defender for Endpoint on Android
description: Learn about the major changes for previous versions of Microsoft Defender for Endpoint on Android.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, macos, whatsnew
ms.prod: m365-security
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: reference
ms.technology: mde
---

# What's new in Microsoft Defender for Endpoint on Android

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

>[!NOTE]
>Microsoft Defender is no longer supported for versions below 1.0.3011.0302. Users are requested to upgrade to latest versions to keep their devices secure.
To update, users can follow the steps below –
>1. On your work profile, go to Managed Play Store.
>2. Tap on the profile icon on the top right corner and select "Manage apps and device".
>3. Locate MDE under updates available and select update.
>
>If you face any issue, please [submit in-app feedback](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/android-support-signin?view=o365-worldwide#send-in-app-feedback).

## Microsoft Defender for Endpoint is now Microsoft Defender in the Play store

Microsoft Defender for Endpoint is now available as **Microsoft Defender** in the play store. With this update, the app will be available as preview for **Consumers in the US region** - based on how you log into the app with your work or personal account, you will have access to features for Microsoft Defender for Endpoint or to features for Microsoft Defender for individuals. Please see [this blog](https://www.microsoft.com/en-us/microsoft-365/microsoft-defender-for-individuals) for more details.

## Threat and Vulnerability Management

On January 25, 2022, we announced the general availability of Threat and Vulnerability management on Android and iOS. For more details, see [the techcommunity post here](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-general-availability-of-vulnerability-management/ba-p/3071663).

## Upcoming permission changes for Microsoft Defender for Endpoint running Android 11 or later (Nov 2021)

Release Build: 1.0.3501.0301
Release month: Nov 2021
Microsoft Defender for Endpoint has released this update required by [Google](https://developer.android.com/distribute/play-policies#APILevel30) to upgrade to Android API 30. This change will prompt users seeking access to [new storage permission](https://developer.android.com/training/data-storage/manage-all-files#all-files-access-google-play), for devices running Android 11 or later. Users will need to accept this new storage permission once they update Defender app with the release build 1.0.3501.0301 or later. This will ensure that Defender for Endpoint's app security feature to function without any disruption. For more information, review the following sections.

**How will this affect your organization:**
These changes will take affect, if you are using Microsoft Defender for Endpoint on devices running Android 11 or later and updated Defender for Endpoint to release build 1.0.3501.0301 or later.

> [!NOTE]
> The new storage permissions cannot be configured by admin to 'Auto Approve' through Microsoft Endpoint Manager. User will need to take action to provide access to this permission.

- **User experience:** Users will receive a notification indicating a missing permission for app security. If the user denies this permission, the ‘App security’ functionality will be turned off on the device. If user doesn't accept or deny permission, they will continue to receive the prompt when unlocking their device or opening the app, until it has been approved.

> [!NOTE]
> If your organization is previewing ‘Tamper protection’ feature and if the new storage permissions are not granted by the user within 7 days of updating to the latest version, the user might lose access to corporate resources.

**What you need to do to prepare:**

Notify your users and helpdesk (as applicable) that users will need to accept the new permissions when prompted after they have updated Defender for Endpoint to build 1.0.3501.0301 or later version. To accept the permissions, users should:

1. Tap on the Defender for Endpoint in-app notification or open the Defender for Endpoint app. Users will see a screen that lists the permissions needed. A green check mark will be missing next to the Storage permission.

2. Tap **Begin**.

3. Tap the toggle for **Allow access to manage all files.**

4. The device is now protected.

  > [!NOTE]
  > This permission allows Microsoft Defender for Endpoint to access storage on user’s device, which helps detect and remove malicious and unwanted apps. Microsoft Defender for Endpoint accesses/scans Android app package file (.apk) only. On devices with a Work Profile, Defender for Endpoint only scans work-related files.
