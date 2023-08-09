---
title: Configure scanning options for Microsoft Defender Antivirus
description: You can configure Microsoft Defender Antivirus to scan email storage files, back-up or reparse points, network files, and archived files (such as .zip files).
ms.service: microsoft-365-security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: pahuijbr
manager: dansimp
ms.subservice: mde
ms.date: 07/05/2023
ms.collection: 
- m365-security
- tier2
ms.topic: how-to
search.appverid: met150
---

# Configure Microsoft Defender Antivirus scanning options

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows 

## Use Microsoft Intune to configure scanning options

For more information, see [Configure device restriction settings in Microsoft Intune](/intune/device-restrictions-configure) and [Microsoft Defender Antivirus device restriction settings for Windows 10 in Intune](/intune/device-restrictions-windows-10#microsoft-defender-antivirus).

## Use Microsoft Configuration Manager to configure scanning options

For details on configuring Microsoft Configuration Manager (current branch), see [How to create and deploy antimalware policies: Scan settings](/configmgr/protect/deploy-use/endpoint-antimalware-policies#scan-settings).

## Use Group Policy to configure scanning options

> [!TIP]
> Download the Group Policy Reference Spreadsheet, which lists the policy settings for computer and user configurations that are included in the Administrative template files delivered with for Windows. You can configure refer to the spreadsheet when you edit Group Policy Objects. <br/><br/> Here are the most recent versions:
> - [Group Policy Settings Reference Spreadsheet for Windows 10 May 2020 Update (2004)](https://www.microsoft.com/download/details.aspx?id=101451)
> - [Group Policy Settings Reference Spreadsheet for Windows 11 October 2021 Update (21H2)](https://www.microsoft.com/download/details.aspx?id=103506)

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)).

2. Right-click the Group Policy Object you want to configure, and then select **Edit**.

3. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

4. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus**, and then select a location (refer to [Settings and locations](#settings-and-locations) in this article).

5. Edit the policy object.

6. Click **OK**, and repeat for any other settings.

### Settings and locations

|Policy item and location|Default setting <br/>(if not configured)|PowerShell `Set-MpPreference` parameter <br/>or WMI property for `MSFT_MpPreference` class|
|---|---|---|
|Email scanning <br/> **Scan** \> **Turn on e-mail scanning**<br/>See [Email scanning limitations](#email-scanning-limitations) (in this article)|Disabled|`-DisableEmailScanning`|
| Script scanning | Enabled  | This policy setting allows you to configure script scanning. If you enable or do not configure this setting, script scanning is enabled. <br/><br/>See [Defender/AllowScriptScanning](/windows/client-management/mdm/policy-csp-defender)  | 
|Scan [reparse points](/windows/win32/fileio/reparse-points) <br/> **Scan** \> **Turn on reparse point scanning**|Disabled|Not available <br/>See [Reparse points](/windows/win32/fileio/reparse-points)|
|Scan mapped network drives<br/>**Scan** \> **Run full scan on mapped network drives**|Disabled|`-DisableScanningMappedNetworkDrivesForFullScan`|
|Scan archive files (such as .zip or .rar files). <br/>**Scan** \> **Scan archive files**|Enabled|`-DisableArchiveScanning` <br/><br/>The [extensions exclusion list](configure-extension-file-exclusions-microsoft-defender-antivirus.md) will take precedence over this setting.|
|Scan files on the network <br/>**Scan** \> **Scan network files**|Enabled|`-DisableScanningNetworkFiles`|
|Scan packed executables<br/>**Scan** \> **Scan packed executables**|Enabled|Not available <br/><br/>Scan packed executables were removed from the following templates:<br/>- Administrative Templates (.admx) for Windows 11 2022 Update (22H2)<br/>- Administrative Templates (.admx) for Windows 11 October 2021 Update (21H2)|
|Scan removable drives during full scans only<br/>**Scan** \> **Scan removable drives**|Disabled|`-DisableRemovableDriveScanning`|
|Specify the level of subfolders within an archive folder to scan <p>**Scan** \> **Specify the maximum depth to scan archive files**|0|Not available|
|Specify the maximum CPU load (as a percentage) during a scan. <p> **Scan** \> **Specify the maximum percentage of CPU utilization during a scan**|50|`-ScanAvgCPULoadFactor`<br/><br/> The maximum CPU load is not a hard limit, but is guidance for the scanning engine to not exceed the maximum on average. Manual scans ignore this setting and run without any CPU limits.|
|Specify the maximum size (in kilobytes) of archive files that should be scanned.<br/>**Scan** \> **Specify the maximum size of archive files to be scanned**|No limit|Not available <br/><br/>The default value of 0 applies no limit|
|Configure low CPU priority for scheduled scans<br/>**Scan** \> **Configure low CPU priority for scheduled scans**|Disabled|Not available|

> [!NOTE]
> If real-time protection is turned on, files are scanned before they are accessed and executed. The scanning scope includes all files, including files on mounted removable media, such as USB drives. If the device performing the scan has real-time protection or on-access protection turned on, the scan also includes network shares.

## Use PowerShell to configure scanning options

For more information on how to use PowerShell with Microsoft Defender Antivirus, see the following articles:

- [Manage Microsoft Defender Antivirus with PowerShell cmdlets](use-powershell-cmdlets-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus cmdlets](/powershell/module/defender/)

## Use WMI to configure scanning options

See [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal).

## Email scanning limitations

Email scanning enables scanning of email files used by Outlook and other mail clients during on-demand and scheduled scans. Embedded objects within email (such as attachments and archived files) are also scanned. The following file format types can be scanned and remediated:

- DBX
- MBX
- MIME

PST files used by Outlook 2003 or older (where the archive type is set to non-unicode) are also scanned, but Microsoft Defender Antivirus cannot remediate threats that are detected inside PST files.

If Microsoft Defender Antivirus detects a threat inside an email message, the following information is displayed to assist you in identifying the compromised email so you can remediate the threat manually:

- Email subject
- Attachment name

## Scanning mapped network drives

On any OS, only the network drives that are mapped at system level, are scanned. User-level mapped network drives aren't scanned. User-level mapped network drives are those that a user maps in their session manually and using their own credentials.

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
