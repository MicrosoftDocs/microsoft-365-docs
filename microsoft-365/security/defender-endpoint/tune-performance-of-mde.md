---
title: Tune performance of Microsoft Defender for Endpoint
description: Describes the procedure to tune the performance of Microsoft Defender for Endpoint.
keywords: tune, performance, microsoft defender for endpoint
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-smandalika
author: v-smandalika
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: troubleshooting
ms.technology: mde
---

# Tune performance of Microsoft Defender for Endpoint

The performance of Microsoft Defender for Endpoint needs to be tuned for the following reasons:

- Microsoft Defender for Endpoint scans specific files and folders.
- These files and folders have a need to be analyzed for the following purpose:
    - whether these files and folders have the potential to cause issues. For information on how to find out this possibility, see [Defender PowerShell cmdlet](#defender-powershell-cmdlet).
- The files and folders being scanned should turn out to be error free

## Defender PowerShell cmdlet

The Defender PowerShell cmdlet is the mechanism you use to help determine files, folders, paths, file extensions, and processes that might cause performance issues.

The Defender PowerShell cmdlet helps in determining the following details:

- Files that impact scan time
- Folders that impact scan time
- Paths that impact scan time
- Processes that impact scan time
- File extensions that impact scan time
- Combination of two factors. For example,
    - Files per extension
    - Folders per path

# Process for tuning performance

The process of tuning the performance of Microsoft Defender for Endpoint involves the following steps:

1. Recording system events with PowerShell cmdlet
1. Performing a system scan
1. Analyzing the results

For information on how the above steps are executed as a process, see [Record scan and analyze events](#record-scan-and-analyze-events).

## Record scan and analyze events

1. From a PowerShell command line, run the following command:

   `New-MpPerformanceReport -RecordTo <recording.etl>`
    where <recording.etl> is the full path to the even trace file that is to be saved.

 2. Perform the following steps if you find that processes and services are affecting the performance, while recording:
     
    1. Press **ENTER** to stop and save recording OR press **Ctrl+C** to cancel recording.
    1. Analyze the results by executing the following command:
    
    `Get-MpPerformanceReport -Path <recording.etl> -TopFiles 10`

You will see a list of results based on the PowerShell options selected.


    