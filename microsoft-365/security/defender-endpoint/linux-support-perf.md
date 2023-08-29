---
title: Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux
description: Troubleshoot performance issues in Microsoft Defender for Endpoint on Linux.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, performance, AuditD, XMDEClientAnalyzer, installation, deploy, uninstallation
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
ms.date: 01/18/2023
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

This document provides instructions on how to narrow down performance issues related to Defender for Endpoint on Linux using the available diagnostic tools to be able to understand and mitigate the existing resource shortages and the processes that are making the system into such situations. Performance problems are mainly caused by bottlenecks in one or more hardware subsystems, depending on the profile of resource utilization on the system. Sometimes applications are sensitive to disk I/O resources and may need more CPU capacity, and sometimes some configurations are not sustainable, and may trigger too many new processes, and open too many file descriptors.

Depending on the applications that you are running and your device characteristics, you may experience suboptimal performance when running Defender for Endpoint on Linux. In particular, applications or system processes that access many resources such as CPU, Disk, and Memory over a short timespan can lead to performance issues in Defender for Endpoint on Linux.

> [!WARNING]
> Before starting, **please make sure that other security products are not currently running on the device**. Multiple security products may conflict and impact the host performance.

## Troubleshoot performance issues using Real-time Protection Statistics

**Applies to:**
- Only performance issues related to AV

Real-time protection (RTP) is a feature of Defender for Endpoint on Linux that continuously monitors and protects your device against threats. It consists of file and process monitoring and other heuristics.

The following steps can be used to troubleshoot and mitigate these issues:

1. Disable real-time protection using one of the following methods and observe whether the performance improves. This approach helps narrow down whether Defender for Endpoint on Linux is contributing to the performance issues.

    If your device is not managed by your organization, real-time protection can be disabled from the command line:

    ```bash
    mdatp config real-time-protection --value disabled
    ```

    ```Output
    Configuration property updated
    ```

    If your device is managed by your organization, real-time protection can be disabled by your administrator using the instructions in [Set preferences for Defender for Endpoint on Linux](linux-preferences.md).

    > [!NOTE]
    > If the performance problem persists while real-time protection is off, the origin of the problem could be the endpoint detection and response (EDR) component. In this case please follow the steps from the **Troubleshoot performance issues using Microsoft Defender for Endpoint Client Analyzer** section of this article.

2. To find the applications that are triggering the most scans, you can use real-time statistics gathered by Defender for Endpoint on Linux.

    > [!NOTE]
    > This feature is available in version 100.90.70 or newer.

    This feature is enabled by default on the `Dogfood` and `InsiderFast` channels. If you're using a different update channel, this feature can be enabled from the command line:

    ```bash
    mdatp config real-time-protection-statistics --value enabled
    ```

    This feature requires real-time protection to be enabled. To check the status of real-time protection, run the following command:

    ```bash
    mdatp health --field real_time_protection_enabled
    ```

    Verify that the `real_time_protection_enabled` entry is `true`. Otherwise, run the following command to enable it:

    ```bash
    mdatp config real-time-protection --value enabled
    ```

    ```Output
    Configuration property updated
    ```

    To collect current statistics, run:

    ```bash
    mdatp diagnostic real-time-protection-statistics --output json
    ```

    > [!NOTE]
    > Using `--output json` (note the double dash) ensures that the output format is ready for parsing.

    The output of this command will show all processes and their associated scan activity.

3. On your Linux system, download the sample Python parser **high_cpu_parser.py** using the command:

    ```bash
    wget -c https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/linux/diagnostic/high_cpu_parser.py
    ```

    The output of this command should be similar to the following:

    ```Output
    --2020-11-14 11:27:27-- https://raw.githubusercontent.com/microsoft.mdatp-xplat/master/linus/diagnostic/high_cpu_parser.py
    Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.xxx.xxx
    Connecting to raw.githubusercontent.com (raw.githubusercontent.com)| 151.101.xxx.xxx| :443... connected.
    HTTP request sent, awaiting response... 200 OK
    Length: 1020 [text/plain]
    Saving to: 'high_cpu_parser.py'
    100%[===========================================>] 1,020    --.-K/s   in 0s
    ```

4. Next, type the following commands:

    ```bash
    mdatp diagnostic real-time-protection-statistics --output json | python high_cpu_parser.py
    ```

      The output of the above is a list of the top contributors to performance issues. The first column is the process identifier (PID), the second column is the process name, and the last column is the number of scanned files, sorted by impact.
    For example, the output of the command will be something like the below:

    ```Output
    ... > mdatp diagnostic real-time-protection-statistics --output json | python high_cpu_parser.py | head
    27432 None 76703
    73467 actool    1249
    73914 xcodebuild 1081
    73873 bash 1050
    27475 None 836
    1    launchd     407
    73468 ibtool     344
    549  telemetryd_v1   325
    4764 None 228
    125  CrashPlanService 164
    ```

    To improve the performance of Defender for Endpoint on Linux, locate the one with the highest number under the `Total files scanned` row and add an exclusion for it. For more information, see [Configure and validate exclusions for Defender for Endpoint on Linux](linux-exclusions.md).

    > [!NOTE]
    > The application stores statistics in memory and only keeps track of file activity since it was started and real-time protection was enabled. Processes that were launched before or during periods when real time protection was off are not counted. Additionally, only events which triggered scans are counted.

5. Configure Microsoft Defender for Endpoint on Linux with exclusions for the processes or disk locations that contribute to the performance issues and re-enable real-time protection.

    For more information, see [Configure and validate exclusions for Microsoft Defender for Endpoint on Linux](linux-exclusions.md).

## Troubleshoot performance issues using Microsoft Defender for Endpoint Client Analyzer

**Applies to:**
- Performance issues of all available Defender for Endpoint components such as AV and EDR

The Microsoft Defender for Endpoint Client Analyzer (MDECA) can collect traces, logs, and diagnostic information in order to troubleshoot performance issues on [onboarded devices](/microsoft-365/security/defender-endpoint/onboard-configure) on macOS.

> [!NOTE]
>
> - The Microsoft Defender for Endpoint Client Analyzer tool is regularly used by Microsoft Customer Support Services (CSS) to collect information such as (but not limited to) IP addresses, PC names that will help troubleshoot issues you may be experiencing with Microsoft Defender for Endpoint. For more information about our privacy statement, see [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement).
> - As a general best practice, it is recommended to update the [Microsoft Defender for Endpoint agent to latest available version](mac-whatsnew.md) and confirming that the issue still persists before investigating further.

To run the client analyzer for troubleshooting performance issues, see [Run the client analyzer on macOS and Linux](run-analyzer-macos-linux.md).

> [!NOTE]
> In case after following the above steps, the performance problem persists, please contact customer support for further instructions and mitigation.

## Troubleshoot AuditD performance issues

**Background:**

- Microsoft Defender for Endpoint on Linux OS distributions uses AuditD framework to collect certain types of telemetry events.

- System events captured by rules added to `/etc/audit/rules.d/` will add to audit.log(s) and might affect host auditing and upstream collection.

- Events added by Microsoft Defender for Endpoint on Linux will be tagged with `mdatp` key.

- If the AuditD service is misconfigured or offline, then some events might be missing. To troubleshoot such an issue, refer to: [Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux.](linux-support-events.md)

In certain server workloads, two issues might be observed:

- **High CPU** resource consumption from ***mdatp_audisp_plugin*** process.

- ***/var/log/audit/audit.log*** becoming large or frequently rotating.

These issues may occur on servers with many events flooding AuditD.

> [!NOTE]
> As a best practice, we recommend to configure AuditD logs to rotate when the maximum file size limit is reached.
>
> This will prevent AuditD logs accumulating in a single file and the rotated log files can be moved out to save disk space.
>
> To achieve this, you can set the value for **max_log_file_action** to **rotate** in the [auditd.conf](https://linux.die.net/man/8/auditd.conf) file.

 
This can happen if there are multiple consumers for AuditD, or too many rules with the combination of Microsoft Defender for Endpoint and third party consumers, or high workload that generates a lot of events.

To troubleshoot such issues, begin by [collecting MDEClientAnalyzer logs](run-analyzer-macos-linux.md) on the sample affected server.

> [!NOTE]
> As a general best practice, it is recommended to update the [Microsoft Defender for Endpoint agent to latest available version](linux-whatsnew.md) and confirming issue still persists before investigating further.
>
> That there are additional configurations that can affect AuditD subsystem CPU strain.
>
> Specifically, in [auditd.conf](https://linux.die.net/man/8/auditd.conf), the value for **disp_qos** can be set to "lossy" to reduce the high CPU consumption.
>
> However, this means that some events may be dropped during peak CPU consumption.

### XMDEClientAnalyzer

When you use [XMDEClientAnalyzer](run-analyzer-macos-linux.md), the following files will display output that provides insights to help you troubleshoot issues.

- auditd_info.txt
- auditd_log_analysis.txt

#### auditd_info.txt

Contains general AuditD configuration and will display:

- What processes are registered as AuditD consumers.

- **Auditctl -s** output with **enabled=2**

  - Suggests auditd is in immutable mode (requires restart for any config changes to take effect).

- **Auditctl -l** output

  - Will show what rules are currently loaded into the kernel (which may be different that what exists on disk in "/etc/auditd/rules.d/mdatp.rules").

  - Will show which rules are related to Microsoft Defender for Endpoint.

#### auditd_log_analysis.txt

Contains important aggregated information that is useful when investigating AuditD performance issues.

- Which component owns the most reported events (Microsoft Defender for Endpoint events will be tagged with `key=mdatp`).

- The top reporting initiators.

- The most common system calls (network or filesystem events, and others).

- What file system paths are the noisiest.

**To mitigate most AuditD performance issues, you can implement AuditD exclusion. If the given exclusions do not improve the performance then we can use the rate limiter option. This will reduce the number of events being generated by AuditD altogether.**

> [!NOTE]
> Exclusions should be made only for low threat and high noise initiators or paths. For example, do not exclude /bin/bash which risks creating a large blind spot.
> [Common mistakes to avoid when defining exclusions](/microsoft-365/security/defender-endpoint/common-exclusion-mistakes-microsoft-defender-antivirus).

### Exclusion Types

The XMDEClientAnalyzer support tool contains syntax that can be used to add AuditD exclusion configuration rules:

AuditD exclusion – support tool syntax help:

:::image type="content" source="images/auditd-exclusion-support-tool-syntax-help.png" alt-text="syntax that can be used to add AuditD exclusion configuration rules" lightbox="images/auditd-exclusion-support-tool-syntax-help.png":::

**By initiator**

- **-e/ -exe** full binary path > Removes all events by this initiator

**By path**

- **-d / -dir** full path to a directory > Removes filesystem events targeting this directory

Examples:

If "`/opt/app/bin/app`" writes to "`/opt/app/cfg/logs/1234.log`", then you can use the support tool to exclude with various options:

`-e /opt/app/bin/app`

`-d /opt/app/cfg`

`-x /usr/bin/python /etc/usercfg`

`-d /usr/app/bin/`

More examples:

`./mde_support_tool.sh exclude -p <process id>`

`./mde_support_tool.sh exclude -e <process name>`

To exclude more than one item - concatenate the exclusions into one line:

`./mde_support_tool.sh exclude -e <process name> -e <process name 2> -e <process name3>`

The -x flag is used to exclude access to subdirectories by specific initiators for example:

`./mde_support_tool.sh exclude -x /usr/sbin/mv /tmp`

The above will exclude monitoring of /tmp subfolder, when accessed by mv process.

### Rate Limiter

The XMDEClientAnalyzer support tool contains syntax that can be used to limit the number of events being reported by the auditD plugin. This option will set the rate limit globally for AuditD causing a drop in all the audit events.

> [!NOTE]
> This functionality should be carefully used as limits the number of events being reported by the auditd subsystem as a whole. This could reduces the number of events for other subscribers as well.

The ratelimit option can be used to enable/disable this rate limit.

Enable: `./mde_support_tool.sh ratelimit -e true`

Disable: `./mde_support_tool.sh ratelimit -e false`

When the ratelimit is enabled a rule will be added in AuditD to handle 2500 events/sec.

> [!NOTE]
> Please contact Microsoft support if you need assistance with analyzing and mitigating AuditD related performance issues, or with deploying AuditD exclusions at scale.

## See also

- [Investigate agent health issues](health-status.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
