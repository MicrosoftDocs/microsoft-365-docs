---
title: Microsoft 365 advanced hunting data columns
description: Learn about columns used across different tables in the advanced hunting schema
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics, column name, data type, description
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
ms.date: 07/15/2019
---

# Understand the data columns in the advanced hunting schema

**Applies to**:
- Microsoft 365 security center

To effectively build queries that span multiple tables, you need to understand the columns in the advanced hunting schema. The following table lists all the available columns, along with their data types and descriptions. This information is also available in the schema representation in the advanced hunting page.

## Columns holding Windows data ##

| Column name | Data type | Description |
|---|---|---|
| AccountDomain | string | Domain of the account |
| AccountName | string | User name of the account |
| AccountSid | string | Security Identifier (SID) of the account |
| ActionType | string | Type of activity that triggered the event |
| AdditionalFields | string | Additional information about the event in JSON array format |
| AlertId | string | Unique identifier for the alert |
| AppGuardContainerId | string | Identifier for the virtualized container used by Application Guard to isolate browser activity |
| Category | string | Type of threat indicator or breach activity identified by the alert |
| ClientVersion | string | Version of the endpoint agent or sensor running on the machine |
| ComputerName | string | Fully qualified domain name (FQDN) of the machine |
| ConnectedNetworks | string | Networks that the adapter is connected to. Each JSON array contains the network name, category (public, private or domain), a description, and a flag indicating if it’s connected publicly to the internet. |
| DefaultGateways | string | Default gateway addresses in JSON array format |
| DnsAddresses | string | DNS server addresses in JSON array format |
| EventTime | datetime | Date and time when the event was recorded |
| FileName | string | Name of the file that the recorded action was applied to |
| FileOriginIp | string | IP address where the file was downloaded from |
| FileOriginReferrerUrl | string | URL of the web page that links to the downloaded file |
| FileOriginUrl | string | URL where the file was downloaded from |
| FolderPath | string | Folder containing the file that the recorded action was applied to |
| InitiatingProcessAccountDomain | string | Domain of the account that ran the process responsible for the event |
| InitiatingProcessAccountName | string | User name of the account that ran the process responsible for the event |
| InitiatingProcessAccountSid | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| InitiatingProcessCommandLine | string | Command line used to run the process that initiated the event |
| InitiatingProcessCreationTime | datetime | Date and time when the process that initiated the event was started |
| InitiatingProcessFileName | string | Name of the process that initiated the event |
| InitiatingProcessFolderPath | string | Folder containing the process (image file) that initiated the event |
| InitiatingProcessId | int | Process ID (PID) of the process that initiated the event |
| InitiatingProcessIntegrityLevel | string | Integrity level of the process that initiated the event. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet download. These integrity levels influence permissions to resources. |
| InitiatingProcessLogonId | string | Identifier for a logon session of the process that initiated the event. This identifier is unique on the same machine only between restarts. |
| InitiatingProcessMd5 | string | MD5 hash of the process (image file) that initiated the event |
| InitiatingProcessParentCreationTime | datetime | Date and time when the parent of the process responsible for the event was started |
| InitiatingProcessParentId | int | Process ID (PID) of the parent process that spawned the process responsible for the event |
| InitiatingProcessParentFileName | string | Name of the parent process that spawned the process responsible for the event |
| InitiatingProcessSha1 | string | SHA-1 of the process (image file) that initiated the event |
| InitiatingProcessSha256 | string | SHA-256 of the process (image file) that initiated the event. This field is usually not populated—use the SHA1 column when available. |
| InitiatingProcessTokenElevation | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the process that initiated the event |
| IPAddresses | string | JSON array containing all the IP addresses assigned to the adapter, along with their respective subnet prefix and IP address space, such as public, private, or link-local |
| Ipv4Dhcp | string | IPv4 address of DHCP server |
| Ipv6Dhcp | string | IPv6 address of DHCP server |
| IsAzureADJoined | boolean | Boolean indicator of whether machine is joined to the Azure Active Directory |
| IsAzureInfoProtectionApplied | boolean | Indicates whether the file is encrypted by Azure Information Protection |
| IsWindowsInfoProtectionApplied | boolean | Indicates whether Windows Information Protection (WIP) policies apply to the file |
| LocalIP | string | IP address assigned to the local machine used during communication |
| LocalPort | int | TCP port on the local machine used during communication |
| LocalIPType | string | Type of IP address, for example Public, Private, Reserved, Loopback, Teredo, FourToSixMapping, and Broadcast |
| LogonId | string | Identifier for a logon session. This identifier is unique on the same machine only between restarts. |
| LoggedOnUsers | string | List of all users that are logged on the machine at the time of the event in JSON array format |
| LogonType | string | Type of logon session, specifically:<br><br> - **Interactive** - User physically interacts with the machine using the local keyboard and screen<br><br> - **Remote interactive (RDP) logons** - User interacts with the machine remotely using Remote Desktop, Terminal Services, Remote Assistance, or other RDP clients<br><br> - **Network** - Session initiated when the machine is accessed using PsExec or when shared resources on the machine, such as printers and shared folders, are accessed<br><br> - **Batch** - Session initiated by scheduled tasks<br><br> - **Service** - Session initiated by services as they start<br> 
| MacAddress | string | MAC address of the network adapter |
| MachineGroup | string | Machine group of the machine. This group is used by role-based access control to determine access to the machine. |
| MachineId | string | Unique identifier for the machine in the service |
| MD5 | string | MD5 hash of the file that the recorded action was applied to |
| NetworkAdapterName | string | Name of the network adapter |
| NetworkAdapterStatus | string | Operational status of the network adapter. For the possible values, refer to [this enumeration](https://docs.microsoft.com/dotnet/api/system.net.networkinformation.operationalstatus?view=netframework-4.7.2). |
| NetworkAdapterType | string | Network adapter type. For the possible values, refer to [this enumeration](https://docs.microsoft.com/dotnet/api/system.net.networkinformation.networkinterfacetype?view=netframework-4.7.2). |
| OSArchitecture | string | Architecture of the operating system running on the machine |
| OSBuild | string | Build version of the operating system running on the machine |
| OSPlatform | string | Platform of the operating system running on the machine. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. |
| OsVersion | string | Version of the operating system running on the machine |
| PreviousRegistryKey | string | Original registry key of the registry value before it was modified |
| PreviousRegistryValueData | string | Original data of the registry value before it was modified |
| PreviousRegistryValueName | string | Original name of the registry value before it was modified |
| PreviousRegistryValueType | string | Original data type of the registry value before it was modified |
| ProcessCommandline | string | Command line used to create the new process |
| ProcessCreationTime | datetime | Date and time the process was created |
| ProcessId | int | Process ID (PID) of the newly created process |
| ProcessIntegrityLevel | string | Integrity level of the newly created process. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet downloaded. These integrity levels influence permissions to resources. |
| ProcessTokenElevation | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the newly created process |
| Protocol | string | IP protocol used, whether TCP or UDP |
| PublicIP | string | Public IP address used by the onboarded machine to connect to the Microsoft Defender ATP service. This could be the IP address of the machine itself, a NAT device, or a proxy. |
| RegistryKey | string | Registry key that the recorded action was applied to |
| RegistryValueData | string | Data of the registry value that the recorded action was applied to |
| RegistryValueName | string | Name of the registry value that the recorded action was applied to |
| RegistryValueType | string | Data type, such as binary or string, of the registry value that the recorded action was applied to |
| RemoteComputerName | string | Name of the machine that performed a remote operation on the affected machine. Depending on the event being reported, this name could be a fully-qualified domain name (FQDN), a NetBIOS name, or a host name without domain information. |
| RemoteIP | string | IP address that was being connected to |
| RemoteIPType | string | Type of IP address, for example Public, Private, Reserved, Loopback, Teredo, FourToSixMapping, and Broadcast |
| RemotePort | int | TCP port on the remote device that was being connected to |
| RemoteUrl | string | URL or fully qualified domain name (FQDN) that was being connected to |
| ReportId | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the ComputerName and EventTime columns. |
| Severity | string | Indicates the potential impact (high, medium, or low) of the threat indicator or breach activity identified by the alert |
| SensitivityLabel | string | Label applied to an email, file, or other content to classify it for information protection |
| SensitivitySubLabel | string | Sublabel applied to an email, file, or other content to classify it for information protection; sensitivity sublabels are grouped under sensitivity labels but are treated independently |
| SHA1 | string | SHA-1 of the file that the recorded action was applied to |
| SHA256 | string | SHA-256 of the file that the recorded action was applied to. This field is usually not populated—use the SHA1 column when available. |
| RegistryMachineTag | string | Machine tag added through the registry |
| Table | string | Table that contains the details of the event |
| TunnelingType | string | Tunneling protocol, if the interface is used for this purpose, for example 6to4, Teredo, ISATAP, PPTP, SSTP, and SSH |

>**DRAFT NOTE** Adding Office columns. Deduplication and sorting TBD. Will possibly add table info.

## Columns holding Office 365 data ## 

| Column name | Data type | Description |
|---|---|---|
| AttachmentCount | int | Number of attachments in the email |
| DeliveryCustomFolder | string | Custom folder in the recipient mailbox where the email was delivered, if applicable |
| DeliveryDestination | string | Location where the email was delivered: Inbox/Folder, On-premises/External, Junk, Quarantine, Failed/Dropped, Deleted items |
| DeliveryStatus | string | Delivery status of the email: Delivered, Junked, Blocked, or Replaced |
| EmailCampaignId | string | Fingerprint identifying emails from the same attack campaign based on heuristic analysis of email content |
| EmailDirection | string | Direction of the email relative to your network:  Inbound, Outbound, Intra-org  |
| EmailKey | string | Unique identifier for distinct recipients of the email. This is a combination of the network message ID and the recipient address. |
| EmailLanguage | string | Detected language of the email content |
| EmailReceivedTime | datetime | Date and time the email was received in UTC |
| EmailSubject | string | Subject of the email |
| FileName | string | Name of the file |
| FileType | string | File type based on file extension name |
| FinalEmailAction | string | Final action taken on the email based on filter verdict, policies, and user actions:  Moved to Junk folder, Added X-header, Modified subject, Redirected, Deleted, Quarantined, No action, Added Bcc recipient, Replaced attachment |
| FinalEmailActionPolicy | string | Action policy that took effect: Antispam high-confidence, Antispam (general), Antispam bulk mail, Antispam phishing, Anti-phishing domain impersonation, Anti-phishing user impersonation, Anti-phishing spoof, Anti-phishing graph impersonation, Antimalware, Safe Attachments, Enterprise Transport Rules (ETR), Malware ZAP, Phishing ZAP, Spam ZAP |
| FinalEmailActionPolicyGuid | string | Unique identifier for the policy that determined the final mail action |
| InternetMessageId | string | Unique identifier for the email on the internet |
| LinkCount | int | Number of embedded links in the email |
| LinkUrl | string | URL of the embedded link |
| MalwareDetectionMethod | string | Method used to detect malware in the email: Antivirus, File reputation, Safe Attachments detonation |
| MalwareFilterVerdict | string | Verding of the email filtering stack on whether the email contains malaware: Malware found, No malware |
| NetworkMessageId | string | Unique identifier for the email within the organization |
| PhishingDetectionMethod | string | Method used to detect the email as a phishing email: URL reputation, Safe Links, Machine learning, Advanced phishing filter, Intra-org spoofing, Cross-org spoofing, Domain impersonation, User impersonation, Brand impersonation |
| PhishingFilterVerdict | string | Verdict of the email filtering stack on whether the email is phishing: "Suspicious, possible phishing" or "Phishing" |
| RecepientEmailAddress | string | Email address of the recipient |
| RecipientCloudSid | string | Cloud security identifier (SID) of the email recipient |
| RecipientOnPremiseSid | string | On-premises security identifier (SID) of the email recipient |
| RecipientUpn | string | User Principal Name (UPN) of the email recipient |
| SenderCloudSid | string | Sender cloud security identifier (SID), if the sender is an Office 365 account |
| SenderFromAddress | string | Sender email address in the FROM header |
| SenderFromDomain | string | Sender domain in the FROM header |
| SenderIpv4 | string | IPv4 address of the last detected mail server |
| SenderIpv6 | string | IPv6 address of the last detected mail server |
| SenderMailFromAddress | string | Sender email address in the MAIL FROM header |
| SenderMailFromDomain | string | Sender domain in the MAIL FROM header |
| SenderOnPremisesSid | string | Sender on-premises security identifier (SID), if the sender is an Office 365 account |
| SenderUpn | string | Sender User Principal Name (UPN), if the sender is an Office 365 account |
| Sha256 | string | SHA-256 hash of the file |

## Related topics
- [Proactively hunt for threats](advanced-hunting.md)
- [Learn the query language](advanced-hunting-language-overview.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the data tables](advanced-hunting-schema-tables.md)
- [Find miscellaneous events](advanced-hunting-misc-events.md)
- [Apply query best practices](advanced-hunting-best-practices.md)