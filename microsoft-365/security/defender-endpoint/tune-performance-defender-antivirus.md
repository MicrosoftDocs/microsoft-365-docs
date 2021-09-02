---
title: Performance analyzer for Microsoft Defender Antivirus
description: Describes the procedure to tune the performance of Microsoft Defender Antivirus.
keywords: tune, performance, microsoft defender for endpoint, defender antivirus
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
ms.topic: article
ms.technology: mde
---

# Performance analyzer for Microsoft Defender Antivirus

**What is Microsoft Defender Antivirus performance analyzer?**

In some cases, you might need to tune the performance of Microsoft Defender Antivirus as it scans specific files and folders. Performance analyzer is a PowerShell command-line tool that helps determine which files, file extensions, and processes might be causing performance issues on individual endpoints. This information can be used to better assess performance issues and apply remediation actions.

Some options to analyze include:

- Top files that impact scan time
- Top processes that impact scan time
- Top file extensions that impact scan time
- Combinations – for example, top files per extension, top scans per file, top scans per file per process

## The process

The high-level process for running Performance analyzer involves the following steps:

1. Run performance analyzer to collect a performance recording of Microsoft Defender Antivirus events on the endpoint.

> [!NOTE]
> Performance of Microsoft Defender Antivirus events of the type **Microsoft-Antimalware-Engine** are recorded through the performance analyzer.

2. Analyze the scan results using different recording reports.

## Using performance analyzer

To start recording system events, open Powershell in administrative mode and perform the following steps:

1. Run the following command to start the recording:

`New-MpPerformanceRecording -RecordTo <recording.etl>`
 
 where `-RecordTo` parameter specifies full path location in which the trace file is saved. For more cmdlet information, see [Defender](/powershell/module/defender).

2. If there are processes or services thought to be affecting performance, reproduce the situation by carrying out the relevant tasks.
3. Press **ENTER** to stop and save recording, or **Ctrl+C** to cancel recording.
4. Analyze the results using the Performance analyzer’s `Get-MpPerformanceReport`parameter. For example, on executing the command `Get-MpPerformanceReport -Path <recording.etl> -TopFiles 3 -TopScansPerFile 10`, the user is provided with a list of top-ten scans for the top 3 files affecting performance. 

For more information on command-line parameters and options, see the New-MpPerformanceRecording and Get-MpPerformanceReport pages under [Defender Module](/powershell/module/defender/).

## What information is present?

Based on the query, the user will be able to view data for scan counts, duration (total/min/average/max/median), path, process, and reason for scan. The image below shows sample output for a simple query of the top 10 files for scan impact. 

:::image type="content" source="images/example-output.png" alt-text="Example output for a basic TopFiles query":::

## Additional functionality: exporting and converting to CSV and JSON

The results of the perfomance analyzer can also be exported and converted to a CSV or JSON file.
For examples that describe the process of "export" and "convert" through sample codes, see [For CSV](#for-csv) and [For JSON](#for-json).

### For CSV

- **To export**: 
`(Get-MpPerformanceReport -Path:.\Repro-Install.etl -Topscans:1000). TopScans | Export-CSV -Path:.\Repro-Install-Scans.csv -Encoding:UTF8 -NoTypeInformation`

- **To convert**: 
`(Get-MpPerformanceReport -Path:.\Repro-Install.etl -Topscans:100). TopScans | ConvertTo-Csv -NoTypeInformation`

### For JSON

- **To convert**:
`(Get-MpPerformanceReport -Path:.\Repro-Install.etl -Topscans:1000). TopScans | ConvertTo-Json -Depth:1`

## Supported versions of Windows

Windows 10+ and Windows Server 16+

## Platform Version

4.2108.10+

## PowerShell Version

PowerShell Version 5.1
