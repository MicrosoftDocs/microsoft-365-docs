---
title: Onboard and offboard macOS devices into Microsoft Purview solutions using Microsoft Intune
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
description: Learn how to onboard and offboard macOS devices into Microsoft Purview solutions using Microsoft Intune
---

# Onboard and offboard macOS devices into Microsoft Purview solutions using Intune

You can use Intune to onboard macOS devices into Microsoft Purview solutions.

> [!IMPORTANT]
> Use this procedure if you ***do not*** have Microsoft Defender for Endpoint (MDE) deployed to your macOS devices.

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

- Make sure your [macOS devices are onboarded into Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and are enrolled in the [Company Portal app](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp).
- Make sure you have access to the [Microsoft Intune admin center](https://endpoint.microsoft.com/#home).
- The three most recent major releases of macOS are supported.
- Create the user groups that you're going to assign the configuration updates to.
- OPTIONAL: Install the v95+ Microsoft Edge browser on your macOS devices to have native Endpoint DLP support on Microsoft Edge.

## Onboard macOS devices into Microsoft Purview solutions using Microsoft Intune

Onboarding a macOS device into Microsoft Purview solutions is a multi-phase process:

1. [Get the device onboarding package](#get-the-device-onboarding-package).
2. [Deploy the mobileconfig and onboarding packages](#deploy-the-mobileconfig-and-onboarding-packages).
3. [Publish the application](#publish-application).


### Prerequisites

Download the following files:

|File     | Description  |
|---------|--------------|
|[mdatp-nokext.mobileconfig](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig) | This is the system mobile config file. <br><br> 1. Right-click the link and select **Save link as...**. <br> 2. Chose a folder and save the file.|
|[com.microsoft.wdav.mobileconfig](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/settings/data_loss_prevention/com.microsoft.wdav.mobileconfig) | This is the MDE preferences file.<br><br> 1. Right-click the link and select **Save link as...**. <br> 2. Chose a folder and save the file.|

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

[!INCLUDE [devices-macos-onboarding-tip](../includes/devices-macos-onboarding-tip.md)]

### Get the device onboarding package

:::image type="content" source="../media/device-macos-dnld-onboarding-package-inline.png" alt-text="Screenshot of the Microsoft Intune Configuration settings tab with all fields populated." lightbox="../media/device-macos-dnld-onboarding-package-expanded.png":::

1. In the Microsoft Purview compliance portal, navigate to **Settings** > ** Device Onboarding**  and then choose **Onboarding**.
 
2. For **Select operating system to start onboarding process** choose **macOS**.
 
3. For **Deployment method** choose **Mobile Device Management/Microsoft Intune**.
 
4. Choose **Download onboarding package**.

5. Extract the ZIP file and open the *Intune* folder. This contains the onboarding code in the `DeviceComplianceOnboarding.xml` file.

### Deploy the mobileconfig and onboarding packages

1. Open the **Microsoft Intune admin center** and navigate to **Devices** > **macOS** > **Configuration profiles**.

2. Choose: **Create profile**

3. Choose:
    1. **Profile type = Templates**
    1. **Template name = Custom**

4. Choose **Create**

5. On the **Basics** tab, enter a name for the profile, like *Microsoft Purview System Configuration*, and then choose **Next**.

6. On the **Configuration profile** tab,
    1. Enter a display name for the custom configuration profile.
    1. Specify the **Deployment channel**.
    1. Upload the `mdatp-nokext.mobileconfig` file that you previously downloaded.
    1. Choose **Next**.
    :::image type="content" source="../media/device-macos-custom-intune-config-settings-inline.png" alt-text="Screenshot of the Intune Configuration settings tab." lightbox="../media/device-macos-custom-intune-config-settings-expanded.png":::

7. On the **Assignments** tab, add the group(s) you want to deploy these configurations to and choose **Next**. For information about policy assignments in Microsoft Intune, see [Assign policies in Microsoft Intune](https://learn.microsoft.com/mem/intune/configuration/device-profile-assign) and [Exclude groups from a policy assignment](https://learn.microsoft.com/mem/intune/configuration/device-profile-assign#exclude-groups-from-a-policy-assignment).

8. On the **Review and create** tab, review your settings and then choose **Create** to deploy the configuration.

9. Repeat steps 2-8 to create profiles for the following files:
    1. `DeviceComplianceOnboarding.xml`: name it *Microsoft Purview Device Onboarding Package*
    1. `com.microsoft.wdav.mobileconfig`: name it *Endpoint Device Preferences*

10. Open the **Devices** > **macOS** > **Configuration profiles** tab. Your newly created profiles display.

11. On the **Configuration profiles** page, choose the profile that you created. Next, choose **Device status** to see a list of devices and the deployment status of the configuration profile for each.

### Publish application

Microsoft Endpoint DLP is installed as a component of Microsoft Defender for Endpoint (MDE) on macOS. This procedure applies to onboarding devices into Microsoft Purview solutions.

1. In the [Microsoft Intune admin center](https://endpoint.microsoft.com/), open **Apps**.

2. Navigate to **Select By platform** > **macOS** > **Add**.

2. For **App type**, choose **Microsoft Defender for Endpoint (macOS)** from the list and then choose **Select**.

4. Add assignments as needed for your organization and then choose **Next**.

5. Review your choices and then choose **Create**.

6. To verify that MDE is now available, visit **Apps** \> **By platform** \> **macOS**.

## Offboard macOS devices using Intune

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal. However, data received from the device, including reference to any alerts it had,will be retained for up to six months.

1. In the **Microsoft Intune admin center**, open **Devices** > **Configuration profiles**, you should see your created profiles there.

2. On the **Configuration profiles** page, choose the `*`wdav.pkg.intunemac`*` profile.

3. Choose **Device status** to see a list of devices and the deployment status of the configuration profile.

4. Open **Properties** and **Assignments**.

5. Remove the group from the assignment. This uninstalls the `wdav.pkg.intunemac`*` package and offboard the macOS device from Compliance solutions.
