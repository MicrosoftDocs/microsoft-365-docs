---
title: PowerShell cmdlet
description: Describes the cmdlets "New-MpPerformanceRecording" and "Get-MpPerformanceReport".
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

# PowerShell cmdlets

The following two PowerShell cmdlets have been introduced to add to the list of existing PowerShell cmdlets:

- **New-MpPerformanceRecording**: Collects a performance recording of MDAV scans.
- **Get-MpPerformanceReport**: Analyzes and reports on the MDAV performance recording.

## New-MpPerformanceRecording

**Module**: [Defender](/powershell/module/defender)

**Syntax**

`New-MpPerformanceRecording [-RecordTo <String>]`

**Description**

The `New-MpPerformanceRecording` cmdlet collects a performance recording of Microsoft Defender Antivirus scans. These performance recordings contain Microsoft-Antimalware-Engine and NT kernel process events and can be analyzed after collection using the `Get-MpPerformanceReport (Defender)` cmdlet.  This cmdlet provides an insight into problematic files that could cause degradation in the performance of Microsoft Defender Antivirus. This tool is provided “AS IS”, and is not intended to provide suggestions on exclusions. Exclusions can reducethe level of protection on your endpoints. Exclusions, if any, should be defined with caution.

For more information about the Performance analyzer, see Performance Analyzer docs (NEED HYPERLINK FOR THIS DOCUMENT).

> [!IMPORTANT]
> This cmdlet requires elevated administrator privileges.

**Supported OS versions**: Windows 10+

> [!NOTE]
> This feature is available starting with platform version 4.18.2108.X and higher.

**Example**

`New-MpPerformanceRecording -RecordTo:.\Defender-scans.etl`

This command collects a performance recording and saves it to the specified path: **.\Defender-scans.etl**.

**Parameter**

`-RecordTo`

**Description of parameter**

The `-RecordTo` parameter specifies the location where to save the Microsoft Defender Antimalware performance recording.

**Properties of parameter**

- **Type**: String
- **Position**: Named
- **Default Value**: None
- **Accept pipeline input**: False
- **Accept wildcard characters**: False

**Related links**

- Get-MpPerformanceReport (Defender) [NEED THE HYPERLINK]
- Performance Analyzer docs [NEED THE HYPERLINK]




