---
title: Onboard and offboard macOS devices into Microsoft Purview solutions using Microsoft Intune
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
description: Learn how to onboard and offboard macOS devices into Microsoft Purview solutions using Microsoft Intune
---

# Onboard and offboard macOS devices into Microsoft Purview solutions using Intune #

You can use Microsoft Intune to onboard macOS devices into Microsoft Purview solutions.

> [!IMPORTANT]
> Use this procedure if you ***do not*** have Microsoft Defender for Endpoint (MDE) deployed to your macOS devices

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin ## 

- Make sure your [macOS devices are onboarded into Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and are enrolled in the [Company Portal app](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). 
- Make sure you have access to the [Microsoft Intune admin center](https://endpoint.microsoft.com/#home).
- Create the user groups that you're going to assign the configuration updates to.
- OPTIONAL: Install the v95+ Microsoft Edge browser on your macOS devices to have native Endpoint DLP support on Microsoft Edge.

 
> [!NOTE]
> The three most recent major releases of macOS are supported.

## Onboard macOS devices into Microsoft Purview solutions using Microsoft Intune ##

Onboarding a macOS device into Compliance solutions is a multi-phase process.

1. [Get the device onboarding package](#get-the-device-onboarding-package)
1. [Deploy the mobileconfig and onboarding packages](#deploy-the-mobileconfig-and-onboarding-packages)
1. [Publish the application](#publish-the-application)


### Prerequisites ###

Download the following files:

|File     |Description |
|---------|---------|
[mdatp-nokext.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig) | System mobile config file |
[com.microsoft.wdav.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/com.microsoft.wdav.mobileconfig). | MDE preferences | 

[!INCLUDE [devices-macos-onboarding-tip](../includes/devices-macos-onboarding-tip.md)]

### Get the device onboarding package

:::image type="content" source="../media/device-macos-dnld-onboarding-package-intune-inline.png" alt-text="Screenshot of the Microsoft Intune Configuration settings tab with all fields populated." lightbox="../media/device-macos-dnld-onboarding-package-intune-expanded.png":::

1. In **Microsoft Purview Compliance center** open **Settings** > **Device Onboarding** and then choose **Onboarding**.
 
2. For the **Select operating system to start onboarding process** option, choose **macOS**.
 
3. For **Deployment method**, choose **Mobile Device Management/Microsoft Intune**.
 
4. Choose **Download onboarding package**. 

5. Extract the .ZIP file and open the *Intune* folder. This contains the onboarding code in the *DeviceComplianceOnboarding.xml* file.

### Deploy the mobileconfig and onboarding packages

1. Open the **Microsoft Intune admin center** and navigate to **Devices** > **Configuration profiles**.

1. Choose: **Create profile**.

1. Select the following values:
    1. **Platform** = macOS
    1. **Profile type** = Templates
    1. **Template name** = Custom

1. Choose **Create**.

1. Enter a name for the profile, such as *Microsoft Purview System MobileConfig*, and then Choose **Next**.

1. Choose the `mdatp-nokext.mobileconfig` file that you downloaded in Step 1 as the configuration profile file.

1. Choose **Next**.

1. On the **Assignments** tab, add the group you want to deploy these configurations to and then choose **Next**.

1. Review your settings and then choose **Create** to deploy the configuration.

1. Repeat steps 2-9 to create profiles for the:
    1. **DeviceComplianceOnboarding.xml** file. Name it *Microsoft Purview Device Onboarding Package*
    1. **com.microsoft.wdav.mobileconfig** file. Name it *Microsoft Endpoint Device Preferences*
 
1. Open **Devices** > **Configuration profiles**. The profiles you created now display.

1. In the **Configuration profiles** page, choose the profile that you just created. Next, choose **Device status** to see a list of devices and the deployment status of the configuration profile.

> [!NOTE] 
> For the *upload to cloud service* activity, if you only want to monitor the browser and the URL in the browser address bar, you can enable *DLP_browser_only_cloud_egress* and *DLP_ax_only_cloud_egress*. 
>
> Here is an example [com.microsoft.wdav.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/cloud_egress/com.microsoft.wdav.mobileconfig).


### Publish the application

Microsoft Endpoint data lost protection is installed as a component of Microsoft Defender for Endpoint on macOS. This procedure applies to onboarding devices into Microsoft Purview solutions

1. In the [Microsoft Intune admin center](https://endpoint.microsoft.com/), open **Apps**.

2. Select **By platform** > **macOS** > **Add**.

3. Choose **App type**=**macOS**, and then choose **Select**. Choose **Microsoft Defender for Endpoint**.

4. Keep the default values and then choose **Next**.

5. Add assignments and then choose **Next**.

6. Review your chosen settings and then choose **Create**.

7. You can visit **Apps** \> **By platform** \> **macOS** to see the new application in the list of all applications.

[!INCLUDE [device-macos-check-browser-vs-end-url](../includes/device-macos-check-browser-vs-end-url.md)]

## Offboard macOS devices using Intune ##

> [!NOTE]
> Offboarding causes the device to stop sending sensor data to the portal. However, data from the device, including reference to any alerts it has had, will be retained for up to six months.

1. In the **Microsoft Intune admin center**, open **Devices** > **Configuration profiles**. The profiles you created are listed.

2. On the **Configuration profiles** page, choose the **wdav.pkg.intunemac** profile.

3. Choose **Device status** to see a list of devices and the deployment status of the configuration profile.

4. Open **Properties** and then **Assignments**.

5. Remove the group from the assignment. This will uninstall the *wdav.pkg.intunemac* package and offboard the macOS device from Compliance solutions.

