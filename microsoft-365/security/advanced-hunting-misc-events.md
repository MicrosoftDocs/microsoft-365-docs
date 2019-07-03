---
title: Miscellaneous events in advanced hunting
description: Find security events in the advanced hunting miscellaneous events table
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
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

**Applies to**:
- Microsoft 365

The miscellaneous events table or **MiscEvents** contains a broad range of events captured by Microsoft Defender ATP. Many of these include security-related events, such as antivirus...

purpose of this document is to document all observed Microsoft Defender Advanced Threat Protection (MDATP) [MiscEvents](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection#use-exposed-tables-in-advanced-hunting) ActionTypes. These events are all ETW-driven based on the ETW configuration stored in an onboarded endpoint"s registry configuration. It is important to note that this is not a comprehensive list of all possible ActionTypes. These events can only be viewed and documented upon the respective event occurring. While it would be ideal for Microsoft to document these events, this document intends to serve as a reference in the absence of such official documentation.

## MiscEvents Schema

The following is the MiscEvent schema. The specific ActionType will dictate which of these fields are populated. Within this document, the only field documented for each ActionType is "AdditionalFields" where Microsoft chooses to place additional, hopefully relevant contextual information in a JSON format.

|ColumnName|ColumnOrdinal|DataType|ColumnType|
|---|---|---|---|
|EventTime|0|System.DateTime|datetime|
|MachineId|1|System.String|string|
|ComputerName|2|System.String|string|
|ActionType|3|System.String|string|
|FileName|4|System.String|string|
|FolderPath|5|System.String|string|
|SHA1|6|System.String|string|
|MD5|7|System.String|string|
|AccountDomain|8|System.String|string|
|AccountName|9|System.String|string|
|AccountSid|10|System.String|string|
|RemoteUrl|11|System.String|string|
|RemoteComputerName|12|System.String|string|
|ProcessId|13|System.Int64|long|
|ProcessCommandLine|14|System.String|string|
|ProcessCreationTime|15|System.DateTime|datetime|
|ProcessTokenElevation|16|System.String|string|
|LogonId|17|System.Int64|long|
|RegistryKey|18|System.String|string|
|RegistryValueName|19|System.String|string|
|RegistryValueData|20|System.String|string|
|RemoteIP|21|System.String|string|
|RemotePort|22|System.Int32|int|
|LocalIP|23|System.String|string|
|LocalPort|24|System.Int32|int|
|FileOriginUrl|25|System.String|string|
|FileOriginIP|26|System.String|string|
|AdditionalFields|27|System.String|string|
|InitiatingProcessSHA1|28|System.String|string|
|InitiatingProcessSHA256|29|System.String|string|
|InitiatingProcessFileName|30|System.String|string|
|InitiatingProcessFolderPath|31|System.String|string|
|InitiatingProcessId|32|System.Int64|long|
|InitiatingProcessCommandLine|33|System.String|string|
|InitiatingProcessCreationTime|34|System.DateTime|datetime|
|InitiatingProcessParentId|35|System.Int64|long|
|InitiatingProcessParentFileName|36|System.String|string|
|InitiatingProcessParentCreationTime|37|System.DateTime|datetime|
|InitiatingProcessMD5|38|System.String|string|
|InitiatingProcessAccountDomain|39|System.String|string|
|InitiatingProcessAccountName|40|System.String|string|
|InitiatingProcessAccountSid|41|System.String|string|
|InitiatingProcessLogonId|42|System.Int64|long|
|ReportId|43|System.Int64|long|
|AppGuardContainerId|44|System.String|string|

# ActionType group: Suspicious Windows API calls


## CreateRemoteThreadApiCall

### Description
CreateRemoteThread injection was performed

### Event capture logic
Unknown

### ETW provider and event ID
Unknown

Event ID: Unknown

### AdditionalFields
* TargetProcess
    * CreationTimeUtc
    * CommandLine
    * TokenElevationType
    * IntegrityLevel
    * Account_Sid


## NtAllocateVirtualMemoryApiCall

### Description
Memory was allocated for a process.

### Event capture logic
1. A PAGE_EXECUTE_READWRITE (0x40) allocation (along with some other specific [allocation constants](https://docs.microsoft.com/en-us/windows/desktop/memory/memory-protection-constants)) was made in any of the following processes: excel.exe, winword.exe, powerpnt.exe, outlook.exe, microsoftedgecp.exe, microsoftedge.exe, iexplore.exe, firefox.exe, spoolsv.exe, winlogon.exe, lsass.exe, searchindexer.exe, searchfilterhost.exe, searchprotocolhost.exe, rundll32.exe, regsvr32.exe, cmd.exe
2. A PAGE_EXECUTE_READWRITE allocation was made resembling common, default allocations for meterpreter in any process.

### ETW provider and event ID
Microsoft-Windows-Threat-Intelligence

Event ID: 6

### AdditionalFields
No additional context is populated in AdditionalFields.


## NtAllocateVirtualMemoryRemoteApiCall

### Description
Memory was allocated for a process remotely.

### Event capture logic
Any process besides the following: chrome.exe, MicrosoftEdgeCP.exe

### ETW provider and event ID
Microsoft-Windows-Threat-Intelligence

Event ID: 1

### AdditionalFields
* TargetProcess
    * CreationTimeUtc
    * CommandLine
    * TokenElevationType
    * IntegrityLevel
    * Account_Sid


## NtMapViewOfSectionRemoteApiCall

### Description
A section of a process's memory was mapped by calling the function NtMapViewOfSection. This activity can indicate an attempt to perform process injection.

### Event capture logic
Capture all calls to NtMapViewOfSection where the target process is not: jshost.exe, MicrosoftEdgeCP.exe

### ETW provider and event ID
Microsoft-Windows-Threat-Intelligence

Event ID: 3

### AdditionalFields
* TargetProcess
    * CreationTimeUtc
    * CommandLine


## OpenProcessApiCall

### Description
A handle to a process was requested.

### Event capture logic
This event will only be captured when obtaining a handle to lsass, SenseCncProxy, SenseSampleUploader, MsSense, SenseIr, TrustedInstaller

### ETW provider and event ID
Microsoft-Windows-SEC

Event ID: 34

### AdditionalFields
* TargetProcess
    * CreationTimeUtc
    * CommandLine
* [DesiredAccess](https://docs.microsoft.com/en-us/windows/desktop/ProcThread/process-security-and-access-rights)


## QueueUserApcRemoteApiCall

### Description
An asynchronous procedure call (APC) was scheduled to execute in a user-mode thread.

### Event capture logic
All user-mode APCs are captured.

### ETW provider and event ID
Microsoft-Windows-Threat-Intelligence

Event ID: 4

### AdditionalFields
* TargetProcess
    * CreationTimeUtc
    * CommandLine


## ReadProcessMemoryApiCall

### Description
Bytes were read from the process memory of another process.

### Event capture logic
This event will only be captured when a process successfully reads more than 0 bytes from lsass.exe

### ETW provider and event ID
Microsoft-Windows-Threat-Intelligence

Event ID: 13

### AdditionalFields
* TotalBytesCopied - The number of bytes that were copied upon ReadProcessMemory being called.


## SetThreadContextRemoteApiCall

### Description
The context of a thread was set from a user mode process. This event can indicate an attempt to perform process hollowing or process injection.

### Event capture logic
All attempts are captured

### ETW provider and event ID
Microsoft-Windows-Threat-Intelligence

Event ID: 5

### AdditionalFields
* TargetProcess
    * CreationTimeUtc
    * CommandLine


## WriteProcessMemoryApiCall

### Description
The WriteProcessMemory function was called, indicating that a process has written data into memory for another process.

### Event capture logic
This event will only be captured when a process successfully writes more than 0 bytes from lsass.exe

### ETW provider and event ID
Microsoft-Windows-Threat-Intelligence [Should we indicate actual ETW provider GUID]

Event ID: 14

### AdditionalFields
* TotalBytesCopied - The number of bytes that were copied upon WriteProcessMemory being called.


## GetAsyncKeyStateApiCall

### Description
An "anomalous" async key state occurred. The source of this event is win32kbase!CAsyncKeyEventMonitor::ReportGetAsyncKeyStateAnomaly. It is unclear what constitutes an anomalous key state but perhaps this could refer to GetAsyncKeyState being called a certain number of times within a timing threshold since the last keystroke was pressed.

### Event capture logic
BackgroundCallCount is greater than 254 and MsSinceLastKeyEvent is greater than 0. i.e. perhaps this implies a threshold of the number of times GetAsyncKeyState was called in between actual keystrokes.

### ETW provider and event ID
Microsoft-Windows-Win32k

Event ID: 1003

### AdditionalFields
* BackgroundCallCount - presumably the number of times GetAsyncKeyState was called in between actual keystrokes being supplied.


# ActionType group: Windows Defender Antivirus


## AmsiScriptDetection

### Description
An AV signature flagged based on an AMSI data source.

### Event capture logic
Unknown

### ETW provider and event ID
Unknown

### AdditionalFields
* Description - A brief description of the detection - e.g. "powershell.exe launched a script inspected by AMSI"
* observation guid - Presumably, the GUID identifier of the MDATP observation that was collected.
* observation name - Presumably, the human-readable name of the MDATP observation that was collected - e.g. "AmsiContentObservation"
* observation id - Presumably, the GUID identifier of the MDATP observation that was collected. It is unclear how observation id is related to observation GUID but perhaps these are internals that were not intended to be exposed.
* DetectorId - Presumably, a GUID identifier for the specific detection that triggered. 
* OriginalEtwProviderGuid - The GUID of the ETW provider that was the source of the original event - e.g. "2a576b87-09a7-520e-c21a-4942f0271d67" which corresponds to the "Microsoft-Antimalware-Scan-Interface" provider.
* OriginalEtwEventId - The event ID that was the source of the original event.
* OriginalEtwRuleId - The GUID identifier for the event source rule. This value is found in the JSON WDATP ETW configuration. e.g. "7761a173-6c2f-4242-a2c5-5ecb6fa8422c" corresponds to the rule that specifically captures Microsoft-Antimalware-Scan-Interface EID 1101
* SlimAlertId - A GUID identifier. Purpose unknown.


## AntivirusDetection

### Description
An AV signature flagged.

### Event capture logic
Unknown

### ETW provider and event ID
Microsoft-Antimalware-Service

Event ID: 48

### AdditionalFields
* InitiatingProcess
    * TokenElevationType - unknown, 
    * Integrity level - the integer value of the original token integrity level (Low=4096, Medium=8192, High=12288, System=16384)
* ThreatName - Windows Defender categorized threat name
* WasExecutingWhileDetected - "true" or "false" whether the code was executing when detected
* Action - unknown string, value of "2" observed
* WasRemediated - "true" or "false" whether the threat was remediated or not
* ResourceSchema - unknown, observed value of "file"
* Container
* ReportSource - source of the report, value of "WindowsDefender" observed


## AntivirusReport

### Description
The purpose of this event is not entirely clear but it appears to be related to flagged Defender AV entries.

### Event capture logic
Unknown

### ETW provider and event ID
Unknown

### AdditionalFields
* WasExecutingWhileDetected - "true" or "false"
* Signer - The subject name of the certificate used to sign the file. Sometimes this will indicate "INVALID" (e.g. "INVALID:Microsoft Corporation"). How "INVALID" is derived is unknown.


## AntivirusScanCancelled

## Description
Any Defender AV scans that were cancelled

### Event capture logic
Capture all events

## ETW provider and event ID
Microsoft-Windows-Windows Defender

EID: 1002

## AdditionalFields
* Domain - The Domain of the user who cancelled the scan - e.g. "NT AUTHORITY"
* ScanId - A unique GUID value for the scan.
* ScanParametersIndex - A number indicating an index value. It is currently unknown how to interpret this value.
* ScanTypeIndex - The type of scan that was cancelled - e.g. "Quick", "Full"
* User - The user who cancelled the scan - e.g. "SYSTEM"


## AntivirusScanCompleted

### Description
Any Defender AV scans that were completed

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1001

### AdditionalFields
* Domain - The Domain of the user who cancelled the scan - e.g. "NT AUTHORITY"
* ScanId - A unique GUID value for the scan.
* ScanParametersIndex - A number indicating an index value. It is currently unknown how to interpret this value.
* ScanTypeIndex - The type of scan that was cancelled - e.g. "Quick", "Full"
* User - The user who cancelled the scan - e.g. "SYSTEM"


## AsrExecutableEmailContentBlocked

### Description
Executable content was blocked from email client and webmail via a Defender AV Attack Surface Reduction (ASR) rule.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1122

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode
* RuleId - The GUID identifier for the ASR rule. This ASR event GUID will be: "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"


## AsrExecutableOfficeContentBlocked

### Description
The creation of executable content in an Office application was blocked.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1122

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode
* RuleId - The GUID identifier for the ASR rule. This ASR event GUID will be: "3B576869-A4EC-4529-8536-B80A7769E899"


## AsrLsassCredentialTheftBlocked

### Description
Possible credential theft from lsass.exe was blocked.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1122

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode
* RuleId - The GUID identifier for the ASR rule. This ASR event GUID will be: "9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2"


## AsrOfficeChildProcessBlocked

### Description
An Office application was blocked from creating child processes

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1122

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode
* RuleId - The GUID identifier for the ASR rule. This ASR event GUID will be: "D4F940AB-401B-4EFC-AADC-AD5F3C50688A"


## AsrOfficeMacroWin32ApiCallsBlocked

### Description

Win32 API calls from an Office macro were blocked.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1122

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode
* RuleId - The GUID identifier for the ASR rule. This ASR event GUID will be: "92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B"


## AsrOfficeProcessInjectionBlocked

### Description
Code injection into another process from an Office application was blocked.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1122

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode
* RuleId - The GUID identifier for the ASR rule. This ASR event GUID will be: "75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84"


## AsrPsexecWmiChildProcessAudited

### Description

A child process of PSExec or WMI commands was audited.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1121

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode
* RuleId - The GUID identifier for the ASR rule. This ASR event GUID will be: "d1e49aac-8f56-4280-b9ba-993a6d77406c"


## AsrRansomwareBlocked

### Description
Potential ransomware was blocked.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1122

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode
* RuleId - The GUID identifier for the ASR rule. This ASR event GUID will be: "c1db55ab-c21a-4637-bb3f-a12568109d35"


## AsrUntrustedExecutableAudited

### Description
A file was executed that does not meet a prevalence, age, or trusted list criterion.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1121

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode
* RuleId - The GUID identifier for the ASR rule. This ASR event GUID will be: "01443614-cd74-433a-b99e-2ecdc07bfc25"


## ControlledFolderAccessViolationAudited

### Description
Changes were made to a protected folder. [Reference](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard)

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1124 (most likely)

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode
* RuleId - The GUID identifier for the Controlled Folder Access rule. This event GUID will be: "5737d832-9e2c-4922-9623-48a220290dcb"


## ExploitGuardNetworkProtectionBlocked

### Description
[Network Protection](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/network-protection-exploit-guard) audited/blocked a network connection. Despite being labeled as an Exploit Guard feature, considering it takes a dependency on Defender AV, it is being categorized under the "Windows Defender AV" group.

### Event capture logic
Capture all events


### ETW provider and event ID
Microsoft-Windows-Windows Defender

Event ID: 1126

### AdditionalFields
* Uri - The URI that was navigated to
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode


# ActionType group: Application Control


## AppControlCodeIntegrityPolicyBlocked

### Description
Windows Defender Application Control (WDAC) blocked the execution of a file per a deployed configurable code integrity (CI) policy.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-CodeIntegrity

Event ID: 3076

### AdditionalFields
* RequestedSigningLevel - Refers to the signing level expected of the image to be loaded. Using the audit policy supplied in this post, the signing level will be either 2 ("Enterprise") which is applicable to user-mode validation or 4 ("Authenticode") which is applicable to driver validation. [Source](https://posts.specterops.io/threat-detection-using-windows-defender-application-control-device-guard-in-audit-mode-602b48cd1c11)
* ValidatedSigningLevel - Refers to the signing level of the loaded image. This value will most often be 2 ("Enterprise"), 4 ("Authenticode"), or 8 ("Microsoft"). "Microsoft" entries will surface when Microsoft-signed but not explicitly Windows-signed code loads. Windows-signed is defined as code signed with a certificate issued by a trusted Microsoft root CA that has the "Windows System Component Verification" EKU applied to it, which is intended to designate code that is shipped in-box with the operating system. For example, Sysinternals tools are signed by Microsoft but they are not Windows-signed. [Source](https://posts.specterops.io/threat-detection-using-windows-defender-application-control-device-guard-in-audit-mode-602b48cd1c11)
* AuthenticodeHash - The [Authenticode hash](http://download.microsoft.com/download/9/c/5/9c5b2167-8017-4bae-9fde-d599bac8184a/authenticode_pe.docx) of the PE file. This should not be confused with file hash.


# ActionType group: Application guard


## AppGuardBrowseToUrl

### Description
A URL was navigated to in Windows Defender Application Guard.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft.Windows.HVSI.Manager (TraceLogging Provider)

Event ID: N/A

### AdditionalFields
* sourceUrl
* destinationUrl


## AppGuardCreateContainer

### Description
A Windows Defender Application Guard container was created.

### Event capture logic
Capture all events


### ETW provider and event ID
Microsoft.Windows.HyperV.Compute (TraceLogging provider) - Not 100% confident
Event ID: N/A

### AdditionalFields
* RelatedContainerId - A GUID value. This can likely be associated with the AppGuardContainerId MiscEvents property.


# ActionType group: Exploit protection


## ExploitGuardAcgAudited

### Description
Arbitrary code guard (ACG) detected an attempt to modify code page permissions or to create unsigned code pages.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Security-Mitigations

Event ID: 1

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode


## ExploitGuardAcgEnforced

### Description
[ACG](https://blogs.windows.com/msedgedev/2017/02/23/mitigating-arbitrary-native-code-execution/) blocked an attempt to modify code page permissions or to create unsigned code pages.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Security-Mitigations

Event ID: 2

### AdditionalFields

* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode


## ExploitGuardChildProcessAudited

### Description
Exploit protection detected the creation of a child process.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Security-Mitigations

Event ID: 3

### AdditionalFields
* ChildCommandLine - The command line of the child process that was permitted to execute.
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode


## ExploitGuardChildProcessBlocked

### Description
Exploit protection blocked the creation of a child process.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Security-Mitigations

Event ID: 4

### AdditionalFields
* ChildCommandLine - The command line of the child process that was permitted to execute.
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode


## ExploitGuardNonMicrosoftSignedAudited

### Description
An image was loaded into a process that is not Microsoft-signed.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Security-Mitigations

Event ID: 11

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode


## ExploitGuardNonMicrosoftSignedBlocked

### Description
An non-Microsoft image was prevented from being loaded into a process.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Security-Mitigations

Event ID: 12

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode


## ExploitGuardWin32SystemCallBlocked

### Description
A user-mode GUI thread attempted to access the Win32K syscall table. Win32K syscalls are used frequently to [trigger elevation of privilege](https://www.slideshare.net/PeterHlavaty/rainbow-over-the-windows-more-colors-than-you-could-expect) and [sandbox escape vulnerabilities](https://improsec.com/tech-blog/win32k-system-call-filtering-deep-dive). For processes that do not intend to perform GUI-related tasks, Win32K syscall auditing/enforcement can be valuable.

### Event capture logic
Capture all events

### ETW provider and event ID
Microsoft-Windows-Security-Mitigations

Event ID: 10

### AdditionalFields
* IsAudit - "true" or "false" - Indicates if the rule was in audit mode or in blocking mode


# ActionType group: Miscellaneous


## BrowserLaunchedToOpenUrl

### Description
The web browser opened a URL that originated as a link in another application.

### Event capture logic
Appears to capture all events where a browser was opened by clicking a link in another application.

### ETW provider and event ID
Unknown

Event ID: Unknown

### AdditionalFields
* Name - Typically, this will be identical as the Uri field - the resource that was browsed to
* Uri - The resource that was browsed to


## GetClipboardData

### Description
A program accessed the contents of the clipboard.

### Event capture logic
ApiName field in the ETW event is "CClipDataObject::GetDataHereImpl" or "CClipDataObject::GetData" - both internal functions in ole32.dll.

### ETW provider and event ID
Microsoft.Windows.OLE.Clipboard (TraceLogging provider)

Event ID: N/A

### AdditionalFields
There is no additional data present in AdditionalFields.


## LdapSearch

### Description
An LDAP search was performed by a process. LDAP querying is common attacker reconnaissance technique.

### Event capture logic
Any process besides the following: wmiprvse.exe, whoami.exe, svchost.exe, ccmexec.exe, telemetryhost.exe, taskhostw.exe, lsass.exe, adexplorer.exe, adfind.exe, dsget.exe, dsquery.exe, ldifde.exe, csvde.exe, msitwin8*.

### ETW provider and event ID
Microsoft-Windows-Ldap-Client

Event ID: 30

### AdditionalFields
* ScopeOfSearch - the scope of the LDAP search:
    * Base - search base entries only
    * Onelevel - search all entries below the base entry, excluding the base entry
    * Subtree - search the base entry and all entries below the base
* SearchFilter - the LDAP search filter passed 
* DistinguishedName - (optional) the distinguished name of the LDAP entry being retrieved 
* AttributeList - array of property names requested in results


## PnpDeviceConnected

### Description
A Plug and Play (PnP) device was connected. This event could be used to inventory and detect anomalous hardware devices plugged in - USB removable storage, webcams, human interface devices (HID), etc.

### Event capture logic
Capture all events

### ETW provider and event ID
SecureETW (Provider GUID: {54849625-5478-4994-A5BA-3E3B0328C30D})

Event ID: 6416

### AdditionalFields
* ClassName - PnP device class name - e.g. USB, HIDClass, AudioEndpoint, etc.
* [DeviceId](https://docs.microsoft.com/en-us/windows-hardware/drivers/install/device-instance-ids) - Device instance ID
* DeviceDescription - Human-readable device description
* VendorIds - A list of vendor IDs. Some of these are similar to the DeviceId field.


## PowerShellCommand

### Description
A PowerShell alias, function, filter, cmdlet, external script, application, script, workflow, or configuration was executed from a PowerShell host process.

### Event capture logic
The ETW event Payload field contains the term "Started".

### ETW provider and event ID
Microsoft-Windows-PowerShell

Event ID: 7937

### AdditionalFields
* Command - The name of the alias, function, filter, cmdlet, external script, application, script, workflow, or configuration that executed from a PowerShell host process. The intent of this event field most likely is to permit searching/detecting known bad/suspicious PowerShell terms - e.g. "Invoke-Shellcode".


## ProcessCreatedUsingWmiQuery

### Description
A process was created using Windows Management Instrumentation (WMI).

### Event capture logic
Creation was not local.

The WMI implementation class was "Win32_Process".

The WMI method name was "create".

### ETW provider and event ID
Microsoft-Windows-WMI-Activity

Event ID: 22

### AdditionalFields
* IsRemoteMachine - "true" or "false"
* Namespace - (optional) the root namespace name used in the query.
* ClassName - (optional) the class name used in the query (should always be "Win32_Process")
* MethodName - (optional) the method name used in the query (should always be "Create")


## ProcessPrimaryTokenModified

### Description
A process's primary token was modified.

### Event capture logic
* The AffectedProcessEntity does not contain *WmiPrvSe*, *SearchProtocolHost*, or *TiWorker*.
* If the following three clauses are NOT true:
  * PreviousTokenPrivPresent == CurrentTokenPrivPresent
  * The PreviousTokenPrivEnabled == CurrentTokenPrivEnabled
  * The PreviousTokenPrivEnabledByDefault == CurrentTokenPrivEnabledByDefault


### ETW provider and event ID
Microsoft-Windows-SEC (Provider GUID: {16C6501A-FF2D-46EA-868D-8F96CB0CB52D})
Event ID: 25

### AdditionalFields
* TokenModificationProperties:
    * tokenChangeDescription - should always state "The process token of an unknown process was modified"
    * privilegesFlags - unknown
    * isChangedToSystemToken - "true" or "false", purpose is unknown, assume value is set to "true" if adjusting from a non-"System" integrity level to a "System" integrity level
    * originalTokenIntegrityLevelName - the integrity level (Low, Medium, High, System) of the original token
    * currentTokenIntegrityLevelName - the integrity level (Low, Medium, High, System) of the adjusted token
* SystemTokenPointer - unknown, appears to be a pointer value
* OriginalTokenIntegrityLevel - the integer value of the original token integrity level (Low=4096, Medium=8192, High=12288, System=16384)
* OriginalTokenPointer - unknown, appears to be a pointer value
* OriginalTokenPrivEnabled - a binary enum value representing the Se* user privileges enabled for the original token
* OriginalTokenPrivPresent -  a binary enum value representing the Se* user privileges present (but not necessary enabled( for the original token
* OriginalTokenSource - unknown, most values appear to base64 decode to "User32"
* OriginalTokenUserSid - the security identifier (SID) of the user associated with the original token
* CurrentTokenIntegrityLevel - the integer value of the adjusted token integrity level (Low=4096, Medium=8192, High=12288, System=16384)
* CurrentTokenPointer - unknown, appears to be a pointer value 
* CurrentTokenPrivEnabled - a binary enum value representing the Se* user privileges enabled for the adjusted token
* CurrentTokenSource - unknown, most values appear to base64 decode to "User32"
* CurrentTokenUserSid - the security identifier (SID) of the user associated with the adjusted token


## RemoteWmiOperation

### Description
A Windows Management Instrumentation (WMI) operation was initiated from a remote device.

### Event capture logic
The ETW event IsLocal field is "false" and the Operation field is not: "Start IWbemServices::ExecMethod - ROOT\\CIMV2 : Win32_Process::Create"

### ETW provider and event ID
Microsoft-Windows-WMI-Activity

Event ID: 11

### AdditionalFields
* OperationType - The type of WMI operation performed. Values seen to date: "ExecQuery" and "Connect"
* OperationDetails - Contextual data about the operation. E.g. in the case of "ExecQuery", the full WQL query is present in this field.
* Namespace - The namespace under which the query executed. This field only applies to "ExecQuery" operations.


## ScheduledTaskCreated

### Description
A scheduled task was created.

### Event capture logic
All created scheduled tasks.


### ETW provider and event ID
SecureETW (Provider GUID: {54849625-5478-4994-A5BA-3E3B0328C30D})

Event ID: 4698

### AdditionalFields
* TaskName - the name of the scheduled task along with its full path. e.g. "\Microsoft\Windows\Windows Defender\Windows Defender Schedule Scan"


## ScheduledTaskDeleted

### Description
A scheduled task was deleted.

### Event capture logic
All deleted scheduled tasks.

### ETW provider and event ID
SecureETW (Provider GUID: {54849625-5478-4994-A5BA-3E3B0328C30D})

Event ID: 4699

### AdditionalFields
* TaskName - the name of the scheduled task along with its full path. e.g. "\Microsoft\Windows\Windows Defender\Windows Defender Schedule Scan"


## ScreenshotTaken

### Description
A program captured a screenshot.

### Event capture logic
The ETW event Hwnd field is 0 and the Type field is 0x80000006. In other words, this event originated from the win32kfull!DwmSyncCaptureSurfaceBits function.

### ETW provider and event ID
Microsoft-Windows-Win32k

Event ID: 1

### AdditionalFields
No additional context is populated in AdditionalFields.


## SmartScreenAppWarning

### Description
This event appears to flag when a SmartScreen warning fires on a user attempting to run files downloaded that are flagged as "Malicious" or "Untrusted". [Reference](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-overview).

### Event capture logic
All SmartScreen application warnings.

### ETW provider and event ID
Microsoft-Windows-SmartScreen (Provider GUID: {3CB2A168-FE34-4A4E-BDAD-DCF422F34473})

Event ID: 1000

### AdditionalFields
* ActivityId - A GUID linked to the specific SmartScreen action event that can be used to [correlate similar SmartScreen events](https://github.com/Microsoft/WindowsDefenderATP-Hunting-Queries/blob/master/Protection%20events/SmartScreen%20app%20block%20ignored%20by%20user.txt) - e.g. SmartScreenUserOverride.
* Experience - Observed values of "Untrusted" and "Malicious"


## SmartScreenExploitWarning

### Description
A Microsoft Edge [SmartScreen exploit warning](https://blogs.windows.com/msedgedev/2015/12/16/smartscreen-drive-by-improvements/) was surfaced to a user. This is a reasoned assumption that has not been definitely validated.

### Event capture logic
Unknown

### ETW provider and event ID
Unknown

### AdditionalFields
* Uri - The potentially malicious URI that was browsed to.
* ReferrerUri - The referrer URI.


## SmartScreenUrlWarning

### Description
This event appears to flag when a SmartScreen warning fires on a user attempting to visit a URL that is flagged by SmartScreen as potentially malicious. [Reference](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-overview).

### Event capture logic
All SmartScreen URL warnings.

### ETW provider and event ID
Microsoft-Windows-SmartScreen (Provider GUID: {3CB2A168-FE34-4A4E-BDAD-DCF422F34473})

Event ID: 1001

### AdditionalFields
* ActivityId - A GUID linked to the specific SmartScreen action event that can be used to [correlate similar SmartScreen events](https://github.com/Microsoft/WindowsDefenderATP-Hunting-Queries/blob/master/Protection%20events/SmartScreen%20app%20block%20ignored%20by%20user.txt) - e.g. SmartScreenUserOverride.
* Uri - The URI that was browsed to.


## SmartScreenUserOverride

### Description
A SmartScreen warning was overridden by the user.

### Event capture logic
Captures all explicit user override events

### ETW provider and event ID
Microsoft-Windows-SmartScreen (Provider GUID: {3CB2A168-FE34-4A4E-BDAD-DCF422F34473})

Event ID: 1002

### AdditionalFields
* ActivityId - A GUID linked to the specific SmartScreen action event that can be used to [correlate similar SmartScreen events](https://github.com/Microsoft/WindowsDefenderATP-Hunting-Queries/blob/master/Protection%20events/SmartScreen%20app%20block%20ignored%20by%20user.txt) - e.g. SmartScreenAppWarning.
* Action - Unicode string representing the user"s decision, observed value of "run"


## UserAccountCreated

### Description
A local SAM account or a domain account was created.

### Event capture logic
All newly created accounts.

### ETW provider and event ID
SecureETW (Provider GUID: {54849625-5478-4994-A5BA-3E3B0328C30D})

Event ID: 4720

### AdditionalFields
Unfortunately, no additional context is populated in AdditionalFields.

## PnpDeviceConnected
A plug and play (PnP) device was attached.


## ScheduledTaskEnabled
### Description
A scheduled task was turned on.
### ETW provider and event ID
SecureETW (Provider GUID: {54849625-5478-4994-A5BA-3E3B0328C30D})
Event ID: 4700

## ScheduledTaskDisabled
### Description
A scheduled task was turned off.
### ETW provider and event ID
SecureETW (Provider GUID: {54849625-5478-4994-A5BA-3E3B0328C30D})
Event ID: 4701

## ScreenshotTaken
A screenshot was taken.
## OpenProcessApiCall OR OpenProcess
The OpenProcess function was called, indicating an attempt to open a handle to a local process and potentially manipulate that process.
## CreateRemoteThreadApiCall
The CreateRemoteThread function was called and could  have been used to initiate a thread in the virtual address space of another process.
## AppControlExecutableAudited
Application control detected the use of an untrusted executable.
## AppLockerBlockExecutable (Suggest rename: ApplockerExecutableBlocked)
AppLocker prevented an untrusted executable from running.
## AppControlScriptAudited
Application control detected the use of an untrusted script.
## AppLockerBlockScript (Suggest rename: ApplockerScriptBlocked)
AppLocker prevented an untrusted script from running.
## AppControlPackagedAppAudited
Application control detected the use of an untrusted packaged app.
## AppLockerBlockPackagedApp (Suggest rename: AppLockerPackagedAppBlocked)
AppLocker prevented an untrusted packaged app from running.
## AppControlAppInstallationAudited
Application control detected the installation of an untrusted app.
## AppLockerBlockPackagedAppInstallation (Suggest rename: AppLockerPackagedAppInstallationBlocked)
AppLocker prevented the installation of an unsanctioned packaged app.
## AppControlCodeIntegrityPolicyAudited
Application control detected a code integrity policy violation.
## AppControlCodeIntegrityPolicyBlocked
Application control blocked a code integrity policy violation.
## ExploitGuardLowIntegrityImageAudited
Exploit protection detected the launch of a process from a low-integrity file.
## ExploitGuardLowIntegrityImageBlocked
Exploit protection blocked the launch of a process from a low-integrity file.
## ExploitGuardSharedBinaryAudited
Exploit protection detected the launch of a process from a remote, shared file.
## ExploitGuardSharedBinaryBlocked (not in sheet)
Exploit protection blocked the launch of a process from a remote, shared file.
## ExploitGuardWin32SystemCallAudited
Exploit protection detected a call to the Windows system API.
## ExploitGuardWin32SystemCallBlocked (renamed since this is "Audited" in sheet)
Exploit protection blocked a call to the Windows system API.

## Related topics
- [Proactively hunt for threats](advanced-hunting.md)
- [Learn the query language](advanced-hunting-language-overview.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the data tables](advanced-hunting-schema-tables.md)
- [Understand the data columns](advanced-hunting-column-reference.md)
- [Find miscellaneous events](advanced-hunting-misc-events.md)
- [Apply query best practices](advanced-hunting-best-practices.md)

