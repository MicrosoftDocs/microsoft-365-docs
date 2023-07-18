---
title: Common mistakes to avoid when defining exclusions
description: Avoid common mistakes when defining exclusions for Microsoft Defender Antivirus scans.
ms.service: microsoft-365-security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer:
manager: dansimp
ms.subservice: mde
ms.topic: conceptual
ms.date: 07/18/2023
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Common mistakes to avoid when defining exclusions

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender for Endpoint Plan 1
- Microsoft Defender Antivirus 

**Platforms**

- Windows
- macOS
- Linux

> [!IMPORTANT]
> **Add exclusions with caution**. Exclusions for Microsoft Defender Antivirus scans reduce the level of protection for devices.

You can define an exclusion list for items that you don't want Microsoft Defender Antivirus to scan. However, excluded items could contain threats that make your device vulnerable. This article describes some common mistakes that you should avoid when defining exclusions.

> [!TIP]
> Before defining your exclusion lists, see [Important points about exclusions](configure-exclusions-microsoft-defender-antivirus.md#important-points-about-exclusions) and review the detailed information in [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md).

## Excluding certain trusted items

Certain files, file types, folders, or processes shouldn't be excluded from scanning even though you trust that they're not malicious. Don't define exclusions for the folder locations, file extensions, and processes that are listed in the following sections:

- [Folder locations](#folder-locations)
- [File extensions](#file-extensions)
- [Processes](#processes)

### Folder locations

> [!IMPORTANT]
> Certain folders shouldn't be excluded from scans because they can end up being folders where malicious files can get dropped.

In general, don't define exclusions for any of the following folder locations:

- `%systemdrive%`
- `C:`, `C:\`, or `C:\*`
- `%ProgramFiles%\Java` or `C:\Program Files\Java`
- `%ProgramFiles%\Contoso\`, `C:\Program Files\Contoso\`, `%ProgramFiles(x86)%\Contoso\`, or `C:\Program Files (x86)\Contoso\`
- `C:\Temp`, `C:\Temp\`, or `C:\Temp\*`
- `C:\Users\` or `C:\Users\*`
- `C:\Users\<UserProfileName>\AppData\Local\Temp\` or `C:\Users\<UserProfileName>\AppData\LocalLow\Temp\`. **Note the following important exceptions for SharePoint**: **Do exclude** `C:\Users\ServiceAccount\AppData\Local\Temp` or `C:\Users\Default\AppData\Local\Temp` when you use [file-level antivirus protection in SharePoint](https://support.microsoft.com/office/certain-folders-may-have-to-be-excluded-from-antivirus-scanning-when-you-use-file-level-antivirus-software-in-sharepoint-01cbc532-a24e-4bba-8d67-0b1ed733a3d9).
- `%Windir%\Prefetch`, `C:\Windows\Prefetch`, `C:\Windows\Prefetch\`, or `C:\Windows\Prefetch\*`
- `%Windir%\System32\Spool` or `C:\Windows\System32\Spool`
- `C:\Windows\System32\CatRoot2`
- `%Windir%\Temp`, `C:\Windows\Temp`, `C:\Windows\Temp\`, or `C:\Windows\Temp\*`

#### Linux and macOS Platforms

In general, don't define exclusions for the following folder locations:

- `/`
- `/bin` or `/sbin`
- `/usr/lib`

### File extensions

> [!IMPORTANT]
> Certain file extensions shouldn't be excluded because they can be file types that are used in an attack.

In general, don't define exclusions for the following file extensions:

- `.7z`
- `.bat`
- `.bin`
- `.cab`
- `.cmd`
- `.com`
- `.cpl`
- `.dll`
- `.exe`
- `.fla`
- `.gif`
- `.gz`
- `.hta`
- `.inf`
- `.java`
- `.jar`
- `.job`
- `.jpeg`
- `.jpg`
- `.js`
- `.ko` or `.ko.gz`
- `.msi`
- `.ocx`
- `.png`
- `.ps1`
- `.py`
- `.rar`
- `.reg`
- `.scr`
- `.sys`
- `.tar`
- `.tmp`
- `.url`
- `.vbe`
- `.vbs`
- `.wsf`
- `.zip`

### Processes

> [!IMPORTANT]
> Certain processes shouldn't be excluded because they get used during attacks.

In general, don't define exclusions for the following processes:

- `AcroRd32.exe`
- `addinprocess.exe`
- `addinprocess32.exe`
- `addinutil.exe`
- `bash.exe`
- `bginfo.exe`
- `bitsadmin.exe`
- `cdb.exe`
- `csi.exe`
- `cmd.exe`
- `cscript.exe`
- `dbghost.exe`
- `dbgsvc.exe`
- `dnx.exe`
- `dotnet.exe`
- `excel.exe`
- `fsi.exe`
- `fsiAnyCpu.exe`
- `iexplore.exe`
- `java.exe`
- `kd.exe`
- `lxssmanager.dll`
- `msbuild.exe`
- `mshta.exe`
- `ntkd.exe`
- `ntsd.exe`
- `outlook.exe`
- `psexec.exe`
- `powerpnt.exe`
- `powershell.exe`
- `rcsi.exe`
- `svchost.exe`
- `schtasks.exe`
- `system.management.automation.dll`
- `windbg.exe`
- `winword.exe`
- `wmic.exe`
- `wscript.exe`
- `wuauclt.exe`

> [!NOTE]
> You can choose to exclude file types, such as `.gif`, `.jpg`, `.jpeg`, or `.png` if your environment has a modern, up-to-date software with a strict update policy to handle any vulnerabilities.

#### Linux and macOS Platforms

In general, don't define exclusions for the following processes:

- `bash`
- `java`
- `python` and `python3`
- `sh`
- `zsh`

## Using just the file name in the exclusion list

Malware might have the same name as that of a file that you trust and want to exclude from scanning. Therefore, to avoid excluding potential malware from scanning, use a fully qualified path to the file that you want to exclude instead of using just the file name. For example, if you want to exclude `Filename.exe` from scanning, use the complete path to the file, such as `C:\program files\contoso\Filename.exe`.

## Using a single exclusion list for multiple server workloads

Don't use a single exclusion list to define exclusions for multiple server workloads. Split the exclusions for different application or service workloads into multiple exclusion lists. For example, the exclusion list for your IIS Server workload must be different from the exclusion list for your SQL Server workload.

## Using incorrect environment variables as wildcards in the file name and folder path or extension exclusion lists

Microsoft Defender Antivirus Service runs in system context using the LocalSystem account, which means it gets information from the system environment variable, and not from the user environment variable. Use of environment variables as a wildcard in exclusion lists is limited to system variables and those applicable to processes running as an NT AUTHORITY\SYSTEM account. Therefore, don't use user environment variables as wildcards when adding Microsoft Defender Antivirus folder and process exclusions. See the table under [System environment variables](configure-extension-file-exclusions-microsoft-defender-antivirus.md#system-environment-variables) for a complete list of system environment variables.

See [Use wildcards in the file name and folder path or extension exclusion lists](configure-extension-file-exclusions-microsoft-defender-antivirus.md#use-wildcards-in-the-file-name-and-folder-path-or-extension-exclusion-lists) for information on how to use wildcards in exclusion lists.

## See also

- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
- [Configure custom exclusions for Microsoft Defender Antivirus](configure-exclusions-microsoft-defender-antivirus.md)
- [Configure and validate exclusions for Microsoft Defender for Endpoint on Linux](linux-exclusions.md)
- [Configure and validate exclusions for Microsoft Defender for Endpoint on macOS](mac-exclusions.md)


[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
