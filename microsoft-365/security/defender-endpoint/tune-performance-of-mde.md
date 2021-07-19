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
    - Whether these files and folders have the potential to cause issues. For information on how to find out this possibility, see [Defender PowerShell cmdlet](#defender-powershell-cmdlet).
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

## Process for tuning performance

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

## Parameter help strings

Parameters refer to the factors about which the Defender PowerShell cmdlet describes. Such parameters have two types of help information attached to them:

- **Help**: The information presented as part of online help (`Get-Help`).
- **Help message**: This is a **help**-related string wherein the embedded information is about the parameter or its value.

Below are descriptions of the **Help**-**Help message** data for the following parameters:

1. **RecordTo**
    
    - **Help**: Specifies the literal path to the Microsoft Defender Antivirus performance recording that is to be produced.
    - **Help message**: Literal path to the performance recording that is to be produced.
    
1. **Path**

    - **Help**: Specifies a path to one or more files or directories containing Microsoft Defender Antivirus performance recordings. 
    
> [!NOTE]
> Note that wildcards are permitted.

   - **Help message**: Path to one or more locations.

1. **LiteralPath**

    - **Help**: Specifies a path to one or more files or directories containing Microsoft Defender Antivirus performance recordings.

     Unlike the **Path** parameter, the value of the **LiteralPath** parameter is used exactly as it is typed. No characters are interpreted as wildcards. If the path includes "escape" characters, enclose it in single quotation marks. Single quotation marks tell Windows PowerShell not to interpret any characters as "escape sequences".

    - **Help message**: Literal path to one or more locations.

1. **TopPaths**

    - **Help**: Specifies number of top paths to output, sorted by "Duration (ms)".
    
1. **TopFiles**

    - **Help**: Specifies number of top files to output, sorted by "Duration (ms)".

1. **TopProcessesPerFile**

    - **Help**: Specifies number of top processes to output per each top file, sorted by "Duration (ms)". 

1. **TopExtensions**

    - **Help**: Specifies number of top extensions to output, sorted by "Duration (ms)".

1. **TopPathsPerExtension**

    - **Help**: Specifies number of top paths to output per each top extension, sorted by "Duration (ms)".
    
1. **TopFilesPerExtension**

    - **Help**: Specifies number of top files to output per each top extension, sorted by "Duration (ms)".

1. **TopProcesses**

    - **Help**: Specifies number of top processes to output, sorted by "Duration (ms)".
    
1. **TopPathsPerProcess**

    - **Help**: Specifies number of top paths to output for each top process, sorted by "Duration (ms)".

1. **TopFilesPerProcess**

    - **Help**: Specifies number of top files to output for each top process, sorted by "Duration (ms)".
    
1. **AllScans**

    - **Help**: Output all scans, sorted by "Duration (ms)".
    
1. **Recurse**

    - **Help**: Specifies whether to recursively scan any directories provided on the **Path** or **LiteralPath** arguments.

> [!IMPORTANT]
> THis parameter may not be included in the initial release.





    