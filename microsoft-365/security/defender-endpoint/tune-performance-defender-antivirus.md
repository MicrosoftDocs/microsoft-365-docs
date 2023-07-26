---
title: Performance analyzer for Microsoft Defender Antivirus
description: Describes the procedure to tune the performance of Microsoft Defender Antivirus.
ms.service: microsoft-365-security
ms.localizationpriority: medium
audience: ITPro
author: dansimp
ms.author: dansimp
ms.date: 04/18/2023
manager: dansimp
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Performance analyzer for Microsoft Defender Antivirus

**Applies to**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**

- Windows

## Requirements

Microsoft Defender Antivirus performance analyzer has the following prerequisites:

- Supported Windows versions: Windows 10, Windows 11, Windows 2012 R2 with the Modern Unified Solution and Windows Server 2016 and above
- Platform Version: 4.18.2108.7+
- PowerShell Version: PowerShell Version 5.1, PowerShell ISE, remote PowerShell (4.18.2201.10+), PowerShell 7.x (4.18.2201.10+)

## What is Microsoft Defender Antivirus performance analyzer?

 If computers running Microsoft Defender Antivirus are experiencing performance issues, you can use performance analyzer to improve the performance of Microsoft Defender Antivirus. Performance analyzer for Microsoft Defender Antivirus in Windows 10, Windows 11, and Windows Server, is a PowerShell command-line tool that helps you determine files, file extensions, and processes that might be causing performance issues on individual endpoints during antivirus scans.  You can use the information gathered by performance analyzer to assess performance issues and apply remediation actions.

Similar to the way mechanics perform diagnostics and service on a vehicle that has performance problems, performance analyzer can help you improve Defender Antivirus performance.

:::image type="content" source="images/performance-analyzer-improve-defender-antivirus-performance.png" alt-text="Conceptual performance analyzer image for Microsoft Defender Antivirus. The diagram is related to:  Microsoft Defender performance analyzer, defender performance analyzer, Get-MpPerformanceRepor, New-MpPerformanceRecording, windows defender, microsoft defender, microsoft windows 10, microsoft defender antivirus, micro soft windows 11, windows antivirus, microsoft antivirus, windows defender antivirus, Windows 10 antivirus, microsoft windows defender, performance windows. " lightbox="images/performance-analyzer-improve-defender-antivirus-performance.png":::

Some options to analyze include:

- Top paths that impact scan time
- Top files that impact scan time
- Top processes that impact scan time
- Top file extensions that impact scan time
- Combinations – for example:
  - top files per extension
  - top paths per extension
  - top processes per path
  - top scans per file
  - top scans per file per process

## Running performance analyzer

The high-level process for running performance analyzer involves the following steps:

1. Run performance analyzer to collect a performance recording of Microsoft Defender Antivirus events on the endpoint.

   > [!NOTE]
   > Performance of Microsoft Defender Antivirus events of the type **Microsoft-Antimalware-Engine** are recorded through the performance analyzer.

2. Analyze the scan results using different recording reports.

## Using performance analyzer

To start recording system events, open PowerShell in administrative mode and perform the following steps:

1. Run the following command to start the recording:

   ```powershell
   New-MpPerformanceRecording -RecordTo <recording.etl>
   ```

   where `-RecordTo` parameter specifies full path location in which the trace file is saved. For more cmdlet information, see [Microsoft Defender Antivirus cmdlets](/powershell/module/defender).

2. If there are processes or services thought to be affecting performance, reproduce the situation by carrying out the relevant tasks.

3. Press **ENTER** to stop and save recording, or **Ctrl+C** to cancel recording.

4. Analyze the results using the performance analyzer's `Get-MpPerformanceReport` parameter. For example, on executing the command `Get-MpPerformanceReport -Path <recording.etl> -TopFiles 3 -TopScansPerFile 10`, the user is provided with a list of top-ten scans for the top 3 files affecting performance.

For more information on command-line parameters and options, see the [New-MpPerformanceRecording](#new-mpperformancerecording) and [Get-MpPerformanceReport](#get-mpperformancereport).

> [!NOTE]
> When running a recording, if you get the error "Cannot start performance recording because Windows Performance Recorder is already recording", run the following command to stop the existing trace with the new command:
> **wpr -cancel -instancename MSFT_MpPerformanceRecording**

## Performance tuning data and information

Based on the query, the user will be able to view data for scan counts, duration (total/min/average/max/median), path, process, and **reason for scan**. The image below shows sample output for a simple query of the top 10 files for scan impact.

:::image type="content" source="images/example-output.png" alt-text="Example output for a basic TopFiles query" lightbox="images/example-output.png":::

## Additional functionality: exporting and converting to CSV and JSON

The results of the performance analyzer can also be exported and converted to a CSV or JSON file.
For examples that describe the process of "export" and "convert" through sample codes, see below.

Starting with Defender version 4.18.2206.X, users will be able to view scan skip reason information under "SkipReason" column. The possible values are:

1. Not Skipped
1. Optimization (typically due to performance reasons)
1. User skipped (typically due to user-set exclusions)

### For CSV

- **To export**:

```powershell
(Get-MpPerformanceReport -Path .\Repro-Install.etl -Topscans 1000).TopScans | Export-CSV -Path .\Repro-Install-Scans.csv -Encoding UTF8 -NoTypeInformation
```

- **To convert**:
```powershell
(Get-MpPerformanceReport -Path .\Repro-Install.etl -Topscans 100).TopScans | ConvertTo-Csv -NoTypeInformation
```

### For JSON

- **To convert**:
```powershell
(Get-MpPerformanceReport -Path .\Repro-Install.etl -Topscans 1000).TopScans | ConvertTo-Json -Depth 1
```

To ensure machine-readable output for exporting with other data processing systems, it is recommended to use `-Raw` parameter for `Get-MpPerformanceReport`. See below for details.


## PowerShell reference

There are two new PowerShell cmdlets used to tune performance of Microsoft Defender Antivirus:

- [New-MpPerformanceRecording](#new-mpperformancerecording)
- [Get-MpPerformanceReport](#get-mpperformancereport)

### New-MpPerformanceRecording

The following section describes the reference for the new PowerShell cmdlet New-MpPerformanceRecording. This cmdlet Collects a performance recording of Microsoft Defender Antivirus scans.

#### Syntax: New-MpPerformanceRecording

```powershell
New-MpPerformanceRecording -RecordTo <String>
```

#### Description: New-MpPerformanceRecording

The `New-MpPerformanceRecording` cmdlet collects a performance recording of Microsoft Defender Antivirus scans. These performance recordings contain Microsoft-Antimalware-Engine and NT kernel process events and can be analyzed after collection using the [Get-MpPerformanceReport](#get-mpperformancereport) cmdlet.

This `New-MpPerformanceRecording` cmdlet provides an insight into problematic files that could cause a degradation in the performance of Microsoft Defender Antivirus. This tool is provided "AS IS", and is not intended to provide suggestions on exclusions. Exclusions can reduce the level of protection on your endpoints. Exclusions, if any, should be defined with caution.

For more information on the performance analyzer, see [Performance Analyzer](/windows-hardware/test/wpt/windows-performance-analyzer) docs.

> [!IMPORTANT]
> This cmdlet requires elevated administrator privileges.


#### Examples: New-MpPerformanceRecording

##### Example 1: Collect a performance recording and save it

```powershell
New-MpPerformanceRecording -RecordTo .\Defender-scans.etl
```

The above command collects a performance recording and saves it to the specified path: **.\Defender-scans.etl**.

##### Example 2: Collect a performance recording for remote PowerShell session

```powershell
$s = New-PSSession -ComputerName Server02 -Credential Domain01\User01
New-MpPerformanceRecording -RecordTo C:\LocalPathOnServer02\trace.etl -Session $s
```

The above command collects a performance recording on Server02 (as specified by argument $s of parameter Session) and saves it to the specified path: **C:\LocalPathOnServer02\trace.etl** on Server02.


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

##### -Session

Specifies the PSSession object in which to create and save the Microsoft Defender Antivirus performance recording. When you use this parameter the RecordTo parameter refers to the local path on the remote machine. Available with Defender platform version 4.18.2201.10.

```yaml
Type: PSSession[]
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Get-MpPerformanceReport

The following section describes the Get-MpPerformanceReport PowerShell cmdlet. Analyzes and reports on Microsoft Defender Antivirus performance recording.

#### Syntax: Get-MpPerformanceReport

```output
Get-MpPerformanceReport [-Path] <String>
    [-TopScans [<Int32>]]
    [-TopPaths [<Int32>] [-TopPathsDepth [<Int32>]]]
            [-TopScansPerPath [<Int32>]]
            [-TopFilesPerPath [<Int32>]
                    [-TopScansPerFilePerPath [<Int32>]]
                    ]
            [-TopExtensionsPerPath [<Int32>]
                    [-TopScansPerExtensionPerPath [<Int32>]]
                    ]
            [-TopProcessesPerPath [<Int32>]
                    [-TopScansPerProcessPerPath [<Int32>]]
                    ]
            ]
    [-TopFiles [<Int32>]
            [-TopScansPerFile [<Int32>]]
            [-TopProcessesPerFile [<Int32>]
                    [-TopScansPerProcessPerFile [<Int32>]]
                    ]
            ]
    [-TopExtensions [<Int32>]
            [-TopScansPerExtension [<Int32>]
            [-TopPathsPerExtension [<Int32>] [-TopPathsDepth [<Int32>]]
                    [-TopScansPerPathPerExtension [<Int32>]]
                    ]
            [-TopProcessesPerExtension [<Int32>]
                    [-TopScansPerProcessPerExtension [<Int32>]]
                    ]
            [-TopFilesPerExtension [<Int32>]
                    [-TopScansPerFilePerExtension [<Int32>]]
                    ]
            ]
    [-TopProcesses [<Int32>]
            [-TopScansPerProcess [<Int32>]]
            [-TopExtensionsPerProcess [<Int32>]
                    [-TopScansPerExtensionPerProcess [<Int32>]]
                    ]
            [-TopPathsPerProcess [<Int32>] [-TopPathsDepth [<Int32>]]
                    [-TopScansPerPathPerProcess [<Int32>]]
                    ]
            [-TopFilesPerProcess [<Int32>]
                    [-TopScansPerFilePerProcess [<Int32>]]
                    ]
            ]
    [-MinDuration <String>]
    [-Raw]
```

#### Description: Get-MpPerformanceReport

The `Get-MpPerformanceReport` cmdlet analyzes a previously collected Microsoft Defender Antivirus performance recording ([New-MpPerformanceRecording](#new-mpperformancerecording)) and reports the file paths, file extensions, and processes that cause the highest impact to Microsoft Defender Antivirus scans.

The performance analyzer provides an insight into problematic files that could cause a degradation in the performance of Microsoft Defender Antivirus. This tool is provided "AS IS" and is not intended to provide suggestions on exclusions. Exclusions can reduce the level of protection on your endpoints. Exclusions, if any, should be defined with caution.

For more information on the performance analyzer, see [Performance Analyzer](/windows-hardware/test/wpt/windows-performance-analyzer) docs.

**Supported OS versions**:

Windows Version 10 and later.

> [!NOTE]
> This feature is available starting with platform version 4.18.2108.X and later.

#### Examples: Get-MpPerformanceReport

##### Example 1: Single query

```powershell
Get-MpPerformanceReport -Path .\Defender-scans.etl -TopScans 20
```

##### Example 2: Multiple queries

```powershell
Get-MpPerformanceReport -Path .\Defender-scans.etl -TopFiles 10 -TopExtensions 10 -TopProcesses 10 -TopScans 10
```

##### Example 3: Nested queries

```powershell
Get-MpPerformanceReport -Path .\Defender-scans.etl -TopProcesses 10 -TopExtensionsPerProcess 3 -TopScansPerExtensionPerProcess 3
```

##### Example 4: Using -MinDuration parameter

```powershell
Get-MpPerformanceReport -Path .\Defender-scans.etl -TopScans 100 -MinDuration 100ms
```

##### Example 5: Using -Raw parameter

```powershell
Get-MpPerformanceReport -Path .\Defender-scans.etl -TopFiles 10 -TopExtensions 10 -TopProcesses 10 -TopScans 10 -Raw | ConvertTo-Json
```

Using \-Raw in the above command specifies that the output should be machine readable and readily convertible to serialization formats like JSON.

#### Parameters: Get-MpPerformanceReport

##### -TopPaths

Requests a top-paths report and specifies how many top paths to output, sorted by "Duration". Aggregates the scans based on their path and directory. User can specify how many directories should be displayed on each level and the depth of the selection.

```yaml
- Type: Int32
- Position: Named
- Default value: None
- Accept pipeline input: False
- Accept wildcard characters: False
```

##### -TopPathsDepth

Specifies recursive depth that will be used to group and display aggregated path results. For example "C:\" corresponds to a depth of 1, "C:\Users\Foo" corresponds to a depth of 3.

This flag can accompany all other Top Path options. If missing, a default value of 3 is assumed. Value cannot be 0.

```yaml
- Type: Int32
- Position: Named
- Default value: 3
- Accept pipeline input: False
- Accept wildcard characters: False
```

| flag | definition |
|:---|:---|  
|  -**TopScansPerPath** | Specifies how may top scans to specify for each top path. |
|  -**TopFilesPerPath** | Specifies how may top files to specify for each top path. |
|  -**TopScansPerFilePerPath** | Specifies how many top scans to output for each top file for each top path, sorted by "Duration" |
|  -**TopExtensionsPerPath** | Specifies how many top extensions to output for each top path |
|  -**TopScansPerExtensionPerPath** | Specifies how many top scans to output for each top extension for each top path |
|  -**TopProcessesPerPath** | Specifies how many top processes to output for each top path |
|  -**TopScansPerProcessPerPath** | Specifies how many top scans to output for each top process for each top path |
|  -**TopPathsPerExtension** | Specifies how many top paths to output for each top extension |
|  -**TopScansPerPathPerExtension** | Specifies how many top scans to output for each top path for each top extension |
|  -**TopPathsPerProcess** | Specifies how many top paths to output for each top process |
|  -**TopScansPerPathPerProcess** | Specifies how many top scans to output for each top path for each top process |

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

##### -Raw

Specifies that output of performance recording should be machine readable and readily convertible to serialization formats like JSON (for example, via Convert-to-JSON command). This is recommended for users interested in batch processing with other data processing systems.

```yaml
Type: <SwitchParameter>
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopExtensions

Specifies how many top extensions to output, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopExtensionsPerProcess

Specifies how many top extensions to output for each top process, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopFiles

Requests a top-files report and specifies how many top files to output, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopFilesPerExtension

Specifies how many top files to output for each top extension, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopFilesPerProcess

Specifies how many top files to output for each top process, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopProcesses

Requests a top-processes report and specifies how many of the top processes to output, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopProcessesPerExtension

Specifies how many top processes to output for each top extension, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopProcessesPerFile

Specifies how many top processes to output for each top file, sorted by "Duration ".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopScans

Requests a top-scans report and specifies how many top scans to output, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopScansPerExtension

Specifies how many top scans to output for each top extension, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopScansPerExtensionPerProcess

Specifies how many top scans to output for each top extension for each top process, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopScansPerFile

Specifies how many top scans to output for each top file, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopScansPerFilePerExtension

Specifies how many top scans to output for each top file for each top extension, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopScansPerFilePerProcess

Specifies how many top scans for output for each top file for each top process, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopScansPerProcess

Specifies how many top scans to output for each top process in the Top Processes report, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopScansPerProcessPerExtension

Specifies how many top scans for output for each top process for each top extension, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

##### -TopScansPerProcessPerFile

Specifies how many top scans for output for each top process for each top file, sorted by "Duration".

```yaml
Type: Int32
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## Additional resources

If you're looking for Antivirus-related information for other platforms, see:

- [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
- [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Configure Defender for Endpoint on Android features](android-configure.md)- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
