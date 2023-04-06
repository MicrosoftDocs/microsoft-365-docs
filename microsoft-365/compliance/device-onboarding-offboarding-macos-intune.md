---
title: Onboard and offboard macOS devices into Microsoft Purview solutions using Microsoft Intune
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 03/29/2023
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
- Create the user groups that you are going to assign the configuration updates to.
- OPTIONAL: Install the v95+ Edge browser on your macOS devices to have native Endpoint DLP support on Edge.

## Onboard macOS devices into Microsoft Purview solutions using Microsoft Intune

Onboarding a macOS device into Compliance solutions is a multi-phase process.

1. [Create system configuration profiles](#create-system-configuration-profiles).
1. [Get the device onboarding package](#get-the-device-onboarding-package).
1. [Deploy the mobileconfig and onboarding packages](#deploy-the-mobileconfig-and-onboarding-packages).
1. [Publish the application](#publish-application).


### Create system configuration profiles

#### Prerequisites

Download the following files these files to complete this phase of the procedure:

|File needed for |Source |
|---------|---------|
System mobile config file | [mdatp-nokext.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig) Copy and paste the contents into a text file. Change the file extension from ".txt". to "**.mobileconfig**" and save the file. The file won't be recognized if it has the .txt extension.|
MDE preferences| [com.microsoft.wdav.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/com.microsoft.wdav.mobileconfig). Copy and paste the contents into a text file. Change the file extension from ".txt". to "**.mobileconfig**" and save the file. The file won't be recognized if it has the .txt extension.|

### Get the device onboarding package

:::image type="content" source="../media/device-macos-dnld-onboarding-package-inline.png" alt-text="Screenshot of the Microsoft Intune Configuration settings tab with all fields populated." lightbox="../media/device-macos-dnld-onboarding-package-expanded.png":::

1. In the **Microsoft Purview compliance center** open **Settings** > **Device Onboarding** and choose **Onboarding**.
 
2. For **Select operating system to start onboarding process** choose **macOS**.
 
3. For **Deployment method** choose **Mobile Device Management/Microsoft Intune**.
 
4. Choose **Download onboarding package**.

5. Extract the zip file and open the *Intune* folder. This contains the onboarding code in the *DeviceComplianceOnboarding.xml* file.

> [!TIP]
> We recommend downloading the *.mobileconfig* files in a [single bundle](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig). This bundle contains the following files:
>
> - accessibility.mobileconfig
> - fulldisk.mobileconfig
> - netfilter.mobileconfig
> - system extensions
>
> If any of these files is updated, you need to download the updated bundle.

<br>

Alternatively, you can download the files individually. If a file is later updated, you need to re-download specific, updated, file individually.

### Deploy the mobileconfig and onboarding packages

1. Open the **Microsoft Intune admin center** > **Devices** > **macOS** > **Configuration profiles**.

1. Choose: **Create profile**

1. Choose:
    1. **Profile type = Templates**
    1. **Template name = Custom**

1. Choose **Create**

1. On the **Basics** tab, enter a name for the profile, like *SystemMobileConfig* in this example and then choose **Next**.

1. On the **Configuration profile** tab,
    1. Enter a display name for the custom configuration profile.
    1. Specify the **Deployment channel**.
    1. Upload the **mdatp-nokext.mobileconfig** file that you previously downloaded.
    1. Choose **Next**.
    :::image type="content" source="../media/custom-intune-config-settings-inline.png" alt-text="Screenshot of the Intune Configuration settings tab." lightbox="../media/custom-intune-config-settings-expanded.png":::


1. On the **Assignments** tab, add the group(s) you want to deploy these configurations to and choose **Next**. For information about policy assignments in Microsoft Intune, see [Assign policies in Microsoft Intune](https://learn.microsoft.com/mem/intune/configuration/device-profile-assign) and [Exclude groups from a policy assignment](https://learn.microsoft.com/mem/intune/configuration/device-profile-assign#exclude-groups-from-a-policy-assignment).

1. On the **Review and create** tab, review your settings and then choose **Create** to deploy the configuration.

1. Repeat steps 2-9 to create profiles for the following files:
    1. **DeviceComplianceOnboarding.xml**: name it *Microsoft Purview Device Onboarding Package*
    1. **com.microsoft.wdav.mobileconfig**: name it *Endpoint Device Preferences*
 
1. Open the **Devices** > **macOS** > **Configuration profiles** tab. Your newly created profiles display.

1. In the **Configuration profiles** page, choose the profile that you just created, for example *SystemMobileConfig* and choose **Device status** to see a list of devices and the deployment status of the configuration profile.

### Publish application

Microsoft Endpoint DLP is installed as a component of Microsoft Defender for Endpoint (MDE) on macOS. This procedure applies to onboarding devices into Microsoft Purview solutions

1. In the [Microsoft Intune admin center](https://endpoint.microsoft.com/), open **Apps**.

1. **Select By platform** > **macOS** > **Add**.

1. For **App type**, choose **Microsoft Defender for Endpoint (macOS)** from the list and then choose **Select**.

1. Add assignments as needed for your organization and then choose **Next**.

1. Review and choose **Create**.

1. To verify that Microsoft Defender for Endpoints is now available, visit **Apps** \> **By platform** \> **macOS** to see it on the list of all applications.

<!--## Offboard macOS devices using Intune PINGING PG FOR THIS PROCEDURE

> [!NOTE]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to six months.

1. In the **Microsoft Intune admin center**, open **Devices** > **Configuration profiles**, you should see your created profiles there.

1. In the **Configuration profiles** page, choose the *wdav.pkg.intunemac* profile.

1. Choose **Device status** to see a list of devices and the deployment status of the configuration profile

1. Open **Properties** and **Assignments**

1. Remove the group from the assignment. This will uninstall the *wdav.pkg.intunemac* package and offboard the macOS device from Compliance solutions.-->
