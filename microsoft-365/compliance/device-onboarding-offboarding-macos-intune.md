---
title: Onboard and offboard macOS devices into Microsoft 365 Compliance solutions using Microsoft Intune (preview)
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance 
search.appverid:
- MET150 
description: Learn how to onboard and offboard macOS devices into Microsoft 365 Compliance solutions using Microsoft Intune (preview)
---

# Onboard and offboard macOS devices into Microsoft 365 Compliance solutions using Intune (preview)

You can use Intune to onboard macOS devices into Microsoft 365 compliance solutions like Endpoint data loss prevention. Microsoft 365 Endpoint data loss prevention supports MDMs by providing OMA-URIs to create policies to manage devices.

**Applies to:**

- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
<!--- [Insider risk management](insider-risk-management.md#learn-about-insider-risk-management-in-microsoft-365)-->

<!-- DON'T KNOW IF THIS IS NEEDED You can use mobile device management (MDM) solutions to configure devices. Microsoft 365 information protection supports MDMs by providing OMA-URIs to create policies to manage devices.-->

## Before you begin

- Make sure your [macOS devices are onboarded into Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and enrolled in the [Company Portal app](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp) 
- Make sure you have access to the [Microsoft Endpoint Manager center](https://endpoint.microsoft.com/#home)
- This supports macOS version Catalina 10.15 and higher
<!--- Edge browser v93 and higher installed.-->

## Onboard devices into Microsoft 365 Compliance solutions using Microsoft Intune

Onboarding a macOS device into Compliance solutions is a six phase process.

1. [Get the device onboarding package](#get-the-device-onboarding-package)
1. [Create system configuration profiles](#create-system-configuration-profiles)
1. [Enable kernel extension](#enable-kernel-extension)
1. [Enable system extension](#enable-system-extension)
1. [Get the installation package](#get-the-installation-package)
1. [Deploy the Microsoft DLP installation package](#deploy-the-microsoft-dlp-installation-package)

### Get the device onboarding package

1. In **Compliance center** open **Settings** > **Device Onboarding** and choose **Onboarding**.
 
1. For **Select operating system to start onboarding process** choose **macOS**
 
1. For **Deployment method** choose **Mobile Device Management/Microsoft Intune**
 
1. Choose **Download onboarding package**
 
1. Extract the contents of the device onboarding package. In the **Intune** folder you should see these files:
    - accessibility.mobileconfig
    - com.microsoft.autoupdate2.xml
    - com.microsoft.wdav.xml
    - fulldisk.mobileconfig
    - kext.mobileconfig
    - netfilter.mobileconfig
    - notif.mobileconfig
    - sysext.mobileconfig 

### Create system configuration profiles

1. Download all the configuration files from ***HENRY TO PROVIDE LINK AND FILE NAME ASAP***

2. Open the **Microsoft Endpoint Manager center** > **Devices** > **Configuration profiles** 

3. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Custom**

4. Choose **Create**

5. Choose a name for the profile, like *AccessibilityformacOS* in this example. Choose **Next**.

6. Choose the **accessibility.mobileconfig** file that you downloaded in step 1 as the configuration profile file.

7. Choose **Next**

8. On the **Assignments** tab add the group you want to deploy these configurations to and choose **Next**.

9. Review your settings and choose **Create** to deploy the configuration.

10. Repeat steps 2-7 for the:
    1. **fulldisk.mobileconfig** file
    1. **com.microsoft.autoupdate2.xml** file
    1. MDE preferences **com.microsoft.wdav.xml** file
        1. set Antivirus engine `passive mode` = `true` or `false`. Use `true`if deploying DLP only. Use `false` or do not assign a value if deploying DLP and Microsoft Defender for Endpoint (MDE).
    1. **netfilter.mobileconfig**
    1. **notif.mobileconfig**

11. Open **Devices** > **Configuration profiles**, you should see your created profiles there.

12. In the **Configuration profiles** page, choose the profile that you just created, in this example *AccessibilityformacOS* and choose **Device status** to see a list of devices and the deployment status of the configuration profile.

### Enable kernel extension

1.  In the **Microsoft Endpoint Manager center** select **Create Profile** under **Configuration Profiles**

1. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Extensions**

1. Choose **Create**

1. In the **Basics** tab, give this new profile a name.

1. In the **Configuration settings** tab expand **Kernel Extensions**

1. Set the **Team identifier** to **UBF8T346G9**

> [!IMPORTANT]
> Leave **Allow user overrides** set to **Not configured**. 

1. On the **Assignments** tab add the group you want to deploy these configurations to and choose **Next**.

1. Choose **Next** to deploy the configuration.

### Enable system extension

1. In the **Microsoft Endpoint Manager center** select **Create Profile** under **Configuration Profiles**

1. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Extensions**

1. Choose **Create**

1. In the **Basics** tab, give this new profile a name.

1. In the **Configuration settings** tab expand **System Extensions**

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

1. Follow the procedures in [How to add macOS line-of-business (LOB) apps to Microsoft Intune](/mem/intune/apps/lob-apps-macos)] to convert the *wdav.pkg* file into the proper format.

## Offboard macOS devices using Intune

1. In **Microsoft Endpoint Manager center**, open **Devices** > **Configuration profiles**, you should see your created profiles there.

2. In the **Configuration profiles** page, choose the *wdav.pkg.intunemac* profile.

1. Choose **Device status** to see a list of devices and the deployment status of the configuration profile

3. Open **Properties** and **Assignments**

4. Remove the group from the assignment. This will uninstall the *wdav.pkg.intunemac* package and offboard the macOS device from Compliance solutions.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

