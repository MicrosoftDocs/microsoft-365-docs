---
title: Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus
description: In Windows 10 and Windows 11, you can use PowerShell cmdlets to run scans, update Security intelligence, and change settings in Microsoft Defender Antivirus.
keywords: scan, command line, mpcmdrun, defender
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 09/06/2022
ms.reviewer: 
manager: dansimp
ms.subservice: mde
audience: ITPro
ms.topic: how-to
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Use PowerShell cmdlets to configure and manage Microsoft Defender Antivirus

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

You can use PowerShell to perform various functions in Windows Defender. Similar to the command prompt or command line, PowerShell is a task-based command-line shell and scripting language designed especially for system administration. You can read more about it in the [PowerShell documentation](/powershell/scripting/overview).

For a list of the cmdlets and their functions and available parameters, see the [Defender Antivirus cmdlets](/powershell/module/defender) topic.

PowerShell cmdlets are most useful in Windows Server environments that don't rely on a graphical user interface (GUI) to configure software.

> [!NOTE]
> PowerShell cmdlets should not be used as a replacement for a full network policy management infrastructure, such as [Microsoft Endpoint Configuration Manager](/configmgr), [Group Policy Management Console](use-group-policy-microsoft-defender-antivirus.md), or [Microsoft Defender Antivirus Group Policy ADMX templates](https://www.microsoft.com/download/101445).

Changes made with PowerShell will affect local settings on the endpoint where the changes are deployed or made. This means that deployments of policy with Group Policy, Microsoft Endpoint Configuration Manager, or Microsoft Intune can overwrite changes made with PowerShell.

You can [configure which settings can be overridden locally with local policy overrides](configure-local-policy-overrides-microsoft-defender-antivirus.md).

PowerShell is typically installed under the folder `%SystemRoot%\system32\WindowsPowerShell`.

## Use Microsoft Defender Antivirus PowerShell cmdlets

1. In the Windows search bar, type **powershell**.
2. Select **Windows PowerShell** from the results to open the interface.
3. Enter the PowerShell command and any parameters.

> [!NOTE]
> You may need to open PowerShell in administrator mode. Right-click the item in the Start menu, click **Run as administrator** and click **Yes** at the permissions prompt.

To open online help for any of the cmdlets type the following:

```PowerShell
Get-Help <cmdlet> -Online
```

Omit the `-online` parameter to get locally cached help.

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

> [!TIP]
> **Performance tip** Due to a variety of factors (examples listed below) Microsoft Defender Antivirus, like other antivirus software, can cause performance issues on endpoint devices. In some cases, you might need to tune the performance of Microsoft Defender Antivirus to alleviate those performance issues. Microsoft's **Performance analyzer** is a PowerShell command-line tool that helps determine which files, file paths, processes, and file extensions might be causing performance issues; some examples are:
>
> - Top paths that impact scan time
> - Top files that impact scan time
> - Top processes that impact scan time
> - Top file extensions that impact scan time
> - Combinations – for example:
>   - top files per extension
>   - top paths per extension
>   - top processes per path
>   - top scans per file
>   - top scans per file per process
>
> You can use the information gathered using Performance analyzer to better assess performance issues and apply remediation actions. 
> See: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).

## Related topics

- [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
- [Reference topics for management and configuration tools](configuration-management-reference-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Microsoft Defender Antivirus Cmdlets](/powershell/module/defender)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
