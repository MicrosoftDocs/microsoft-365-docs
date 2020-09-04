---
title: Advanced hunting query best practices in Microsoft Threat Protection
description: Learn how to construct fast, efficient, and error-free threat hunting queries when using advanced hunting
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, custom detections, schema, kusto, avoid timeout, command lines, process id
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

# Advanced hunting query best practices

**Applies to:**
- Microsoft Threat Protection

## Optimize query performance
Apply these recommendations to get results faster and avoid timeouts while running complex queries. For more guidance on improving query performance, read [Kusto query best practices](https://docs.microsoft.com/azure/kusto/query/best-practices).

## General guidance

- **Size new queries**—If you suspect that a query will return a large result set, assess it first using the [count operator](https://docs.microsoft.com/azure/data-explorer/kusto/query/countoperator). Use [limit](https://docs.microsoft.com/azure/data-explorer/kusto/query/limitoperator) or its synonym `take` to avoid extremely large result sets.
- **Apply filters early**—Apply time filters and other filters to reduce the data set, especially when using conversion functions, such as [toint()](https://docs.microsoft.com/azure/data-explorer/kusto/query/tointfunction) or [todatetime()](https://docs.microsoft.com/azure/data-explorer/kusto/query/todatetimefunction), or parsing functions, like [parse_json()](https://docs.microsoft.com/azure/data-explorer/kusto/query/parsejsonfunction). In the example below, the parsing function [extractjson()](https://docs.microsoft.com/azure/data-explorer/kusto/query/extractjsonfunction) is used after filtering operators have reduced the number of records.

    ```kusto
    DeviceEvents
    | where Timestamp > ago(1d)
    | where ActionType == "UsbDriveMount" 
    | where DeviceName == "user-desktop.domain.com"
    | extend DriveLetter = extractjson("$.DriveLetter", AdditionalFields)
     ```

- **Has beats contains**—To avoid searching substrings within words unnecessarily, use the `has` operator instead of `contains`. [Learn about string operators](https://docs.microsoft.com/azure/data-explorer/kusto/query/datatypes-string-operators)
- **Search specific columns**—Look in a specific column rather than running full text searches across all columns. Don't use `*` to check all columns.
- **Case-sensitive for speed**—Case-sensitive searches are more specific and generally more performant. Names of case-sensitive [string operators](https://docs.microsoft.com/azure/data-explorer/kusto/query/datatypes-string-operators), such as `has_cs` and `contains_cs`, generally end with `_cs`.
- **Parse, don't extract**—Whenever possible, use parse functions such as [parse_json()](https://docs.microsoft.com/azure/data-explorer/kusto/query/parsejsonfunction) instead of [extract()](https://docs.microsoft.com/azure/data-explorer/kusto/query/extractfunction) or similar functions that use regular expression. Reserve regular expression use for more complex scenarios. 
- **Filter tables not expressions**—Don't filter on a calculated column if you can filter on a table column.
- **No three-character terms**—Avoid comparing or filtering using terms with three characters or fewer. These short terms are not indexed and will require more resources to match.
- **Project selectively**—Projecting only the columns you need can make results easier to understand. Projecting specific columns prior to running [join](https://docs.microsoft.com/azure/data-explorer/kusto/query/joinoperator) or similar operations also helps improve performance .

## Optimize the `join` operator
The [join operator](https://docs.microsoft.com/azure/data-explorer/kusto/query/joinoperator) merges rows from two tables my matching values in specified columns. Apply the these tips to optimize queries that use this operator.

- **Smaller table to your left**—The `join` operator matches records in the table on the left side of your join statement to records on the right. By keeping the table with fewer records on the left, fewer records will need to be matched, thus speeding up the query. 

    In the table below, we reduce the left table `DeviceLogonEvents` to cover only three specific devices before joining it with `IdentityLogonEvents` by account SIDs.
 
    ```kusto
    DeviceLogonEvents 
    | where DeviceName in ("device-1.domain.com", "device-2.domain.com", "device-3.domain.com")
    | where ActionType == "LogonFailed"
    | join
        (IdentityLogonEvents
        | where ActionType == "LogonFailed"
        | where Protocol == "Kerberos")
    on AccountSid
    ```

- **Use hints for performance**—The `join` operator supports hints that can help improve performance. Hints help the join operator divide work better between different nodes in the cluster. [Learn more about join hints](https://docs.microsoft.com/azure/data-explorer/kusto/query/joinoperator#join-hints)

    For example, the [shuffle hint](https://docs.microsoft.com/azure/data-explorer/kusto/query/shufflequery) helps improve query performance when joining over a key with high cardinality—a key with numerous unique values in the table--such as the `AccountObjectId` in the query below:

    ```kusto
    IdentityInfo
    | where JobTitle == "CONSULTANT"
    | join hint.shufflekey = AccountObjectId 
    (IdentityDirectoryEvents
        | where Application == "Active Directory"
        | where ActionType == "Private data retrieval")
    on AccountObjectId 
    ```
    
    The [broadcast hint](https://docs.microsoft.com/azure/data-explorer/kusto/query/broadcastjoin) helps when the left table is small (up to 100,000 records) and the right table is extremely large big, for example:

    ```kusto
    EmailEvents 
    | where Subject in ("Warning: Update your credentials now", "Action required: Update your credentials now")
    | join hint.strategy = broadcast EmailUrlInfo on NetworkMessageId 
    ```

- **Use the inner-join flavor**—The default [join flavor](https://docs.microsoft.com/azure/data-explorer/kusto/query/joinoperator#join-flavors) or the [innerunique-join](https://docs.microsoft.com/azure/data-explorer/kusto/query/joinoperator?pivots=azuredataexplorer#innerunique-join-flavor) deduplicates rows in the left table by the join key before returning a row for each match to the right table. If the left table has multiple rows with the same value for the join key, those rows will be deduplicated to leave a single, random row for each unique value.

    This default behavior can leave out important information from the left table that can provide useful insight. For example, the query below will only show one email containing a particular attachment, even if that same attachment was sent using multiple emails messages.

    ```kusto
    EmailAttachmentInfo
    | where Timestamp > ago(1h)
    | where Subject == "Document Attachment" and FileName == "Document.pdf"
    | join (DeviceFileEvents | where Timestamp > ago(1h)) on SHA256 
    
    To address this limitation, we apply the [inner-join](https://docs.microsoft.com/azure/data-explorer/kusto/query/joinoperator?pivots=azuredataexplorer#inner-join-flavor) flavor by specifying `kind=inner` to show all rows in the left table with matching values in the right.
    
    ```kusto
    EmailAttachmentInfo
    | where Timestamp > ago(1h)
    | where Subject == "Document Attachment" and FileName == "Document.pdf"
    | join kind=inner (DeviceFileEvents | where Timestamp > ago(1h)) on SHA256 
    ```
- **Join only within a time window**—when using `join` to investigate related events, we often want to look for similar events in another table that occur around the same time period.  


## Optimize the summarize operator
The [summarize operator](https://docs.microsoft.com/azure/data-explorer/kusto/query/summarizeoperator) generates a table that aggregates the contents of another table. Apply the following tips to optimize queries that use this operator:

- **Non-distinct values**—Using the `summarize` operator with common values helps... [MORE INFO NEEDED]
    ```kusto
    <EXAMPLE>
    ```
- **Shuffle the query**—By shuffling a query, you can distribute processing load across cluster nodes to improve query performance [MORE INFO NEEDED -- does this really apply to advanced hunting?]
    ```kusto
    <EXAMPLE>
    ```

## Query tips and pitfalls

### Identify unique processes with process IDs
Process IDs (PIDs) are recycled in Windows and reused for new processes. On their own, they can't serve as unique identifiers for specific processes.

To get a unique identifier for a process on a specific machine, use the process ID together with the process creation time. When you join or summarize data around processes, include columns for the machine identifier (either `DeviceId` or `DeviceName`), the process ID (`ProcessId` or `InitiatingProcessId`), and the process creation time (`ProcessCreationTime` or `InitiatingProcessCreationTime`)

The following example query finds processes that access more than 10 IP addresses over port 445 (SMB), possibly scanning for file shares.

Example query:
```kusto
DeviceNetworkEvents
| where RemotePort == 445 and Timestamp > ago(12h) and InitiatingProcessId !in (0, 4)
| summarize RemoteIPCount=dcount(RemoteIP) by DeviceName, InitiatingProcessId, InitiatingProcessCreationTime, InitiatingProcessFileName
| where RemoteIPCount > 10
```

The query summarizes by both `InitiatingProcessId` and `InitiatingProcessCreationTime` so that it looks at a single process, without mixing multiple processes with the same process ID.

### Query command-lines

Command-lines can vary. When applicable, filter on file names and do fuzzy matching.

There are numerous ways to construct a command-line to accomplish a task. For example, an attacker could reference an image file with or without a path, without a file extension, using environment variables, or with quotes. In addition, the attacker could also change the order of parameters or add multiple quotes and spaces.

To create more durable queries around command-lines, apply the following practices:

- Identify the known processes (such as *net.exe* or *psexec.exe*) by matching on the filename fields, instead of filtering on the command-line field.
- Parse command-line sections using the [parse_command_line() function](https://docs.microsoft.com/azure/data-explorer/kusto/query/parse-command-line) 
- When querying for command-line arguments, don't look for an exact match on multiple unrelated arguments in a certain order. Instead, use regular expressions or use multiple separate contains operators.
- Use case insensitive matches. For example, use `=~`, `in~`, and `contains` instead of `==`, `in`, and `contains_cs`
- To mitigate DOS command-line obfuscation techniques, consider removing quotes, replacing commas with spaces, and replacing multiple consecutive spaces with a single space. Note that there are more complex DOS obfuscation techniques that require other approaches, but these can help address the most common ones.

The following examples show various ways to construct a query that looks for the file *net.exe* to stop the Microsoft Defender Firewall service:

```kusto
// Non-durable query - do not use
DeviceProcessEvents
| where ProcessCommandLine == "net stop MpsSvc"
| limit 10

// Better query - filters on filename, does case-insensitive matches
DeviceProcessEvents
| where Timestamp > ago(7d) and FileName in~ ("net.exe", "net1.exe") and ProcessCommandLine contains "stop" and ProcessCommandLine contains "MpsSvc" 

// Best query also ignores quotes
DeviceProcessEvents
| where Timestamp > ago(7d) and FileName in~ ("net.exe", "net1.exe")
| extend CanonicalCommandLine=replace("\"", "", ProcessCommandLine)
| where CanonicalCommandLine contains "stop" and CanonicalCommandLine contains "MpsSvc" 
```
### Parse strings quickly
There are various functions you can use to efficiently handle strings that need parsing.

| String | Function | Notes |
| -- | -- | -- |
| Command-lines | [parse_command_line()](https://docs.microsoft.com/azure/data-explorer/kusto/query/parse-command-line) | [NEEDS MORE INFO] |
| Paths | [parse_path()](https://docs.microsoft.com/azure/data-explorer/kusto/query/parsepathfunction) | [NEEDS MORE INFO] |
| Version numbers | [parse_version()](https://docs.microsoft.com/azure/data-explorer/kusto/query/parse-versionfunction) | [NEEDS MORE INFO] |
| IPv4 addresses | [parse_ipv4()](https://docs.microsoft.com/azure/data-explorer/kusto/query/parse-ipv4function), [ipv4_compare()](https://docs.microsoft.com/azure/data-explorer/kusto/query/ipv4-comparefunction) |  [NEEDS MORE INFO] |


## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
