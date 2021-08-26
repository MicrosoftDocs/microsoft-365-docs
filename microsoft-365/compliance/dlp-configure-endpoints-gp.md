---
title: Onboard Windows 10 devices via Group Policy

f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance 
search.appverid:
- MET150 
description: Use Group Policy to deploy the configuration package on Windows 10 devices so that they are onboarded to the service.
---

# Onboard Windows 10 devices using Group Policy 

**Applies to:**

- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- Group Policy

> [!NOTE]
> To use Group Policy (GP) updates to deploy the package, you must be on Windows Server 2008 R2 or later.

> For Windows Server 2019, you may need to replace NT AUTHORITY\Well-Known-System-Account with NT AUTHORITY\SYSTEM of the XML file that the Group Policy preference creates.

## Onboard devices using Group Policy

1. Open the GP configuration package .zip file (*DeviceComplianceOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from [Microsoft Compliance center](https://compliance.microsoft.com/compliancesettings/deviceonboarding)

2. In the navigation pane, select **Settings** > **Device Onboarding**.

3. In the **Deployment method** field, select **Group policy**.

4. Click **Download package** and save the .zip file.

5. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the device. You should have a folder called *OptionalParamsPolicy* and the file *DeviceComplianceLocalOnboardingScript.cmd*.

6. Open the [Group Policy Management Console](/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11) (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

7. In the **Group Policy Management Editor**, go to **Computer configuration**, then **Preferences**, and then **Control panel settings**.

8. Right-click **Scheduled tasks**, point to **New**, and then click **Immediate Task (At least Windows 7)**.

9. In the **Task** window that opens, go to the **General** tab. Under **Security options** click **Change User or Group** and type SYSTEM and then click **Check Names** then **OK**. NT AUTHORITY\SYSTEM appears as the user account the task will run as.

10. Select **Run whether user is logged on or not** and check the **Run with highest privileges** check box.

11. Go to the **Actions** tab and click **New...** Ensure that **Start a program** is selected in the **Action** field. Enter the file name and location of the shared *WindowsDefenderATPOnboardingScript.cmd* file.

12. Click **OK** and close any open GPMC windows.


## Offboard devices using Group Policy
For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a device will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time, otherwise this will cause unpredictable collisions.

1. Get the offboarding package from [Microsoft Compliance center](https://compliance.microsoft.com/compliancesettings/deviceonboarding).

2. In the navigation pane, select **Settings** > **//Device onboarding** > **Offboarding**.

3. In the **Deployment method** field, select **Group policy**.

4. Click **Download package** and save the .zip file.

5. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the device. You should have a file named *DeviceComplianceOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

6. Open the [Group Policy Management Console](/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11) (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

7. In the **Group Policy Management Editor**, go to **Computer configuration,** then **Preferences**, and then **Control panel settings**.

8. Right-click **Scheduled tasks**, point to **New**, and then click **Immediate task**.

9. In the **Task** window that opens, go to the **General** tab. Choose the local SYSTEM user account (BUILTIN\SYSTEM) under **Security options**.

10. Select **Run whether user is logged on or not** and check the **Run with highest privileges** check-box.

11. Go to the **Actions** tab and click **New...**. Ensure that **Start a program** is selected in the **Action** field. Enter the file name and location of the shared  *DeviceComplianceOffboardingScript_valid_until_YYYY-MM-DD.cmd* file.

12. Click **OK** and close any open GPMC windows.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device.


## Monitor device configuration
With Group Policy there isn’t an option to monitor deployment of policies on the devices. Monitoring can be done directly on the portal, or by using the different deployment tools.

## Monitor devices using the portal
1. Go to [Microsoft Compliance center](https://compliance.microsoft.com/).
2. Click **Devices** list.
3. Verify that devices are appearing.

> [!NOTE]
> It can take several days for devices to start showing on the **Devices list**. This includes the time it takes for the policies to be distributed to the device, the time it takes before the user logs on, and the time it takes for the endpoint to start reporting.


## Related topics
- [Onboard Windows 10 devices using Microsoft Endpoint Configuration Manager](dlp-configure-endpoints-sccm.md)
- [Onboard Windows 10 devices using Mobile Device Management tools](dlp-configure-endpoints-mdm.md)
- [Onboard Windows 10 devices using a local script](dlp-configure-endpoints-script.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](dlp-configure-endpoints-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender for Endpoint devices](/windows/security/threat-protection/microsoft-defender-atp/run-detection-test)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding)