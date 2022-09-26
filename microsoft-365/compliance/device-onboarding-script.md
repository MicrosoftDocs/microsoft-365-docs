---
title: Onboard Windows 10 and Windows 11 devices using a local script
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
description: Use a local script to deploy the configuration package on devices so that they are onboarded to the service.

---

# Onboard Windows 10 and Windows 11 devices using a local script

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

You can also manually onboard individual devices to Microsoft 365. You might want to do this first when testing the service before you commit to onboarding all devices in your network.

> [!IMPORTANT]
> This script has been optimized for use on up to 10 devices.
>
> To deploy at scale, use [other deployment options](device-onboarding-overview.md). For example, you can deploy an onboarding script to more than 10 devices in production with the script available in [Onboard Windows 10 devices using Group Policy](device-onboarding-gp.md).

## Onboard devices
 
1. Get the configuration package .zip file (*DeviceComplianceOnboardingPackage.zip*) package from [Microsoft Purview compliance portal](https://compliance.microsoft.com)

2. In the navigation pane, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2174201" target="_blank">**Settings**</a> > **Device onboarding**.

3. In the **Deployment method** field, select **Local Script**.

4. Click **Download package** and save the .zip file.
  
5. Extract the contents of the configuration package to a location on the device you want to onboard (for example, the Desktop). You should have a file named *DeviceOnboardingScript.cmd*.

6. Open an elevated command-line prompt on the device and run the script:

7. Go to **Start** and type **cmd**.

8. Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator.](../media/dlp-run-as-admin.png)

9. Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOnboardingScript.cmd*

10. Press the **Enter** key or click **OK**.

For information on how you can manually validate that the device is compliant and correctly reports sensor data see, [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding).

## Offboard devices using a local script

For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to an device will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time, otherwise this will cause unpredictable collisions.

1. Get the offboarding package from <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>.

2. In the navigation pane, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2174201" target="_blank">**Settings**</a> > **Device offboarding**.

3. In the **Deployment method** field, select **Local Script**.

4. Click **Download package** and save the .zip file.

5. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the devices. You should have a file named *DeviceComplianceOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

6. Open an elevated command-line prompt on the device and run the script:

7. Go to **Start** and type **cmd**.

8. Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator.](../media/dlp-run-as-admin.png)

9. Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*

10. Press the **Enter** key or click **OK**.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal.

## Monitor device configuration

You can follow the different verification steps in the [Troubleshoot onboarding issues]((/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding) to verify that the script completed successfully and the agent is running.

Monitoring can also be done directly on the portal, or by using the different deployment tools.

### Monitor devices using the portal

1. Go to [Microsoft Purview compliance portal](https://compliance.microsoft.com).

2. Choose **Settings** > **Device onboarding** > **Devices**.

1. Go to Microsoft Purview compliance portal, and select <a href="https://go.microsoft.com/fwlink/p/?linkid=2174201" target="_blank">**Settings**</a> > **Device onboarding** > **Devices**.

1. Verify that devices are appearing.

## Related topics
- [Onboard Windows 10 and Windows 11 devices using Group Policy](device-onboarding-gp.md)
- [Onboard Windows 10 and Windows 11 devices using Microsoft Endpoint Configuration Manager](device-onboarding-sccm.md)
- [Onboard Windows 10 and Windows 11 devices using Mobile Device Management tools](device-onboarding-mdm.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](device-onboarding-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](/windows/security/threat-protection/microsoft-defender-atp/run-detection-test)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding)
