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
- M365-security-compliance 
search.appverid:
- MET150 
description: Learn how to onboard and offboard macOS devices into Microsoft Purview solutions using Microsoft Intune
---

# Onboard and offboard macOS devices into Microsoft Purview solutions using Intune

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

You can use Intune to onboard macOS devices into Microsoft Purview solutions.

> [!IMPORTANT]
> Use this procedure if you ***do not*** have Microsoft Defender for Endpoint (MDE) deployed to your macOS devices

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

## Before you begin

- Make sure your [macOS devices are onboarded into Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and are enrolled in the [Company Portal app](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). To check whether the macOS device is correctly configured, open **Terminal** and run `sudo /Library/Application\ Support/Microsoft/DLP/com.microsoft.dlp.daemon.app/Contents/Resources/Tools/dlp_diagnostic.py --upn-info`, one of the highlight variables should be not emtpy:
![image](https://user-images.githubusercontent.com/81826151/167690854-bf191eef-fd18-493b-b00a-94fc24884fc7.png)

    
    
- Make sure you have access to the [Microsoft Endpoint Manager center](https://endpoint.microsoft.com/#home).
- This supports macOS version Catalina 10.15 and higher.
- Create the user groups that you are going to assign the configuration updates to.
- Install the v95+ Edge browser on your macOS devices 


## Onboard macOS devices into Microsoft Purview solutions using Microsoft Intune

Onboarding a macOS device into Compliance solutions is a six phase process.

1. [Create system configuration profiles](#create-system-configuration-profiles)
1. [Get the device onboarding package](#get-the-device-onboarding-package)
1. [Deploy the onboarding package](#deploy-the-onboarding-package)
1. [Enable system extension](#enable-system-extension)
1. [Get the installation package](#get-the-installation-package)
1. [Deploy the installation package](#deploy-the-microsoft-dlp-installation-package)

### Create system configuration profiles

1. You'll need these files for this procedure.

|file needed for |source |
|---------|---------|
|Onboarding package    |downloaded from the compliance portal **Onboarding package**, file name *DeviceComplianceOnboarding.xml* |
|accessibility |[accessibility.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig)|
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
>If any of these individual files is updated, you'd need to download the either the combined file again or the single updated file individually.

<!--2. Copy this code and save it in a file named `com.microsoft.autoupdate2.xml`.

```xml
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1">
    <dict>
        <key>PayloadUUID</key>
        <string>B762FF60-6ACB-4A72-9E72-459D00C936F3</string>
        <key>PayloadType</key>
        <string>Configuration</string>
        <key>PayloadOrganization</key>
        <string>Microsoft</string>
        <key>PayloadIdentifier</key>
        <string>com.microsoft.autoupdate2</string>
        <key>PayloadDisplayName</key>
        <string>Microsoft AutoUpdate settings</string>
        <key>PayloadDescription</key>
        <string>Microsoft AutoUpdate configuration settings</string>
        <key>PayloadVersion</key>
        <integer>1</integer>
        <key>PayloadEnabled</key>
        <true/>
        <key>PayloadRemovalDisallowed</key>
        <true/>
        <key>PayloadScope</key>
        <string>System</string>
        <key>PayloadContent</key>
        <array>
            <dict>
            <key>PayloadUUID</key>
            <string>5A6F350A-CC2C-440B-A074-68E3F34EBAE9</string>
            <key>PayloadType</key>
            <string>com.microsoft.autoupdate2</string>
            <key>PayloadOrganization</key>
            <string>Microsoft</string>
            <key>PayloadIdentifier</key>
            <string>com.microsoft.autoupdate2</string>
            <key>PayloadDisplayName</key>
            <string>Microsoft AutoUpdate configuration settings</string>
            <key>PayloadDescription</key>
            <string/>
            <key>PayloadVersion</key>
            <integer>1</integer>
            <key>PayloadEnabled</key>
            <true/>
            <key>ChannelName</key>
            <string>Production</string>
            <key>HowToCheck</key>
            <string>AutomaticDownload</string>
            <key>EnableCheckForUpdatesButton</key>
            <true/>
            <key>DisableInsiderCheckbox</key>
            <false/>
            <key>SendAllTelemetryEnabled</key>
            <true/>
            </dict>
        </array>
    </dict>
</plist>
```
-->

2. Open the **Microsoft Endpoint Manager center** > **Devices** > **Configuration profiles**.

1. Choose: **Create profile** 

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

1. Repeat steps 3-11 to create profiles for the:
    1. **fulldisk.mobileconfig** file
    1. **com.microsoft.autoupdate2.xml** file
    1. MDE preferences **com.microsoft.wdav.xml** file
        1. set Antivirus engine `passive mode` = `true` or `false`. Use `true`if deploying DLP only. Use `false` or do not assign a value if deploying DLP and Microsoft Defender for Endpoint (MDE).
    1. **netfilter.mobileconfig**
 
1. Open **Devices** > **Configuration profiles**, you should see your created profiles there.

1. In the **Configuration profiles** page, choose the profile that you just created, in this example *AccessibilityformacOS* and choose **Device status** to see a list of devices and the deployment status of the configuration profile.

### Get the device onboarding package

1. In **Compliance center** open **Settings** > **Device Onboarding** and choose **Onboarding**.
 
1. For **Select operating system to start onboarding process** choose **macOS**.
 
1. For **Deployment method** choose **Mobile Device Management/Microsoft Intune**.
 
1. Choose **Download onboarding package**. This contains the onboarding code in the *DeviceComplianceOnboarding.xml* file.

### Deploy the onboarding package

1. Open the **Microsoft Endpoint Manager center** > **Devices** > **Configuration profiles**.

1. Choose: **Create profile**. 

1. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Custom**

1. Choose **Create**

1. Choose a name for the profile, like *OnboardingPackage* in this example. Choose **Next**.

1. Choose the *DeviceComplianceOnboarding.xml* file as the configuration profile file.

1. Choose **Next**

1. On the **Assignments** tab add the group you want to deploy these configurations to and choose **Next**.

1. Review your settings and choose **Create** to deploy the configuration.

### Enable system extension

1. In the **Microsoft Endpoint Manager center** select **Create Profile** under **Configuration Profiles**

1. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Extensions**

1. Choose **Create**

1. In the **Basics** tab, give this new profile a name.

1. In the **Configuration settings** tab expand **System Extensions**.

1. Under **Bundle identifier** and **Team identifier**, set these values

|Bundle identifier  |Team identifier  |
|---------|---------|
|**com.microsoft.wdav.epsext**|**UBF8T346G9**|
|**com.microsoft.wdav.netext**|**UBF8T346G9**|


1. On the **Assignments** tab add the group you want to deploy these configurations to and choose **Next**.

1. Choose **Next** to deploy the configuration.

### Get the installation package

1. In **Compliance center** open **Settings** > **Device Onboarding** and choose **Onboarding**.
 
1. For **Select operating system to start onboarding process** choose **macOS**
 
1. For **Deployment method** choose **Mobile Device Management/Microsoft Intune**
 
1. Choose **Download installation package**. This will give you the *wdav.pkg* file.

> [!IMPORTANT]
> Before you can deploy the *wdav.pkg.* package via Intune, it must be reformatted using the *Intune App Wrapping Tools for Mac* into the *wdav.pkg.intunemac* format.
 

### Deploy the Microsoft DLP installation package

1. Follow the procedures in [How to add macOS line-of-business (LOB) apps to Microsoft Intune](/mem/intune/apps/lob-apps-macos) to convert the *wdav.pkg* file into the proper format and deploy it through Intune.

## Offboard macOS devices using Intune

> [!NOTE]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to six months.

2. In **Microsoft Endpoint Manager center**, open **Devices** > **Configuration profiles**, you should see your created profiles there.

1. In the **Configuration profiles** page, choose the *wdav.pkg.intunemac* profile.

1. Choose **Device status** to see a list of devices and the deployment status of the configuration profile

1. Open **Properties** and **Assignments**

1. Remove the group from the assignment. This will uninstall the *wdav.pkg.intunemac* package and offboard the macOS device from Compliance solutions.
