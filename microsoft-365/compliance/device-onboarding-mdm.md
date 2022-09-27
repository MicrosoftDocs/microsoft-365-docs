---
title: Onboard Windows 10 and Windows 11 devices using Mobile Device Management tools
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
- M365-security-compliance 
ms.custom: admindeeplinkCOMPLIANCE
search.appverid:
- MET150 
description: Use Mobile Device Management tools to deploy the configuration package on devices so that they are onboarded to the service.
---

# Onboard Windows 10 and Windows 11 devices using Mobile Device Management tools

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

You can use mobile device management (MDM) solutions to configure devices. Microsoft 365 information protection supports MDMs by providing OMA-URIs to create policies to manage devices.


## Before you begin
If you're using Microsoft Intune, you must have the device MDM Enrolled. Otherwise, settings will not be applied successfully. 

For more information on enabling MDM with Microsoft Intune, see [Device enrollment (Microsoft Intune)](/mem/intune/enrollment/device-enrollment).

## Onboard devices using Microsoft Intune

Follow the instructions from [Intune](/mem/intune/protect/advanced-threat-protection-configure).
 
> [!NOTE]
> - The **Health Status for onboarded devices** policy uses read-only properties and can't be remediated.

## Offboard and monitor devices using Mobile Device Management tools

For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a device will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time, otherwise this will cause unpredictable collisions.

1. Get the offboarding package from the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>.

2. In the navigation pane, select **Settings** > **Device onboarding** > **Offboarding**.

3. In the **Deployment method** field, select **Mobile Device Management / Microsoft Intune**.

4. Click **Download package**, and save the .zip file.

5. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *DeviceCompliance_valid_until_YYYY-MM-DD.offboarding*.

6. Use the Microsoft Intune custom configuration policy to deploy the following supported OMA-URI settings.

    ```text
    OMA-URI: ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/Offboarding
    Date type: String
    Value: [Copy and paste the value from the content of the DeviceCompliance_valid_until_YYYY-MM-DD.offboarding file]
    ```
> [!NOTE]
> If Microsoft Defender for Endpoint is already configured, you can **Turn on device onboarding** and Step 6 is no longer required.

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
