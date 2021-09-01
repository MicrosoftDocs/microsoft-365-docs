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

1. Creation of a system recording of Microsoft Defender Antivirus scanning events.
1. Scanning of the system by performance analyzer.
1. Analysis of the scan results using different reports.

## Using performance analyzer

To start recording system events, open Powershell in administrative mode and perform the following steps:

1. Run the following command to start the recording:

`New-MpPerformanceReport -RecordTo <recording.etl>`
 
 where `-RecordTo` parameter specifies full path location in which the trace file is saved. For more cmdlet information, see [Defender](/powershell/module/defender).

2. If there are processes or services thought to be affecting performance, reproduce the situation by carrying out the relevant tasks.
3. Press **ENTER** to stop and save recording, or **Ctrl+C** to cancel recording.
4. Analyze the results using the Performance analyzer’s `Get-MpPerformanceReport`parameter. For example, on executing the command `Get-MpPerformanceReport -Path <recording.etl> -TopFiles 3 -TopScansPerFile 10`, the user is provided with a list of top-ten scans for the top 10 files affecting performance. For additional command-line parameters and options, see [Defender](/powershell/module/defender/).

## What information is present?

The admin will be able to view numbers for duration, scan counts for the report they specify (file/file extension/processes).

:::image type="content" source="images/example-output.png" alt-text="Example output for a basic TopFiles query":::

## Additional functionality: Exporting and converting to JSON

You can also export and convert the results of the performance analyzer to a CSV file.
For examples that describe the process of "export" and "convert" through sample codes, see [For CSV](#for-csv) and [For JSON](#for-json).

### For CSV

- **To export**: 
`{Get-MpPerformanceReport -Path:.\Repro-Install.etl -Topscans:1000}. TopScans | Export-CSV -Path:.\Repro-Install-Scans.csv -Encoding:UTF8 -NoTypeInformation`

- **To convert**: 
`{Get-MpPerformanceReport -Path:.\Repro-Install.etl -Topscans:100}. TopScans | ConvertTo-Csv -NoTypeInformation`

### For JSON

- **To convert**:
`{Get-MpPerformanceReport -Path:.\Repro-Install.etl -Topscans:1000}. TopScans | ConvertTo-Json -Depth:1`

## Supported versions of Windows

Windows 10 and Windows 11

## Platform Version

4.2108.X

## Powershell Version

Powershell Version 5.1 and higher

