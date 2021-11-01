title: What's new in Microsoft Defender for Endpoint on Android
description: Learn about the major changes for previous versions of Microsoft Defender for Endpoint on Android.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, macos, whatsnew
ms.prod: m365-security
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: priyankagill, shthota
author: shthota, priyankagill
ms.localizationpriority: medium
manager: shthota
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

## Upcoming permission changes for Microsoft Defender for Endpoint running Android 11 or later

In November, Microsoft Defender for Endpoint will be required by [Google](https://developer.android.com/distribute/play-policies#APILevel30) to move to Android API 30, which will prompt for a [new storage permission](https://developer.android.com/training/data-storage/manage-all-files#all-files-access-google-play) for devices running Android 11 or later. Users will need to accept this new storage permission once they update to the November version of Microsoft Defender for Endpoint. This will continue Defender’s ‘App security’ functionality on their devices. For more information, see the details in the following sections.

**How will this affect your organization:**

This will only affect you if you are using Microsoft Defender for Endpoint on devices running Android 11 or later and updated to the November app. This setting is not configurable through Microsoft Endpoint Manager; users will need to take action due to the aforementioned Google API changes.

- **User experience:** Users will receive a notification indicating a missing permission for app security. If the user denies this permission, the ‘App security’ functionality will be turned off on the device. If your user neither approves nor denies permission, they will continue to receive the prompt when unlocking their device or opening the app until it has been approved.

>[!NOTE] 
> If your organization is previewing ‘Tamper protection’ feature and if the new storage permissions are not granted by the user within 7 days of updating to the latest version, the user might lose access to corporate resources.

**What you need to do to prepare:**

Notify your users and helpdesk (as applicable) that users will need to accept the new permissions when prompted after they have updated to the November version of the Microsoft Defender for Endpoint app. To accept the permissions, users should:

1. Tap on the Defender in-app notification or open the Microsoft Defender for Endpoint app where users will see a screen that lists the permissions needed. A green check mark will be missing next to the Storage permission.

2. Tap **Begin**.

3. Tap the toggle for **Allow access to manage all files.** 

  >[!NOTE] 
  >This permission allows Microsoft Defender for Endpoint to access storage on user’s device, which helps detect and remove malicious and unwanted apps. Microsoft Defender for Endpoint only accesses / scans Android app package file (.apk), and on devices with a Work Profile, only scans work-related files.

4. The device is now protected.






