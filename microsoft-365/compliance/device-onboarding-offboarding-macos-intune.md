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

# Onboard and offboard macOS devices into Microsoft Purview solutions using Intune #

You can use Microsoft Intune to onboard macOS devices into Microsoft Purview solutions.

> [!IMPORTANT]
> Use this procedure if you ***do not*** have Microsoft Defender for Endpoint (MDE) deployed to your macOS devices

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin ## 

- Make sure your [macOS devices are onboarded into Intune](https://learn.microsoft.co/mem/intune/fundamentals/deployment-guide-platform-macos) and are enrolled in the [Company Portal app](https://learn.microsoft.co/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). 
- Make sure you have access to the [Microsoft Intune admin center](https://endpoint.microsoft.com/#home).
- Create the user groups that you are going to assign the configuration updates to.
- OPTIONAL: Install the v95+ Edge browser on your macOS devices to have native Endpoint DLP support on Edge.
 
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

> [!NOTE]
> To download the files:
> 1. Right-click the link and select **Save link as...**. 
> 2. Choose a folder and save the file.


### Get the device onboarding package

1. In **Microsoft Purview Compliance center** open **Settings** > **Device Onboarding** and then choose **Onboarding**.
 
1. For the **Select operating system to start onboarding process** option, choose **macOS**.
 
1. For **Deployment method**, choose **Mobile Device Management/Microsoft Intune**.
 
1. Choose **Download onboarding package**. 

1. Extract the .ZIP file and open the *Intune* folder. This contains the onboarding code in the *DeviceComplianceOnboarding.xml* file.



### Deploy the mobileconfig and onboarding packages

1. Open the **Microsoft Intune admin center** > **Devices** > **Configuration profiles**.

1. Choose: **Create profile**.

1. Select the following values:
    1. **Platform** = macOS
    1. **Profile type** = Templates
    1. **Template name** = Custom

1. Choose **Create**. 

1. Choose a name for the profile, such as *Microsoft Purview System MobileConfig*, and then Choose **Next**.

1. Choose the `mdatp-nokext.mobileconfig` file that you downloaded in step 1 as the configuration profile file.

1. Choose **Next**.

1. On the **Assignments** tab, add the group you want to deploy these configurations to and then choose **Next**.

1. Review your settings and choose **Create** to deploy the configuration.

1. Repeat steps 2-9 to create profiles for the:
    1. **DeviceComplianceOnboarding.xml** file. Name it *Microsoft Purview Device Onboarding Package*
    1. **com.microsoft.wdav.mobileconfig** file. Name it *Microsoft Endpoint Device Preferences*
 
1. Open **Devices** > **Configuration profiles**, you should see your created profiles there.

1. In the **Configuration profiles** page, choose the profile that you just created. Next, choose **Device status** to see a list of devices and the deployment status of the configuration profile.

### Publish the application

Microsoft Endpoint data lost protection (DLP) is installed as a component of Microsoft Defender for Endpoint (MDE) on macOS. This procedure applies to onboarding devices into Microsoft Purview solutions

1. In the [Microsoft Intune admin center](https://endpoint.microsoft.com/), open **Apps**.

1. Select **By platform** > **macOS** > **Add**.

1. Choose **App type**=**macOS**, and then choose **Select**.

1. Keep default values and then choose **Next**.

1. Add assignments and then choose **Next**.

1. Review and then choose **Create**.

1. You can visit **Apps** \> **By platform** \> **macOS** to see the new application in the list of all applications.

## Offboard macOS devices using Intune ##

> [!NOTE]
> Offboarding causes the device to stop sending sensor data to the portal. However, data from the device, including reference to any alerts it has had, will be retained for up to six months.

1. In the **Microsoft Intune admin center**, open **Devices** > **Configuration profiles**. The profiles you created are listed.

2. On the **Configuration profiles** page, choose the **wdav.pkg.intunemac** profile.

3. Choose **Device status** to see a list of devices and the deployment status of the configuration profile.

4. Open **Properties** and then **Assignments**.

5. Remove the group from the assignment. This will uninstall the *wdav.pkg.intunemac* package and offboard the macOS device from Compliance solutions.
