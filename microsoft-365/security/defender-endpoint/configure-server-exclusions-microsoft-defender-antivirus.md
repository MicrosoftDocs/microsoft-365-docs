---
title: Microsoft Defender Antivirus exclusions on Windows Server
ms.reviewer: pahuijbr
manager: dansimp
description: Windows Server includes automatic exclusions, based on server role. You can also add custom exclusions.
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.date: 07/18/2023
author: denisebmsft
ms.author: deniseb
ms.topic: conceptual
ms.custom: nextgen
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Microsoft Defender Antivirus exclusions on Windows Server


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**

- Windows

This article describes types of exclusions that you don't have to define for Microsoft Defender Antivirus: 

- [Built-in exclusions](#built-in-exclusions) for operating system files on all versions of Windows. 
- [Automatic exclusions](#automatic-server-role-exclusions) for roles on Windows Server 2016 and later. 

For a more detailed overview of exclusions, see [Manage exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md).

## A few important points about exclusions on Windows Server

- Custom exclusions take precedence over automatic exclusions.
- Automatic exclusions only apply to [real-time protection (RTP)](configure-protection-features-microsoft-defender-antivirus.md) scanning. 
- Automatic exclusions aren't honored during a [quick scan, full scan, and custom scan](schedule-antivirus-scans.md#comparing-the-quick-scan-full-scan-and-custom-scan).
- Custom and duplicate exclusions don't conflict with automatic exclusions.
- Microsoft Defender Antivirus uses the Deployment Image Servicing and Management (DISM) tools to determine which roles are installed on your computer.
- Appropriate exclusions must be set for software that isn't included with the operating system.
- Windows Server 2012 R2 doesn't have Microsoft Defender Antivirus as an installable feature. When you onboard those servers to Defender for Endpoint, you'll install Microsoft Defender Antivirus, and default exclusions for operating system files are applied. However, exclusions for server roles (as specified below) don't apply automatically, and you should configure these exclusions as appropriate. To learn more, see [Onboard Windows servers to the Microsoft Defender for Endpoint service](configure-server-endpoints.md).
- Built-in exclusions and automatic server role exclusions don't appear in the standard exclusion lists that are shown in the [Windows Security app](microsoft-defender-security-center-antivirus.md).

## Automatic server role exclusions

On Windows Server 2016 or later, you shouldn't need to define exclusions for server roles. When you install a role on Windows Server 2016 or later, Microsoft Defender Antivirus includes automatic exclusions for the server role and any files that are added while installing the role.

Windows Server 2012 R2 does not support the automatic exclusions feature. You'll need to define explicit exclusions for any server role and any software that's added after installing the operating system.

> [!IMPORTANT]
> - Default locations could be different than the locations that are described in this article.
> - To set exclusions for software that isn't included as a Windows feature or server role, refer to the software manufacturer's documentation.

Automatic exclusions include:

- [Hyper-V exclusions](#hyper-v-exclusions)
- [SYSVOL files](#sysvol-files)
- [Active Directory exclusions](#active-directory-exclusions)
- [DHCP Server exclusions](#dhcp-server-exclusions)
- [DNS Server exclusions](#dns-server-exclusions)
- [File and Storage Services exclusions](#file-and-storage-services-exclusions)
- [Print Server exclusions](#print-server-exclusions)
- [Web Server exclusions](#web-server-exclusions)
- [Windows Server Update Services exclusions](#windows-server-update-services-exclusions)

### Hyper-V exclusions

The following table lists the file type exclusions, folder exclusions, and process exclusions that are delivered automatically when you install the Hyper-V role.

|Exclusion type|Specifics|
|---|---|
|File types|`*.vhd` <br/> `*.vhdx` <br/> `*.avhd` <br/> `*.avhdx` <br/> `*.vsv` <br/> `*.iso` <br/> `*.rct` <br/> `*.vmcx` <br/> `*.vmrs`|
|Folders|`%ProgramData%\Microsoft\Windows\Hyper-V` <br/> `%ProgramFiles%\Hyper-V` <br/> `%SystemDrive%\ProgramData\Microsoft\Windows\Hyper-V\Snapshots` <br/> `%Public%\Documents\Hyper-V\Virtual Hard Disks`|
|Processes|`%systemroot%\System32\Vmms.exe` <br/> `%systemroot%\System32\Vmwp.exe`|

### SYSVOL files

- `%systemroot%\Sysvol\Domain\*.adm`
- `%systemroot%\Sysvol\Domain\*.admx`
- `%systemroot%\Sysvol\Domain\*.adml`
- `%systemroot%\Sysvol\Domain\Registry.pol`
- `%systemroot%\Sysvol\Domain\*.aas`
- `%systemroot%\Sysvol\Domain\*.inf`
- `%systemroot%\Sysvol\Domain\*Scripts.ini`
- `%systemroot%\Sysvol\Domain\*.ins`
- `%systemroot%\Sysvol\Domain\Oscfilter.ini`

### Active Directory exclusions

This section lists the exclusions that are delivered automatically when you install Active Directory Domain Services (AD DS).

#### NTDS database files

The database files are specified in the registry key `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\NTDS\Parameters\DSA Database File`

- `%windir%\Ntds\ntds.dit`
- `%windir%\Ntds\ntds.pat`

#### The AD DS transaction log files

The transaction log files are specified in the registry key `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\NTDS\Parameters\Database Log Files Path`

- `%windir%\Ntds\EDB*.log`
- `%windir%\Ntds\Res*.log`
- `%windir%\Ntds\Edb*.jrs`
- `%windir%\Ntds\Ntds*.pat`
- `%windir%\Ntds\TEMP.edb`

#### The NTDS working folder

This folder is specified in the registry key `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\NTDS\Parameters\DSA Working Directory`

- `%windir%\Ntds\Temp.edb`
- `%windir%\Ntds\Edb.chk`

#### Process exclusions for AD DS and AD DS-related support files

- `%systemroot%\System32\ntfrs.exe`
- `%systemroot%\System32\lsass.exe`

### DHCP Server exclusions

This section lists the exclusions that are delivered automatically when you install the DHCP Server role. The DHCP Server file locations are specified by the *DatabasePath*, *DhcpLogFilePath*, and *BackupDatabasePath* parameters in the registry key `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\DHCPServer\Parameters`

- `%systemroot%\System32\DHCP\*\*.mdb`
- `%systemroot%\System32\DHCP\*\*.pat`
- `%systemroot%\System32\DHCP\*\*.log`
- `%systemroot%\System32\DHCP\*\*.chk`
- `%systemroot%\System32\DHCP\*\*.edb`

### DNS Server exclusions

This section lists the file and folder exclusions and the process exclusions that are delivered automatically when you install the DNS Server role.

#### File and folder exclusions for the DNS Server role

- `%systemroot%\System32\Dns\*\*.log`
- `%systemroot%\System32\Dns\*\*.dns`
- `%systemroot%\System32\Dns\*\*.scc`
- `%systemroot%\System32\Dns\*\BOOT`

#### Process exclusions for the DNS Server role

- `%systemroot%\System32\dns.exe`

### File and Storage Services exclusions

This section lists the file and folder exclusions that are delivered automatically when you install the File and Storage Services role. The exclusions listed below don't include exclusions for the Clustering role.

- `%SystemDrive%\ClusterStorage`
- `%clusterserviceaccount%\Local Settings\Temp`
- `%SystemDrive%\mscs`

### Print Server exclusions

This section lists the file type exclusions, folder exclusions, and the process exclusions that are delivered automatically when you install the Print Server role.

#### File type exclusions

- `*.shd`
- `*.spl`

#### Folder exclusions

This folder is specified in the registry key `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Printers\DefaultSpoolDirectory`

- `%system32%\spool\printers\*`

#### Process exclusions for the Print Server role

- `spoolsv.exe`

### Web Server exclusions

This section lists the folder exclusions and the process exclusions that are delivered automatically when you install the Web Server role.

#### Folder exclusions

- `%SystemRoot%\IIS Temporary Compressed Files`
- `%SystemDrive%\inetpub\temp\IIS Temporary Compressed Files`
- `%SystemDrive%\inetpub\temp\ASP Compiled Templates`
- `%systemDrive%\inetpub\logs`
- `%systemDrive%\inetpub\wwwroot`

#### Process exclusions for the Web Server role

- `%SystemRoot%\system32\inetsrv\w3wp.exe`
- `%SystemRoot%\SysWOW64\inetsrv\w3wp.exe`
- `%SystemDrive%\PHP5433\php-cgi.exe`

#### Turning off scanning of files in the Sysvol\Sysvol folder or the SYSVOL_DFSR\Sysvol folder

The current location of the `Sysvol\Sysvol` or `SYSVOL_DFSR\Sysvol` folder and all the subfolders is the file system reparse target of the replica set root. The `Sysvol\Sysvol` and `SYSVOL_DFSR\Sysvol` folders use the following locations by default:

- `%systemroot%\Sysvol\Domain`
- `%systemroot%\Sysvol_DFSR\Domain`

The path to the currently active `SYSVOL` is referenced by the NETLOGON share and can be determined by the SysVol value name in the following subkey: `HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Netlogon\Parameters`

Exclude the following files from this folder and all its subfolders:

- `*.adm`
- `*.admx`
- `*.adml`
- `Registry.pol`
- `Registry.tmp`
- `*.aas`
- `*.inf`
- `Scripts.ini`
- `*.ins`
- `Oscfilter.ini`

### Windows Server Update Services exclusions

This section lists the folder exclusions that are delivered automatically when you install the Windows Server Update Services (WSUS) role. The WSUS folder is specified in the registry key `HKEY_LOCAL_MACHINE\Software\Microsoft\Update Services\Server\Setup`

- `%systemroot%\WSUS\WSUSContent`
- `%systemroot%\WSUS\UpdateServicesDBFiles`
- `%systemroot%\SoftwareDistribution\Datastore`
- `%systemroot%\SoftwareDistribution\Download`

## Built-in exclusions

Because Microsoft Defender Antivirus is built into Windows, it doesn't require exclusions for operating system files on any version of Windows. 

Built-in exclusions include:

- [Windows "temp.edb" files](#windows-tempedb-files)
- [Windows Update files or Automatic Update files](#windows-update-files-or-automatic-update-files)
- [Windows Security files](#windows-security-files)
- [Group Policy files](#group-policy-files)
- [WINS files](#wins-files)
- [File Replication Service (FRS) exclusions](#file-replication-service-frs-exclusions)
- [Process exclusions for built-in operating system files](#process-exclusions-for-built-in-operating-system-files)

### Windows "temp.edb" files

- `%windir%\SoftwareDistribution\Datastore\*\tmp.edb`
- `%ProgramData%\Microsoft\Search\Data\Applications\Windows\windows.edb`

### Windows Update files or Automatic Update files

- `%windir%\SoftwareDistribution\Datastore\*\Datastore.edb`
- `%windir%\SoftwareDistribution\Datastore\*\edb.chk`
- `%windir%\SoftwareDistribution\Datastore\*\edb\*.log`
- `%windir%\SoftwareDistribution\Datastore\*\Edb\*.jrs`
- `%windir%\SoftwareDistribution\Datastore\*\Res\*.log`

### Windows Security files

- `%windir%\Security\database\*.chk`
- `%windir%\Security\database\*.edb`
- `%windir%\Security\database\*.jrs`
- `%windir%\Security\database\*.log`
- `%windir%\Security\database\*.sdb`

### Group Policy files

- `%allusersprofile%\NTUser.pol`
- `%SystemRoot%\System32\GroupPolicy\Machine\registry.pol`
- `%SystemRoot%\System32\GroupPolicy\User\registry.pol`

### WINS files

- `%systemroot%\System32\Wins\*\*.chk`
- `%systemroot%\System32\Wins\*\*.log`
- `%systemroot%\System32\Wins\*\*.mdb`
- `%systemroot%\System32\LogFiles\`
- `%systemroot%\SysWow64\LogFiles\`

### File Replication Service (FRS) exclusions

- Files in the File Replication Service (FRS) working folder. The FRS working folder is specified in the registry key `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\NtFrs\Parameters\Working Directory`

  - `%windir%\Ntfrs\jet\sys\*\edb.chk`
  - `%windir%\Ntfrs\jet\*\Ntfrs.jdb`
  - `%windir%\Ntfrs\jet\log\*\*.log`

- FRS Database log files. The FRS Database log file folder is specified in the registry key `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Ntfrs\Parameters\DB Log File Directory`

  - `%windir%\Ntfrs\*\Edb\*.log`

- The FRS staging folder. The staging folder is specified in the registry key `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\NtFrs\Parameters\Replica Sets\GUID\Replica Set Stage`

  - `%systemroot%\Sysvol\*\Ntfrs_cmp*\`

- The FRS preinstall folder. This folder is specified by the folder `Replica_root\DO_NOT_REMOVE_NtFrs_PreInstall_Directory`

  - `%systemroot%\SYSVOL\domain\DO_NOT_REMOVE_NtFrs_PreInstall_Directory\*\Ntfrs*\`

- The Distributed File System Replication (DFSR) database and working folders. These folders are specified by the registry key `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\DFSR\Parameters\Replication Groups\GUID\Replica Set Configuration File`

  > [!NOTE]
  > For custom locations, see [Opting out of automatic exclusions](#opting-out-of-automatic-exclusions).

  - `%systemdrive%\System Volume Information\DFSR\$db_normal$`
  - `%systemdrive%\System Volume Information\DFSR\FileIDTable_*`
  - `%systemdrive%\System Volume Information\DFSR\SimilarityTable_*`
  - `%systemdrive%\System Volume Information\DFSR\*.XML`
  - `%systemdrive%\System Volume Information\DFSR\$db_dirty$`
  - `%systemdrive%\System Volume Information\DFSR\$db_clean$`
  - `%systemdrive%\System Volume Information\DFSR\$db_lostl$`
  - `%systemdrive%\System Volume Information\DFSR\Dfsr.db`
  - `%systemdrive%\System Volume Information\DFSR\*.frx`
  - `%systemdrive%\System Volume Information\DFSR\*.log`
  - `%systemdrive%\System Volume Information\DFSR\Fsr*.jrs`
  - `%systemdrive%\System Volume Information\DFSR\Tmp.edb`

### Process exclusions for built-in operating system files

- `%systemroot%\System32\dfsr.exe`
- `%systemroot%\System32\dfsrs.exe`

## Opting out of automatic exclusions

In Windows Server 2016 and later, the predefined exclusions delivered by [Security intelligence updates](microsoft-defender-antivirus-updates.md#security-intelligence-updates) only exclude the default paths for a role or feature. If you installed a role or feature in a custom path, or you want to manually control the set of exclusions, make sure to opt out of the automatic exclusions delivered in Security intelligence updates. But keep in mind that the exclusions that are delivered automatically are optimized for Windows Server 2016 and later. See [Important points about exclusions](configure-exclusions-microsoft-defender-antivirus.md#important-points-about-exclusions) before defining your exclusion lists.

> [!WARNING]
> Opting out of automatic exclusions might adversely impact performance, or result in data corruption. Automatic server role exclusions are optimized for Windows Server 2016, Windows Server 2019, and Windows Server 2022.

Because predefined exclusions only exclude **default paths**, if you move NTDS and SYSVOL folders to another drive or path that is *different from the original path*, you must add exclusions manually. See [Configure the list of exclusions based on folder name or file extension](configure-extension-file-exclusions-microsoft-defender-antivirus.md#configure-the-list-of-exclusions-based-on-folder-name-or-file-extension).

You can disable the automatic exclusion lists with Group Policy, PowerShell cmdlets, and WMI.

### Use Group Policy to disable the auto-exclusions list on Windows Server 2016, Windows Server 2019, and Windows Server 2022

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc725752(v=ws.11)). Right-click the Group Policy Object you want to configure, and then select **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**, and then select **Administrative templates**.

3. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus** \> **Exclusions**.

4. Double-click **Turn off Auto Exclusions**, and set the option to **Enabled**. Then select **OK**.

### Use PowerShell cmdlets to disable the auto-exclusions list on Windows Server

Use the following cmdlets:

```PowerShell
Set-MpPreference -DisableAutoExclusions $true
```

To learn more, see the following resources:

- [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md).
- [Use PowerShell with Microsoft Defender Antivirus](/powershell/module/defender/).

### Use Windows Management Instruction (WMI) to disable the auto-exclusions list on Windows Server

Use the **Set** method of the [MSFT_MpPreference](/previous-versions/windows/desktop/defender/msft-mppreference) class for the following properties:

```WMI
DisableAutoExclusions
```

For more information and allowed parameters, see:

- [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)

## Defining custom exclusions

If necessary, you can add or remove custom exclusions. To do that, see the following articles:

- [Configure custom exclusions for Microsoft Defender Antivirus](configure-exclusions-microsoft-defender-antivirus.md)
- [Configure and validate exclusions based on file name, extension, and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md)
- [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-microsoft-defender-antivirus.md)

 ## See also

- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
- [Common mistakes to avoid when defining exclusions](common-exclusion-mistakes-microsoft-defender-antivirus.md)
- [Customize, initiate, and review the results of Microsoft Defender Antivirus scans and remediation](customize-run-review-remediate-scans-microsoft-defender-antivirus.md)
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Configure Defender for Endpoint on Android features](android-configure.md)
- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
