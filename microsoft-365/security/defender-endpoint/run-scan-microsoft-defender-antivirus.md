---
title: Run and customize on-demand scans in Microsoft Defender Antivirus
description: Run and configure on-demand scans using PowerShell, Windows Management Instrumentation, or individually on endpoints with the Windows Security app
ms.service: defender-endpoint
ms.localizationpriority: medium
ms.topic: conceptual
author: siosulli
ms.author: siosulli
ms.custom: nextgen
ms.date: 12/15/2023
ms.reviewer:
manager: deniseb
ms.subservice: ngp
ms.collection: 
- m365-security
- tier2
- mde-ngp
search.appverid: met150
---

# Configure and run on-demand Microsoft Defender Antivirus scans

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)
- [Microsoft Defender Antivirus](microsoft-defender-antivirus-windows.md)

You can run an on-demand scan on individual endpoints. These scans will start immediately, and you can define parameters for the scan, such as the location or type. When you run a scan, you can choose from among three types: Quick scan, full scan, and custom scan. In most cases, use a quick scan. A quick scan looks at all the locations where there could be malware registered to start with the system, such as registry keys and known Windows startup folders.

Combined with always-on, real-time protection, which reviews files when they are opened and closed, and whenever a user navigates to a folder, a quick scan helps provide strong protection against malware that starts with the system and kernel-level malware. In most cases, a quick scan is sufficient and is the recommended option for scheduled or on-demand scans. [Learn more about scan types](schedule-antivirus-scans.md#comparing-the-quick-scan-full-scan-and-custom-scan).

> [!IMPORTANT]
> Microsoft Defender Antivirus runs in the context of the [LocalSystem](/windows/win32/services/localsystem-account) account when performing a local scan. For network scans, it uses the context of the device account. If the domain device account doesn't have appropriate permissions to access the share, the scan won't work. Ensure that the device has permissions to access the network share.

## Use Microsoft Defender portal to run a scan

1. Go to the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com/)) and sign-in.
2. Go to the **device page** that you would like to run a remote scan.
3. Click on the ellipses **(…)**.
4. Click on **Run Antivirus Scan**.
5. Under **Select scan type**, select the radio button for **Quick Scan** or **Full Scan**.
6. Add a comment.
7. Click on **Confirm**.

To check on the status:

1. Under **Actions & submissions**, select **Action Center** and then select **History** tab.
2. Click on **Filters**.
3. Under the **Action Type**, check the box for **Start antivirus scan**.
4. Click on **Apply**.
5. Select one of the **radio button**.
6. Under **Action Status**, you'll see the status such as **Completed**.

To check on the detections, see [Review the results of Microsoft Defender Antivirus scans | Microsoft Learn](review-scan-results-microsoft-defender-antivirus.md)

## Use Microsoft Intune to run a scan

### Use endpoint security to run a scan on Windows devices

1. Go to the Microsoft Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign-in.

2. Choose **Endpoint security** \> **Antivirus**.

3. In the list of tabs, select **Windows 10 unhealthy endpoints** or **Windows 11 unhealthy endpoints**.

4. From the list of actions provided, select **Quick Scan** (recommended) or **Full Scan**.

   [![Scan options on the Windows 10 unhealthy endpoints tab.](images/mem-antivirus-scan-on-demand.png)](images/mem-antivirus-scan-on-demand.png#lightbox)

> [!TIP]
> For more information about using Microsoft Configuration Manager to run a scan, see [Antimalware and firewall tasks: How to perform an on-demand scan](/configmgr/protect/deploy-use/endpoint-antimalware-firewall#how-to-perform-an-on-demand-scan-of-computers).

### Use devices to run a scan on a single device

1. Go to the Microsoft Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign-in.

2. From the sidebar, select **Devices** \> **All Devices** and choose the device you want to scan.

3. Select **...More** and select **Quick Scan** (recommended) or **Full Scan** from the options.

## Use the Windows Security app to run a scan

For instructions on running a scan on individual endpoints, see [Run a scan in the Windows Security app](microsoft-defender-security-center-antivirus.md).

## Use PowerShell cmdlets to run a scan

Use the following cmdlet:


```PowerShell
Start-MpScan
```

## Use PowerShell cmdlets to run a quick scan without excluding antivirus exclusions

Use the following cmdlet:

```PowerShell
Set-MpPreference -QuickScanIncludeExclusions 1
```

> [!NOTE]
> A value of `1` enables the inclusion of the antivirus excluded processes, folders, files, and extensions. A value of `0` (default) disables the inclusion of the antivirus excluded processes, folders, files, and extensions.

For more information on how to use PowerShell with Microsoft Defender Antivirus, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender Antivirus cmdlets](/powershell/module/defender/).

## Use the mpcmdrun.exe command-line utility to run a scan

Use the following `-scan` parameter:

```console
mpcmdrun.exe -scan -scantype 1
```

For more information on how to use the tool and other parameters, including starting a full scan or defining paths, see [Use the mpcmdrun.exe commandline tool to configure and manage Microsoft Defender Antivirus](command-line-arguments-microsoft-defender-antivirus.md).

## Use Windows Management Instruction (WMI) to run a scan

Use the [**Start** method](/previous-versions/windows/desktop/defender/start-msft-mpscan) of the **MSFT_MpScan** class.

For more information about which parameters are allowed, see [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
>
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
