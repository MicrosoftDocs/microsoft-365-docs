---
title: Onboard devices into Microsoft 365 Compliance solutions using Microsoft Intune
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
description: Onboard devices into Microsoft 365 Compliance solutions using Microsoft Intune
---

# Onboard devices into Microsoft 365 Compliance solutions using Microsoft Intune

Preparing your devices for onboarding is required to ensure the device is configured to send telemetry and receive policy updates from your organization.

**Applies to:**

- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
<!--- [Insider risk management](insider-risk-management.md#learn-about-insider-risk-management-in-microsoft-365)-->

<!-- DON'T KNOW IF THIS IS NEEDED You can use mobile device management (MDM) solutions to configure devices. Microsoft 365 information protection supports MDMs by providing OMA-URIs to create policies to manage devices.-->


## Before you begin

- Make sure your macOS devices are onboarded into Intune
- Make sure you have access to the [Microsoft Endpoint Manager center](https://endpoint.microsoft.com/#home).

## Onboard devices into Microsoft 365 Compliance solutions using Microsoft Intune

Onboarding a macOS device into Microsoft 365 Compliance solutions is a three phase process.

1. [Create system configuration profiles](#create-system-configuration-profiles)
1. [Enable kernel and system extensions](#enable-kernel-and-system-extensions)
1. [Deploy the Microsoft DLP enforcement package](#deploy-the-microsoft-dlp-enforcement-package)

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

8. Assign your **Intune** managed macOS devices on the **Assignments** tab and choose **Next**.

9. Review your setting and choose **Create**.

1. Repeat steps 2-7 for the:
    1. **fulldisk.mobileconfig** file
    1. **com.microsoft.autoupdate2.xml** file - for the **channel name** string 
    1. MDE preferences **com.microsoft.wdav.xml** file

10. Open **Devices** > **Configuration profiles**, you should see your created profile there.

### Enable kernel and system extensions
text

### Deploy the Microsoft DLP enforcement package

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