---
title: Microsoft Defender Antivirus Virtual Desktop Infrastructure deployment guide
description: Learn how to deploy Microsoft Defender Antivirus in a virtual desktop environment for the best balance between protection and performance.
keywords: vdi, hyper-v, vm, virtual machine, windows defender, antivirus, av, virtual desktop, rds, remote desktop
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: jesquive
manager: dansimp
ms.subservice: mde
ms.collection: m365-security-compliance
search.appverid: met150
---

# Deployment guide for Microsoft Defender Antivirus in a virtual desktop infrastructure (VDI) environment

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

In addition to standard on-premises or hardware configurations, you can use Microsoft Defender Antivirus in a remote desktop (RDS) or non-persistent virtual desktop infrastructure (VDI) environment. With the ability to easily deploy updates to VMs running in VDIs, you can get updates on your machines quickly and easily. You no longer need to create and seal golden images on a periodic basis, as updates are expanded into their component bits on the host server and then downloaded directly to the VM when it's turned on.

This guide describes how to configure your VMs for optimal protection and performance, including how to:

- [Set up a dedicated VDI file share for security intelligence updates](#set-up-a-dedicated-vdi-file-share)
- [Randomize scheduled scans](#randomize-scheduled-scans)
- [Use quick scans](#use-quick-scans)
- [Prevent notifications](#prevent-notifications)
- [Disable scans from occurring after every update](#disable-scans-after-an-update)
- [Scan out-of-date machines or machines that have been offline for a while](#scan-vms-that-have-been-offline)
- [Apply exclusions](#exclusions)

For more information on Microsoft Remote Desktop Services and VDI support, see [Azure Virtual Desktop Documentation](/azure/virtual-desktop).

For Azure-based virtual machines, see [Install Endpoint Protection in Microsoft Defender for Cloud](/azure/defender-for-cloud/endpoint-protection-recommendations-technical).

> [!IMPORTANT]
> Although the VDI can be hosted on Windows Server 2012 or Windows Server 2016, the virtual machines (VMs) should be running Windows 10, 1607 at a minimum, due to increased protection technologies and features that are unavailable in earlier versions of Windows.
> There are performance and feature improvements to the way in which Microsoft Defender Antivirus operates on virtual machines in Windows 10 Insider Preview, build 18323 (and later). We'll identify in this guide if you need to be using an Insider Preview build; if it isn't specified, then the minimum required version for the best protection and performance is Windows 10 1607.

## Set up a dedicated VDI file share

In Windows 10, version 1903, we introduced the shared security intelligence feature, which offloads the unpackaging of downloaded security intelligence updates onto a host machine, thus saving previous CPU, disk, and memory resources on individual machines. This feature has been backported and now works in Windows 10 version 1703 and above. You can set this feature with a Group Policy, or PowerShell.

### Use Group Policy to enable the shared security intelligence feature:

1. On your Group Policy management computer, open the Group Policy Management Console, right-click the Group Policy Object you want to configure, and then click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Administrative templates**.

4. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus** \> **Security Intelligence Updates**.

5. Double-click **Define security intelligence location for VDI clients**, and then set the option to **Enabled**. A field automatically appears.

6. Enter `\\<sharedlocation\>\wdav-update` (for help with this value, see [Download and unpackage](#download-and-unpackage-the-latest-updates)).

7. Click **OK**.

8. Deploy the GPO to the VMs you want to test.

### Use PowerShell to enable the shared security intelligence feature

Use the following cmdlet to enable the feature. You'll need to then push this as you normally would push PowerShell-based configuration policies onto the VMs:

```PowerShell
Set-MpPreference -SharedSignaturesPath \\<shared location>\wdav-update
```

See the [Download and unpackage](#download-and-unpackage-the-latest-updates) section for what the \<shared location\> will be.

## Download and unpackage the latest updates

Now you can get started on downloading and installing new updates. We've created a sample PowerShell script for you below. This script is the easiest way to download new updates and get them ready for your VMs. You should then set the script to run at a certain time on the management machine by using a scheduled task (or, if you're familiar with using PowerShell scripts in Azure, Intune, or SCCM, you could also use those scripts).

```PowerShell
$vdmpathbase = "$env:systemdrive\wdav-update\{00000000-0000-0000-0000-"
$vdmpathtime = Get-Date -format "yMMddHHmmss"
$vdmpath = $vdmpathbase + $vdmpathtime + '}'
$vdmpackage = $vdmpath + '\mpam-fe.exe'

New-Item -ItemType Directory -Force -Path $vdmpath | Out-Null

Invoke-WebRequest -Uri 'https://go.microsoft.com/fwlink/?LinkID=121721&arch=x64' -OutFile $vdmpackage

cmd /c "cd /d $vdmpath & mpam-fe.exe /x"
```

You can set a scheduled task to run once a day so that whenever the package is downloaded and unpacked then the VMs will receive the new update.
We suggest starting with once a day, but you should experiment with increasing or decreasing the frequency to understand the impact.

Security intelligence packages are typically published once every three to four hours. Setting a frequency shorter than four hours isn't advised because it will increase the network overhead on your management machine for no benefit.

You can also set up your single server or machine to fetch the updates on behalf of the VMs at an interval and place them in the file share for consumption.
This is possible when the devices have the share and NTFS permissions for the read access to the share so they can grab the updates. To do this:

 1. Create an SMB/CIFS file share. 
 
 2. Use the following example to create a file share with the following share permissions.

    ```PowerShell
    PS c:\> Get-SmbShareAccess -Name mdatp$

    Name   ScopeName AccountName AccessControlType AccessRight
    ----   --------- ----------- ----------------- -----------
    mdatp$ *         Everyone    Allow             Read
    ```
   
    > [!NOTE]
    > An NTFS permission is added for **Authenticated Users:Read:**. 

    For this example, the file share is:

    `\\fileserver.fqdn\mdatp$\wdav-update`

### Set a scheduled task to run the PowerShell script

1. On the management machine, open the Start menu and type **Task Scheduler**. Open it and select **Create task...** on the side panel.

2. Enter the name as **Security intelligence unpacker**. Go to the **Trigger** tab. Select **New...** \> **Daily**, and select **OK**.

3. Go to the **Actions** tab. Select **New...** Enter **PowerShell** in the **Program/Script** field. Enter `-ExecutionPolicy Bypass c:\wdav-update\vdmdlunpack.ps1` in the **Add arguments** field. Select **OK**.

4. You can choose to configure additional settings if you wish.

5. Select **OK** to save the scheduled task.

You can initiate the update manually by right-clicking on the task and clicking **Run**.

### Download and unpackage manually

If you would prefer to do everything manually, here's what to do to replicate the script's behavior:

1. Create a new folder on the system root called `wdav_update` to store intelligence updates, for example, create the folder `c:\wdav_update`.

2. Create a subfolder under *wdav_update* with a GUID name, such as `{00000000-0000-0000-0000-000000000000}`

   Here's an example: `c:\wdav_update\{00000000-0000-0000-0000-000000000000}`

   > [!NOTE]
   > In the script we set it so the last 12 digits of the GUID are the year, month, day, and time when the file was downloaded so that a new folder is created each time. You can change this so that the file is downloaded to the same folder each time.

3. Download a security intelligence package from [https://www.microsoft.com/wdsi/definitions](https://www.microsoft.com/wdsi/definitions)  into the GUID folder. The file should be named `mpam-fe.exe`.

4. Open a cmd prompt window and navigate to the GUID folder you created. Use the **/X** extraction command to extract the files, for example `mpam-fe.exe /X`.

   > [!NOTE]
   > The VMs will pick up the updated package whenever a new GUID folder is created with an extracted update package or whenever an existing folder is updated with a new extracted package.

## Randomize scheduled scans

Scheduled scans run in addition to [real-time protection and scanning](configure-real-time-protection-microsoft-defender-antivirus.md).

The start time of the scan itself is still based on the scheduled scan policy (**ScheduleDay**, **ScheduleTime**, and **ScheduleQuickScanTime**). Randomization will cause Microsoft Defender Antivirus to start a scan on each machine within a four-hour window from the time set for the scheduled scan.

See [Schedule scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md) for other configuration options available for scheduled scans.

## Use quick scans

You can specify the type of scan that should be performed during a scheduled scan. Quick scans are the preferred approach as they are designed to look in all places where malware needs to reside to be active. The following procedure describes how to set up quick scans using Group Policy.

1. In your Group Policy Editor, go to **Administrative templates** \> **Windows components** \> **Microsoft Defender Antivirus** \> **Scan**.

2. Select **Specify the scan type to use for a scheduled scan** and then edit the policy setting.

3. Set the policy to **Enabled**, and then under **Options**, select  **Quick scan**.

4. Select **OK**.

5. Deploy your Group Policy object as you usually do.

## Prevent notifications

Sometimes, Microsoft Defender Antivirus notifications may be sent to or persist across multiple sessions. In order to minimize this problem, you can lock down the Microsoft Defender Antivirus user interface. The following procedure describes how to suppress notifications with Group Policy.

1. In your Group Policy Editor, go to **Windows components** \> **Microsoft Defender Antivirus** \> **Client Interface**.

2. Select **Suppress all notifications** and then edit the policy settings.

3. Set the policy to **Enabled**, and then select **OK**.

4. Deploy your Group Policy object as you usually do.

Suppressing notifications prevents notifications from Microsoft Defender Antivirus from showing up in the Action Center on Windows 10 when scans are done or remediation actions are taken. However, your security operations team will see the results of the scan while the attack was detected and stopped; alerts, such as an "initial access alert," are triggered and appear in the [Microsoft 365 Defender portal](/microsoft-365/security/defender/microsoft-365-defender).

> [!TIP]
> To open the Action Center on Windows 10 or Windows 11, take one of the following steps:
> - On the right end of the taskbar, select the Action Center icon.
> - Press the Windows logo key button + A.
> - On a touchscreen device, swipe in from the right edge of the screen.

## Disable scans after an update

Disabling a scan after an update will prevent a scan from occurring after receiving an update. You can apply this setting when creating the base image if you have also run a quick scan. This way, you can prevent the newly updated VM from performing a scan again (as you've already scanned it when you created the base image).

> [!IMPORTANT]
> Running scans after an update will help ensure your VMs are protected with the latest Security intelligence updates. Disabling this option will reduce the protection level of your VMs and should only be used when first creating or deploying the base image.

1. In your Group Policy Editor, go to **Windows components** \> **Microsoft Defender Antivirus** \> **Security Intelligence Updates**.

2. Select **Turn on scan after security intelligence update** and then edit the policy setting.

3. Set the policy to **Disabled**.

4. Select **OK**.

5. Deploy your Group Policy object as you usually do.

This policy prevents a scan from running immediately after an update.

## Disable the `ScanOnlyIfIdle` option

Use the following cmdlet, to stop a quick or scheduled scan whenever the device goes idle if it is in passive mode.

```PowerShell
Set-MpPreference -ScanOnlyIfIdleEnabled $false
```

You can also disable the `ScanOnlyIfIdle` option in Microsoft Defender Antivirus by configuration via local or domain group policy. This prevents the significant CPU contention in high density environments.

For more information, see [Start the scheduled scan only when computer is on but not in use](https://admx.help/?Category=SystemCenterEndpointProtection&Policy=Microsoft.Policies.Antimalware::scan_scanonlyifidle).

## Scan VMs that have been offline

1. In your Group Policy Editor, go to **Windows components** \> **Microsoft Defender Antivirus** \> **Scan**.

2. Select **Turn on catch-up quick scan** and then edit the policy setting.

3. Set the policy to **Enabled**.

4. Select **OK**.

5. Deploy your Group Policy Object as you usually do.

This policy forces a scan if the VM has missed two or more consecutive scheduled scans.

## Enable headless UI mode

1. In your Group Policy Editor, go to **Windows components** \> **Microsoft Defender Antivirus** \> **Client Interface**.

2. Select **Enable headless UI mode** and edit the policy.

3. Set the policy to **Enabled**.

4. Click **OK**.

5. Deploy your Group Policy Object as you usually do.

This policy hides the entire Microsoft Defender Antivirus user interface from end users in your organization.

## Exclusions

Exclusions can be added, removed, or customized to suit your needs.

For more information, see [Configure Microsoft Defender Antivirus exclusions on Windows Server](configure-exclusions-microsoft-defender-antivirus.md).

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## Additional resources

- [Tech Community Blog: Configuring Microsoft Defender Antivirus for non-persistent VDI machines](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/configuring-microsoft-defender-antivirus-for-non-persistent-vdi/ba-p/1489633)
- [TechNet forums on Remote Desktop Services and VDI](https://social.technet.microsoft.com/Forums/windowsserver/home?forum=winserverTS)
- [SignatureDownloadCustomTask PowerShell script](https://www.powershellgallery.com/packages/SignatureDownloadCustomTask/1.4)
