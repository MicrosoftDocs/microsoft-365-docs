---
title: Configure remediation for Microsoft Defender Antivirus detections
description: Configure what Microsoft Defender Antivirus should do when it detects a threat, and how long quarantined files should be retained in the quarantine folder
keywords: remediation, fix, remove, threats, quarantine, scan, restore
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.topic: conceptual
ms.custom: nextgen
ms.date: 06/06/2023
ms.reviewer:
manager: dansimp
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Configure remediation for Microsoft Defender Antivirus detections


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

When Microsoft Defender Antivirus runs a scan, it attempts to remediate or remove threats that are detected. You can configure how Microsoft Defender Antivirus should address certain threats, whether a restore point should be created before remediating, and when threats should be removed.

This article describes how to configure these settings by using Group Policy, but you can also use [Microsoft Endpoint Configuration Manager](/configmgr/protect/deploy-use/endpoint-antimalware-policies#threat-overrides-settings) and [Microsoft Intune](/intune/device-restrictions-configure).

You can also use the [`Set-MpPreference` PowerShell cmdlet](/powershell/module/defender/set-mppreference) or [`MSFT_MpPreference` WMI class](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal) to configure these settings.

## Configure remediation options

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and select **Administrative templates**.

3. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus**.

4. Using the table below, select a location, and then edit the policy as needed.

5. Select **OK**.

|Setting|Description|Default setting (if not configured)|
|---|---|---|
|Scan <br/>Create a system restore point.|A system restore point is created each day before cleaning or scanning is attempted. |Disabled|
|Scan<br/>Turn on removal of items from scan history folder.|Specify how many days items should be kept in the scan history.|30 days|
|Root<br/>Turn off routine remediation.|Specify whether Microsoft Defender Antivirus automatically remediates threats, or whether to prompt the user.|Disabled. Threats are remediated automatically.|
|Quarantine<br/>Configure removal of items from Quarantine folder.|Specify how many days items should be kept in quarantine before being removed.|Items are kept in the quarantine folder indefinitely and are not automatically removed. |
|Threats<br/>Specify threat alert levels at which default action should not be taken when detected.|Every threat that is detected by Microsoft Defender Antivirus is assigned a threat level (low, medium, high, or severe). You can use this setting to define how all threats for each of the threat levels should be remediated (quarantined, removed, or ignored). |Not applicable|
|Threats<br/>Specify threats upon which default action should not be taken when detected.|Specify how specific threats (using their threat ID) should be remediated. You can specify whether the specific threat should be quarantined, removed, or ignored.|Not applicable|

> [!IMPORTANT]
> Microsoft Defender Antivirus detects and remediates files based on many factors. Sometimes, completing a remediation requires a reboot. Even if the detection is later determined to be a false positive, the reboot must be completed to ensure all additional remediation steps have been completed.
>
> If you are certain Microsoft Defender Antivirus quarantined a file based on a false positive, you can restore the file from quarantine after the device reboots. See [Restore quarantined files in Microsoft Defender Antivirus](restore-quarantined-files-microsoft-defender-antivirus.md). To avoid this problem in the future, you can exclude files from the scans. See [Configure and validate exclusions for Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md).

Also see [Configure remediation-required scheduled full Microsoft Defender Antivirus scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md#remed) for more remediation-related settings.

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## See also

- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
- [Configure Microsoft Defender Antivirus scanning options](configure-advanced-scan-types-microsoft-defender-antivirus.md)
- [Configure scheduled Microsoft Defender Antivirus scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md)
- [Configure and run on-demand Microsoft Defender Antivirus scans](run-scan-microsoft-defender-antivirus.md)
- [Configure the notifications that appear on endpoints](configure-notifications-microsoft-defender-antivirus.md)
- [Configure end-user Microsoft Defender Antivirus interaction](configure-end-user-interaction-microsoft-defender-antivirus.md)
- [Customize, initiate, and review the results of Microsoft Defender Antivirus scans and remediation](customize-run-review-remediate-scans-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
