---
title: Find threats across devices and emails using advanced hunting
description: Study common hunting scenarios and sample queries that cover devices and emails.
keywords: advanced hunting, Office365 data, Windows devices, Office365 emails normalize, emails, threat hunting, cyber threat hunting, search, query, telemetry, Microsoft 365, Microsoft Threat Protection
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
ms.collection: M365-security-compliance 
ms.topic: article
---

# Hunt for threats across devices, emails, apps, and identities

**Applies to:**
- Microsoft Threat Protection

[Advanced hunting](advanced-hunting-overview.md) in Microsoft Threat Protection allows you to proactively hunt for threats across:
- Devices managed by Microsoft Defender ATP
- Emails processed by Microsoft 365
- Cloud app activities, authentication events, and domain controller activities tracked by Microsoft Cloud App Security and Azure ATP

With this level of visibility, you can quickly hunt for threats that traverse sections of your network, including sophisticated intrusions that arrive on email or the web, elevate local privileges, acquire privileged domain credentials, and move laterally to across your devices. 

Here are some hunting scenarios and sample queries that can help you explore how you might construct queries when hunting for such sophisticated threats.

## Get entity info

### Obtain user accounts from email addresses
When constructing queries across [tables that cover devices and emails](advanced-hunting-schema-tables.md), you will likely need to obtain user account names from sender or recipient email addresses. You can generally do this for either recipient or sender address using the *local-host* from the email address.

In this snippet below, we use the [tostring()](https://docs.microsoft.com/azure/data-explorer/kusto/query/tostringfunction) Kusto function to extract the local-host right before the `@` from recipien email addresses in the column `RecipientEmailAddress`.

```kusto
AccountName = tostring(split(RecipientEmailAddress, "@")[0])
```
The query below shows how this snippet can be used:

```kusto
EmailEvents
| where Timestamp > ago(7d)
| project RecipientEmailAddress, AccountName = tostring(split(RecipientEmailAddress, "@")[0]);
```
| RecipientEmailAddress | AccountName |
| --- | --- |
| john@example.com | john 


### Merge the IdentityInfo table

You can get the account names and other account information by merging or joining the `IdentityInfo` table. The query below uses `kind=inner` to specify an [inner-join](https://docs.microsoft.com/azure/data-explorer/kusto/query/joinoperator?pivots=azuredataexplorer#inner-join-flavor), which prevents deduplication for the same recipient email addresses.

```kusto
//Get email events with more recipient account information
EmailEvents
| where Timestamp > ago(1d)
| join kind=inner IdentityInfo on $left.RecipientEmailAddress == $right.EmailAddress
| project Timestamp, NetworkMessageId, Subject, PhishFilterVerdict, MalwareFilterVerdict, SenderFromAddress, RecipientEmailAddress, AccountName, JobTitle, Department, 
```


### Get information about devices


## Identify users and devices using the IdentityInfo and DeviceInfo tables
You can quickly understand...




### Get information about users who received phishing email
This query obtains the list of phishing detections from the `EmailEvents` table and joins or merges that information with the `IdentityInfo` table to get detailed information about each recipient. It summarizes results by showing only the subject of each phishing message as well as some pertinent information about each recipient. You can use this query to identify attempts to target users in your organization.

```kusto
//Get full name, title, department, and location of phishing recipients
EmailEvents
| where Timestamp > ago(7d)
| where PhishFilterVerdict == "Phish"
| join IdentityInfo 
on $left.RecipientEmailAddress == $right.EmailAddress
| project PhishingMessage=Subject, EmailAddress, GivenName, Surname, JobTitle, Department, City, Country
```
### Get logon attempts by domain accounts targeted by credential theft
This query first identifies all credential access alerts in the `AlertInfo` table. It then merges or joins the `AlertEvidence` table, which it parses for the names of the targeted accounts and filters for domain-joined accounts only. Finally, it joins the `IdentityLogonEvents` table to get all logon activities by domain-joined targeted accounts.

```kusto
AlertInfo
| where Timestamp > ago(7d)
| where Category has "CredentialAccess"
| join AlertEvidence on AlertId
| extend IsJoined=(parse_json(AdditionalFields).Account.IsDomainJoined)
| extend TargetAccountName=tostring(parse_json(AdditionalFields).Account.Name)
| where IsJoined has "true"
| join kind=inner IdentityLogonEvents on $left.TargetAccountName == $right.AccountName
```


### Get detailed information about domain accounts targeted by credential theft






 

This normalization technique is used in the succeeding scenarios.

## Hunting scenarios

### Summarize logon activities of users that received emails that were not zapped successfully

```kusto
//Generate line chart showing logon activities of users that received emails that were not zapped successfully
EmailPostDeliveryEvents 
| where Timestamp > ago(30d)
| where ActionTrigger == "ZAP"
| where ActionResult contains "fail"
| join
    IdentityInfo 
on $left.RecipientEmailAddress == $right.EmailAddress
| project AccountName
| join 
    IdentityLogonEvents
    on AccountName 
| render linechart
```

### Check if files from a known malicious sender are on your devices
Assuming you know of an email address sending malicious files, you can run this query to determine if files from this sender exist on your devices. You can use this query, for example, to determine the number of devices affected by a malware distribution campaign.

```kusto
//Check if files from a known malicious sender are on your devices
EmailAttachmentInfo
| where SenderFromAddress =~ "MaliciousSender@example.com"
| where isnotempty(SHA256)
| join (
DeviceFileEvents
| project FileName, SHA256
) on SHA256
| project Timestamp, FileName , SHA256, DeviceName, DeviceId,  NetworkMessageId, SenderFromAddress, RecipientEmailAddress
```
### Check for cloud app activity involving files from a known malicious sender

```kusto
//Check for cloud app activity involving files from a known malicious sender
let MaliciousSender = "MaliciousSender@example.com";
EmailAttachmentInfo
| where SenderFromAddress =~ MaliciousSender and isnotempty(SHA256)
| project NetworkMessageId, SenderFromAddress, RecipientEmailAddress , FileName  
| join (
AppFileEvents 
| project Timestamp , FileName , Application , FolderPath , AccountDisplayName , AccountObjectId  
) on FileName
| project Timestamp , FileName , Application , FolderPath , AccountDisplayName , AccountObjectId,  NetworkMessageId, SenderFromAddress, RecipientEmailAddress
```

### Identify uncommon malware received through email

```kusto
// Get more details on the malware received on email using FileProfile function enrichment
EmailAttachmentInfo
| where Timestamp > ago(7d)
| where MalwareFilterVerdict == "Malware"
| distinct SHA256
| invoke FileProfile(SHA256)
| project SHA1, SHA256 , FileSize , GlobalFirstSeen , GlobalLastSeen , GlobalPrevalence , IsExecutable 
```

### Review logon attempts after receipt of malicious emails
This query finds the 10 latest logons performed by email recipients within 30 minutes after they received known malicious emails. You can use this query to check whether the accounts of the email recipients have been compromised.

```kusto
//Find logons that occurred right after malicious email was received
let MaliciousEmail=EmailEvents
| where MalwareFilterVerdict == "Malware" 
| project TimeEmail = Timestamp, Subject, SenderFromAddress, AccountName = tostring(split(RecipientEmailAddress, "@")[0]);
MaliciousEmail
| join (
IdentityLogonEvents
| project LogonTime = Timestamp, AccountName, DeviceName
) on AccountName 
| where (LogonTime - TimeEmail) between (0min.. 30min)
| take 10
```

### Review PowerShell activities after receipt of emails from known malicious sender
Malicious emails often contain documents and other specially crafted attachments that run PowerShell commands to deliver additional payloads. If you are aware of emails coming from a known malicious sender, you can use this query to list and review PowerShell activities that occurred within 30 minutes after an email was received from the sender .  

```kusto
//Find PowerShell activities right after email was received from malicious sender
let x=EmailEvents
| where SenderFromAddress =~ "MaliciousSender@example.com"
| project TimeEmail = Timestamp, Subject, SenderFromAddress, AccountName = tostring(split(RecipientEmailAddress, "@")[0]);
x
| join (
DeviceProcessEvents
| where FileName =~ "powershell.exe"
//| where InitiatingProcessParentFileName =~ "outlook.exe"
| project TimeProc = Timestamp, AccountName, DeviceName, InitiatingProcessParentFileName, InitiatingProcessFileName, FileName, ProcessCommandLine
) on AccountName 
| where (TimeProc - TimeEmail) between (0min.. 30min)
```

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)