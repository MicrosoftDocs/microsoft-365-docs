---
title: Onboard non-persistent virtual desktop infrastructure (VDI) devices
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
description: Deploy the configuration package on virtual desktop infrastructure (VDI) device so that they are onboarded to the Microsoft 365 Endpoint data loss prevention service.

---

# Onboard non-persistent virtual desktop infrastructure (VDI) devices

**Applies to:**
- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)

- Virtual desktop infrastructure (VDI) devices

>[!WARNING]
> Microsoft 365 Endpoint data loss prevention support for Windows Virtual Desktop supports single session scenarios. Multi-session scenarios on Windows Virtual Desktop are currently not supported.

## Onboard VDI devices

Microsoft 365 Endpoint data loss prevention supports non-persistent VDI session onboarding. 

>[!Note]
>To onboard non-persistent VDI sessions, VDI devices must be on Windows 10 1809 or higher.

There might be associated challenges when onboarding VDIs. The following are typical challenges for this scenario:

- Instant early onboarding of a short-lived sessions, which must be onboarded to  Microsoft 365 Endpoint data loss prevention prior to the actual provisioning.
- The device name is typically reused for new sessions.

VDI devices can appear in the Microsoft 365 Compliance center as either:

- Single entry for each device.  
Note that in this case, the *same* device name must be configured when the session is created, for example using an unattended answer file.
- Multiple entries for each device - one for each session.

The following steps will guide you through onboarding VDI devices and will highlight steps for single and multiple entries.

>[!WARNING]
> For environments where there are low resource configurations, the VDI boot procedure might slow the Microsoft 365 Endpoint data loss prevention onboarding. 

1.  Open the VDI configuration package .zip file (*DeviceCompliancePackage.zip*) that you downloaded from the service onboarding wizard.

2.  In the navigation pane, select **Settings** > **Device onboarding** > **Onboarding**.

3. In the **Deployment method** field, select **VDI onboarding scripts for non-persistent endpoints**.

5. Click **Download package** and save the .zip file.

6. Copy the files from the DeviceCompliancePackage folder extracted from the .zip file into the `golden/master` image under the path `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup`. 

7. If you are not implementing a single entry for each device, copy DeviceComplianceOnboardingScript.cmd.

8. If you are implementing a single entry for each device, copy both Onboard-NonPersistentMachine.ps1 and DeviceComplianceOnboardingScript.cmd.
    
    > [!NOTE]
    > If you don't see the `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup` folder, it might be hidden. You'll need to choose the **Show hidden files and folders** option from File Explorer.

9. Open a Local Group Policy Editor window and navigate to **Computer Configuration** > **Windows Settings** > **Scripts** > **Startup**.

   > [!NOTE]
   > Domain Group Policy may also be used for onboarding non-persistent VDI devices.

4. Depending on the method you'd like to implement, follow the appropriate steps:

   **For single entry for each device**
   
   Select the **PowerShell Scripts** tab, then click **Add** (Windows Explorer will open directly in the path where you copied the onboarding script earlier). Navigate to onboarding PowerShell script `Onboard-NonPersistentMachine.ps1`.
   
   **For multiple entries for each device**:
   
   Select the **Scripts** tab, then click **Add** (Windows Explorer will open directly in the path where you copied the onboarding script earlier). Navigate to the onboarding bash script `DeviceComplianceOnboardingScript.cmd`.

5. Test your solution:

   1. Create a pool with one device.
      
   1. Logon to device.
      
   1. Logoff from device.

   1. Logon to device with another user.
      
   1. **For single entry for each device**: Check only one entry in Microsoft Defender Security Center.<br>
      **For multiple entries for each device**: Check multiple entries in Microsoft Defender Security Center.

6. Click **Devices list** on the Navigation pane.

7. Use the search function by entering the device name and select **Device** as search type.

## Updating non-persistent virtual desktop infrastructure (VDI) images
As a best practice, we recommend using offline servicing tools to patch golden/master images.<br>
For example, you can use the below commands to install an update while the image remains offline:

```console
DISM /Mount-image /ImageFile:"D:\Win10-1909.vhdx" /index:1 /MountDir:"C:\Temp\OfflineServicing" 
DISM /Image:"C:\Temp\OfflineServicing" /Add-Package /Packagepath:"C:\temp\patch\windows10.0-kb4541338-x64.msu"
DISM /Unmount-Image /MountDir:"C:\Temp\OfflineServicing" /commit
```

For more information on DISM commands and offline servicing, please refer to the articles below:
- [Modify a Windows image using DISM](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism)
- [DISM Image Management Command-Line Options](/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14)
- [Reduce the Size of the Component Store in an Offline Windows Image](/windows-hardware/manufacture/desktop/reduce-the-size-of-the-component-store-in-an-offline-windows-image)

If offline servicing is not a viable option for your non-persistent VDI environment, the following steps should be taken to ensure consistency and sensor health:

1. After booting the master image for online servicing or patching, run an offboarding script to turn off the Microsoft 365 Endpoint data loss prevention sensor. For more information, see [Offboard devices using a local script](dlp-configure-endpoints-script.md#offboard-devices-using-a-local-script).

2. Ensure the sensor is stopped by running the command below in a CMD window:

   ```console
   sc query sense
   ```

3. Service the image as needed.

4. Run the below commands using PsExec.exe (which can be downloaded from https://download.sysinternals.com/files/PSTools.zip) to cleanup the cyber folder contents that the sensor may have accumulated since boot:

    ```console
    PsExec.exe -s cmd.exe
    cd "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Cyber"
    del *.* /f /s /q
    REG DELETE “HKLM\SOFTWARE\Microsoft\Windows Advanced Threat Protection" /v senseGuid /f
    exit
    ```

5. Re-seal the golden/master image as you normally would.

## Related topics
- [Onboard Windows 10 devices using Group Policy](dlp-configure-endpoints-gp.md)
- [Onboard Windows 10 devices using Microsoft Endpoint Configuration Manager](dlp-configure-endpoints-sccm.md)
- [Onboard Windows 10 devices using Mobile Device Management tools](dlp-configure-endpoints-mdm.md)
- [Onboard Windows 10 devices using a local script](dlp-configure-endpoints-script.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding)