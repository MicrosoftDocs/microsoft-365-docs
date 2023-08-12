---
title: Troubleshooting issues when moving to Microsoft Defender for Endpoint
description: Learn how to troubleshoot issues when you migrate to Microsoft Defender for Endpoint.
ms.service: microsoft-365-security
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
ms.date: 04/24/2023
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
ms.subservice: mde
search.appverid: met150
---

# Troubleshooting issues when migrating to Microsoft Defender for Endpoint

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

This article provides troubleshooting information for security administrators who are experiencing issues when moving from a non-Microsoft endpoint protection solution to Microsoft Defender for Endpoint.

## Microsoft Defender Antivirus is getting uninstalled on Windows Server

When you migrate to Defender for Endpoint, you begin with your non-Microsoft antivirus/antimalware protection in active mode. As part of the setup process, you configure Microsoft Defender Antivirus in passive mode. Occasionally, your non-Microsoft antivirus/antimalware solution might prevent Microsoft Defender Antivirus from running on Windows Server. In fact, it can look like Microsoft Defender Antivirus has been removed from Windows Server.

To resolve this issue, take the following steps:

1. [Add Microsoft Defender for Endpoint to the exclusion list](#add-microsoft-defender-for-endpoint-to-the-exclusion-list).
2. [Set Microsoft Defender Antivirus to passive mode manually](#set-microsoft-defender-antivirus-to-passive-mode-manually).

### Add Microsoft Defender for Endpoint to the exclusion list

| OS |Exclusions |
|:--|:--|
|[Windows 11](/windows/whats-new/windows-11-overview) <br/><br/>Windows 10, [version 1803](/lifecycle/announcements/windows-server-1803-end-of-servicing) or later (See [Windows 10 release information](/windows/release-health/release-information))<br/><br/>Windows 10, version 1703 or 1709 with [KB4493441](https://support.microsoft.com/help/4493441) installed |`C:\Program Files\Windows Defender Advanced Threat Protection\MsSense.exe`<br/><br/>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseCncProxy.exe`<br/><br/>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseSampleUploader.exe`<br/><br/>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseIR.exe`<br/><br/>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseCM.exe`<br/><br/>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseNdr.exe`<br/><br/>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseSC.exe`<br/><br/>`C:\Program Files\Windows Defender Advanced Threat Protection\Classification\SenseCE.exe`<br/><br/>`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\DataCollection`<br/><br/>|
[Windows Server 2022](/windows/release-health/status-windows-server-2022)<br/><br/>[Windows Server 2019](/windows/release-health/status-windows-10-1809-and-windows-server-2019) <br/><br/>[Windows Server 2016](/windows/release-health/status-windows-10-1607-and-windows-server-2016)<br/><br/>[Windows Server 2012 R2](/windows/release-health/status-windows-8.1-and-windows-server-2012-r2)<br/><br/>[Windows Server, version 1803](/windows-server/get-started/whats-new-in-windows-server-1803) |  On Windows Server 2012 R2 and Windows Server 2016 running the [modern, unified solution](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016), the following exclusions are required after updating the Sense EDR component using [KB5005292](https://support.microsoft.com/topic/microsoft-defender-for-endpoint-update-for-edr-sensor-f8f69773-f17f-420f-91f4-a8e5167284ac):<br/> <br/> `C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\MsSense.exe` <br/><br/>`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\SenseCnCProxy.exe`<br/><br/>`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\SenseIR.exe`<br/><br/>`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\SenseCE.exe`<br/><br/>`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\SenseSampleUploader.exe`<br/><br/>`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Platform\*\SenseCM.exe` <br/><br/>`C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\DataCollection`|
|[Windows 8.1](/windows/release-health/status-windows-8.1-and-windows-server-2012-r2)<br/><br/>[Windows 7](/windows/release-health/status-windows-7-and-windows-server-2008-r2-sp1)<br/><br/>[Windows Server 2008 R2 SP1](/windows/release-health/status-windows-7-and-windows-server-2008-r2-sp1) |`C:\Program Files\Microsoft Monitoring Agent\Agent\Health Service State\Monitoring Host Temporary Files 6\45\MsSenseS.exe`<br/><br/>**NOTE**: Monitoring Host Temporary Files 6\45 can be different numbered subfolders.<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\AgentControlPanel.exe`<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\HealthService.exe`<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\HSLockdown.exe`<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\MOMPerfSnapshotHelper.exe`<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\MonitoringHost.exe`<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\TestCloudConnection.exe` |

> [!IMPORTANT]
> As a best practice, keep your organization's devices and endpoints up to date. Make sure to get the [latest updates for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](microsoft-defender-antivirus-updates.md), and keep your organization's operating systems and productivity apps up to date.


### Set Microsoft Defender Antivirus to passive mode manually

On Windows Server 2022, Windows Server 2019, Windows Server, version 1803 or newer, Windows Server 2016, or Windows Server 2012 R2, you must set Microsoft Defender Antivirus to passive mode manually. This action helps prevent problems caused by having multiple antivirus products installed on a server. You can set Microsoft Defender Antivirus to passive mode using PowerShell, Group Policy, or a registry key.

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

If you are using a non-Microsoft antivirus/antimalware solution on Windows Server 2016, your existing solution might have required Microsoft Defender Antivirus to be disabled or uninstalled. You can use the [Malware Protection Command-Line Utility](command-line-arguments-microsoft-defender-antivirus.md) to re-enable Microsoft Defender Antivirus on Windows Server 2016.

1. As a local administrator on the server, open Command Prompt.

2. Run the following command: `MpCmdRun.exe -wdenable`

3. Restart the device.

## See also

- [Microsoft Defender Antivirus compatibility with other security products](microsoft-defender-antivirus-compatibility.md)

- [Onboarding tools and methods for Windows devices in Defender for Endpoint](configure-endpoints.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
