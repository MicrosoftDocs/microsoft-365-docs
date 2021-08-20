---
title: Onboard Windows 10 devices using a local script
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
description: Use a local script to deploy the configuration package on devices so that they are onboarded to the service.

---

# Onboard Windows 10 devices using a local script

**Applies to:**

- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)

You can also manually onboard individual devices to Microsoft 365 Endpoint data loss prevention. You might want to do this first when testing the service before you commit to onboarding all devices in your network.

> [!IMPORTANT]
> This script has been optimized for use on up to 10 devices.
>
> To deploy at scale, use [other deployment options](dlp-configure-endpoints.md). For example, you can deploy an onboarding script to more than 10 devices in production with the script available in [Onboard Windows 10 devices using Group Policy](dlp-configure-endpoints-gp.md).

## Onboard devices
 
1.  Open the GP configuration package .zip file (*DeviceComplianceOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from [Microsoft Compliance center](https://compliance.microsoft.com)

2. In the navigation pane, select **Settings** > **Device onboarding**.

3. In the **Deployment method** field, select **Local Script**.

4. Click **Download package** and save the .zip file.
  
5. Extract the contents of the configuration package to a location on the device you want to onboard (for example, the Desktop). You should have a file named *DeviceOnboardingScript.cmd*.

6.  Open an elevated command-line prompt on the device and run the script:

7.  Go to **Start** and type **cmd**.

8.  Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator](../media/dlp-run-as-admin.png)

9.  Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOnboardingScript.cmd*

10.  Press the **Enter** key or click **OK**.

For information on how you can manually validate that the device is compliant and correctly reports sensor data see, [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding).

## Offboard devices using a local script
For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to an device will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time, otherwise this will cause unpredictable collisions.

1. Get the offboarding package from [Microsoft Compliance center](https://compliance.microsoft.com)

2. In the navigation pane, select **Settings** > **Device offboarding**.

3. In the **Deployment method** field, select **Local Script**.

4. Click **Download package** and save the .zip file.

5. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the devices. You should have a file named *DeviceComplianceOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

6.  Open an elevated command-line prompt on the device and run the script:

7.  Go to **Start** and type **cmd**.

8.  Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator](../media/dlp-run-as-admin.png)

9.  Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*

10.  Press the **Enter** key or click **OK**.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal.


## Monitor device configuration
You can follow the different verification steps in the [Troubleshoot onboarding issues]((/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding) to verify that the script completed successfully and the agent is running.

Monitoring can also be done directly on the portal, or by using the different deployment tools.

### Monitor devices using the portal
1. Go to [Microsoft 365 Compliance center](https://compliance.microsoft.com).

2. Choose **Settings** > **Device onboarding** > **Devices**.

3. Verify that devices are appearing.


## Related topics
- [Onboard Windows 10 devices using Group Policy](dlp-configure-endpoints-gp.md)
- [Onboard Windows 10 devices using Microsoft Endpoint Configuration Manager](dlp-configure-endpoints-sccm.md)
- [Onboard Windows 10 devices using Mobile Device Management tools](dlp-configure-endpoints-mdm.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](dlp-configure-endpoints-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](/windows/security/threat-protection/microsoft-defender-atp/run-detection-test)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding)