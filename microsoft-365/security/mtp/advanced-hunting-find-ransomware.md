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
- Microsoft Threat Protection

Ransomware has rapidly evolved from being simple commodity malware affecting individual computer users to an enterprise threat that is severely impacting industries and government institutions. While [Microsoft Threat Protection](microsoft-threat-protection.md) provides numerous capabilities that detect and block ransomware, including intrusion activity intended to deploy this payload, performing proactive checks using for signs of infection attempts can help keep networks protected.

> [Read about human-operated ransomware](https://www.microsoft.com/security/blog/2020/03/05/human-operated-ransomware-attacks-a-preventable-disaster/)

With [advanced hunting](advanced-hunting-overview.md) in Microsoft Threat Protection, you can create queries that locate individual artifacts associated with ransomware activity. You can also run more sophisticated queries that can look for signs of activity and weigh these signs to find devices that require immediate attention.

## Signs of ransomware activity
Microsoft security researchers have observed various common yet subtle artifacts in numerous ransomware campaigns launched by sophisticated intruders. These signs mostly involve use of various system tools to prepare for encryption, prevent detection, or clear forensic evidence.

| Ransomware activity | Common tools | Intent |
| -- | -- | -- |
| Stop processes | taskkill.exe, net stop | Ensure files targeted for encryption are not locked by various applications. |
| Turn off services | sc.exe | Prevent security software from disrupting encryption and other ransomware activity. Stops backup software from creating recoverable copies  |
| Delete logs and files | cipher.exe, wevtutil, fsutil.exe | Remove forensic evidence. |
| Delete shadow copies  | vsadmin.exe | Remove drive shadow copies that can be used to recover encrypted files. |

## Find and assess signs of activity
This powerful query is designed to :
- Look for the most subtle signs of ransomware activity
- Weigh the presence of these signs
- Identify devices with a higher chance of being targets of ransomware 

```kusto
// Looking for killing tasks prior to ransom
let taskKill = materialize(DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "taskkill.exe" 
| summarize taskKillCount = dcount(ProcessCommandLine), TaskKillList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 2m)
| summarize taskKillCount = dcount(ProcessCommandLine) by DeviceId, bin(Timestamp, 2m)
| where taskKillCount > 10);
// Looking for stopping processes prior to ransom
let netStop = materialize(DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "net.exe" and ProcessCommandLine has "stop"
| summarize netStopCount = dcount(ProcessCommandLine), NetStopList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 2m)
| summarize netStopCount = dcount(ProcessCommandLine) by DeviceId, bin(Timestamp, 2m)
| where netStopCount > 10);
// Looking for cipher deleting data from multiple drives for defense evasion
let cipher = materialize(DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "cipher.exe"   
// Looking for /w flag for deleting   
| where ProcessCommandLine has "/w"   
| summarize CipherCount = dcount(ProcessCommandLine),  
CipherList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 1m)   
// Looking for multiple drives in a short timeframe   
| where CipherCount > 1);
// Looking for event log clearing of multiple logs prior to ransom
let wevtutilClear = materialize(DeviceProcessEvents
| where Timestamp > ago(1d)
| where ProcessCommandLine has "WEVTUTIL" and ProcessCommandLine has "CL"
| summarize LogClearCount = dcount(ProcessCommandLine), ClearedLogList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 5m)
| summarize LogClearCount = dcount(ProcessCommandLine) by DeviceId, bin(Timestamp, 5m)
| where LogClearCount > 10);
// Looking for disabling services using SC
let scDisable = materialize(DeviceProcessEvents
| where Timestamp > ago(1d)
| where ProcessCommandLine has "sc" and ProcessCommandLine has "config" and ProcessCommandLine has "disabled"
| summarize ScDisableCount = dcount(ProcessCommandLine), ScDisableList = make_set(ProcessCommandLine) by DeviceId, bin(Timestamp, 5m)
| where ScDisableCount > 10);
// Main query for counting and aggregating evidence
DeviceProcessEvents
| where Timestamp > ago(1d)
| where FileName =~ "vssadmin.exe" and ProcessCommandLine has_any("list shadows", "delete shadows")
or FileName =~ "fsutil.exe" and ProcessCommandLine has "usn" and ProcessCommandLine has "deletejournal"
or ProcessCommandLine has("bcdedit") and ProcessCommandLine has_any("recoveryenabled no", "bootstatuspolicy ignoreallfailures")
or ProcessCommandLine has "wbadmin" and ProcessCommandLine has "delete" and ProcessCommandLine has_any("backup", "catalog", "systemstatebackup")
| where FileName in~("vssadmin.exe", "fsutil.exe", "cipher.exe", "taskkill.exe") 
or ProcessCommandLine has_any("bcdedit","wbadmin")
or (FileName =~ "net.exe" and ProcessCommandLine has "stop")
or (ProcessCommandLine has "wevtutil" and ProcessCommandLine has "cl") 
or (ProcessCommandLine has "wmic" and ProcessCommandLine has "shadowcopy delete")
| extend Bcdedit = iff(ProcessCommandLine has "bcdedit" and ProcessCommandLine has_any("recoveryenabled no", "bootstatuspolicy ignoreallfailures"), 1, 0)
| extend ShadowCopyDelete = iff (ProcessCommandLine has "shadowcopy delete", 1, 0)
| extend VssAdminShadows = iff(ProcessCommandLine has "vssadmin" and ProcessCommandLine has_any("list shadows", "delete shadows"), 1, 0)
| extend ShadowCopyDelete = iff(ProcessCommandLine has "vssadmin" and ProcessCommandLine has_any("list shadows", "delete shadows") or ProcessCommandLine has "shadowcopy delete", 1, 0)
| extend Wbadmin = iff(ProcessCommandLine has "wbadmin" and ProcessCommandLine has "delete" and ProcessCommandLine has_any("backup", "catalog", "systemstatebackup"), 1,0)
| extend Fsutil = iff(ProcessCommandLine has "fsutil" and ProcessCommandLine has "usn" and ProcessCommandLine has "deletejournal", 1, 0)
| summarize ReportId = any(ReportId), Commands = make_set(ProcessCommandLine) by DeviceId, Fsutil, Wbadmin, ShadowCopyDelete, Bcdedit, VssAdminShadows, bin(Timestamp, 6h)
// Joining extra evidence
| join kind=leftouter (wevtutilClear) on $left.DeviceId == $right.DeviceId
| join kind=leftouter (cipher) on $left.DeviceId == $right.DeviceId
| join kind=leftouter (netStop) on $left.DeviceId == $right.DeviceId
| join kind=leftouter (taskKill) on $left.DeviceId == $right.DeviceId
| join kind=leftouter (scDisable) on $left.DeviceId == $right.DeviceId
| extend WevtutilUse = iff(LogClearCount > 10, 1, 0)
| extend WevtutilUse = iff(LogClearCount > 5, 1, 0)
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
ScDisable = iff(make_set(ScDisableUse) contains "1", 1, 0), TotalEvidenceCount = count(CommandList), EvidenceList = make_set(Commands), ReportId = any(ReportId) by DeviceId, bin(Timestamp, 6h)
| extend UniqueEvidenceCount = BcdEdit + NetStop10PlusCommands + Wevtutil10PlusLogsCleared + CipherMultipleDrives + Wbadmin + Fsutil + TaskKill10PlusCommand + VssAdminShadow
| where UniqueEvidenceCount > 2 // Use this to lower threshhold and include more results
| summarize Commands = make_set(ProcessCommandLine), Wevutil = dcount(WevtutilUse), Cipher = dcount(CipherUse), TaskKill = dcount(TaskkillUse), NetStop = dcount(NetStopUse) by DeviceId, Fsutil, Wbadmin, ShadowCopyDelete, Bcdedit, bin(Timestamp, 1d)
// Adding up all evidence
| extend EvidenceCount = Wevutil + Cipher + Fsutil + Wbadmin + ShadowCopyDelete + Bcdedit + NetStop
| summarize EvidenceCount = count(EvidenceCount), Evidence = make_set(Commands) by DeviceId, bin(Timestamp, 1d)
| where EvidenceCount > 2
```


## Queries for specific signs
These sample queries can be used to locate specific signs of activity. 

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

### RDP persistence
Find attempts to establish RDP persistence through the registry. This technique is commonly used by groups like PARINACOTA during ransomware campaigns.

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

## General intrusion activities

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




## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
