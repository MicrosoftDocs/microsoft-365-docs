---
title: Troubleshooting issues when switching to Microsoft Defender for Endpoint
description: Learn how to troubleshoot issues when you make the switch to Microsoft Defender for Endpoint.
keywords: migration, windows defender, advanced endpoint protection, antivirus, antimalware, passive mode, active mode, troubleshooting
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365solution-migratetomdatp
  - m365solution-overview
  - m365solution-mcafeemigrate
  - m365solution-symantecmigrate
ms.topic: conceptual
ms.custom: migrationguides
ms.date: 11/30/2021
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
ms.technology: mde
---

# Troubleshooting issues when switching to Microsoft Defender for Endpoint

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

This article provides troubleshooting information for security administrators who are experiencing issues when switching from a non-Microsoft endpoint protection solution to Microsoft Defender for Endpoint.

## Microsoft Defender Antivirus is getting uninstalled on Windows Server

When you make the switch to Defender for Endpoint, you begin with your non-Microsoft antivirus/antimalware protection in active mode. As part of the setup process, you configure Microsoft Defender Antivirus in passive mode. Occasionally, your non-Microsoft antivirus/antimalware solution might prevent Microsoft Defender Antivirus from running on Windows Server. In fact, it can look like Microsoft Defender Antivirus has been removed from Windows Server.

To resolve this issue, take the following steps:

1. [Set the DisableAntiSpyware registry key to false](#set-the-disableantispyware-registry-key-to-false).
2. [Add Microsoft Defender for Endpoint to the exclusion list](#add-microsoft-defender-for-endpoint-to-the-exclusion-list).
3. [Set Microsoft Defender Antivirus to passive mode manually](#set-microsoft-defender-antivirus-to-passive-mode-manually).

### Set the DisableAntiSpyware registry key to false

The [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) registry key was used in the past to disable Microsoft Defender Antivirus, and deploy another antivirus product, such as McAfee, Symantec, or others. **In general, you should not have this registry key on your Windows devices and endpoints**; however, if you *do* have `DisableAntiSpyware` configured, here's how to set its value to false:

1. On your Windows Server device, open Registry Editor.

2. Navigate to `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender`.

3. In that folder, look for a DWORD entry called **DisableAntiSpyware**.
   - If you do not see that entry, you're all set.
   - If you do see **DisableAntiSpyware**, proceed to step 4.

4. Right-click the DisableAntiSpyware DWORD, and then choose **Modify**.

5. Set the value to `0`. (This action sets the registry key's value to *false*.)

> [!TIP]
> To learn more about this registry key, see [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware).

### Add Microsoft Defender for Endpoint to the exclusion list

Certain exclusions for Defender for Endpoint must be defined in your existing non-Microsoft endpoint protection solution. Make sure to add the following exclusions:

`C:\Program Files\Windows Defender Advanced Threat Protection\MsSense.exe`

`C:\Program Files\Windows Defender Advanced Threat Protection\SenseCncProxy.exe`

`C:\Program Files\Windows Defender Advanced Threat Protection\SenseSampleUploader.exe`

`C:\Program Files\Windows Defender Advanced Threat Protection\SenseIR.exe`

`C:\Program Files\Windows Defender Advanced Threat Protection\SenseCM.exe`

### Set Microsoft Defender Antivirus to passive mode manually

On Windows Server 2019, Windows Server, version 1803 or newer, Windows Server 2016, or Windows Server 2012 R2, you must set Microsoft Defender Antivirus to passive mode manually. This action helps prevent problems caused by having multiple antivirus products installed on a server. You can set Microsoft Defender Antivirus to passive mode using PowerShell, Group Policy, or a registry key.

You can set Microsoft Defender Antivirus to passive mode by setting the following registry key:

Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`

Name: `ForceDefenderPassiveMode`

Type: `REG_DWORD`

Value: `1`

> [!NOTE]
> For passive mode to work on endpoints running Windows Server 2016 and Windows Server 2012 R2, those endpoints must be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016).

For more information, see [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md).

## I am having trouble re-enabling Microsoft Defender Antivirus on Windows Server 2016

If you are using a non-Microsoft antivirus/antimalware solution on Windows Server 2016, your existing solution might have required Microsoft Defender Antivirus to be disabled or uninstalled. You can use the[ Malware Protection Command-Line Utility](command-line-arguments-microsoft-defender-antivirus.md) to re-enable Microsoft Defender Antivirus on Windows Server 2016.

1. As a local administrator on the server, open Command Prompt.

2. Run the following command: `MpCmdRun.exe -wdenable`

3. Restart the device.

## See also

- [Microsoft Defender Antivirus compatibility with other security products](microsoft-defender-antivirus-compatibility.md)

- [Onboarding tools and methods for Windows devices in Defender for Endpoint](configure-endpoints.md) 