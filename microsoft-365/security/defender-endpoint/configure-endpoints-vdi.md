---
title: Onboard non-persistent virtual desktop infrastructure (VDI) devices
description: Deploy the configuration package on virtual desktop infrastructure (VDI) device so that they are onboarded to Microsoft Defender for Endpoint service.
keywords: configure virtual desktop infrastructure (VDI) device, vdi, device management, configure Microsoft Defender for Endpoint, endpoints
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.date: 05/26/2023
ms.subservice: mde
---

# Onboard non-persistent virtual desktop infrastructure (VDI) devices in Microsoft 365 Defender

Virtual desktop infrastructure (VDI) is an IT infrastructure concept that lets end users access enterprise virtual desktops instances from almost any device (such as your personal computer, smartphone, or tablet), eliminating the need for organization to provide users with physical machines. Using VDI devices reduce cost as IT departments are no longer responsible for managing, repairing, and replacing physical endpoints. Authorized users can access the same company servers, files, apps, and services from any approved device through a secure desktop client or browser.

Like any other system in an IT environment, these too should have an Endpoint Detection and Response (EDR) and Antivirus solution to protect against advanced threats and attacks.


[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Virtual desktop infrastructure (VDI) devices
- Windows 10, Windows 11, Windows Server 2019, Windows Server 2022, Windows Server 2008R2/2012R2/2016


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configvdi-abovefoldlink)

 > [!NOTE]
  > **Persistent VDI's** - Onboarding a persistent VDI machine into Microsoft Defender for Endpoint is handled the same way you would onboard a physical machine, such as a desktop or laptop. Group policy, Microsoft Configuration Manager, and other methods can be used to onboard a persistent machine. In the Microsoft 365 Defender portal, (https://security.microsoft.com) under onboarding, select your preferred onboarding method, and follow the instructions for that type. For more information see [Onboarding Windows client](onboard-windows-client.md).

## Onboarding non-persistent virtual desktop infrastructure (VDI) devices

Defender for Endpoint supports non-persistent VDI session onboarding.

There might be associated challenges when onboarding VDI instances. The following are typical challenges for this scenario:

- Instant early onboarding of a short-lived session, which must be onboarded to Defender for Endpoint prior to the actual provisioning.
- The device name is typically reused for new sessions.

In a VDI environment, VDI instances can have short lifespans. VDI devices can appear in the Microsoft 365 Defender portal as either single entries for each VDI instance or multiple entries for each device. 

- Single entry for each VDI instance. If the VDI instance was already onboarded to Microsoft Defender for Endpoint, and at some point deleted, and then recreated with the same host name, a new object representing this VDI instance is NOT be created in the portal. 

  > [!NOTE]
  > In this case, the *same* device name must be configured when the session is created, for example using an unattended answer file.

- Multiple entries for each device - one for each VDI instance.

> [!IMPORTANT]
> If you're deploying non-persistent VDIs through cloning technology, make sure that your internal template VMs are not onboarded to Defender for Endpoint. This recommendation is to avoid cloned VMs from being onboarded with the same senseGuid as your template VMs, which could prevent VMs from showing up as new entries in the Devices list. 

The following steps guide you through onboarding VDI devices and highlight steps for single and multiple entries.

> [!WARNING]
> For environments where there are low resource configurations, the VDI boot procedure might slow the Defender for Endpoint sensor onboarding.

### Onboarding steps

> [!NOTE]
> Windows Server 2016 and Windows Server 2012 R2 must be prepared by applying the installation package first using the instructions in [Onboard Windows servers](/microsoft-365/security/defender-endpoint/configure-server-endpoints#windows-server-2012-r2-and-windows-server-2016) for this feature to work.

1. Open the VDI configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>:

    1. In the navigation pane, select **Settings** > **Endpoints** > **Device management** > **Onboarding**.

    2. Select the operating system.

    3.  In the **Deployment method** field, select **VDI onboarding scripts for non-persistent endpoints**.

    4. Click **Download package** and save the .zip file.

2. Copy the files from the WindowsDefenderATPOnboardingPackage folder extracted from the .zip file into the golden/primary image under the path `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup`.

    1. If you are implementing multiple entries for each device - one for each session, copy WindowsDefenderATPOnboardingScript.cmd.

    2. If you're implementing a single entry for each device, copy both Onboard-NonPersistentMachine.ps1 and WindowsDefenderATPOnboardingScript.cmd.

    > [!NOTE]
    > If you don't see the `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup` folder, it might be hidden. You'll need to choose the **Show hidden files and folders** option from File Explorer.

3. Open a Local Group Policy Editor window and navigate to **Computer Configuration** \> **Windows Settings** \> **Scripts** \> **Startup**.

   > [!NOTE]
   > Domain Group Policy may also be used for onboarding non-persistent VDI devices.

4. Depending on the method you'd like to implement, follow the appropriate steps:

    - For single entry for each device:

         Select the **PowerShell Scripts** tab, then select **Add** (Windows Explorer opens directly in the path where you copied the onboarding script earlier). Navigate to onboarding PowerShell script `Onboard-NonPersistentMachine.ps1`. There's no need to specify the other file, as it is triggered automatically.

    - For multiple entries for each device:

         Select the **Scripts** tab, then click **Add** (Windows Explorer opens directly in the path where you copied the onboarding script earlier). Navigate to the onboarding bash script `WindowsDefenderATPOnboardingScript.cmd`.

5. Test your solution:

   1. Create a pool with one device.

   2. Log on to device.
   
   3. Log off from device.
   
   4. Log on to device with another user.
   
   5. Depending on the method you'd like to implement, follow the appropriate steps:
   
      - For single entry for each device: Check only one entry in Microsoft 365 Defender portal.
      - For multiple entries for each device: Check multiple entries in Microsoft 365 Defender portal.

6. Click **Devices list** on the Navigation pane.

7. Use the search function by entering the device name and select **Device** as search type.

## For downlevel SKUs (Windows Server 2008 R2)

> [!NOTE]
> These instructions for other Windows server versions also apply if you are running the previous Microsoft Defender for Endpoint for Windows Server 2016 and Windows Server 2012 R2 that requires the MMA. Instructions to migrate to the new unified solution are at [Server migration scenarios in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/server-migration).

The following registry is relevant only when the aim is to achieve a 'Single entry for each device'.

1. Set registry value to:

    ```console
   [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection\DeviceTagging]
    "VDI"="NonPersistent"
    ```

    or using command line:

    ```console
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection\DeviceTagging" /v VDI /t REG_SZ /d "NonPersistent" /f
    ```

2. Follow the [server onboarding process](configure-server-endpoints.md). 

## Updating virtual desktop infrastructure (VDI) images (persistent or non-persistent)

With the ability to easily deploy updates to VMs running in VDIs, we've shortened this guide to focus on how you can get updates on your machines quickly and easily. You no longer need to create and seal golden images on a periodic basis, as updates are expanded into their component bits on the host server and then downloaded directly to the VM when it's turned on.

If you have onboarded the primary image of your VDI environment (SENSE service is running), then you must offboard and clear some data before putting the image back into production.

1. Ensure the sensor is stopped by running the following command in a CMD window:

   ```console
   sc query sense
   ```

2. Run the following commands using PsExec.exe (which can be downloaded from [https://download.sysinternals.com/files/PSTools.zip](https://download.sysinternals.com/files/PSTools.zip)):

   ```console
   PsExec.exe -s cmd.exe
   del "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Cyber\*.*" /f /s /q
   REG DELETE "HKLM\SOFTWARE\Microsoft\Windows Advanced Threat Protection" /v senseGuid /f
   exit
   ```

### Are you using a third party for VDIs?

If you're deploying non-persistent VDIs through VMware instant cloning or similar technologies, make sure that your internal template VMs and replica VMs are not onboarded to Defender for Endpoint. If you onboard devices using the single entry method, instant clones that are provisioned from onboarded VMs might have the same senseGuid, and that can stop a new entry from being listed in the Device Inventory view (in the [Microsoft 365 Defender portal](https://security.microsoft.com), choose **Assets** > **Devices**).

If either the primary image, template VM, or replica VM are onboarded to Defender for Endpoint using the single entry method, it will stop Defender from creating entries for new non-persistent VDIs in the Microsoft 365 Defender portal.

Reach out to your third-party vendors for further assistance.

## Other recommended configuration settings

After onboarding devices to the service, it's important to take advantage of the included threat protection capabilities by enabling them with the following recommended configuration settings.

### Next generation protection configuration

The following configuration settings are recommended:

#### Cloud Protection Service

- Turn on cloud-delivered protection: Yes
- Cloud-delivered protection level: Not configured
- Defender Cloud Extended Timeout In Seconds: 20

#### Exclusions

- Disable local admin merge: Not configured

- Defender processes to exclude:

  - `%Programfiles%\FSLogix\Apps\frxccd.exe`
  - `%Programfiles%\FSLogix\Apps\frxccds.exe`
  - `%Programfiles%\FSLogix\Apps\frxsvc.exe`

- File extensions to exclude from scans and real-time protection:

  - `%Programfiles%\FSLogix\Apps\frxccd.sys`
  - `%Programfiles%\FSLogix\Apps\frxdrv.sys`
  - `%Programfiles%\FSLogix\Apps\frxdrvvt.sys`
  - `%TEMP%*.VHD`
  - `%TEMP%*.VHDX`
  - `%Windir%\TEMP*.VHD`
  - `%Windir%\TEMP*.VHDX`
  - `\\storageaccount.file.core.windows.net\share**.VHD`
  - `\\storageaccount.file.core.windows.net\share**.VHDX`

#### Real-time Protection

- Turn on all settings and set to monitor all files

#### Remediation

- Number of days to keep quarantined malware: 30
- Submit samples consent: Send all samples automatically
- Action to take on potentially unwanted apps: Enable
- Actions for detected threats:
  - Low threat: Clean
  - Moderate threat, High threat, Severe threat: Quarantine

#### Scan

- Scan archived files: Yes
- Use low CPU priority for scheduled scans: Not configured
- Disable catch-up full scan: Not configured
- Disable catchup quick scan: Not configured
- CPU usage limit per scan: 50
- Scan mapped network drives during full scan: Not configured
- Run daily quick scan at: 12 PM
- Scan type: Not configured
- Day of week to run scheduled scan: Not configured
- Time of day to run a scheduled scan: Not configured
- Check for signature updates before running scan: Yes

#### Updates

- Enter how often to check for security intelligence updates: 8
- Leave other settings in default state

#### User experience

- Allow user access to Microsoft Defender app: Not configured

#### Enable Tamper protection

- Enable tamper protection to prevent Microsoft Defender being disabled: Enable

#### Attack surface reduction

- Enable network protection: Audit mode
- Require SmartScreen for Microsoft Edge: Yes
- Block malicious site access: Yes
- Block unverified file download: Yes

#### Attack surface reduction rules

- Configure all available rules to Audit.

> [!NOTE]
> Blocking these activities may interrupt legitimate business processes. The best approach is setting everything to audit, identifying which ones are safe to turn on, and then enabling those settings on endpoints which do not have false positive detections.

## Related topics

- [Onboard Windows devices using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows devices using Microsoft Configuration Manager](configure-endpoints-sccm.md)
- [Onboard Windows devices using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard Windows devices using a local script](configure-endpoints-script.md)
- [Troubleshoot Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
