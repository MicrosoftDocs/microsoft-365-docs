---
title: Find threats across devices and emails using Advanced hunting
description: Study common hunting scenarios and sample queries that cover devices and emails.
keywords: advanced hunting, Office365 data, tolower, Windows devices, Office365 emails normalize, emails, threat hunting, cyber threat hunting, search, query, telemetry
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

# Hunt for threats across devices and emails

**Applies to**:
- Microsoft 365 security center

[Advanced hunting](advanced-hunting-overview.md) on Microsoft 365 security center allows you to proactively hunt for threats across your Windows devices and Office 365 emails. Here are some hunting scenarios and sample queries that can help you explore how you might construct queries covering both devices and emails.

## Normalize common values
Before running queries across [tables that cover devices and emails](advanced-hunting-schema-tables.md), you might need to consider the following techniques needed to normalize values:

-  File SHA-256 values in the **[EmailEvents](advanced-hunting-emailevents-table.md)** table are currently in upper case. To unify this table with other tables using file SHA-256 values, use the `tolower()` function ([see Kusto reference](https://docs.microsoft.com/azure/kusto/query/tolowerfunction)). The example below uses the `project` operator to hold the lower case SHA-256 values in a column called `LowerSha`. 

    ```
    | project LowerSha = tolower(SHA256);
    ```

- To obtain user account names from sender or recipient email addresses, use the *local-host* from the email address:

    ```
    AccountName = tostring(split(SenderFromAddress, "@")[0])
    ```
Both these normalization techniques are used in the succeeding scenarios.

## Hunting scenarios

### Check if files from a known malicious sender are on your devices
Assuming you know of an email address sending malicious files, you can run this query to determine if files from this sender exist on your devices. You can use this query, for example, to determine the number of devices affected by a malware distribution campaign.

```
//Get prevalence of files sent by a malicious sender in your organization
let MaliciousSender=EmailAttachmentInfo
| where SenderFromAddress =~ "malicious sender"
| project LowerSha = tolower(SHA256);
MaliciousSender
| join (
FileCreationEvents
| project LowerSha = SHA256
) on LowerSha
```
### Review logon attempts after receipt of malicious emails
This query finds the 10 latest logons performed by email recipients within 30 minutes after they received known malicious emails. You can use this query to check whether the accounts of the email recipients have been compromised.

```
//Find logons that occurred right after malicious email was received
let MaliciousEmail=EmailEvents
| where MalwareFilterVerdict == "MAL" 
| project TimeEmail = EventTime, Subject, SenderFromAddress, AccountName = tostring(split(RecipientEmailAddress, "@")[0]);
MaliciousEmail
| join (
LogonEvents
| project LogonTime = EventTime, AccountName, ComputerName
) on AccountName 
| where (LogonTime - TimeEmail) between (0min.. 30min)
| take 10
```

### Review PowerShell activities after receipt of emails from known malicious sender
Malicious emails often contain documents and other specially crafted attachments that run PowerShell commands to deliver additional payloads. If you are aware of emails coming from a known malicious sender, you can use this query to list and review PowerShell activities that occurred within 30 minutes after an email was received from the sender .  

```
//Find PowerShell activities right after email was received from malicious sender
let x=EmailEvents
| where SenderFromAddress =~ "malicious@sender.com"
| project TimeEmail = EventTime, Subject, SenderFromAddress, AccountName = tostring(split(RecipientEmailAddress, "@")[0]);
x
| join (
ProcessCreationEvents
| where FileName =~ "powershell.exe"
//| where InitiatingProcessParentFileName =~ "outlook.exe"
| project TimeProc = EventTime, AccountName, ComputerName, InitiatingProcessParentFileName, InitiatingProcessFileName, FileName, ProcessCommandLine
) on AccountName 
| where (TimeProc - TimeEmail) between (0min.. 30min)
```

## Related topics
- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)