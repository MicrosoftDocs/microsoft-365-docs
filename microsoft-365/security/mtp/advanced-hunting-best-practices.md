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

- **Size new queries** — Assess the size of the result set using `count`. Use `limit` to avoid extremely large result sets.
- **Apply filters early** — Apply time filters and other filters early in the query, especially if you are using conversion functions, such as [toint()](https://docs.microsoft.com/azure/data-explorer/kusto/query/tointfunction) or [todatetime()](https://docs.microsoft.com/azure/data-explorer/kusto/query/todatetimefunction), or parsing functions, like [`parse_json()`](https://docs.microsoft.com/azure/data-explorer/kusto/query/parsejsonfunction). In the example below, the parsing function [extractjson()](https://docs.microsoft.com/azure/data-explorer/kusto/query/extractjsonfunction) is used after all filtering operators are applied to reduce the number of records that need to be parsed.

    ```kusto
    DeviceEvents
    | where Timestamp > ago(1d)
    | where ActionType == "UsbDriveMount" 
    | where DeviceName == "user-desktop.domain.com"
    | extend DriveLetter = extractjson("$.DriveLetter", AdditionalFields)
     ```

- **Has beats contains** — Avoid searching substrings unnecessarily by using the `has` operator instead of `contains`.
- **Search specific columns** — Look in a specific column rather than running full text searches across all columns. Don't use `*`.
- **Case-sensitive for speed** — Case-sensitive searches are more specific and generally more performant.
- **Parse, don't extract** — Whenever possible, use parse functions such as [parse_json()](https://docs.microsoft.com/azure/data-explorer/kusto/query/parsejsonfunction) instead of [extract()](https://docs.microsoft.com/azure/data-explorer/kusto/query/extractfunction) or similar functions that use regular expression. Reserve regex use for more complex scenarios. 
- **Filter tables not expressions** — Don't filter on a calculated column if you can filter on a table column.
- **No 3-character terms** — Avoid comparing or filtering with three-character terms, which are not indexed.
- **Project selectively** — When joining tables, project only the columns you need.

## Optimize the `join` operator
The [join operator](https://docs.microsoft.com/azure/data-explorer/kusto/query/joinoperator) merges rows from two tables my matching values in specified columns. Apply the these tips to optimize queries that use this operator.

- **Smaller table to your left** — The `join` operator matches records in the table on the left side of your join statement to records on the right. By keeping the table with fewer records on the left, fewer records will need to be matched, thus speeding up the query and  Place the table with fewer results on the left side of your join [MORE INFO WHY] 
    ```kusto
    <EXAMPLE>
    ```
- **Hints to performance** — The `join` operator supports hints that can help improve performance [MORE INFO WHY]. [Learn more about join hints](https://docs.microsoft.com/azure/data-explorer/kusto/query/joinoperator#join-hints)
    ```kusto
    <EXAMPLE>
    ```

- **Nondeterministic by default** — With the default [join flavor](https://docs.microsoft.com/azure/data-explorer/kusto/query/joinoperator#join-flavors) (other flavors specified using `kind`) returns non-deterministic results [MORE INFO NEEDED]
    ```kusto
    <EXAMPLE>
    ```
## Optimize the summarize operator
The [summarize operator](https://docs.microsoft.com/azure/data-explorer/kusto/query/summarizeoperator) generates a table that aggregates the contents of another table. Apply the following tips to optimize queries that use this operator:

- **Non-distinct values** — Using the `summarize` operator with common values helps... [MORE INFO NEEDED]
    ```kusto
    <EXAMPLE>
    ```
- **Shuffle the query** — By shuffling a query, you can distribute processing load across cluster nodes to improve query performance [MORE INFO NEEDED -- does this really apply to advanced hunting?]
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
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
