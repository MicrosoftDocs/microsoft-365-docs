---
title: Troubleshooting issues when switching to Microsoft Defender for Endpoint
description: Learn how to troubleshoot issues when you make the switch to Microsoft Defender for Endpoint.
keywords: migration, windows defender, advanced endpoint protection, antivirus, antimalware, passive mode, active mode, troubleshooting
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365solution-scenario
- m365-security
- highpri
- tier1
ms.topic: conceptual
ms.custom: migrationguides
ms.date: 12/02/2022
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
ms.subservice: mde
search.appverid: met150
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

1. [Add Microsoft Defender for Endpoint to the exclusion list](#add-microsoft-defender-for-endpoint-to-the-exclusion-list).
2. [Set Microsoft Defender Antivirus to passive mode manually](#set-microsoft-defender-antivirus-to-passive-mode-manually).

### Add Microsoft Defender for Endpoint to the exclusion list

Certain exclusions for Defender for Endpoint must be defined in your existing non-Microsoft endpoint protection solution. Make sure to add the following exclusions:

**Windows 10 & 11**

`C:\Program Files\Windows Defender Advanced Threat Protection\MsSense.exe`

`C:\Program Files\Windows Defender Advanced Threat Protection\SenseCncProxy.exe`

`C:\Program Files\Windows Defender Advanced Threat Protection\SenseSampleUploader.exe`

`C:\Program Files\Windows Defender Advanced Threat Protection\SenseIR.exe`

`C:\Program Files\Windows Defender Advanced Threat Protection\SenseCM.exe`


**Windows Server 2012 R2, 2016, 2019, and 2022**

`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\MsSense.exe`

`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\SenseCnCProxy.exe`

`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\SenseIR.exe`

`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\SenseCE.exe`

`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\SenseSampleUploader.exe`

`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\SenseCM.exe`

### Set Microsoft Defender Antivirus to passive mode manually

On Windows Server 2019, Windows Server, version 1803 or newer, Windows Server 2016, or Windows Server 2012 R2, you must set Microsoft Defender Antivirus to passive mode manually. This action helps prevent problems caused by having multiple antivirus products installed on a server. You can set Microsoft Defender Antivirus to passive mode using PowerShell, Group Policy, or a registry key.

You can set Microsoft Defender Antivirus to passive mode by setting the following registry key:

Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`

Name: `ForceDefenderPassiveMode`

Type: `REG_DWORD`

Value: `1`

> [!NOTE]
> For passive mode to work on endpoints running Windows Server 2016 and Windows Server 2012 R2, those endpoints must be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016).

For more information, see [Microsoft Defender Antivirus in Windows](microsoft-defender-antivirus-windows.md).

## Microsoft Defender Antivirus seems to be stuck in passive mode

If Microsoft Defender Antivirus is stuck in passive mode, set it to active mode manually by following these steps:

1. On your Windows device, open Registry Editor as an administrator.

2. Go to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`.

3. Set or define a **REG_DWORD** entry called `ForceDefenderPassiveMode`, and set its value to `0`.

4. Reboot the device.

> [!IMPORTANT]
> If you're still having trouble setting Microsoft Defender Antivirus to active mode after following this procedure, [contact support](../../admin/get-help-support.md).

## I am having trouble re-enabling Microsoft Defender Antivirus on Windows Server 2016

If you are using a non-Microsoft antivirus/antimalware solution on Windows Server 2016, your existing solution might have required Microsoft Defender Antivirus to be disabled or uninstalled. You can use the[ Malware Protection Command-Line Utility](command-line-arguments-microsoft-defender-antivirus.md) to re-enable Microsoft Defender Antivirus on Windows Server 2016.

1. As a local administrator on the server, open Command Prompt.

2. Run the following command: `MpCmdRun.exe -wdenable`

3. Restart the device.

## See also

- [Microsoft Defender Antivirus compatibility with other security products](microsoft-defender-antivirus-compatibility.md)

- [Onboarding tools and methods for Windows devices in Defender for Endpoint](configure-endpoints.md) 
