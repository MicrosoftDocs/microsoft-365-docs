---
title: Configure eBPF-based sensor for Microsoft Defender for Endpoint on Linux
description: eBPF-based sensor deployment in Microsoft Defender for Endpoint on Linux.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, events, ebpf
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 07/17/2023
---

# Configure eBPF-based sensor for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

**Applies to:**

- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

The extended Berkely Packet Filter (eBPF) for Microsoft Defender for Endpoint on Linux provides supplementary event data for Linux operating systems. eBPF can be used as an alternative technology to auditd because eBPF helps address several classes of issues seen with the auditd event provider and is beneficial in the areas of performance and system stability.

Key benefits include:

- Reduced system-wide auditd-related log noise
- Optimized system-wide event rules causing conflict between applications
- Reduced overhead for file event (file read/open) monitoring
- Improved event rate throughput and reduced memory footprint
- Optimized performance for specific configurations

## How eBPF works

With eBPF, events which previously obtained from the auditd event provider now flow from the eBPF sensor. This helps with system stability and improving CPU and memory utilization and reduces disk usage. Also, when eBPF is enabled, all auditd-related custom rules are eliminated which help reduce the possibility of conflicts between applications.

In addition, the eBPF sensor uses capabilities of the Linux kernel without requiring the use of a kernel module which helps increase system stability.

> [!NOTE]
> In the preview version eBPF will be used in conjunction with auditd while auditd will be used only for logging data and network protection events and will capture these events without any custom rules and flow them automatically. Be aware that auditd will be removed in a future version.

## System prerequisites

The eBPF sensor for Microsoft Defender for Endpoint on Linux is supported on the following minimum distribution and kernel versions:

| **Linux Distribution** | **Distribution version** | **Kernel version** |
|------------------------|--------------------------|--------------------|
| Ubuntu                 | 16.04                    | 4.15.0             |
| Fedora                 | 33                       | 5.8.15             |
| CentOS                 | 7.6                      | 3.10.0-957         |
| SLES                   | 15                       | 5.3.18-18.47       |
| RHEL                   | 7.6                      | 3.10.0-957         |
| Debian                 | 9.0                      | 4.19.0             |
| Oracle Linux           | 8.0                      | 4.18.0             |

When the eBPF sensor is enabled on an endpoint, Defender for Endpoint on Linux updates supplementary_event_subsystem to ebpf.<img src="../../media/C:\GitHub\microsoft-365-docs-pr\microsoft-365\media\defender-endpoint\ebpf-subsystem-linux.png alt="A screenshot of ebpf subsystem configuration setting" />**Configure eBPF**

The eBPF sensor is enabled automatically on all insider devices with the Defender for Endpoint on Linux version starting from 101.98.89. Use the mdatp health command to verify the version.

:::image type="content" source="../../media/defender-endpoint/ebpf-subsystem-linux.png" alt-text="ebpf subsystem highlight in the mdatp health command" lightbox="../../media/defender-endpoint/ebpf-subsystem-linux.png":::

If you are running a production build, you can try the eBPF preview functionality by using the following mdatp config command (requires privileges):

```bash
sudo mdatp config ebpf-supplementary-event-provider --value \[enabled/disabled\]
```

> [!IMPORTANT]
> If you disable eBPF, the supplementary event provider switches back to auditd.

### Troubleshooting and diagnostics

In the preview version, diagnostic capabilities for top processes consuming eBPF resources and troubleshooting capabilities for configuring eBPF exclusions are not supported.

These functionalities will be available in future versions.

You can check the agent health status by running the mdatp health command. Make sure that the eBPF sensor for Defender for Endpoint on Linux is supported by checking the current kernel version by using uname -a command line.

The following two sets of data will help analyze potential issues and determine the most effective resolution options.

1.  Collect a diagnostic package from the client analyzer tool by using the following instructions: [Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md)

2.  Collect a debug diagnostic package when Defender for Endpoint is utilizing high resources by using the following instructions: Microsoft Defender for Endpoint on Linux resources \| Microsoft Learn

## See also
- [Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux](linux-support-perf.md)
- [Microsoft Defender for Endpoint on Linux resources](linux-resources.md)
