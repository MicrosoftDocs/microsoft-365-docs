---
title: Configure Microsoft Defender for Endpoint on Android features
description: Describes how to configure Microsoft Defender for Endpoint on Android
keywords: microsoft, defender, Microsoft Defender for Endpoint, mde, android, configuration
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Configure Defender for Endpoint on Android features

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

## Conditional Access with Defender for Endpoint on Android

Microsoft Defender for Endpoint on Android along with Microsoft Intune and Azure Active Directory enables enforcing Device compliance and Conditional Access policies based on device risk levels. Defender for Endpoint is a Mobile Threat Defense (MTD) solution that you can deploy to leverage this capability through Intune.

For more information about how to set up Defender for Endpoint on Android and Conditional Access, see [Defender for Endpoint and Intune](/mem/intune/protect/advanced-threat-protection).

## Configure custom indicators

> [!NOTE]
> Defender for Endpoint on Android only supports creating custom indicators for IP addresses and URLs/domains.

Defender for Endpoint on Android enables admins to configure custom indicators to support Android devices as well. For more information on how to configure custom indicators, see [Manage indicators](manage-indicators.md).

## Configure web protection
Defender for Endpoint on Android allows IT Administrators the ability to configure the web protection feature. This capability is available within the Microsoft Endpoint Manager Admin center.

> [!NOTE]
> Defender for Endpoint on Android would use a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device.
> For more information, see [Configure web protection on devices that run Android](/mem/intune/protect/advanced-threat-protection-manage-android).


## Configure vulnerability assessment of apps for BYOD devices

From version 1.0.3425.0303 of Microsoft Defender for Endpoint on Android, we have the capability to run vulnerability assessment of OS and apps installed on the onboarded mobile devices.

> [!NOTE]
> Vulnerability assessment is part of [Threat and Vulnerability management](next-gen-threat-and-vuln-mgt.md) in Microsoft Defender for Endpoint. On Android, this feature is currently in preview and may be substantially modified before it's commercially released.

**Notes about privacy related to apps from personal devices (BYOD):**

- For Android Enterprise with a work profile, only apps installed on the work profile will be supported.
- For other BYOD modes, by default, vulnerability assessment of apps will **not** be enabled. However, when the device is on administrator mode, admins can explicitly enable this feature through Microsoft Endpoint Manager to get the list of apps installed on the device. Visit the documentation to learn more.

### Configure privacy for device administrator mode

Use the following steps to **enable vulnerability assessment of apps** from devices in **device administrator** mode for targeted users. 

> [!NOTE]
> By default, this is turned off for devices enrolled with device admin mode.

1. In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) , go to **Devices** > **Configuration profiles** > **Create profile** and enter the following settings:

   - **Platform**: Select Android device administrator
   - **Profile**: Select “Custom” and click Create

2. In the **Basics** section, specify a name and description of the profile.

3. In the **Configuration settings**, select Add **OMA-URI** setting:

   - **Name**: Enter a unique name and description for this OMA-URI setting so you can find it easily later.
   - OMA-URI: **./Vendor/MSFT/DefenderATP/DefenderTVMPrivacyMode**
   - Data type: Select Integer in the drop-down list.
   - Value: Enter 0 to disable privacy setting (By default, the value is 1)

4. Click **Next** and assign this profile to targeted devices/users.

### Configure privacy for Android Enterprise work profile

Defender for Endpoint supports vulnerability assessment of apps in the work profile. However, in case you want to turn this feature off for targeted users, you can use the following steps:

1. In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and go to **Apps** > **App configuration policies** > **Add** > **Managed devices**.
2. Give the policy a name; **Platform > Android Enterprise**; select the profile type.
3. Select **Microsoft Defender for Endpoint** as the target app.
4. In Settings page, select **Use configuration designer** and add **DefenderTVMPrivacyMode** as the key and value type as **Integer**
   - To disable vulnerability of apps in the work profile, enter value as `1` and assign this policy to users. By default, this value is set to `0`.
   - For users with key set as `0`, Defender for Endpoint will send the list of apps from the work profile to the backend service for vulnerability assessment.
5. Click **Next** and assign this profile to targeted devices/users.

Turning the above privacy controls on or off will not impact the device compliance check or conditional access.

## Configure privacy for malware threat report

> [!NOTE]
> Privacy controls for Defender for Endpoint on Android is currently in preview and may be substantially modified before it's commercially released.

Privacy control for malware threat report can be used to disable the collection of app details (name and package information) from the malware threat report. This gives organizations the flexibility to choose whether they want to collect the app name when a malicious app is detected. *This feature is currently only available for devices enrolled in **Android Device Administrator** mode.*

Use the following steps to turn it on for targeted users:

1. In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) , go to **Devices** > **Configuration profiles** > **Create profile** and enter the following settings:

   - **Platform**: Select Android device administrator
   - **Profile**: Select “Custom” and click Create

2. In the **Basics** section, specify a name and description of the profile.

3. In the **Configuration settings**, select Add **OMA-URI** setting:

   - **Name**: Enter a unique name and description for this OMA-URI setting so you can find it easily later.
   - OMA-URI: **./Vendor/MSFT/DefenderATP/DefenderExcludeAppInReport**
   - Data type: Select Integer in the drop-down list.
   - Value: Enter 1 to enable privacy setting (By default, the value is 0)

4. Click **Next** and assign this profile to targeted devices/users.

Using this privacy control will not impact the device compliance check or conditional access. For example, devices with a malicious app will always have a risk level of "Medium".

## Related topics

- [Overview of Microsoft Defender for Endpoint on Android](microsoft-defender-endpoint-android.md)
- [Deploy Microsoft Defender for Endpoint on Android with Microsoft Intune](android-intune.md)
