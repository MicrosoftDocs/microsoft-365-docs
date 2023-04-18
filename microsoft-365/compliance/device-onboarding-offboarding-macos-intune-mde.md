---
title: Onboard and offboard macOS devices into Compliance solutions using Microsoft Intune for Microsoft Defender for Endpoint customers
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
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

> [!IMPORTANT]
> Use this procedure ***if you have already deployed***  Microsoft Defender for Endpoint (MDE) to your macOS devices.

**Applies to:**

- Customers who have MDE deployed to their macOS devices.
- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)


[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

- Make sure your [macOS devices are onboarded to Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and enrolled in the [Company Portal app](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). 
- Make sure you have access to the [Microsoft Intune admin center](https://endpoint.microsoft.com/#home)
- The three most recent major releases of macOS are supported.
- OPTIONAL: Install the v95+ Microsoft Edge browser on your macOS devices.

## Onboard macOS devices into Microsoft Purview solutions using Microsoft Intune

If Microsoft Defender for Endpoints (MDE) has already been deployed to your macOS device, you can still onboard that device into Compliance solutions. Doing so is a two-phase process:

1. [Create system configuration profiles](#create-system-configuration-profiles)
1. [Update existing system configuration profiles](#update-existing-system-configuration-profiles)


### Prerequisites

 Redeploy the following files:

|File     | Link / Description    |
|---------|---------|
|[accessibility.mobileconfig](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/accessibility.mobileconfig) |Used for accessibility|
| [fulldisk.mobileconfig](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/fulldisk.mobileconfig)  | Used to grant full disk access (FDA).|

[!INCLUDE [devices-macos-onboarding-tip](../includes/devices-macos-onboarding-tip.md)]

### Create system configuration profiles 

1. Open the **Microsoft Intune admin center** and navigate to **Devices** > **Configuration profiles**.

2. Choose: **Create profile**.

3. Choose:
    1. **Profile type = Templates**
    1. **Template name = Custom**

4. Choose **Create**.

5. Choose a name for the profile, like *Microsoft Purview Accessibility Permission*. and then choose **Next**.

6. Choose the `accessibility.mobileconfig` file (downloaded as part of the prerequisites) as the configuration profile file and then choose **Next**

7. On the **Assignments** tab, add the group you want to deploy this configuration to and choose **Next**.

8. Review your settings and then choose **Create** to deploy the configuration.

9. Open **Devices** and navigate to **macOS** > **Configuration profiles**. The profiles you created display.

10. On the **Configuration profiles** page, choose your new profile (in this example *Microsoft Purview Accessibility Permission*). Next, choose **Device status** to see a list of devices and the deployment status of the configuration profile.

### Update existing system configuration profiles

1. An FDA configuration profile should have been created and deployed previously for MDE. (For details, see [Intune-based deployment for Microsoft Defender for Endpoint on Mac](/microsoft-365/security/defender-endpoint/mac-install-with-intune#full-disk-access)). Endpoint DLP requires additional FDA permission for a new application: `com.microsoft.dlp.daemon`. <br><br> Update the existing **Full Disk Access** configuration profile with the modified `fulldisk.mobileconfig` file.

2. Find the existing MDE Preferences configuration profile. See [Intune-based deployment for Microsoft Defender for Endpoint on Mac](/security/defender-endpoint/mac-install-with-intune) for details. <br><br> Add the following key to the `fulldisk.mobileconfig` file, then save the file.

        ```xml
        <key>features</key> 
             <dict> 
                <key>dataLossPrevention</key> 
                <string>enabled</string> 
            </dict> 
        ```

Here's an [example mobileconfig file](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/settings/data_loss_prevention/com.microsoft.wdav.mobileconfig).

## Offboard macOS devices using Intune

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal. However, data received from the device, including reference to any alerts it had,will be retained for up to six months.

1. In the **Microsoft Intune admin center**, open **Devices** > **Configuration profiles**. The profiles you created should display.

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
