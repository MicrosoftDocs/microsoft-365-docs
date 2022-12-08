---
title: Onboard and offboard macOS devices into Microsoft Purview solutions using Microsoft Intune
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
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
> Use this procedure if you ***do not*** have Microsoft Defender for Endpoint (MDE) deployed to your macOS devices

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

- Make sure your [macOS devices are onboarded into Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and are enrolled in the [Company Portal app](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). 
- Make sure you have access to the [Microsoft Endpoint Manager center](https://endpoint.microsoft.com/#home).
- This supports three most recent major releases of macOS.
- Create the user groups that you are going to assign the configuration updates to.
- Install the v95+ Edge browser on your macOS devices 


## Onboard macOS devices into Microsoft Purview solutions using Microsoft Intune

Onboarding a macOS device into Compliance solutions is a multi-phase process.

1. [Create system configuration profiles](#create-system-configuration-profiles)
1. [Get the device onboarding package](#get-the-device-onboarding-package)
1. [Deploy the mobileconfig and onboarding packages](#deploy-the-mobileconfig-and-onboarding-packages)
1. [Publish application](#publish-application)
<!--1. [Enable system extension](#enable-system-extension)-->


### Create system configuration profiles

1. You'll need these files for this procedure. 

|file needed for |source |
|---------|---------|
System mobile config file | [mdatp-nokext.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig) Copy and paste the contents into a text file. Save the file with the **mobileconfig** extension only, it will not be recognized if it has the .txt extension.|
MDE preferences| [com.microsoft.wdav.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/com.microsoft.wdav.mobileconfig). Copy and paste the contents into a text file. Save the file with the **mobileconfig** extension only, it will not be recognized if it has the .txt extension.

### Get the device onboarding package

1. In **Microsoft Purview Compliance center** open **Settings** > **Device Onboarding** and choose **Onboarding**.
 
1. For **Select operating system to start onboarding process** choose **macOS**.
 
1. For **Deployment method** choose **Mobile Device Management/Microsoft Intune**.
 
1. Choose **Download onboarding package**. 

1. Extract the zip file and open the *Intune* folder. This contains the onboarding code in the *DeviceComplianceOnboarding.xml* file.

<!--|accessibility |[accessibility.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig)|
full disk access     |[fulldisk.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig)|
|Network filer| [netfilter.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/netfilter.mobileconfig)]
|System extensions |[sysext.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/sysext.mobileconfig)
|MDE preference     |[com.microsoft.wdav.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/com.microsoft.wdav.mobileconfig)|
|MAU preference|[com.microsoft.autoupdate2.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/microsoft_auto_update/com.microsoft.autoupdate2.mobileconfig)|
|Installation package     |downloaded from the compliance portal **Installation package**, file name *\*wdav.pkg*\* |

> [!TIP]
> You can download the *.mobileconfig* files individually or in [single combined file](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig) that contains:
> - accessibility.mobileconfig
> - fulldisk.mobileconfig
> - netfilter.mobileconfig
> - system extensions
>
>If any of these individual files is updated, you'd need to download the either the combined file again or the single updated file individually.-->

### Deploy the mobileconfig and onboarding packages

1. Open the **Microsoft Endpoint Manager center** > **Devices** > **Configuration profiles**.

1. Choose: **Create profile** 

1. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Custom**

1. Choose **Create**

1. Choose a name for the profile, like *SystemMobileConfig* in this example. Choose **Next**.

1. Choose the **mdatp-nokext.mobileconfig** file that you copied and saved in step 1 as the configuration profile file.

1. Choose **Next**

1. On the **Assignments** tab add the group you want to deploy these configurations to and choose **Next**.

1. Review your settings and choose **Create** to deploy the configuration.

1. Repeat steps 2-9 to create profiles for the:
    1. **DeviceComplianceOnboarding.xml** file. Name it *Purview Device Onboarding Package*
    1. **com.microsoft.wdav.mobileconfig** file. Name it *Endpoint Device Preferences*
 
1. Open **Devices** > **Configuration profiles**, you should see your created profiles there.

1. In the **Configuration profiles** page, choose the profile that you just created, for example *SystemMobileConfig* and choose **Device status** to see a list of devices and the deployment status of the configuration profile.

### Publish application

Microsoft Endpoint DLP is installed as a component of Microsoft Defender for Endpoint (MDE) on macOS. This procedure applies to onboarding devices into Microsoft Purview solutions

1. In the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/), open **Apps**.

1. Select By platform > macOS > Add.

1. Choose **App type**=**macOS**, click **Select**.

1. Keep default values, click **Next**.

1. Add assignments, click **Next**.

1. Review and **Create**.

1. You can visit **Apps** \> **By platform** \> **macOS** to see it on the list of all applications.

<!--## Offboard macOS devices using Intune PINGING PG FOR THIS PROCEDURE

> [!NOTE]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to six months.

1. In **Microsoft Endpoint Manager center**, open **Devices** > **Configuration profiles**, you should see your created profiles there.

1. In the **Configuration profiles** page, choose the *wdav.pkg.intunemac* profile.

1. Choose **Device status** to see a list of devices and the deployment status of the configuration profile

1. Open **Properties** and **Assignments**

1. Remove the group from the assignment. This will uninstall the *wdav.pkg.intunemac* package and offboard the macOS device from Compliance solutions.-->
