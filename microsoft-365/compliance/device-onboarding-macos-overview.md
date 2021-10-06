---
title: Onboard macOS devices into Microsoft 365 overview
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
description: 
---

# Onboard macOS devices into Microsoft 365 overview





**Applies to:**

- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
<!--- [Insider risk management](insider-risk-management.md#learn-about-insider-risk-management-in-microsoft-365)-->

<!-- DON'T KNOW IF THIS IS NEEDED You can use mobile device management (MDM) solutions to configure devices. Microsoft 365 information protection supports MDMs by providing OMA-URIs to create policies to manage devices.-->

We support 
Following are supported actions: 

Copy to a USB removable media – when enforced, this action blocks, warns or audits the copying or moving of protected files from an endpoint device to USB removable media 

Copy to network shares – when enforced, this action blocks, warns, or audits the copying or moving of protected files from an endpoint device to any network share 

Print – when enforced, this action blocks, warns, or audits when protected files are printed from an endpoint device 

Copy to clipboard – when enforced, this action blocks, warns, or audits data in protected file that is being copied to a clipboard on an endpoint device 

Upload to cloud – this action blocks, warns, or audits when protected files are prevented from or allowed to be uploaded to cloud services based on the allow/unallowed domains list in global settings. When this action is set to warn or block, other browsers (defined on unallowed browsers list under Global settings) are blocked from accessing the file. 

Accessed by unallowed apps – when enforced, this action prevents applications that are on the unallowed apps list (as defined in Global settings) from accessing protected files on an endpoint device. Sample scenarios 



## Before you begin

If you're using Microsoft Intune, you must have the device MDM Enrolled. Otherwise, settings will not be applied successfully. 

For more information on enabling MDM with Microsoft Intune, see [Device enrollment (Microsoft Intune)](/mem/intune/enrollment/device-enrollment).

- Your macOS devices must already be managed through Intune or JAMF Pro. To onboard into Intune, see [Deployment guide: Manage macOS devices in Microsoft Intune](https://docs.microsoft.com/en-us/mem/intune/fundamentals/deployment-guide-platform-macos) and [Enroll your Mac with Intune Company Portal](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). To onboard into JAMF Pro see, [JAMF Pro administrators guide](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/) and [JAMF Pro Installation and Configuration Guide for Mac](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/)
- Install the v93+ Edge browser on your macOS devices 

## Onboard devices into Microsoft 365 Compliance solutions using Microsoft Intune






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