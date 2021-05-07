---
title: Onboard Windows 10 devices using Mobile Device Management tools
description: Use Mobile Device Management tools to deploy the configuration package on devices so that they are onboarded to the service.
keywords: onboard devices using mdm, device management, onboard Microsoft Defender for Endpoint devices, mdm
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Onboard Windows 10 devices using Mobile Device Management tools

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-configureendpointsmdm-abovefoldlink)

You can use mobile device management (MDM) solutions to configure devices. Defender for Endpoint supports MDMs by providing OMA-URIs to create policies to manage devices.

For more information on using Defender for Endpoint CSP see, [WindowsAdvancedThreatProtection CSP](https://msdn.microsoft.com/library/windows/hardware/mt723296(v=vs.85).aspx) and [WindowsAdvancedThreatProtection DDF file](https://msdn.microsoft.com/library/windows/hardware/mt723297(v=vs.85).aspx).

## Before you begin
If you're using Microsoft Intune, you must have the device MDM Enrolled. Otherwise, settings will not be applied successfully. 

For more information on enabling MDM with Microsoft Intune, see [Device enrollment (Microsoft Intune)](https://docs.microsoft.com/mem/intune/enrollment/device-enrollment).

## Onboard devices using Microsoft Intune

[![Image of the PDF showing onboarding devices to Defender for Endpoint using Microsoft Intune](images/onboard-intune.png) ](images/onboard-intune-big.png#lightbox)

Check out the [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.pdf)  or  [Visio](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.vsdx) to see the various paths in deploying Defender for Endpoint. 

Follow the instructions from [Intune](https://docs.microsoft.com/intune/advanced-threat-protection).

For more information on using Defender for Endpoint CSP see, [WindowsAdvancedThreatProtection CSP](https://msdn.microsoft.com/library/windows/hardware/mt723296(v=vs.85).aspx) and [WindowsAdvancedThreatProtection DDF file](https://msdn.microsoft.com/library/windows/hardware/mt723297(v=vs.85).aspx).


> [!NOTE]
> - The **Health Status for onboarded devices** policy uses read-only properties and can't be remediated.
> - Configuration of diagnostic data reporting frequency is only available for devices on Windows 10, version 1703.


>[!TIP]
> After onboarding the device, you can choose to run a detection test to verify that a device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](run-detection-test.md).


Check out the [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.pdf)  or  [Visio](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.vsdx) to see the various paths in deploying Microsoft Defender for Endpoint.

## Offboard and monitor devices using Mobile Device Management tools
For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a device will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time, otherwise this will cause unpredictable collisions.

1. Get the offboarding package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):

   1. In the navigation pane, select **Settings** > **Offboarding**.

   1. Select Windows 10 as the operating system.

   1. In the **Deployment method** field, select **Mobile Device Management / Microsoft Intune**.
    
   1. Click **Download package**, and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *WindowsDefenderATP_valid_until_YYYY-MM-DD.offboarding*.

3. Use the Microsoft Intune custom configuration policy to deploy the following supported OMA-URI settings.

      OMA-URI: ./Device/Vendor/MSFT/WindowsAdvancedThreatProtection/Offboarding<br/>
      Date type: String<br/>
      Value: [Copy and paste the value from the content of the WindowsDefenderATP_valid_until_YYYY-MM-DD.offboarding file]

For more information on Microsoft Intune policy settings see, [Windows 10 policy settings in Microsoft Intune](https://docs.microsoft.com/intune/deploy-use/windows-10-policy-settings-in-microsoft-intune).


> [!NOTE]
> The **Health Status for offboarded devices** policy uses read-only properties and can't be remediated.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

## Related topics
- [Onboard Windows 10 devices using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows 10 devices using Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md)
- [Onboard Windows 10 devices using a local script](configure-endpoints-script.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](configure-endpoints-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](run-detection-test.md)
- [Troubleshoot Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
