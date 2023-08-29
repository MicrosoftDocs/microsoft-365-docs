---
title: Use the command line to manage Microsoft Defender Antivirus
description: Run Microsoft Defender Antivirus scans and configure next-generation protection with a dedicated command-line utility.
ms.service: microsoft-365-security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: ksarens
manager: dansimp
ms.date: 06/06/2023
ms.subservice: mde
ms.topic: how-to
ms.collection: 
- m365-security
- tier3
search.appverid: met150
---

# Configure and manage Microsoft Defender Antivirus with the mpcmdrun.exe command-line tool

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus 

**Platforms**
- Windows

You can perform various functions in Microsoft Defender Antivirus using the dedicated command-line tool **mpcmdrun.exe**. This utility is useful when you want to automate Microsoft Defender Antivirus tasks. You can find the utility in `%ProgramFiles%\Windows Defender\MpCmdRun.exe`. Run it from a command prompt.

> [!TIP]
> You might need to open an administrator-level version of the command prompt. When you search for **Command Prompt** on the Start menu, choose **Run as administrator**. If you're running an updated Microsoft Defender antimalware platform version, run `MpCmdRun` from the following location: `C:\ProgramData\Microsoft\Windows Defender\Platform\<antimalware platform version>`. For more information about the antimalware platform, see [Microsoft Defender Antivirus updates and baselines](microsoft-defender-antivirus-updates.md).

The MpCmdRun utility uses the following syntax:

```console
MpCmdRun.exe [command] [-options]
```

Here's an example:

```console
MpCmdRun.exe -Scan -ScanType 2
```

In our example, the MpCmdRun utility starts a full antivirus scan on the device.

## Commands

|Command|Description|
|---|---|
|`-?` **or** `-h`|Displays all available options for the MpCmdRun tool|
|`-Scan [-ScanType [<value>]] [-File <path> [-DisableRemediation] [-BootSectorScan] [-CpuThrottling]] [-Timeout <days>] [-Cancel]`|Scans for malicious software. Values for **ScanType** are:<p>**0** Default, according to your configuration<p>**1** Quick scan<p>**2** Full scan<p>**3** File and directory custom scan.<p>CpuThrottling runs according to policy configurations.|
|`-Trace [-Grouping #] [-Level #]`|Starts diagnostic tracing|
|`-CaptureNetworkTrace -Path <path>`|Captures all the network input into the Network Protection service and saves it to a file at `<path>`. <br/>Supply an empty path to stop tracing.|
|`-GetFiles [-SupportLogLocation <path>]`|Collects support information. See [collecting diagnostic data](collect-diagnostic-data.md).|
|`-GetFilesDiagTrack`|Same as `-GetFiles`, but outputs to temporary DiagTrack folder.|
|`-RemoveDefinitions [-All]`|Restores the installed security intelligence to a previous backup copy or to the original default set.|
|`-RemoveDefinitions [-DynamicSignatures]`|Removes only the dynamically downloaded security intelligence.|
|`-RemoveDefinitions [-Engine]`|Restores the previous installed engine.|
|`-SignatureUpdate [-UNC \|-MMPC]`|Checks for new security intelligence updates.|
|`-Restore  [-ListAll \|[[-Name <name>] [-All] \|[-FilePath <filePath>]] [-Path <path>]]`|Restores or lists quarantined item(s).|
|`-AddDynamicSignature [-Path]`|Loads dynamic security intelligence.|
|`-ListAllDynamicSignatures`|Lists the loaded dynamic security intelligence.|
|`-RemoveDynamicSignature [-SignatureSetID]`|Removes dynamic security intelligence.|
|`-CheckExclusion -path <path>`|Checks whether a path is excluded.|
|`-ValidateMapsConnection`|Verifies that your network can communicate with the Microsoft Defender Antivirus cloud service. This command will only work on Windows 10, version 1703 or higher.|
|`-ResetPlatform`| Reset platform binaries back to `%ProgramFiles%\Windows Defender`.|
|`-RevertPlatform`| Revert platform binaries back to the previously installed version of the Defender platform.|

## Common errors in running commands via mpcmdrun.exe

The following table lists common errors that can occur while using the MpCmdRun tool.

|Error message|Possible reason|
|---|---|
|**ValidateMapsConnection failed (800106BA)** or **0x800106BA**|The Microsoft Defender Antivirus service is disabled. Enable the service and try again. If you need help re-enabling Microsoft Defender Antivirus, see [Reinstall/enable Microsoft Defender Antivirus on your endpoints](switch-to-mde-phase-2.md#step-1-reinstallenable-microsoft-defender-antivirus-on-your-endpoints).<p> Note that in Windows 10 1909 or older, and Windows Server 2019 or older, the service was formerly called *Windows Defender Antivirus*.|
|**0x80070667**|You're running the `-ValidateMapsConnection` command from a computer that is Windows 10 version 1607 or older, or Windows Server 2016 or older. Run the command from a machine that is Windows 10 version 1703 or newer, or Windows Server 2019 or newer.|
|**MpCmdRun is not recognized as an internal or external command, operable program, or batch file.**|The tool must be run from either `%ProgramFiles%\Windows Defender` or `C:\ProgramData\Microsoft\Windows Defender\Platform\4.18.2012.4-0` (where `2012.4-0` might differ since platform updates are monthly except for March)|
|**ValidateMapsConnection failed to establish a connection to MAPS (hr=80070005 httpcode=450)**|The command was attempted using insufficient privileges. Use the command prompt (cmd.exe) as an administrator.|
|**ValidateMapsConnection failed to establish a connection to MAPS (hr=80070006 httpcode=451)**|The firewall is blocking the connection or conducting SSL inspection.|
|**ValidateMapsConnection failed to establish a connection to MAPS (hr=80004005 httpcode=450)**|Possible network-related issues, like name resolution problems|
|**ValidateMapsConnection failed to establish a connection to MAPS (hr=0x80508015**|The firewall is blocking the connection or conducting SSL inspection.|
|**ValidateMapsConnection failed to establish a connection to MAPS (hr=800722F0D**|The firewall is blocking the connection or conducting SSL inspection.|
|**ValidateMapsConnection failed to establish a connection to MAPS (hr=80072EE7 httpcode=451)**|The firewall is blocking the connection or conducting SSL inspection.|

## See also

- [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
- [Configure Microsoft Defender Antivirus features](configure-microsoft-defender-antivirus-features.md)
- [Configure and validate Microsoft Defender Antivirus network connections](configure-network-connections-microsoft-defender-antivirus.md)
- [Reference topics for management and configuration tools](configuration-management-reference-microsoft-defender-antivirus.md)
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Configure Defender for Endpoint on Android features](android-configure.md)
- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
