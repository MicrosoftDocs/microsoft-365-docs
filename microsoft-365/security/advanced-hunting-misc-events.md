---
title: Miscellaneous events in advanced hunting
description: Find security events in the advanced hunting miscellaneous events table
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Find miscellaneous events in advanced hunting
>**DRAFT NOTES** 
>- For MTP, I will simplify this topic into something like "Find security events and other potentially relevant system events" and will focus on providing guidance on the ActionTypes in MiscEvents, e.g. look for `smartscreen`, `antivirus`, `appcontrol`, `scheduledtask`, etc...
>- A separate, comprehensive reference will be prepared for limited distribution, perhaps under NDA

**Applies to**:
- Microsoft 365 security center

The miscellaneous events table or **MiscEvents** contains a broad range of events captured by Microsoft Defender ATP. Many of these include security-related events, such as antivirus...

These events are all ETW-driven based on the ETW configuration stored in an onboarded endpoint"s registry configuration. It is important to note that this is not a comprehensive list of all possible ActionTypes. These events can only be viewed and documented upon the respective event occurring.

## Event groups in the MiscEvents table

|Event group|Description|Naming convention|
|---|---|---|
|[Windows API calls](#windows-api-calls)|Calls to Windows API that might indicate malicious activity|Ends in `ApiCall`|
|[Windows Defender Antivirus events](#windows-defender-antivirus-events)|Windows Defender Antivirus events, including scans and detections|Starts with `Antivirus` or `Amsi`|
|[Attack surface reduction events](#attack-surface-reduction-events)|Events associated with Attack surface reduction (ASR) rule detections, whether the rule is in audit or block mode |Starts with `Asr`|
|[Controlled folder access events](#controlled-folder-access-events)|Violations of controlled folder access policies designed to prevent unwanted changes to protected folders|Starts with `ControlledFolderAccess`|
|[Network protection events](#network-protection-events)|Detections of malicious or potentially malicious domains and IP addresses by network protection policies, whether blocked or audited|Starts with `ExploitGuardNetworkProtection`|
|[Application control events](#application-control-events)|Code integrity policy violations|Starts with `AppControl`|
|[Application guard events](#application-guard-events)|Application guard events, including detections of suspicious web browsing events in the application guard container|Starts with `AppGuard`|
|[Exploit protection events](#exploit-protection-events)|Possible exploitation detected or blocked by exploit protection|Starts with `ExploitGuard`|
|[Firewall events](#firewall-events)|Windows Defender Firewall events, including blocks as well as events that might impact the firewall service|Starts with `Firewall`|  
|[Uncategorized events](#uncategorized-events)|Various kinds of system activity that might be associated with attacks|No special convention, examples include `PowerShellCommand` `BrowserLaunchedToOpenUrl`, `LdapSearch` and `GetClipboardData`|


## Windows API calls

|Event type (ActionType)|Description|Notable info in AdditionalFields|
|---|---|---|
|`CreateRemoteThreadApiCall`|The CreateRemoteThread function was called and might have been used to inject a thread in the virtual address space of another process.|`TargetProcess`, `CreationTimeUtc`, `CommandLine`, `TokenElevationType`, `IntegrityLevel`, `Account_Sid`|
|`NtAllocateVirtualMemoryApiCall`|Memory was allocated for a process.|`TargetProcess`, `CreationTimeUtc`, `CommandLine`, `TokenElevationType`, `IntegrityLevel`, `Account_Sid`|
|`NtAllocateVirtualMemoryRemoteApiCall`|Memory was allocated for a process remotely.|`TargetProcess`, `CreationTimeUtc`, `CommandLine`|
|`NtMapViewOfSectionRemoteApiCall`|A section of a process's memory was mapped by calling the function NtMapViewOfSection. This activity can indicate an attempt to perform process injection.|`TargetProcess`, `CreationTimeUtc`, `CommandLine`|
|`OpenProcessApiCall`|The OpenProcess function was called, indicating an attempt to open a handle to a local process and potentially manipulate that process.|`TargetProcess`, `CreationTimeUtc`, `CommandLine`|
|`QueueUserApcRemoteApiCall`|An asynchronous procedure call (APC) was scheduled to execute in a user-mode thread.|`TargetProcess`, `CreationTimeUtc`, `CommandLine`|
|`ReadProcessMemoryApiCall`|The ReadProcessMemory function was called, indicating that a process read data from the process memory of another process.|`TotalBytesCopied`|
|`SetThreadContextRemoteApiCall`|The context of a thread was set from a user mode process. This activity can indicate an attempt to perform process hollowing or process injection.|`TargetProcess`, `CreationTimeUtc`, `CommandLine`|
|`WriteProcessMemoryApiCall`|The WriteProcessMemory function was called, indicating that a process has written data into memory for another process.|`TotalBytesCopied`|
|`GetAsyncKeyStateApiCall`|The GetAsyncKeyState function was called. Some keyloggers use this function to obtain the states of input keys and buttons.|`BackgroundCallCount`|
|`NtProtectVirtualMemoryApiCall`|**NEEDS REVIEW - TBD**|**TBD**|

## Windows Defender Antivirus events

|Event type (ActionType)|Description|Notable info in AdditionalFields|
|---|---|---|
|`AmsiScriptDetection`|A script was flagged as potentially malicious by Windows Defender Antivirus based on script analysis data from the Antimalware Scan Interface (AMSI). **NEEDS REVIEW, NOT IN TABLE**|`Description`|
|`AntivirusScanFailed`|A Windows Defender Antivirus scan did not complete successfully.|`Domain`, `Scan ID`, `Scan Parameters Index`, `Scan Type Index`, `User`, `Error Code`, `Error Description`|
|`AntivirusScanCompleted`|A Windows Defender Antivirus scan completed successfully.|`Domain`, `Scan ID`, `Scan Parameters Index`, `Scan Type Index`, `User`|
|`AntivirusScanCancelled`|A Windows Defender Antivirus scan was cancelled.|`Domain`, `Scan ID`, `Scan Parameters Index`, `Scan Type Index`, `User`|
|`AntivirusDetection`|Windows Defender Antivirus detected a threat.|`InitiatingProcess`, `ThreatName`, `WasExecutingWhileDetected`, `Action`, `WasRemediated`, `RegistryKey`, `RegistryValueName`, `RegistryValueData`, `ResourceSchema`, `Container`, `Service`, `ReportSource` **NEEDS REVIEW-MULTIPLE VARIANTS OF THIS ACTIONTYPE WITH VARYING ADDTLINFO**|
|`AntivirusReport`|**NEEDS REVIEW: NOT IN TABLE**|`WasExecutingWhileDetected`, `Signer`|

## Attack surface reduction events

|Event type (ActionType)|Description|Notable info in AdditionalFields|
|---|---|---|
|`AsrExecutableEmailContentBlocked`|**NEEDS REVIEW: Not in table** An attack surface redution rule blocked executable content from an email client and or webmail.|`IsAudit`, `RuleId`|
|`AsrExecutableOfficeContentBlocked`|**NEEDS REVIEW: Not in table** An Office application was blocked from creating executable content.|`IsAudit`, `RuleId`|
|`AsrLsassCredentialTheftBlocked`|**NEEDS REVIEW: Not in table** Possible credential theft from lsass.exe was blocked.|`IsAudit`, `RuleId`|
|`AsrOfficeChildProcessBlocked`|**NEEDS REVIEW: Not in table** An Office application was blocked from creating child processes.|`IsAudit`, `RuleId`|
|`AsrOfficeMacroWin32ApiCallsBlocked`|**NEEDS REVIEW: Not in table** Code injection into another process from an Office application was blocked.|`IsAudit`, `RuleId`|
|`AsrPsexecWmiChildProcessAudited`|**NEEDS REVIEW: Not in table** The use of PSExec or WMI commands to spawn a child process was detected.|`IsAudit`, `RuleId`|
|`AsrRansomwareBlocked`|**NEEDS REVIEW: Not in table** Ransomware activity was blocked.|`IsAudit`, `RuleId`|
|`AsrUntrustedExecutableAudited`|**NEEDS REVIEW: Not in table** An untrusted file that does not meet criteria for age or prevalence has executed.|`IsAudit`, `RuleId`|

## Controlled folder access events

|Event type (ActionType)|Description|Notable info in AdditionalFields|
|---|---|---|
|`ControlledFolderAccessViolationAudited`|**NEEDS REVIEW: Not in table** Changes were made to a protected folder.|`IsAudit`, `RuleId`|

## Network protection events

|Event type (ActionType)|Description|Notable info in AdditionalFields|
|---|---|---|
|`ExploitGuardNetworkProtectionBlocked`|**NEEDS REVIEW: Not in table** A connection to a low-reputation network address was blocked by network protection.|`Uri`, `IsAudit`|

## Application control events
|Event type (ActionType)|Description|Notable info in AdditionalFields|
|---|---|---|
|`AppControlCodeIntegrityPolicyBlocked`|Application control blocked a code integrity policy violation.|`RequestedSigningLevel`, `ValidatedSigningLevel`, `AuthenticodeHash`|
|`AppControlCodeIntegrityPolicyAudited`|Application control detected a code integrity policy violation.|**NEEDS REVIEW: Does not match table** `RequestedSigningLevel`, `ValidatedSigningLevel`, `AuthenticodeHash`|
|`AppControlExecutableAudited`|Application control detected the use of an untrusted executable.|**NEEDS REVIEW: FROM TABLE** `Fqbn`, `AuthenticodeHash`|
|`AppLockerBlockExecutable` **NEEDS REVIEW: Consider rename to ApplockerExecutableBlocked**|AppLocker prevented an untrusted executable from running.|**NEEDS REVIEW: FROM TABLE** `Fqbn`, `AuthenticodeHash`|
|`AppControlScriptAudited`|Application control detected the use of an untrusted script.|**NEEDS REVIEW: FROM TABLE** `Fqbn`, `AuthenticodeHash`|
|`AppLockerBlockScript` **NEEDS REVIEW: Consider rename to ApplockerScriptBlocked**|AppLocker prevented an untrusted script from running.|**NEEDS REVIEW: FROM TABLE** `Fqbn`, `AuthenticodeHash`|
|`AppControlPackagedAppAudited`|Application control detected the use of an untrusted packaged app.|**NEEDS REVIEW: FROM TABLE** `Fqbn`, `AppPackageFamilyName`|
|`AppLockerBlockPackagedApp` **NEEDS REVIEW: Consider rename to AppLockerPackagedAppBlocked**|AppLocker prevented an untrusted packaged app from running.|**NEEDS REVIEW: FROM TABLE** `Fqbn`, `AppPackageFamilyName`|
|`AppControlAppInstallationAudited`|Application control detected the installation of an untrusted app.|**NEEDS REVIEW: FROM TABLE** `Fqbn`, `AppPackageFamilyName`|
|`AppLockerBlockPackagedAppInstallation` **NEEDS REVIEW: Consider rename to AppLockerPackagedAppInstallationBlocked**|AppLocker prevented the installation of an unsanctioned packaged app.|**NEEDS REVIEW: FROM TABLE** `Fqbn`, `AppPackageFamilyName`|
|`AppControlCodeIntegrityDriverRevoked`|**NEEDS REVIEW** Application control found a driver with a revoked certificate.|`ExtractedProcess`|
|`AppControlCodeIntegrityImageAudited`|**NEEDS REVIEW** Application control detected an executable file that violated code integrity policies.|-|
|`AppControlCodeIntegrityImageRevoked`|Application control found an executable file with a revoked certificate.|-|

## Application guard events
|Event type (ActionType)|Description|Notable info in AdditionalFields|
|---|---|---|
|`AppGuardLaunchedWithUrl`|The opening of an untrusted URL has initiated an application guard container.|`ContainerName`|
|`AppGuardBrowseToUrl`|**NEEDS REVIEW** A URL has been accessed from within a web page in an application guard container.|`sourceUrl`, `destinationUrl`|
|`AppGuardCreateContainer`|Application guard initiated an isolated container.|**Needs review - does not match table** `RelatedContainerId`|
|`AppGuardSuspendContainer`|Application guard suspended an isolated container.|`ContainerName`|
|`AppGuardResumeContainer`|Application guard resumed an isolated container from a suspended state.|`ContainerName`|
|`AppGuardStopContainer`|Application guard stopped an isolated container.|`ContainerName`|


## Exploit protection events
|Event type (ActionType)|Description|Notable info in AdditionalFields|
|---|---|---|
|`ExploitGuardAcgAudited`|Arbitrary code guard (ACG) detected an attempt to modify code page permissions or create unsigned code pages.|`IsAudit`|
|`ExploitGuardAcgEnforced`|**NEEDS REVIEW - Not in table** Arbitrary code guard (ACG) blocked an attempt to modify code page permissions or create unsigned code pages.|`IsAudit`|
|`ExploitGuardChildProcessAudited`|Exploit protection detected the creation of a child process.|`IsAudit`, `ChildCommandLine`|
|`ExploitGuardChildProcessBlocked`|Exploit protection blocked the creation of a child process.|`IsAudit`, `ChildCommandLine`|
|`ExploitGuardNonMicrosoftSignedAudited`|Exploit protection detected the launch of a process from an image file that is not signed by Microsoft.|`IsAudit`|
|`ExploitGuardNonMicrosoftSignedBlocked`|Exploit protection blocked the launch of a process from an image file that is not signed by Microsoft.|`IsAudit`|
|`ExploitGuardWin32SystemCallBlocked`|Exploit protection blocked a call to the Windows system API.|`IsAudit`|
|`ExploitGuardLowIntegrityImageAudited`|Exploit protection detected the launch of a process from a low-integrity file.|`IsAudit`|
|`ExploitGuardLowIntegrityImageBlocked`|Exploit protection blocked the launch of a process from a low-integrity file.|`IsAudit`|
|`ExploitGuardSharedBinaryAudited`|Exploit protection detected the launch of a process from a remote, shared file.|`IsAudit`|
|**Needs review: not in table or in this draft** `ExploitGuardSharedBinaryBlocked`|Exploit protection blocked the launch of a process from a remote, shared file.|`IsAudit`|
|`ExploitGuardWin32SystemCallAudited`|Exploit protection detected a call to the Windows system API.|`IsAudit`|
|`ExploitGuardWin32SystemCallBlocked`|Exploit protection blocked a call to the Windows system API.|`IsAudit`|
|`ExploitGuardEafViolationAudited`|Export address filtering (EAF) in exloit protection detected possible exploitation activity.|`IsAudit`|
|`ExploitGuardEafViolationBlocked`|Export address filtering (EAF) in exloit protection blocked possible exploitation activity.|`IsAudit`|
|`ExploitGuardIafViolationAudited`|Import address filtering (IAF) in exloit protection detected possible exploitation activity.|`IsAudit`|
|`ExploitGuardIafViolationBlocked`|Import address filtering (IAF) in exloit protection blocked possible exploitation activity.|`IsAudit`|
|`ExploitGuardRopExploitAudited`|Exploit protection detected possible return-object programming (ROP) exploitation.|`IsAudit`|
|`ExploitGuardRopExploitBlocked`|Exploit protection blocked possible return-object programming (ROP) exploitation.|`IsAudit`|

## Firewall events
|Event type (ActionType)|Description|Notable info in AdditionalFields|
|---|---|---|
|`FirewallInboundConnectionToAppBlocked`|The firewall blocked an inbound connection to an app.|`Profiles`|
|`FirewallOutboundConnectionBlocked`|The firewall blocked an outbound connection.|`LocalAddress`, `LocalPort`, `RemoteAddress`, `RemotePort`, `Direction`|
|`FirewallInboundConnectionBlocked`|The firewall blocked an inbound connection.|`LocalAddress`, `LocalPort`, `RemoteAddress`, `RemotePort`, `Direction`|
|`FirewallServiceStopped`|The firewall service was stopped.|-|

## Uncategorized events
|Event type (ActionType)|Description|Notable info in AdditionalFields|
|---|---|---|
|`BrowserLaunchedToOpenUrl`|The web browser opened a URL that originated as a link in another application.|`Name`,`Uri`|
|`GetClipboardData`|The GetClipboardData function was called, indicating that a process attempted to obtain the contents of the system clipboard.|-|
|`LdapSearch`|An LDAP search was performed.|`ScopeOfSearch`, `SearchFilter`, `DistinguishedName`, `AttributeList`|
|`PnpDeviceConnected`|A plug and play (PnP) device was attached.|`ClassName`, `DeviceId`, `DeviceDescription`, `VendorIds`|
|`PowerShellCommand`|A PowerShell alias, function, filter, cmdlet, external script, application, script, workflow, or configuration was executed from a PowerShell host process.|`Command`|
|`ProcessCreatedUsingWmiQuery`|A process was created using Windows Management Instrumentation (WMI).|`IsRemoteMachine`, `Namespace`, `ClassName`, `MethodName`|
|`ProcessPrimaryTokenModified`|A process's primary token was modified.|`SystemTokenPointer`, `OriginalTokenPointer`, `OriginalTokenIntegrityLevel`, `OriginalTokenUserSid`, `CurrentTokenPointer`, `CurrentTokenIntegrityLevel`, `CurrentTokenUserSid`|
|`RemoteWmiOperation`|A Windows Management Instrumentation (WMI) operation was initiated from a remote device.|`OperationType`,`OperationDetails`,`Namespace`|
|`ScheduledTaskCreated`|A scheduled task was created.|`TaskName`|
|`ScheduledTaskDeleted`|A scheduled task was deleted.|`TaskName`|
|`ScheduledTaskEnabled`|A scheduled task was turned on.|`TaskName`|
|`ScheduledTaskDisabled`|A scheduled task was turned off.|`TaskName`|
|`ScreenshotTaken`|A screenshot was taken.|-|
|`SmartScreenAppWarning`|SmartScreen warned about running a downloaded application that is untrusted or malicious.|`ActivityId`, `Experience`|
|`SmartScreenExploitWarning`|SmartScreen warned about opening a web page that contains an exploit.|`Uri`, `ReferrerUri`|
|`SmartScreenUrlWarning`|SmartScreen warned about opening a low-reputation URL that might be hosting malware or is a phishing site.|`ActivityId`, `Uri`|
|`SmartScreenUserOverride`|A user has overridden a SmartScreen warning and continued to open an untrusted app or a low-reputation URL.|`ActivityId`, `Action`|
|`UserAccountCreated`|A new user account was created.|**NEEDS REVIEW: No account info?**|
|`ScriptContent`|**NEEDS REVIEW** Script content was identified.|`Hash`, `Content`|
|`ScriptContentScan`|**NEEDS REVIEW** Script content was scanned.|`Hash`, `ScanResult`, `AppName`|
|`PasswordChangeAttempt`|An attempt to change a user password was made.|**NEEDS REVIEW - no user info?**|
|`LogonRightsSettingEnabled`|Interactive logon rights on the machine were granted to a user.|`LogonRights`**NEEDS REVIEW - no user info?**|


## Related topics
- [Proactively hunt for threats](advanced-hunting.md)
- [Learn the query language](advanced-hunting-language-overview.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the data tables](advanced-hunting-schema-tables.md)
- [Understand the data columns](advanced-hunting-column-reference.md)
- [Apply query best practices](advanced-hunting-best-practices.md)