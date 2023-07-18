---
title: Onboard Windows 10 and Windows 11 devices using Mobile Device Management tools
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 04/03/2023
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- tier1
- purview-compliance 
ms.custom: admindeeplinkCOMPLIANCE
search.appverid:
- MET150 
description: Use Mobile Device Management tools to deploy the configuration package on devices so that they are onboarded to the service.
---

# Onboard Windows 10 and Windows 11 devices using Mobile Device Management tools

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

You can use mobile device management (MDM) solutions to configure devices. Microsoft 365 information protection supports MDM solutions by providing OMA-URIs to create policies to manage devices.


[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin
If you're using Microsoft Intune, the device must be enrolled in MDM.

For more information on enabling MDM with Microsoft Intune, see [Device enrollment (Microsoft Intune)](/mem/intune/enrollment/device-enrollment).

## Onboard devices using Microsoft Intune

Follow the instructions from [Intune](/mem/intune/protect/advanced-threat-protection-configure).
 
> [!NOTE]
> - The **Health Status for onboarded devices** policy uses read-only properties and can't be remediated.

## Offboard and monitor devices using Mobile Device Management tools

For security reasons, the package used to offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a device will be rejected. When you download an offboarding package, you are notified of the package's expiry date. The expiry date is also included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time. If they are, unpredictable collisions will result.

1. Get the offboarding package from the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>.

2. In the navigation pane, select **Settings** > **Device onboarding** > **Offboarding**.

3. In the **Deployment method** field, select **Mobile Device Management / Microsoft Intune**.

4. Select **Download package**, and save the .zip file.

5. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *DeviceCompliance_valid_until_YYYY-MM-DD.offboarding*.

6. Use the Microsoft Intune custom configuration policy to deploy the following supported OMA-URI settings.

    ```text
    OMA-URI: ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/Offboarding
    Date type: String
    Value: [Copy and paste the value from the content of the DeviceCompliance_valid_until_YYYY-MM-DD.offboarding file]
    ```
> [!NOTE]
> If Microsoft Defender for Endpoint is already configured, you can **Turn on device onboarding**. If you do this, step 6 is not required.

> [!NOTE]
> The **Health Status for offboarded devices** policy uses read-only properties and can't be remediated.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal. However, data from the device, including reference to any alerts it has received, will be retained for up to 6 months.

## Related topics
- [Onboard Windows 10 devices using Group Policy](device-onboarding-gp.md)
- [Onboard Windows 10 devices using Microsoft Endpoint Configuration Manager](device-onboarding-sccm.md)
- [Onboard Windows 10 devices using a local script](device-onboarding-script.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](device-onboarding-vdi.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding)
