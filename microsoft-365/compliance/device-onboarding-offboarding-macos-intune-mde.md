---
title: Onboard and offboard macOS devices into Compliance solutions using Microsoft Intune for Microsoft Defender for Endpoint customers
f1.keywords:
    NOCSH
ms.author: v-katykoenen
author: kmkoenen
manager: laurawi
ms.date: 04/24/2023
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- tier1
- purview-compliance 
search.appverid:
- MET150 
description: Learn how to onboard and offboard macOS devices into Microsoft Purview solutions using Microsoft Intune for MDE customers
---

# Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers

You can use Microsoft Intune to onboard macOS devices into Microsoft Purview solutions.

> [!IMPORTANT]
> Use this procedure ***if you have already deployed***  Microsoft Defender for Endpoint (MDE) to your macOS devices.

**Applies to:**

- Customers who have MDE deployed to their macOS devices.
- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)


[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

- Make sure your [macOS devices are onboarded to Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and enrolled in the [Company Portal app](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). 
- Make sure you have access to the [Microsoft Intune admin center](https://endpoint.microsoft.com/#home).
- OPTIONAL: Install the v95+ Microsoft Edge browser on your macOS devices.
 
> [!NOTE]
> The three most recent major releases of macOS are supported.

## Onboard macOS devices into Microsoft Purview solutions using Microsoft Intune

If Microsoft Defender for Endpoints (MDE) has already been deployed to your macOS device, you can still onboard that device into Compliance solutions. Doing so is multi-phase process:

1. [Create system configuration profiles](#create-system-configuration-profiles)
1. [Update existing system configuration profiles](#update-existing-system-configuration-profiles)
1. [Update MDE preferences](#update-mde-preferences)


### Prerequisites

Download the following files:

|File     | Description   |
|---------|---------------|
|[accessibility.mobileconfig](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/accessibility.mobileconfig) |Used for accessibility |
| [fulldisk.mobileconfig](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/fulldisk.mobileconfig)  | Used to grant full disk access (FDA). |

[!INCLUDE [devices-macos-onboarding-tip](../includes/devices-macos-onboarding-tip.md)]

> [!NOTE]
> To download the files:
> 1. Right-click the link and select **Save link as...**. 
> 2. Choose a folder and save the file.

### Create system configuration profiles ###

1. Open the **Microsoft Intune admin center** and navigate to **Devices** > **Configuration profiles**.

2. Choose: **Create profile**.

3. Select the following values:
    1. **Profile type** = Templates
    1. **Template name** = Custom

4. Choose **Create**.

5. Enter a name for the profile, for instance: *Microsoft Purview Accessibility Permission*, and then choose **Next**.

6. Choose the `accessibility.mobileconfig` as the configuration profile file (downloaded as part of the prerequisites) and then choose **Next**.

7. On the **Assignments** tab, add the group you want to deploy this configuration to and then choose **Next**.

8. Review your settings and then choose **Create** to deploy the configuration.

9. Open **Devices** and navigate to **macOS** > **Configuration profiles**. The profiles you created display.

10. On the **Configuration profiles** page, choose the new profile. Next, choose **Device status** to see a list of devices and the deployment status of the configuration profile.

### Update existing system configuration profiles

1. A full disk access (FDA) configuration profile should have been created and deployed previously for MDE. (For details, see [Intune-based deployment for Microsoft Defender for Endpoint on Mac](/microsoft-365/security/defender-endpoint/mac-install-with-intune#full-disk-access)). Endpoint data loss prevention (DLP) *requires additional FDA permission* for the new application (`com.microsoft.dlp.daemon`).
 
2.  Update the existing FDA configuration profile with the downloaded `fulldisk.mobileconfig` file.

### Update MDE preferences

1. Find the existing **MDE Preferences** configuration profile. See [Intune-based deployment for Microsoft Defender for Endpoint on Mac](/security/defender-endpoint/mac-install-with-intune) for details. <br><br>  
2. Add the following key to the .mobileconfig file, then save the file.

```xml
    <key>features</key> 
    <dict> 
        <key>dataLossPrevention</key> 
        <string>enabled</string> 
    </dict> 
```

[!INCLUDE [device-macos-check-browser-vs-end-url](../includes/device-macos-check-browser-vs-end-url.md)]

## Offboard macOS devices using Microsoft Intune

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal. However, data received from the device, including references to any alerts it has had, will be retained for up to six months.

1. In the **Microsoft Intune admin center**, open **Devices** > **Configuration profiles**. The profiles you created display.

2. On the **Configuration profiles** page, choose the **MDE preferences** profile.

3. Remove these settings:
   
```xml
    <key>features</key>
    <dict>
        <key>dataLossPrevention</key>
        <string>enabled</string>
    </dict>
```

4. Choose **Save**.
