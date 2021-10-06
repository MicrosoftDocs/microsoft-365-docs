---
title: Onboard macOS devices into Microsoft 365 Compliance solutions using Microsoft Intune
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
description: Onboard macOS devices into Microsoft 365 Compliance solutions using Microsoft Intune
---

# Onboard macOS devices into Microsoft 365 Compliance solutions using Intune

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

Onboarding a macOS device into Compliance solutions is a five phase process.

1. [Get the device onboarding package](#get-the-device-onboarding-package)
1. [Create system configuration profiles](#create-system-configuration-profiles)
1. [Enable kernel extension](#enable-kernel-extension)
1. [Enable system extension](#enable-system-extension)
1. [Deploy the Microsoft DLP enforcement package](#deploy-the-microsoft-dlp-enforcement-package)

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

5. Choose a name for the profile, like *Endpoint DLP for macOS*. Choose **Next**.

6. Choose the **accessibilty.mobileconfig** file that you downloaded in step 1 as the configuration profile file.

7. Choose **Next**

8. CHOOSE GROUP HERE Assign your **Intune** managed macOS devices on the **Assignments** tab and choose **Next**.

9. Review your setting and choose **Create**. this equals deploy

1. Repeat steps 2-7 for the:
    1. **fulldisk.mobileconfig** file
    1. **com.microsoft.autoupdate2.xml** file
    1. MDE preferences **com.microsoft.wdav.xml** file
        1. set Antivirus engine `passive mode` = `true` or `false`. GET HENRY TO EXPLAIN THIS IT MAKES NO SENSE
    1. **netfilter.mobileconfig**
    1. **notif.mobileconfig**

10. Open **Devices** > **Configuration profiles**, you should see your created profiles there.

go into th e MEM UI and check the status HENRY, THEN WHAT, HOW DO CUSTOMERS DEPLOY

### Enable kernel extension

1.  In the **Microsoft Endpoint Manager center** select **Create Profile** under **Configuration Profiles**

1. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Extensions**

1. Choose **Create**

1. In the **Basics** tab, give this new profile a name.

1. In the **Configuration settings** tab expand **Kernel Extensions**

1. Set the **Team identifier** = **UBF8T346G9**
1. assign to group

1. done/create/next

### Enable system extension

1.  In the **Microsoft Endpoint Manager center** select **Create Profile** under **Configuration Profiles**

1. Choose:
    1. **Platform = macOS**
    1. **Profile type = Templates**
    1. **Template name = Extensions**

1. Choose **Create**

1. In the **Basics** tab, give this new profile a name.

1. In the **Configuration settings** tab expand **System Extensions**
    1. set **com.microsoft.wdav.epsext** = **UBF8T346G9**
    1. set **com.microsoft.wdav.netext** = **UBF8T346G9**


1. assign to group

1. done/create/next

### Deploy the Microsoft DLP installation package

Follow the instructions from [Intune](/intune/advanced-threat-protection).

> [!NOTE]
> - The **Health Status for onboarded devices** policy uses read-only properties and can't be remediated.

## Offboard and monitor devices using Mobile Device Management tools

For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a device will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time, otherwise this will cause unpredictable collisions.

1. Get the offboarding package from [Microsoft Compliance center](https://compliance.microsoft.com/).

2. In the navigation pane, select **Settings** > **Device onboarding** > **Offboarding**.

3. In the **Deployment method** field, select **Mobile Device Management / Microsoft Intune**.
    
4. Click **Download package**, and save the .zip file.

5. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *DeviceCompliance_valid_until_YYYY-MM-DD.offboarding*.

6. Use the Microsoft Intune custom configuration policy to deploy the following supported OMA-URI settings.

      OMA-URI: ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/Offboarding      
      Date type: String      
      Value: [Copy and paste the value from the content of the DeviceCompliance_valid_until_YYYY-MM-DD.offboarding file]

For more information on Microsoft Intune policy settings see, [Windows 10 policy settings in Microsoft Intune](/intune/deploy-use/windows-10-policy-settings-in-microsoft-intune).

> [!NOTE]
> The **Health Status for offboarded devices** policy uses read-only properties and can't be remediated.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

## Related topics
- [Onboard Windows 10 devices using Group Policy](device-onboarding-gp.md)
- [Onboard Windows 10 devices using Microsoft Endpoint Configuration Manager](device-onboarding-sccm.md)
- [Onboard Windows 10 devices using a local script](device-onboarding-script.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](device-onboarding-vdi.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding)