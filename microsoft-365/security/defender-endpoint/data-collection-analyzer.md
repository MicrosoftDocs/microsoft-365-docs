---
title:  Data collection for advanced troubleshooting on Windows
description: Learn how to use the client analyzer to collect data for complex troubleshooting scenarios
keywords: analzyer, collect data, troubleshooting mdeclientanalyzer, advanced troubleshooting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: conceptual
ms.technology: m365d
---

#  Data collection for advanced troubleshooting on Windows

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

hen collaborating with Microsoft support professionals, you may be asked to use
the client analyzer to collect data for troubleshooting of more complex
scenarios. The analyzer script supports additional parameters for that purpose
and can collect a specific log set based on the observed symptoms that need to
be investigated.

Simply run '**MDEClientAnalyzer.cmd /?**' to see the list of available
parameters and their description:

![Scenarios.jpg](images/d89a1c04cf8441e4df72005879871bd0.png)

!Note  
When any advanced troubleshooting parameter is used, the analyzer also calls
into
[MpCmdRun.exe](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-antivirus/collect-diagnostic-data-update-compliance)
to collect Microsoft Defender Antivirus related support logs.

**-h** Calls into [Windows Performance
Recorder](https://docs.microsoft.com/windows-hardware/test/wpt/wpr-command-line-options)
to collect a very verbose general performance trace in addition to the standard
log set.

**-l** Calls into built-in [Windows Performance
Monitor](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/rds-rdsh-performance-counters)
to collect a lightweight perfmon trace. This may be useful when diagnosing slow
performance degradation issues that occur over time but hard to reproduce on
demand.

**-c** Calls into [process
monitor](https://docs.microsoft.com/sysinternals/downloads/procmon) for advanced
monitoring of real-time file system, registry, and process/thread activity. This
is especially useful when troubleshooting various application compatiblity
scenarios.

**-i** Calls into built-in
[netsh.exe](https://docs.microsoft.com/windows/win32/winsock/netsh-exe) command
to start a network and windows firewall trace that is useful when
troubleshooting various network related issues.  
  
**-b** Same as '-c' but the process monitor trace will be initiated during next
boot and stopped only when the -b is used again.

**-a** Calls into [Windows Performance
Recorder](https://docs.microsoft.com/windows-hardware/test/wpt/wpr-command-line-options)
to collect a very verbose performance trace specific to analysis of high CPU
issues related to the antivirus process (MsMpEng.exe).

**-v** Uses antivirus [MpCmdRun.exe command line
argument](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/command-line-arguments-microsoft-defender-antivirus)
with most verbose -trace flags.

**-t** Starts verbose trace of all client-side components relevant to Endpoint
DLP. This is useful for scenarios where [DLP
actions](https://docs.microsoft.com/microsoft-365/compliance/endpoint-dlp-learn-about?view=o365-worldwide#endpoint-activities-you-can-monitor-and-take-action-on)
are not happening as expected for files.

**-q** Calls into DLPDiagnose.ps1 script from the analyzer 'Tools' directory
that validates the basic configuration and requirements for Endpoint DLP.

**-d** Collects a memory dump of MsSense**S**.exe (the sensor process on Windows
Server 2016 or older OS) and related processes.  
\* This flag can be used in conjunction with above mentioned flags.  
\*\* Capturing a memory dump of [PPL protected
processes](https://docs.microsoft.com/windows-hardware/drivers/install/early-launch-antimalware)
such as MsSense.exe or MsMpEng.exe is not supported by the analyzer at this
time.

**-z** Configures registry keys on the machine to prepare it for full machine
memory dump collection via
[CrashOnCtrlScroll](https://docs.microsoft.com/windows-hardware/drivers/debugger/forcing-a-system-crash-from-the-keyboard).
This would be useful for analysis of computer freeze issues.  
\* Hold down the rightmost CTRL key, then press the SCROLL LOCK key twice.

**-k** Uses
[NotMyFault](https://docs.microsoft.com/sysinternals/downloads/notmyfault) tool
to force the system to crash and generate a machine memory dump. This would be
useful for analysis of various OS stability issues.

The analyzer and all the above scenario flags can be initiated remotely by
running '**RemoteMDEClientAnalyzer.cmd**' which is also bundled into the
analyzer toolset:

![Text Description automatically generated](images/57cab9d82d08f672a92bf9e748ac9572.png)

>[!NOTE]
> -   When using RemoteMDEClientAnalyzer.cmd it calls into psexec to download the
    tool from the configured file share and then run it locally via PsExec.exe.
    The CMD script uses '-r' flag to specify that it is running remotely within
    SYSTEM context and so no prompt to the user will be presented.
>-   That same flag can be used with MDEClientAnalyzer.cmd to avoid a prompt to
    user that requests to specify the number of minutes for data collection. For
    example:  
    **MDEClientAnalyzer.cmd -r -i -m 5**
>   <br> **-r** meant to indicate that tool is being run from remote (or
    non-interactive context)  
    **-i** = scenario flag for collection of network trace along with other
    related logs  
    **-m** \# the number of minutes to run (5 minutes in the above example)