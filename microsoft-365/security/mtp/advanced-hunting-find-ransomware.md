---
title: Find ransomware with advanced hunting
description: Use advanced hunting to locate devices potentially affected by ransomware.
keywords: advanced hunting, ransomware, threat hunting, cyber threat hunting, search, query, telemetry, Microsoft 365, Microsoft Threat Protection, Microsoft 365 Defender
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: article
---

# Hunt for ransomware

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Ransomware has rapidly evolved from being simple commodity malware affecting individual computer users to an enterprise threat that is severely impacting industries and government institutions. While [Microsoft 365 Defender](microsoft-threat-protection.md) provides many capabilities that detect and block ransomware, including intrusion activity intended to deploy this payload, performing proactive checks for signs of infection attempts can help keep networks protected.

> [Read about human-operated ransomware](https://www.microsoft.com/security/blog/2020/03/05/human-operated-ransomware-attacks-a-preventable-disaster/)

With [advanced hunting](advanced-hunting-overview.md) in Microsoft 365 Defender, you can create queries that locate individual artifacts associated with ransomware activity. You can also run more sophisticated queries that can look for signs of activity and weigh these signs to find devices that require immediate attention.

## Signs of ransomware activity
Microsoft security researchers have observed various common yet subtle artifacts in many ransomware campaigns launched by sophisticated intruders. These signs mostly involve use of various system tools to prepare for encryption, prevent detection, or clear forensic evidence.

| Ransomware activity | Common tools | Intent |
|--|--|--|
| Stop processes | _taskkill.exe_, _net stop_ | Ensure files targeted for encryption are not locked by various applications. |
| Turn off services | _sc.exe_ | Prevent security software from disrupting encryption and other ransomware activity. Stops backup software from creating recoverable copies  |
| Delete logs and files | _cipher.exe_, _wevtutil_, _fsutil.exe_, _wbadmin???_ | Remove forensic evidence. |
| Delete shadow copies  | _vsadmin.exe_, _wmic.exe???_ | Remove drive shadow copies that can be used to recover encrypted files. |
| Turn off recovery tools | _schtasks???_, _bcdedit???_, | Turn off System Restore and other system recovery options. |


## Check for individual signs of ransomware activity
Many activities that constitute ransomware behavior, such as stopping certain processes, can be benign. When using the following queries, validate your results by running multiple queries to check for other signs of ransomware activity on the same device.

### Stopping multiple processes using _taskkill.exe_
This query checks for attempts to stop at least 10 separate processes using the _taskkill.exe_ utility.

```kusto
// Find attempts to stop processes using taskkill.exe
DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "taskkill.exe" 
| summarize taskKillCount = dcount(ProcessCommandLine), TaskKillList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 2m)
| where taskKillCount > 10
```
  
### Stopping processes using _net stop_
This query checks for attempts to stop at least 10 separate processes using the _net stop_ command.

```kusto
// Find attempts to stop processes using net stop
DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "net.exe" and ProcessCommandLine has "stop"
| summarize netStopCount = dcount(ProcessCommandLine), NetStopList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 2m)
| where netStopCount > 10
```
### Deletion of data on multiple drives using _cipher.exe_
This query checks for attempts to delete data on multiple drives using _cipher.exe_. This activity is typically done by ransomware to prevent recovery. 

```kusto
// Look for cipher.exe deleting data from multiple drives
DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "cipher.exe" 
// cipher.exe /w flag used for deleting data 
| where ProcessCommandLine has "/w" 
| summarize CipherCount = dcount(ProcessCommandLine),
CipherList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 1m) 
// cipher.exe accessing multiple drives in a short timeframe 
| where CipherCount > 1
```

### Clearing of forensic evidence from event logs using _wevutil_
This query checks for attempts to clear at least 10 log entries from the event logs using _wevutil_.

```kusto
// Look for use of wevutil to clear multiple logs
DeviceProcessEvents
| where Timestamp > ago(1d)
| where ProcessCommandLine has "WEVTUTIL" and ProcessCommandLine has "CL"
| summarize LogClearCount = dcount(ProcessCommandLine), ClearedLogList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 5m)
| where LogClearCount > 10
```

### Turning off services using _sc.exe_
This query checks for attempts to turn off at least 10 existing services using _sc.exe_.

```kusto
// Look for sc.exe disabling services
DeviceProcessEvents
| where Timestamp > ago(1d)
| where ProcessCommandLine has "sc" and ProcessCommandLine has "config" and ProcessCommandLine has "disabled"
| summarize ScDisableCount = dcount(ProcessCommandLine), ScDisableList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 5m)
| where ScDisableCount > 10;
```

## Identify subtle ransomware activities
When hunting for subtler signs of threat activity—behaviors that can easily be confused with normal activities—use queries that check for more that one type of indicator. Consider running the following...
 

### Turning off System Restore
Find attempts to stop System Restore and prevent the system from creating restore points, which can be used to recover data encrypted by ransomware.

```kusto
DeviceProcessEvents  
//Pivoting for rundll32  
and InitiatingProcessFileName =~ 'rundll32.exe'   
//Looking for empty command line   
and InitiatingProcessCommandLine !contains " " and InitiatingProcessCommandLine != ""  
//Looking for schtasks.exe as the created process  
and FileName in~ ('schtasks.exe')  
//Disabling system restore   
and ProcessCommandLine has 'Change' and ProcessCommandLine has 'SystemRestore' 
and ProcessCommandLine has 'disable'
```

### Backup deletion
Find use of WMIC to delete backups prior to encryption.

```kusto
DeviceProcessEvents
| where FileName =~ "wmic.exe"
| where ProcessCommandLine has "shadowcopy" and ProcessCommandLine has "delete"
| project DeviceId, Timestamp, InitiatingProcessFileName, FileName,
ProcessCommandLine, InitiatingProcessIntegrityLevel, InitiatingProcessParentFileName
```

## Check various signs of ransomware activity and weigh them for possible attacks
Instead of running individual queries, you can also use a single query that checks for multiple signs of ransomware activity to identify affected devices. The following advanced hunting query:
- Looks for the most subtle signs of ransomware activity
- Weighs the presence of these signs
- Identifies devices with a higher chance of being targets of ransomware 

When run, this query returns a list of devices that have exhibited a relatively higher number of signs of attack. The count of each type of sign is also show.

```kusto
// Find attempts to stop processes using taskkill.exe
let taskKill = DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "taskkill.exe" 
| summarize taskKillCount = dcount(ProcessCommandLine), TaskKillList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 2m)
| where taskKillCount > 10;
// Find attempts to stop processes using net stop
let netStop = DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "net.exe" and ProcessCommandLine has "stop"
| summarize netStopCount = dcount(ProcessCommandLine), NetStopList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 2m)
| where netStopCount > 10;
// Look for cipher.exe deleting data from multiple drives
let cipher = DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "cipher.exe" 
// cipher.exe /w flag used for deleting data 
| where ProcessCommandLine has "/w" 
| summarize CipherCount = dcount(ProcessCommandLine), 
CipherList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 1m) 
// cipher.exe accessing multiple drives in a short timeframe 
| where CipherCount > 1;
// Look for use of wevutil to clear multiple logs
let wevtutilClear = DeviceProcessEvents
| where Timestamp > ago(1d)
| where ProcessCommandLine has "WEVTUTIL" and ProcessCommandLine has "CL"
| summarize LogClearCount = dcount(ProcessCommandLine), ClearedLogList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 5m)
| where LogClearCount > 10;
// Look for sc.exe disabling services
let scDisable = DeviceProcessEvents
| where Timestamp > ago(1d)
| where ProcessCommandLine has "sc" and ProcessCommandLine has "config" and ProcessCommandLine has "disabled"
| summarize ScDisableCount = dcount(ProcessCommandLine), ScDisableList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 5m)
| where ScDisableCount > 10;
// Main query for counting and aggregating evidence
DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "vssadmin.exe" and ProcessCommandLine has_any("list shadows", "delete shadows")
or FileName =~ "fsutil.exe" and ProcessCommandLine has "usn" and ProcessCommandLine has "deletejournal"
or ProcessCommandLine has("bcdedit") and ProcessCommandLine has_any("recoveryenabled no", "bootstatuspolicy ignoreallfailures")
or ProcessCommandLine has "wbadmin" and ProcessCommandLine has "delete" and ProcessCommandLine has_any("backup", "catalog", "systemstatebackup")
or (ProcessCommandLine has "wevtutil" and ProcessCommandLine has "cl") 
or (ProcessCommandLine has "wmic" and ProcessCommandLine has "shadowcopy delete")
or (ProcessCommandLine has "sc" and ProcessCommandLine has "config" and ProcessCommandLine has "disabled")
| extend Bcdedit = iff(ProcessCommandLine has "bcdedit" and ProcessCommandLine has_any("recoveryenabled no", "bootstatuspolicy ignoreallfailures"), 1, 0)
| extend ShadowCopyDelete = iff (ProcessCommandLine has "shadowcopy delete", 1, 0)
| extend VssAdminShadows = iff(ProcessCommandLine has "vssadmin" and ProcessCommandLine has_any("list shadows", "delete shadows"), 1, 0)
| extend Wbadmin = iff(ProcessCommandLine has "wbadmin" and ProcessCommandLine has "delete" and ProcessCommandLine has_any("backup", "catalog", "systemstatebackup"), 1,0)
| extend Fsutil = iff(ProcessCommandLine has "fsutil" and ProcessCommandLine has "usn" and ProcessCommandLine has "deletejournal", 1, 0)
| summarize FirstActivity = min(Timestamp), ReportId = any(ReportId), Commands = make_set(ProcessCommandLine) by DeviceId, Fsutil, Wbadmin, ShadowCopyDelete, Bcdedit, VssAdminShadows, bin(Timestamp, 6h)
// Joining extra evidence
| join kind=leftouter (wevtutilClear) on $left.DeviceId == $right.DeviceId
| join kind=leftouter (cipher) on $left.DeviceId == $right.DeviceId
| join kind=leftouter (netStop) on $left.DeviceId == $right.DeviceId
| join kind=leftouter (taskKill) on $left.DeviceId == $right.DeviceId
| join kind=leftouter (scDisable) on $left.DeviceId == $right.DeviceId
| extend WevtutilUse = iff(LogClearCount > 10, 1, 0)
| extend CipherUse = iff(CipherCount > 1, 1, 0)
| extend NetStopUse = iff(netStopCount > 10, 1, 0)
| extend TaskkillUse = iff(taskKillCount > 10, 1, 0)
| extend ScDisableUse = iff(ScDisableCount > 10, 1, 0)
// Adding up all evidence
| mv-expand CommandList = NetStopList, TaskKillList, ClearedLogList, CipherList, Commands, ScDisableList
// Format results
| summarize BcdEdit = iff(make_set(Bcdedit) contains "1" , 1, 0), NetStop10PlusCommands = iff(make_set(NetStopUse) contains "1", 1, 0), Wevtutil10PlusLogsCleared = iff(make_set(WevtutilUse) contains "1", 1, 0),
CipherMultipleDrives = iff(make_set(CipherUse) contains "1", 1, 0), Fsutil = iff(make_set(Fsutil) contains "1", 1, 0), ShadowCopyDelete = iff(make_set(ShadowCopyDelete) contains "1", 1, 0),
Wbadmin = iff(make_set(Wbadmin) contains "1", 1, 0), TaskKill10PlusCommand = iff(make_set(TaskkillUse) contains "1", 1, 0), VssAdminShadow = iff(make_set(VssAdminShadows) contains "1", 1, 0), 
ScDisable = iff(make_set(ScDisableUse) contains "1", 1, 0), TotalEvidenceCount = count(CommandList), EvidenceList = make_set(Commands), StartofBehavior = min(FirstActivity) by DeviceId, bin(Timestamp, 1d)
| extend UniqueEvidenceCount = BcdEdit + NetStop10PlusCommands + Wevtutil10PlusLogsCleared + CipherMultipleDrives + Wbadmin + Fsutil + TaskKill10PlusCommand + VssAdminShadow + ScDisable + ShadowCopyDelete
| where UniqueEvidenceCount > 2
```
### Understand and tweak the query results
When looking at the results, you can focus on the following columns:

- **DeviceId**—identifies the affected device the 
- **TimeStamp**—first time any sign of ransomware activity was observed on the device
- **Specific signs of activity**—the count for each sign is in an individual column, such as _BcdEdit_ or _FsUtil_
- **TotalEvidenceCount**—number of observed signs
- **UniqueEvidenceCount**—number of types of observed signs

![Image of the query results for ransomware activity](../../media/advanced-hunting-ransomware-query.png)

*Query results showing affected devices and counts of various signs of ransomware activity*

The result lists only devices that have more than two types of signs of ransomware infection. To see all devices with any sign of infection, modify the following `where` operator:

```kusto
| where UniqueEvidenceCount > 2
```

## Look for general intrusion activities
While these activities don't constitute actual ransomware activities, they have been observed in many attacks deploying ransomware. You can use the following queries to find active attacks that will most likely result in the deployment of ransomware in your network.

### PsExec in remote file creation
While PsExec is also used during intrusions that do not involve ransomware, ransomware campaigns often use this tool to move around the network and transfer payloads between devices. To find such activities on your network, run this query.

```kusto
// PsExec creating files on remote machines
DeviceProcessEvents
| where InitiatingProcessFileName startswith "psexe"
| summarize CommandCount = dcount(ProcessCommandLine), makeset(ProcessCommandLine),
makeset(FileName) by DeviceId, bin(Timestamp, 1d)
| where CommandCount > 2
| where set_ProcessCommandLine has "copy"
```

### RDP persistence
In 2020, some human-operated ransomware campaigns, including ones by the PARINACOTA cybercriminal group, established RDP persistence through the registry.

```kusto
let Allow = DeviceProcessEvents
| where FileName == "reg.exe"
| where ProcessCommandLine has "AllowTSConnections"
| extend AllowReport = Timestamp ;
//
let Deny = DeviceProcessEvents 
| where FileName == "reg.exe"
| where ProcessCommandLine has "fDenyTSConnections"
| extend DenyReport = Timestamp;
// 
let Special = DeviceProcessEvents  
| where FileName == "reg.exe"
| where ProcessCommandLine has "SpecialAccounts"
| extend SpecialReport = Timestamp;
//
Special | join kind=inner (Deny | join kind=inner Allow on DeviceId) on DeviceId 
| where AllowReport < Timestamp +10s and AllowReport > Timestamp -10s
| where DenyReport < Timestamp +10s and DenyReport > Timestamp -10s
| where SpecialReport < Timestamp +10s and SpecialReport > Timestamp -10s
```

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)