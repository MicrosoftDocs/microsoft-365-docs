---
title: Onboard and offboard macOS devices into Compliance solutions using Microsoft Intune for Microsoft Defender for Endpoint customers
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 04/04/2023
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
- The three most recently released macOS versions are supported.
- OPTIONAL: Install the v95+ Edge browser on your macOS devices.

## Onboard macOS devices into Microsoft Purview solutions using Microsoft Intune

Use these steps to onboard a macOS device into Compliance solutions if MDE has already been deployed to it.

### Prerequisites

 You'll need to re-deploy these files for this procedure:

|File needed for |Source |
|---------|---------|
|accessibility |[accessibility.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig)|
full disk access     |[fulldisk.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig)|

> [!TIP]
> You can download the *.mobileconfig* files individually or as a [bundled file](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig) that contains both of the files listed in the table above.
>
>If any of the individual files are updated, you must once again download and replace either the specific file that was updated or the bundled files.

### Create system configuration profiles 

<!-- Update this section, map to the general "Intune" doc -->

1. Open the **Microsoft Intune admin center** > **Devices** > **Configuration profiles**.

1. Choose: **Create profile**.

1. Choose:
    1. **Profile type = Templates**
    1. **Template name = Custom**

1. Choose **Create**.


1. Choose a name for the profile, like *AccessibilityformacOS* as in this example. Choose **Next**.

1. Choose the **accessibility.mobileconfig** file (downloaded as part of the prerequisites) as the configuration profile file and choose **Next**

1. On the **Assignments** tab, add the group you want to deploy these configurations to and choose **Next**.

1. Review your settings and then choose **Create** to deploy the configuration.

1. Open **Devices** > **macOS** > **Configuration profiles**. The profiles you created display.

1. on the **Configuration profiles** page, choose the profile that you just created (in this example *AccessibilityformacOS*) and choose **Device status** to see a list of devices and the deployment status of the configuration profile.

### Update existing system configuration profiles

1. A Full Disk Access configuration profile should have been previously created and deployed for MDE.  (For details, see [Intune-based deployment for Microsoft Defender for Endpoint on Mac](/microsoft-365/security/defender-endpoint/mac-install-with-intune#full-disk-access)). Endpoint DLP requires an additional Full Disk Access permission for a new application: `com.microsoft.dlp.daemon`.

- Add the following key to the *fulldisk.mobileconfig* file, then save the file.

```xml
<key>features</key> 
     <dict> 
        <key>dataLossPrevention</key> 
        <string>enabled</string> 
    </dict> 
```

- Update the existing **Full Disk Access** configuration profile with the modified *fulldisk.mobileconfig* file.

Here's an [example mobileconfig file](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/com.microsoft.wdav.mobileconfig).

## Offboard macOS devices using Intune

> [!IMPORTANT]
> Offboarding causes a device to stop sending sensor data to the portal. However, data from the device, including references to any alerts it has had, will be retained for up to 6 months.

1. In the **Microsoft Intune admin center**, open **Devices** > **Configuration profiles**. The profiles you created should display.

2. On the **Configuration profiles** page, choose the **MDE preferences** profile.

3. Remove this settings:
   
```xml
<key>features</key>
<dict>
    <key>dataLossPrevention</key>
    <string>enabled</string>
</dict>
```
4. Choose **Save**.
