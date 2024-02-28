---
title: Run Microsoft Defender Antivirus in a sandbox environment
description: This article describes how to run Microsoft Defender Antivirus in a sandbox to further strengthen against tampering.
ms.service: defender-endpoint
ms.localizationpriority: medium
ms.topic: conceptual
author: siosulli
ms.author: siosulli
ms.custom: partner-contribution
ms.date: 02/26/2024
ms.reviewer: yongrhee
manager: deniseb
ms.subservice: ngp
ms.collection:
- m365-security
- tier2
- mde-ngp
search.appverid: met150
f1.keywords: NOCSH 
audience: ITPro
---

# Run Microsoft Defender Antivirus in a sandbox

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Antivirus](microsoft-defender-antivirus-windows.md)

**Platforms:**

- Windows

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)

This article describes how to run Microsoft Defender Antivirus in a sandbox environment for enhanced protection against tampering. 

Microsoft Defender Antivirus with its built-in antivirus capabilities can run within a sandbox on Windows as of October 26, 2018. It was the first complete antivirus solution to have this capability and continues to lead the industry in raising the bar for security.

## Prerequisites

Before you begin, you must meet the following requirements:

- Microsoft Defender Antivirus (active mode)
- Windows 11 or Windows 10 version 1703 or newer
- Windows Server 2022 or Windows Server 2019 or Windows Server 2016 or newer

## Why run Microsoft Defender Antivirus in a sandbox?

Security researchers, both inside and outside of Microsoft, have previously identified ways that an attacker can take advantage of vulnerabilities in Microsoft Defender Antivirus’s content parsers that could enable arbitrary code execution. To inspect the whole system for malicious content and artifacts, the antivirus runs with high privileges (Local System, NT Authority\SYSTEM), making it a target for attacks.

Whereas escalation of privilege from a sandbox is so much difficult on the latest versions of Windows 10 or newer and, running Microsoft Defender Antivirus in a sandbox ensures that in the unlikely event of a compromise, malicious actions are limited to the isolated environment, protecting the rest of the system from harm. This is part of Microsoft’s continued investment to stay ahead of attackers through security innovations.

## Implementing sandbox for Microsoft Defender Antivirus

Modern anti-malware products inspect many inputs, for example, files on disk, streams of data in memory and behavioral events in real-time. Many of these capabilities require full access to the resources in question. The first major sandboxing effort was related to layering Microsoft Defender Antivirus’s inspection capabilities into the components that absolutely must run with full privileges and the components that can be sandboxed. The goal for the sandboxed components was to ensure that they encompassed the highest risk functionality like scanning untrusted input, expanding containers, and so on. At the same time, we had to minimize the number of interactions between the two layers in order to avoid a substantial performance cost. 

Resource usage is also another problem that requires significant investments, both privileged process and sandbox process need to have access to Security Intelligence updates, other detections and remediation metadata. To avoid duplication and preserve strong security guarantees that are to avoid unsafe ways to share state or to introduce significant runtime cost of passing data/content between the processes, we use a model where most protection data is hosted in memory-mapped files that are read-only at runtime. This means protection data can be hosted into multiple processes without any overhead.

## Enable sandboxing for Microsoft Defender Antivirus

You can follow these steps to enable sandboxing by setting a machine-wide environment variable:

1. Run the following command as an admin in PowerShell or CMD:

    ```powershell
    setx /M MP_FORCE_USE_SANDBOX 1  
    ```

    :::image type="content" source="media/enable-sandbox.png" alt-text="Screenshot that shows Windows PowerShell tool for admins with cmdlet details to enable sanbox.":::

2. Restart the device. Once you've restarted, you'll see a new process besides MsMpEng.exe that is `MsMpEngCP.exe` in the following folders:
   
    |Path|Process|Description|
    |---|---|---|
    |C:\ProgramData\Microsoft\Windows Defender\Scans |MsMpEngCP.exe | Anti-malware Service Executable Content Process |
    |C:\Users\All Users\Microsoft\Windows Defender\Scans  |MsMpEngCP.exe | Anti-malware Service Executable Content Process |

     >[!NOTE]
     > CP in `MsMpEngCP.exe` is the content process.

### Disable sandboxing

To disable sandboxing for Microsoft Defender Antivirus, run the following command as an admin in PowerShell or CMD:

```powershell
setx /M MP_FORCE_USE_SANDBOX 0
```

## FAQs

### What happens when sandbox is disabled? 

Microsoft Defender Antivirus performs an in-proc fallback that hosts content scanning in the privileged/parent process to provide protection. 

### How is the content process strengthened?

The content processes, which run with low privileges, also aggressively use all available mitigation policies to reduce the surface attack. They enable and prevent runtime changes for modern exploit mitigation techniques such as Data Execution Prevention (DEP), Address space layout randomization (ASLR), and Control Flow Guard (CFG). They also disable Win32K system calls and all extensibility points, as well as enforce that only signed and trusted code is loaded.

**Performance of MDAV with sandbox enabled**

Performance is often the main concern raised around sandboxing, especially given that anti-malware products are in many critical paths like synchronously inspecting file operations and processing and aggregating or matching large numbers of runtime events. To ensure that performance doesn’t degrade, we had to minimize the number of interactions between the sandbox and the privileged process. At the same time, only perform these interactions in key moments where their cost wouldn't be significant, for example, when I/O is being performed.

Microsoft Defender Antivirus makes an orchestrated effort to avoid unnecessary I/O, for example, minimizing the amount of data read for every inspected file is paramount in maintaining good performance, especially on older hardware (rotational disk, remote resources). Thus, it was crucial to maintain a model where the sandbox can request data for inspection as needed, instead of passing the entire content.  

**Reliability of MDAV with sandbox enabled**

> [!NOTE]
> Passing handles to the sandbox (to avoid the cost of passing the actual content) isn’t an option because there are many scenarios, such as real-time inspection, AMSI, etc., where there’s no ‘sharable’ handle that can be used by the sandbox without granting significant privileges, which decreases the security.

Another significant concern around sandboxing is related to the inter-process communication mechanism to avoid potential problems like deadlocks and priority inversions. The communication shouldn't introduce any potential bottlenecks, either by throttling the caller or by limiting the number of concurrent requests that can be processed. Moreover, the sandbox process shouldn’t trigger inspection operations by itself. All inspections should happen without triggering more scans. This requires fully controlling the capabilities of the sandbox and ensuring that no unexpected operations can be triggered. Low-privilege AppContainers are the perfect way to implement strong guarantees because the capabilities-based model will allow fine-grained control on specifying what the sandbox process can do. 

**Remediation of MDAV with sandbox enabled**

Lastly, a significant challenge from the security perspective is related to content remediation or disinfection. Given the sensitive nature of the action (attempts to restore a binary to the original preinfection content), we needed to ensure that this happens with high privileges in order to mitigate cases in which the content process (sandbox) could be compromised and disinfection could be used to modify the detected binary in unexpected ways.

### What to do while troubleshooting the MsMpEng.CP.exe process, if it starts and stops after a few minutes?

Collect the [support diagnostic logs](collect-diagnostic-data.md) and any relevant dumps/crash information if there are associated Windows Error Reporting (WER) events around the time the process stops.
