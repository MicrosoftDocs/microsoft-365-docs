---
title: Onboard and offboard macOS devices into Compliance solutions using Microsoft Intune for Microsoft Defender for Endpoint customers (preview)
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
- M365-security-compliance 
search.appverid:
- MET150 
description: Learn how to onboard and offboard macOS devices into Microsoft Purview solutions using Microsoft Intune for MDE customers (preview)
---

# Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers (preview)

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

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

### Update configuration profiles

1. Update the existing full disk access profile with the **fulldisk.mobileconfig** file.

1. Update exisiting MDE preferences profile with these values
   
```xml
<key>features</key>
<dict>
    <key>systemExtensions</key>
    <string>enabled</string>
    <key>dataLossPrevention</key>
    <string>enabled</string>
</dict>
```

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
