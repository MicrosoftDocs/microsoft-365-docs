---
title: Use eBPF-based sensor for Microsoft Defender for Endpoint on Linux
description: eBPF-based sensor deployment in Microsoft Defender for Endpoint on Linux.
ms.service: microsoft-365-security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier3
- mde-linux
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 02/12/2024
---

# Use eBPF-based sensor for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

The extended Berkeley Packet Filter (eBPF) for Microsoft Defender for Endpoint on Linux provides supplementary event data for Linux operating systems. eBPF can be used as an alternative technology to auditd because eBPF helps address several classes of issues seen with the auditd event provider and is beneficial in the areas of performance and system stability.

Key benefits include:

- Reduced system-wide auditd-related log noise
- Optimized system-wide event rules otherwise causing conflict between applications
- Reduced overhead for file event (file read/open) monitoring
- Improved event rate throughput and reduced memory footprint
- Optimized performance for specific configurations

## How eBPF works

With eBPF, events previously obtained from the auditd event provider now flow from the eBPF sensor. This helps with system stability, improves CPU and memory utilization, and reduces disk usage. Also, when eBPF is enabled, all auditd-related custom rules are eliminated, which helps reduce the possibility of conflicts between applications. Data related to eBPF gets logged into the /var/log/microsoft/mdatp/microsoft_defender_core.log file.

In addition, the eBPF sensor uses capabilities of the Linux kernel without requiring the use of a kernel module that helps increase system stability.

> [!NOTE]
> eBPF is used in conjunction with auditd, whereas auditd is used only for user login events and captures these events without any custom rules and flow them automatically. Be aware that auditd will be gradually removed in future versions.

## System prerequisites

The eBPF sensor for Microsoft Defender for Endpoint on Linux is supported on the following minimum distribution and kernel versions:

| Linux Distribution | Distribution version | Kernel version |
|--------------------|----------------------|----------------|
| Ubuntu             | 16.04                | 4.15.0         |
| Fedora             | 33                   | 5.8.15         |
| CentOS             | 7.6                  | 3.10.0-957.10  |
| SLES               | 15                   | 5.3.18-18.47   |
| RHEL               | 7.6                  | 3.10.0-957.10  |
| Debian             | 9.0                  | 4.19.0         |
| Oracle Linux RHCK  | 7.9                  | 3.10.0-1160    |
| Oracle Linux UEK   | 7.9                  | 5.4            |
| Amazon Linux 2     | 2                    | 5.4.261-174.360|


> [!NOTE]
> Oracle Linux 8.8 with kernel version 5.15.0-0.30.20.el8uek.x86_64, 5.15.0-0.30.20.1.el8uek.x86_64 will result in kernel hang when eBPF is enabled as supplementary subsystem provider. This kernel version should not be used for eBPF mode. Refer to Troubleshooting and Diagnostics section for mitigation steps.

## Use eBPF

The eBPF sensor is automatically enabled for all customers by default for agent versions "101.23082.0006" and above. Customers need to update to the above-mentioned supported versions to experience the feature. When the eBPF sensor is enabled on an endpoint, Defender for Endpoint on Linux updates supplementary_events_subsystem to ebpf.

:::image type="content" source="../../media/defender-endpoint/ebpf-subsystem-linux.png" alt-text="ebpf subsystem highlight in the mdatp health command" lightbox="../../media/defender-endpoint/ebpf-subsystem-linux.png":::

In case you want to manually disable eBPF then you can run the following command:

```bash
sudo mdatp config ebpf-supplementary-event-provider --value [enabled/disabled]
```
You can also update the mdatp_managed.json file:

```JSON
{
    "features": {
        "ebpfSupplementaryEventProvider": "disabled"
    }
}
```
Refer to the link for detailed sample json file - [Set preferences for Microsoft Defender for Endpoint on Linux.](linux-preferences.md)
> [!IMPORTANT]
> If you disable eBPF, the supplementary event provider switches back to auditd.
> In the event eBPF doesn't become enabled or is not supported on any specific kernel, it will automatically switch back to auditd and retain all auditd custom rules. 

## Immutable mode of Auditd

For customers using auditd in immutable mode, a reboot is required post enablement of eBPF in order to clear the audit rules added by Microsoft Defender for Endpoint. This is a limitation in immutable mode of auditd, which freezes the rules file and prohibits editing/overwriting. This issue is resolved with the reboot.
Post reboot, run the below command to check if audit rules got cleared.

```bash
% sudo auditctl -l
```

The output of above command should show no rules or any user added rules. In case the rules didn't get removed, then perform the following steps to clear the audit rules file. 

1. Switch to ebpf mode
  2. Remove the file /etc/audit/rules.d/mdatp.rules
  3. Reboot the machine

### Troubleshooting and Diagnostics

You can check the agent health status by running the **mdatp** health command. Make sure that the eBPF sensor for Defender for Endpoint on Linux is supported by checking the current kernel version by using the following command line:

```bash
uname -a
```
#### Known Issues
1. Enabling eBPF on RHEL 8.1 version with SAP might result in kernel panic. 

   The following steps can be taken to mitigate this issue: 
   
   1. Use a distro version higher than RHEL 8.1. 

   1. Switch to auditd mode if you need to use RHEL 8.1 version

1. Using Oracle Linux 8.8 with kernel version **5.15.0-0.30.20.el8uek.x86_64, 5.15.0-0.30.20.1.el8uek.x86_64** might result in kernel panic. 

   The following steps can be taken to mitigate this issue:
   
   1.  Use a kernel version higher or lower than **5.15.0-0.30.20.el8uek.x86_64, 5.15.0-0.30.20.1.el8uek.x86_64** on Oracle Linux 8.8 if you want to use eBPF as supplementary subsystem provider. Note that the minimum kernel version for Oracle Linux is RHCK 3.10.0 and Oracle Linux UEK is 5.4. 
   
   1. Switch to auditd mode if you need to use the same kernel version
   
```bash
sudo mdatp config  ebpf-supplementary-event-provider  --value disabled
```

The following two sets of data help analyze potential issues and determine the most effective resolution options.

1. Collect a diagnostic package from the client analyzer tool by using the following instructions: [Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md).

2. Collect a debug diagnostic package when Defender for Endpoint is utilizing high resources by using the following instructions: [Microsoft Defender for Endpoint on Linux resources](linux-resources.md#collect-diagnostic-information).

#### Troubleshooting performance issues

If you see a hike in resource consumption by Microsoft Defender on your endpoints, it's important to identify the process/mount-point/files that is consuming most CPU/Memory utilization and then apply necessary exclusions. After applying possible AV exclusions, if wdavdaemon (parent process) is still consuming the resources, then use the ebpf-statistics command to obtain the top system call count:

```Bash
sudo mdatp diagnostic  ebpf-statistics
```
```Output
Output
Monitor 20 seconds
Top file paths:
/var/log/microsoft/mdatp/microsoft_defender.log : 10
/var/log/microsoft/mdatp/rotated/microsoft_defender.log00001 : 2
/var/log/microsoft/mdatp/rotated/microsoft_defender.log : 1
/home/gargank/tmp-stress-ng-rename-13550-31/stress-ng-rename-13550-31-374993 : 1
/home/gargank/tmp-stress-ng-rename-13550-31/stress-ng-rename-13550-31-374991 : 1
/home/gargank/tmp-stress-ng-rename-13550-31/stress-ng-rename-13550-31-374989 : 1
/home/gargank/tmp-stress-ng-rename-13550-31/stress-ng-rename-13550-31-374987 : 1
/home/gargank/tmp-stress-ng-rename-13550-31/stress-ng-rename-13550-31-374985 : 1
/home/gargank/tmp-stress-ng-rename-13550-31/stress-ng-rename-13550-31-374983 : 1
/home/gargank/tmp-stress-ng-rename-13550-31/stress-ng-rename-13550-31-374981 : 1

Top initiator paths:
/usr/bin/stress-ng : 50000
/opt/microsoft/mdatp/sbin/wdavdaemon : 13

Top syscall ids:
82 : 1699333
90 : 10
87 : 3
``` 
In the above output, you can see that stress-ng is the top process generating large number of events and might result into performance issues. Most likely stress-ng is generating the system call with ID 82. You can create a ticket with Microsoft to get this process excluded. In future as part of upcoming enhancements, you'll have more control to apply such exclusions at your end.

Exclusions applied to auditd can't be migrated or copied to eBPF. Common concerns such as noisy logs, kernel panic, noisy syscalls are already taken care of by eBPF internally. In case you want to add any further exclusions, then reach out to Microsoft to get the necessary exclusions applied. 

## See also

- [Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md)
- [Microsoft Defender for Endpoint on Linux resources](linux-resources.md#collect-diagnostic-information)
