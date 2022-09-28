---
title: Troubleshoot AuditD performance issues with Microsoft Defender for Endpoint on Linux
ms.reviewer:
description: Describes how to troubleshoot AuditD related performance issues that you might encounter with Microsoft Defender for Linux.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, troubleshoot, AuditD, XMDEClientAnalyzer, installation, deploy, uninstallation
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
  - m365-initiative-defender-endpoint
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Troubleshoot AuditD performance issues with Microsoft Defender for Endpoint on Linux 

This article provides guidance on how to troubleshoot AuditD related performance issues that you might encounter with Microsoft Defender for Endpoint on Linux. 

**Background:** 

- Microsoft Defender for Endpoint on Linux OS distributions uses AuditD framework to collect certain types of telemetry events. 

- System events captured by rules added to `/etc/audit/rules.d/` will add to audit.log(s) and might affect host auditing and upstream collection.  

- Events added by Microsoft Defender for Endpoint on Linux will be tagged with `mdatp` key. 

- If the AuditD service is misconfigured or offline, then some events might be missing. To troubleshoot such an issue, refer to: [Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint on Linux.](linux-support-events.md)

In certain server workloads, two issues might be observed: 

- **High CPU** resource consumption from ***mdatp_audisp_plugin*** process. 

- ***/var/log/audit/audit.log*** becoming large or frequently rotating. 

These issues may occur on servers with many events flooding AuditD.  

This can happen if there are multiple consumers for AuditD, or too many rules with the combination of Microsoft Defender for Endpoint and third party consumers, or high workload that generates a lot of events. 

To troubleshoot such issues, begin by [collecting MDEClientAnalyzer logs](run-analyzer-macos-linux.md) on the sample affected server. 

> [!NOTE]
> As a general best practice, it is recommended to update the [Microsoft Defender for Endpoint agent to latest available version](linux-whatsnew.md) and confirming issue still persists before investigating further.


## XMDEClientAnalyzer 

When you use XMDEClientAnalyzer, the following files will display output that provide insights to help you troubleshoot issues.
- auditd_info.txt
- auditd_log_analysis.txt


### auditd_info.txt

Contains general AuditD configuration and will display:

- What processes are registered as AuditD consumers. 

- **Auditctl -s** output with **enabled=2**  

    - Suggests auditd is in immutable mode (requires restart for any config changes to take effect). 

- **Auditctl -l** output  

    - Will show what rules are currently loaded into the kernel (which may be different that what exists on disk in "/etc/auditd/rules.d/mdatp.rules"). 
    
    - Will show which rules are related to Microsoft Defender for Endpoint. 
    
### auditd_log_analysis.txt

Contains important aggregated information that is useful when investigating AuditD performance issues.  

- Which component owns the most reported events (Microsoft Defender for Endpoint events will be tagged with `key=mdatp`). 

- The top reporting initiators. 

- The most common system calls (network or filesystem events, and others). 

- What file system paths are the noisiest. 

**To mitigate most AuditD performance issues, you can implement AuditD exclusion. **

> [!NOTE]
> Exclusions should be made only for low threat and high noise initiators or paths. For example, do not exclude /bin/bash which risks creating a large blind spot.
> [Common mistakes to avoid when defining exclusions](/microsoft-365/security/defender-endpoint/common-exclusion-mistakes-microsoft-defender-antivirus).



## Exclusion Types 

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

 
> [!NOTE]
> Please contact Microsoft support if you need assistance with analyzing and mitigating AuditD related performance issues, or with deploying AuditD exclusions at scale. 


