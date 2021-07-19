---
title: Deploy Microsoft Defender for Endpoint on iOS features
description: Describes how to deploy Microsoft Defender for Endpoint on iOS features
keywords: microsoft, defender, Microsoft Defender for Endpoint, ios, configure, features, ios
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: sunasing
author: sunasing
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Deploy Microsoft Defender for Endpoint on unenrolled iOS devices

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

> [!NOTE]
> Defender for Endpoint on iOS uses a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device.

## Configure Microsoft Defender for Endpoint risk signals in app protection policy (MAM)

Microsoft Defender for Endpoint can be configured to send threat signals to be used in app protection policies (APP, also known as MAM) on iOS/iPadOS. With this capability, you can use Microsoft Defender for Endpoint to protect access to corporate data from unenrolled devices as well.

Steps to setup app protection policies with Microsoft Defender for Endpoint are as follows:

1. Set up the connection from your Microsoft Endpoint Manager tenant to Microsoft Defender for Endpoint. In [Microsoft Endpoint manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Tenant Administration** > **Connectors and tokens** > **Microsoft Defender for Endpoint** (under Cross platform) or **Endpoint Security** > **Microsoft Defender for Endpoint** (under Setup) and turn on the toggles under **App Protection Policy Settings for iOS**.
1. Select **Save**. You should see **Connection status** is now set to **Enabled**.
1. Create app protection policy: After your Microsoft Defender for Endpoint connector setup is complete, navigate to **Apps** > **App protection policies** (under Policy) to create a new policy or update an existing one.
1. Select the platform, **Apps, Data protection, Access requirements** settings that your organization requires for your policy.
1. Under **Conditional launch** > **Device conditions**, you will find the setting **Max allowed device threat level**. This will need to be configured to either Low, Medium, High, or Secured. The actions available to you will be **Block access** or **Wipe data**. You may see an informational dialog to make sure you have your connector set up prior to this setting take effect. If your connector is already set up, you may ignore this dialog.
1. Finish with Assignments and save your policy.

For more details on MAM or app protection policy, see [iOS app protection policy settings](/mem/intune/apps/app-protection-policy-settings-ios).

## Deploy Microsoft Defender for Endpoint for MAM or on unenrolled devices

Microsoft Defender for Endpoint on iOS enables the App Protection Policy scenario and is available in the Apple app store.

When app protection policies are configured for apps to include device risk signals from Microsoft Defender for Endpoint, user will be redirected to install Microsoft Defender for Endpoint when using such apps. Alternately, end-users can also install the latest version of the app directly from the Apple app store.
