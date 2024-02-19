---
title:  Data collection for advanced troubleshooting on Windows
description: Learn how to use the client analyzer to collect data for complex troubleshooting scenarios
ms.service: defender-endpoint
f1.keywords:
- NOCSH
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier2
- mde-ngp
ms.topic: conceptual
ms.subservice: ngp
search.appverid: met150
ms.date: 02/18/2024
---

# Data collection for advanced troubleshooting on Windows

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

- Microsoft Defender for Business

- Microsoft Defender Antivirus

When collaborating with Microsoft support professionals, you may be asked to use the client analyzer to collect data for troubleshooting of more complex scenarios. The analyzer script supports other parameters for that purpose and can collect a specific log set based on the observed symptoms that need to be investigated.

Run '**MDEClientAnalyzer.cmd /?**' to see the list of available parameters and their description:

:::image type="content" source="images/MDEClientAnalyzerHelp.png" alt-text="The parameters for MDEClientAnalyzer.cmd" lightbox="images/MDEClientAnalyzerHelp.png":::

| Switch | Description | When to use| Process that you are troubleshooting. |
|:---|:---|:---|:---|
|**-h** |Calls into [Windows Performance Recorder](/windows-hardware/test/wpt/wpr-command-line-options) to collect a verbose general performance trace in addition to the standard log set. |Slow application start/launch.  When clicking on a button on the app, taking x seconds longer.   |MSSense.exe or MsSenseS.exe or SenseIR.exe or SenseNdr.exe or SenseTVM.exe or SenseAadAuthenticator.exe or SenseGPParser.exe or SenseImdsCollector.exe or SenseSampleUploader.exe or MsMpEng.exe or NisSrv.exe. |
|**-l**|Calls into built-in [Windows Performance Monitor](/windows-server/remote/remote-desktop-services/rds-rdsh-performance-counters) to collect a lightweight perfmon trace. This may be useful when diagnosing slow performance degradation issues that occur over time but hard to reproduce on demand. |Troubleshooting application performance that could be slow to reproduce (manifest) itself.  Tip: Capture for 3 minutes (at most 5 minutes), since the data could grow to a very large size.|MSSense.exe or MsSenseS.exe or SenseIR.exe or SenseNdr.exe or SenseTVM.exe or SenseAadAuthenticator.exe or SenseGPParser.exe or SenseImdsCollector.exe or SenseSampleUploader.exe or MsMpEng.exe or NisSrv.exe. |
|**-c**|Calls into [process monitor](/sysinternals/downloads/procmon) for advanced monitoring of real-time file system, registry, and process/thread activity. This is especially useful when troubleshooting various application compatibility scenarios. |Process Monitor (ProcMon) to initiate a boot trace when investigating a driver or service or application startup delay related issue.  Or applications hosted on a network share that are not using SMB Opportunistic Locking (Oplock) properly causing application compatibility problems.|MSSense.exe or MsSenseS.exe or SenseIR.exe or SenseNdr.exe or SenseTVM.exe or SenseAadAuthenticator.exe or SenseGPParser.exe or SenseImdsCollector.exe or SenseSampleUploader.exe or MsMpEng.exe or NisSrv.exe.  |
|**-i**|Calls into built-in [netsh.exe](/windows/win32/winsock/netsh-exe) command to start a network and windows firewall trace that is useful when troubleshooting various network-related issues. |When troubleshooting network related issues such as MDE EDR telemetry or CnC data submission issues.  Microsoft Defender Antivirus Cloud Protection (MAPS) reporting issues. Network protection related issues, etc...|MSSense.exe or MsSenseS.exe or SenseIR.exe or SenseNdr.exe or SenseTVM.exe or SenseAadAuthenticator.exe or SenseGPParser.exe or SenseImdsCollector.exe or SenseSampleUploader.exe or MsMpEng.exe or NisSrv.exe.  |
|**-b**|Same as '-c' but the process monitor trace will be initiated during next boot and stopped only when the -b is used again. |Process Monitor (ProcMon) to initiate a boot trace when investigating a driver or service or application startup delay related issue.  And/or investigating a slow boot or slow login.|MSSense.exe or MsSenseS.exe or SenseIR.exe or SenseNdr.exe or SenseTVM.exe or SenseAadAuthenticator.exe or SenseGPParser.exe or SenseImdsCollector.exe or SenseSampleUploader.exe or MsMpEng.exe or NisSrv.exe.  |
|**-e**|Calls into [Windows Performance Recorder](/windows-hardware/test/wpt/wpr-command-line-options) to collect Defender AV Client tracing (AM-Engine and AM-Service) for analysis of Antivirus cloud connectivity issues. |When troubleshooting Cloud Protection (MAPS) reporting failures.|MsMpEng.exe |
|**-a**|Calls into [Windows Performance Recorder](/windows-hardware/test/wpt/wpr-command-line-options) to collect a verbose performance trace specific to analysis of high CPU issues related to the antivirus process (MsMpEng.exe). |When troubleshooting high cpu utilization with Microsoft Defender Antivirus (Antimalware Service Execubable or MsMpEng.exe) if you already used the Microsoft Defender Antivirus [Performance Analyzer](/microsoft-365/security/defender-endpoint/tune-performance-defender-antivirus) to narrow down the /path/process or /path or file extension contributing to the high cpu utilization.  This provides the ability to further investigate what the application or service is doing to contribute to the high cpu utilization.|MsMpEng.exe |
|**-v**|Uses antivirus [MpCmdRun.exe command line argument](/windows/security/threat-protection/microsoft-defender-antivirus/command-line-arguments-microsoft-defender-antivirus) with most verbose -trace flags. |Anytime an advanced troubleshooting is needed.  Such as when troubleshooting Cloud Protection (MAPS) reporting failures, Platform Update failures, Engine update failures, Security Intelligence Update failures, False negatives, etc... Can also be used in conjunction with -b or -c or -h or -l.|MsMpEng.exe |
|**-t** |Starts verbose trace of all client-side components relevant to Endpoint DLP. This is useful for scenarios where [DLP actions](/microsoft-365/compliance/endpoint-dlp-learn-about#endpoint-activities-you-can-monitor-and-take-action-on) are not happening as expected for files. |When running into issues where the Microsoft Endpoint Data Loss Prevention (DLP) actions expected are not occurring.|MpDlpService.exe |
|**-q**|Calls into DLPDiagnose.ps1 script from the analyzer 'Tools' directory that validates the basic configuration and requirements for Endpoint DLP. |Checks the basic configuration and requirements for Microsoft Endpoint DLP|MpDlpService.exe|
|**-d**|Collects a memory dump of MsSense**S**.exe (the sensor process on Windows Server 2016 or older OS) and related processes. - \* This flag can be used in conjunction with above mentioned flags. - \*\* Capturing a memory dump of [PPL protected processes](/windows-hardware/drivers/install/early-launch-antimalware) such as MsSense.exe or MsMpEng.exe is not supported by the analyzer at this time.|On Windows 7 SP1, Windows 8.1, Windows Server 2008 R2, Windows Server 2012 R2 or Windows Server 2016 running w/ the MMA agent and having performance (high cpu or high memory usage) or application compatibility issues. |MsSenseS.exe|
|**-z** |Configures registry keys on the machine to prepare it for full machine memory dump collection via [CrashOnCtrlScroll](/windows-hardware/drivers/debugger/forcing-a-system-crash-from-the-keyboard). This would be useful for analysis of computer freeze issues. \* Hold down the rightmost CTRL key, then press the SCROLL LOCK key twice. |Machine hanging or being unresponsive or slow.  High memory usage (Memory leak): a) User mode: Private bytes b) Kernel mode: paged pool or nonaged pool memory, handle leaks.|MSSense.exe or MsMpEng.exe |
|**-k** |Uses [NotMyFault](/sysinternals/downloads/notmyfault) tool to force the system to crash and generate a machine memory dump. This would be useful for analysis of various OS stability issues. |Same as above.|MSSense.exe or MsMpEng.exe |

The analyzer and all the above scenario flags can be initiated remotely by running 'RemoteMDEClientAnalyzer.cmd', which is also bundled into the analyzer toolset:

:::image type="content" source="images/57cab9d82d08f672a92bf9e748ac9572.png" alt-text="The parameters for RemoteMDEClientAnalyzer.cmd" lightbox="images/57cab9d82d08f672a92bf9e748ac9572.png":::

> [!NOTE]
> When any advanced troubleshooting parameter is used, the analyzer also calls into [MpCmdRun.exe](/microsoft-365/security/defender-endpoint/command-line-arguments-microsoft-defender-antivirus) to collect Microsoft Defender Antivirus related support logs.

> [!NOTE]
> You can use '-g' flag to validate URLs for a specific datacenter region even without being onboarded to that region<br>
> For example:<br>
> 'MDEClientAnalyzer.cmd -g EU' will force the analyzer to test cloud URLs in Europe region.

> [!NOTE]
> - When using RemoteMDEClientAnalyzer.cmd it calls into psexec to download the tool from the configured file share and then run it locally via PsExec.exe.
```
The CMD script uses '-r' flag to specify that it is running remotely within SYSTEM context and so no prompt to the user will be presented.
```> - That same flag can be used with MDEClientAnalyzer.cmd to avoid a prompt to user that requests to specify the number of minutes for data collection. For example:
>
>    **MDEClientAnalyzer.cmd -r -i -m 5**
>
>   - **-r** - Indicates that tool is being run from remote (or non-interactive context)
>   - **-i** - Scenario flag for collection of network trace along with other related logs
>   - **-m** \# - The number of minutes to run (5 minutes in the above example)
>   
>  - When using MDEClientAnalyzer.cmd the script checks for privileges using "net session" which requires the service "Server" to be running. If it is not, you will get the error message _Script is running with insufficient privileges_. Run it with administrator privileges if ECHO is off.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
