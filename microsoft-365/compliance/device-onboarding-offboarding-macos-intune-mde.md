---
title: Onboard and offboard macOS devices into Compliance solutions using Microsoft Intune for Microsoft Defender for Endpoint customers
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
description: Learn how to onboard and offboard macOS devices into Microsoft Purview solutions using Microsoft Intune for MDE customers
---

# Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers

> [!IMPORTANT]
> Use this procedure ***if you have*** deployed Microsoft Defender for Endpoint (MDE) to your macOS devices

**Applies to:**

- Customers who have MDE deployed to their macOS devices.
- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)


## Before you begin

- Make sure your [macOS devices are onboarded into Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and enrolled in the [Company Portal app](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). 
- Make sure you have access to the [Microsoft Endpoint Manager center](https://endpoint.microsoft.com/#home)
- This supports macOS version Catalina 10.15 and higher
- Install the v95+ Edge browser on your macOS devices 

## Onboard macOS devices into Microsoft Purview solutions using Microsoft Intune

Use these steps to onboard a macOS device into Compliance solutions if it already has MDE deployed to it.

1. You'll need these files for this procedure.

|file needed for |source |
|---------|---------|
|accessibility |[accessibility.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig)|
full disk access     |[fulldisk.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig)|

> [!TIP]
> You can download the *.mobileconfig* files individually or in [single combined file](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig) that contains:
> - accessibility.mobileconfig
> - fulldisk.mobileconfig
> 
>
>If any of these individual files is updated, you'd need to download the either the combined file again or the single updated file individually.

### Create system configuration profiles

1. Open the **Microsoft Endpoint Manager center** > **Devices** > **Configuration profiles**.

1. Choose: **Create profile**. 

1. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Custom**

1. Choose **Create**

1. Choose a name for the profile, like *AccessibilityformacOS* in this example. Choose **Next**.

1. Choose the **accessibility.mobileconfig** file that you downloaded in step 1 as the configuration profile file.

1. Choose **Next**

1. On the **Assignments** tab add the group you want to deploy these configurations to and choose **Next**.

1. Review your settings and choose **Create** to deploy the configuration.

1. Open **Devices** > **Configuration profiles**, you should see your created profiles there.

1. In the **Configuration profiles** page, choose the profile that you just created, in this example *AccessibilityformacOS* and choose **Device status** to see a list of devices and the deployment status of the configuration profile.

### Update existing system configuration profiles


1. A Full Disk Access configuration profile should have been previously created and deployed for MDE.  See, [Intune-based deployment for Microsoft Defender for Endpoint on Mac](/microsoft-365/security/defender-endpoint/mac-install-with-intune#full-disk-access). Endpoint DLP requires an additional Full Disk Access permission for a new application: `com.microsoft.dlp.daemon`. 
    1. Update the existing Fullfull Disk Access configuration profile with the fulldisk.mobileconfig file. 


1. Find the existing MDE Preferences configuration profile. See, [Set preferences for Microsoft Defender for Endpoint on macOS](/microsoft-365/security/defender-endpoint/mac-preferences#intune-full-profile)
    1. Add a new key to the profile using these values:

```xml
<key>features</key> 
<dict> 
    <key>systemExtensions</key> 
    <string>enabled</string> 
    <key>dataLossPrevention</key> 
    <string>enabled</string> 
</dict> 
``` 

Here's an [example mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/com.microsoft.wdav.mobileconfig)
 
## Offboard macOS devices using Intune

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

1. In **Microsoft Endpoint Manager center**, open **Devices** > **Configuration profiles**, you should see your created profiles there.

2. In the **Configuration profiles** page, choose the MDE preferences profile.

1. Remove these settings:
   
```xml
<key>features</key>
<dict>
    <key>systemExtensions</key>
    <string>enabled</string>
    <key>dataLossPrevention</key>
    <string>enabled</string>
</dict>
```
3. **Save**.
