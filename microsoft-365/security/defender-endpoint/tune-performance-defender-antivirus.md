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

## Running performance analyzer

The high-level process for running performance analyzer involves the following steps:

1. Run performance analyzer to collect a performance recording of Microsoft Defender Antivirus events on the endpoint.

   > [!NOTE]
   > Performance of Microsoft Defender Antivirus events of the type **Microsoft-Antimalware-Engine** are recorded through the performance analyzer.

2. Analyze the scan results using different recording reports.

## Using performance analyzer

To start recording system events, open PowerShell in administrative mode and perform the following steps:

1. Run the following command to start the recording:

   `New-MpPerformanceRecording -RecordTo <recording.etl>`
 
    where `-RecordTo` parameter specifies full path location in which the trace file is saved. For more cmdlet information, see [Defender](/powershell/module/defender).

2. If there are processes or services thought to be affecting performance, reproduce the situation by carrying out the relevant tasks.

3. Press **ENTER** to stop and save recording, or **Ctrl+C** to cancel recording.

4. Analyze the results using the performance analyzer’s `Get-MpPerformanceReport`parameter. For example, on executing the command `Get-MpPerformanceReport -Path <recording.etl> -TopFiles 3 -TopScansPerFile 10`, the user is provided with a list of top-ten scans for the top 3 files affecting performance. 

For more information on command-line parameters and options, see the [New-MpPerformanceRecording](#new-mpperformancerecording) and [Get-MpPerformanceReport](#get-mpperformancereport).

> [!NOTE]
> When running a recording, if you get the error "Cannot start performance recording because Windows Performance Recorder is already recording", run the following command
> to stop the existing trace with the new command: 
> **wpr -cancel -instancename MSFT_MpPerformanceRecording**

### Performance tuning data and information

Based on the query, the user will be able to view data for scan counts, duration (total/min/average/max/median), path, process, and reason for scan. The image below shows sample output for a simple query of the top 10 files for scan impact. 

:::image type="content" source="images/example-output.png" alt-text="Example output for a basic TopFiles query":::

### Additional functionality: exporting and converting to CSV and JSON

The results of the performance analyzer can also be exported and converted to a CSV or JSON file.
For examples that describe the process of "export" and "convert" through sample codes, see below.

#### For CSV

- **To export**: 
`(Get-MpPerformanceReport -Path:.\Repro-Install.etl -Topscans:1000). TopScans | Export-CSV -Path:.\Repro-Install-Scans.csv -Encoding:UTF8 -NoTypeInformation`

- **To convert**: 
`(Get-MpPerformanceReport -Path:.\Repro-Install.etl -Topscans:100). TopScans | ConvertTo-Csv -NoTypeInformation`

#### For JSON

- **To convert**:
`(Get-MpPerformanceReport -Path:.\Repro-Install.etl -Topscans:1000). TopScans | ConvertTo-Json -Depth:1`

### Requirements
Microsoft Defender Antivirus performance analyzer has the following prerequisites:

- Supported Windows versions: Windows 10, Windows 11, and Windows Server 2016 and above
- Platform Version: 4.18.2108.7+
- PowerShell Version: PowerShell Version 5.1

## PowerShell reference
There are two new PowerShell cmdlets used to tune performance of Microsoft Defender Antivirus: 

- [New-MpPerformanceRecording](#new-mpperformancerecording)
- [Get-MpPerformanceReport](#get-mpperformancereport)


### New-MpPerformanceRecording

The following section describes the reference for the new PowerShell cmdlet New-MpPerformanceRecording. This cmdlet Collects a performance recording of Microsoft Defender Antivirus scans.

#### Syntax: New-MpPerformanceRecording

```powershell
New-MpPerformanceRecording -RecordTo <String >
```

#### Description: New-MpPerformanceRecording
The `New-MpPerformanceRecording` cmdlet collects a performance recording of Microsoft Defender Antivirus scans. These performance recordings contain Microsoft-Antimalware-Engine and NT kernel process events and can be analyzed after collection using the [Get-MpPerformanceReport](#get-mpperformancereport) cmdlet.

This `New-MpPerformanceRecording` cmdlet provides an insight into problematic files that could cause a degradation in the performance of Microsoft Defender Antivirus. This tool is provided “AS IS”, and is not intended to provide suggestions on exclusions. Exclusions can reduce the level of protection on your endpoints. Exclusions, if any, should be defined with caution.

For more information on the performance analyzer, see [Performance Analyzer](/windows-hardware/test/wpt/windows-performance-analyzer) docs.

> [!IMPORTANT]
> This cmdlet requires elevated administrator privileges.

**Supported OS versions**

Windows Version 10 and later.

> [!NOTE]
> This feature is available starting with platform version 4.18.2108.X and later.

#### Examples: New-MpPerformanceRecording

##### Example 1: Collect a performance recording and save it

```powershell
New-MpPerformanceRecording -RecordTo:.\Defender-scans.etl
```

The above command collects a performance recording and saves it to the specified path: **.\Defender-scans.etl**.

#### Parameters: New-MpPerformanceRecording

##### -RecordTo
Specifies the location in which to save the Microsoft Defender Antimalware performance recording.

```yaml
Type: String
Position: Named
Default value: None
Accept pipeline input: False 
Accept wildcard characters: False
```

### Get-MpPerformanceReport

The following section describes the Get-MpPerformanceReport PowerShell cmdlet. Analyzes and reports on Microsoft Defender Antivirus (MDAV) performance recording.

#### Syntax: Get-MpPerformanceReport

```powershell
Get-MpPerformanceReport    [-Path] <String>
[-TopScans <Int32>]
[-TopFiles  <Int32>
	[-TopScansPerFile <Int32>]
	[-TopProcessesPerFile  <Int32>  
		[-TopScansPerProcessPerFile <Int32>]
	]
] 
[-TopExtensions  <Int32>
	[-TopScansPerExtension <Int32>]
	[-TopProcessesPerExtension <Int32>
		[-TopScansPerProcessPerExtension <Int32>]
		]
	[-TopFilesPerExtension  <Int32>
		[-TopScansPerFilePerExtension <Int32>]
		]
	] 
]
[-TopProcesses  <Int32>
	[-TopScansPerProcess <Int32>]
	[-TopExtensionsPerProcess <Int32>
		[-TopScansPerExtensionPerProcess <Int32>]
	]
]
[-TopFilesPerProcess  <Int32>
	[-TopScansPerFilePerProcess <Int32>]
]
[-MinDuration <String>]
```

#### Description: Get-MpPerformanceReport
The `Get-MpPerformanceReport` cmdlet analyzes a previously collected Microsoft Defender Antivirus performance recording ([New-MpPerformanceRecording](#new-mpperformancerecording)) and reports the file paths, file extensions, and processes that cause the highest impact to Microsoft Defender Antivirus scans.

The performance analyzer provides an insight into problematic files that could cause a degradation in the performance of Microsoft Defender Antivirus. This tool is provided "AS IS" and is not intended to provide suggestions on exclusions. Exclusions can reduce the level of protection on your endpoints. Exclusions, if any, should be defined with caution.

For more information on the performance analyzer, see [Performance Analyzer](/windows-hardware/test/wpt/windows-performance-analyzer) docs.

**Supported OS versions**

Windows Version 10 and later.

> [!NOTE]
> This feature is available starting with platform version 4.18.2108.X and later.

#### Examples: Get-MpPerformanceReport

##### Example 1: Single query 

```powershell
Get-MpPerformanceReport -Path:.\Defender-scans.etl -TopScans:20
```

##### Example 2: Multiple queries 

```powershell
Get-MpPerformanceReport -Path:.\Defender-scans.etl -TopFiles:10 -TopExtensions:10 -TopProcesses:10 -TopScans:10
```

##### Example 3: Nested queries 

```powershell
Get-MpPerformanceReport -Path:.\Defender-scans.etl -TopProcesses:10 -TopExtensionsPerProcess:3 -TopScansPerExtensionPerProcess:3
```

##### Example 4: Using -MinDuration parameter

```powershell
Get-MpPerformanceReport -Path:.\Defender-scans.etl -TopScans:100 -MinDuration:100ms
```

#### Parameters: Get-MpPerformanceReport

##### -MinDuration
Specifies the minimum duration of any scan or total scan durations of files, extensions, and processes included in the report; accepts values like  **0.1234567sec**, **0.1234ms**, **0.1us**, or a valid TimeSpan.

```yaml
Type: String
Position: Named
Default value: None
Accept pipeline input: False 
Accept wildcard characters: False
```

##### -Path
Specifies the path(s) to one or more locations.

```yaml
Type: String
Position: 0
Default value: None
Accept pipeline input: True
Accept wildcard characters: False
```

### -TopExtensions 
Specifies how many top extensions to output, sorted by "Duration”.

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopExtensionsPerProcess 
Specifies how many top extensions to output for each top process, sorted by "Duration”.

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopFiles
Requests a top-files report and specifies how many top files to output, sorted by "Duration".


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopFilesPerExtension 
Specifies how many top files to output for each top extension, sorted by "Duration".


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopFilesPerProcess
Specifies how many top files to output for each top process, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopProcesses
Requests a top-processes report and specifies how many of the top processes to output, sorted by "Duration”.

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopProcessesPerExtension 
Specifies how many top processes to output for each top extension, sorted by "Duration”.


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```


### -TopProcessesPerFile
Specifies how many top processes to output for each top file, sorted by "Duration “.


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopScans
Requests a top-scans report and specifies how many top scans to output, sorted by "Duration".


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```


### -TopScansPerExtension
Specifies how many top scans to output for each top extension, sorted by "Duration".


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```


### -TopScansPerExtensionPerProcess 
Specifies how many top scans to output for each top extension for each top process, sorted by "Duration”.


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```


### -TopScansPerFile
Specifies how many top scans to output for each top file, sorted by "Duration”.


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopScansPerFilePerExtension 
Specifies how many top scans to output for each top file for each top extension, sorted by "Duration".


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```


### -TopScansPerFilePerProcess 
Specifies how many top scans for output for each top file for each top process, sorted by "Duration”.


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```


### -TopScansPerProcess 
Specifies how many top scans to output for each top process in the Top Processes report, sorted by "Duration”.


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopScansPerProcessPerExtension
Specifies how many top scans for output for each top process for each top extension, sorted by "Duration”.


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TopScansPerProcessPerFile
Specifies how many top scans for output for each top process for each top file, sorted by "Duration”.


```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

