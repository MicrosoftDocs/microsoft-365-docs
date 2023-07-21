---
title: "Learn about the Microsoft Purview Data Loss Prevention migration assistant for Symantec"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurwi
ms.date: 06/02/2023
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
search.appverid: 
- MET150
description: "The migration assistant is a Windows based desktop application that migrates your DLP policies from other DLP platforms to Microsoft DLP platform."
---

# Learn about the Microsoft Purview Data Loss Prevention migration assistant for Symantec

This article helps you to learn about the Microsoft Purview Data Loss Prevention migration assistant for Symantec.

The migration assistant is a Windows-based desktop application for migrating your Symantec data loss prevention (DLP) policies to Microsoft Purview Data Loss Prevention. This article takes you through the five-step migration process. The migration assistant accepts Symantec DLP policy XML exports, performs mapping, and creates equivalent DLP policies through PowerShell scripts. You can use the migration assistant to create DLP policies in test mode. Policies in test mode won't affect your live data or impact your existing business processes.

## What can the migration assistant help with?

The migration assistant helps with some of the tasks involved in a DLP migration project:

- In a manual migration scenario, you need to perform a feasibility analysis between the source and target DLP platforms, map the features, migrate policies manually, and test and tweak DLP policies. With the migration assistant, your migrated DLP policies can be up and running within minutes of starting the migration assistant process.
- With migration assistant, you can quickly scale up your migration project. You can start by moving a single policy manually to multiple policies at the same time.
- The migration assistant automatically identifies sensitive information types (SITs) or Data Identifiers in source policies and creates custom SITs in your Microsoft tenant. It also moves all of your custom regular expressions and keywords in a few clicks.
- The migration assistant detects which conditions, exclusions, and actions are currently used in source policies and automatically creates new rules with the same conditions and actions.
- The migration assistant provides you with a detailed migration report that includes the migration status and recommendations at the policy level.
- The migration assistant ensures that your DLP policy migration project is private and takes place within the boundaries of your organization.

## How does the migration assistant for Symantec work?

Here's how the migration process works:

:::image type="content" source="../media/migration-assistant-for-dlp-process.png" alt-text="Process diagram of Microsoft Purview Data Loss Prevention migration assistant for Symantec.":::

Each time the migration assistant runs, it performs the following steps:

- **Input:** The migration assistant ingests one or more Symantec DLP policy XML files.
- **Analyze:** The migration assistant interprets the files and identifies Symantec DLP policy constructs.
- **Rationalize:** The migration assistant maps the identified Symantec DLP policy constructs to Microsoft DLP capabilities. It performs validations for Microsoft DLP platform limitations.
- **Migrate:** The migration assistant runs PowerShell scripts for the DLP scenarios identified and supported by the UDLP platform.
- **Report:** The migration assistant reports which policies were migrated successfully, which were partially migration, and which ones couldn't be migrated. It also provides recommendations to improve future migrations.

## Understand mapping of Symantec DLP elements to Microsoft Purview DLP elements

The migration assistant translates different policy elements from Symantec DLP to Microsoft Purview DLP.

### Symantec DLP supported versions

The migration assistant supports migrating DLP policies from Symantec versions 15.0 through 15.8, maintenance packs included.

### Supported Workloads

The migration assistant migrates policies into these workloads:

| **Workload**  | **Migration assistant support** |
| ------------------------------- | ------------------------------- |
| Exchange | Yes           |
| SharePoint | Yes           |
| OneDrive  | Yes           |
| Teams chat and channel messages | Yes           |
| Endpoint devices       | Yes           |

> [!TIP]
>You can use the migration assistant to extended to more workloads than the ones detected in the input Symantec DLP policy.

### Classification Elements

Here's how the migration assistant maps Symantec elements to Purview DLP elements.

| **Symantec Classification Element** | **Microsoft Purview DLP Classification Element**           |
| ---------------------- | ------------------------- |
| Regular Expression| Create a new custom sensitive information type (SIT) with the regular expression.|
| Keyword           | Create a new custom SIT with a keyword list or keyword dictionary.|
| Keyword Pair      | Create a new custom SIT with first keyword list as primary element & second keyword list as a supporting element with 300 char proximity. |
| Data Identifier   | Map to a preconfigured SIT if an equivalent is available, else create a new custom SIT. |

Here are the mapping details of optional validators for sensitive information types (also known as Data Identifiers in Symantec DLP) that the migration assistant uses while translating Symantec DLP policies:

| **Symantec Optional Validators**  | **Microsoft Purview DLP Optional Validators**|
| -------------------- | ------------------ |
| Exclude exact match               | Exclude specific matches      |
| Exact Match Data Identifier Check | N/A          |
| Exclude beginning characters      | Starts or doesn't start with characters        |
| Exclude ending characters         | Ends or doesn't end with characters            |
| Exclude prefix  | Include or Exclude prefixes   |
| Exclude suffix  | Include or Exclude prefixes   |
| Number Delimiter| N/A           |
| Require beginning characters      | Starts or doesn't start with characters        |
| Exact Match     | N/A          |
| Duplicate digits| Exclude duplicate characters  |
| Require ending characters         | Ends or doesn't end with characters            |
| Find keywords   | Available as both primary & supporting elements |

### Regular Expressions – Potential validation issues to be aware of

When you upload your rule package XML file, the system validates the XML and checks for known bad patterns and obvious performance issues. Here are known issues that the validation process checks a regular expression for.

- Can't begin or end with alternator "|", which matches everything because it's considered an empty match.
     - For example, "|a" or "b|" won't pass validation.
- Can't begin or end with a ".{0,m}" pattern, which has no functional purpose and only impairs performance.
     - For example, ".{0,50}ASDF" or "ASDF.{0,50}" won't pass validation.
- Can't have ".{0,m}" or ".{1,m}" in groups, and can't have ".*" or ".+" in groups.
     - For example, "(.{0,50000})" won't pass validation.
- Can't have any character with "{0,m}" or "{1,m}" repeaters in groups.
     - For example, "(a*)" won't pass validation.
- Can't begin or end with ".{1,m}"; instead, use just "."
     - For example, ".{1,m}asdf" won't pass validation; instead, use just ".asdf".
- Can't have an unbounded repeater (such as "*" or "+") on a group.
     - For example, "(xx)*" and "(xx)+" won't pass validation.

### Condition and Exception Mapping

Here's how the migration assistant maps Symantec condition and exception elements for various workloads to Microsoft Purview DLP conditions.

#### Exchange Workload

| **Condition/Exception in Symantec**   | **Condition in Microsoft Purview DLP**       |
| ------------------ | -------------------------------------- |
| Content Matches Regular Expression    | Content contains SIT    |
| Content Matches Keyword               | Content contains SIT    |
| Content Matches Data Identifier       | Content contains SIT    |
| Content Matches Classification        | Not supported           |
| File Properties<br><li>File name<li>File type | One or more of the following:<li>Document name is<li>File extension is            |
| Message Attachment or File Type Match | One or more of the following:<li>Attachment is password protected<li>Attachment's file extension is |
| Message Attachment or File Size Match | Document size equals or is greater than   |
| Message Attachment or File Name Match | One or more of the following:<li>Document name contains words or phrases<li>Document name matches patterns            |
| Message/Email Properties and Attributes | One or more of the following:<li>Email subject contains|
| Sender/User Matches Pattern           | One or more of the following:<li>Sender is<li>Sender is a member of<li>Sender domain is<li>Sender address contains words<li>Sender address matches patterns<li>Sender IP address is |
| Recipient Matches Pattern             | One or more of the following:<li>Recipient is a member of<li>Recipient domain is<li>Recipient is<li>Recipient address contains words<li>Recipient address matches patterns |
| Sender/User based on a Directory Server Group           | Not supported           |
| Recipient based on a Directory Server Group             | Not supported           |
| Content Matches Exact Data from an Exact Data Profile (EDM)               | Not supported           |
| Content Matches Document Signature from an Indexed Document Profile (IDM) | Not supported           |
| Detect using Vector Machine Learning profile (VML)      | Not supported           |
| Protocol Monitoring<li>SMTP protocol             | Exchange (EXO) DLP policy |

#### Endpoint Devices, SharePoint Online, OneDrive, and other workloads

| **Condition/Exception in Symantec**   | **Condition in Microsoft Purview DLP**   |
| ----------- | ------------------- |
| Content Matches Regular Expression    | Content contains SIT |
| Content Matches Keyword               | Content contains SIT |
| Content Matches Data Identifier       | Content contains SIT |
| Message Attachment or File Type Match | Document’s file extension is   |
| Protocol Monitoring<li>HTTP<li>HTTPS<li>FTP | Cross-workload DLP policy(s)   |
| Protocol Monitoring: Endpoint Device Type<li>CD/DVD<li>Removable storage<li>Copy to network share<li>Printer/Fax<li>Clipboard<li>Cloud storage<li>Application File Access<li>SEP Intensive Protection | One or more of the following (Devices):<li>Copy to USB removable media<li>Copy to network share<li>Copy to clipboard<li>Print<li>Upload to cloud service domains or access by browsers that aren't allowed |

### Response Rules

Here's how the migration assistant maps Symantec response rules to Microsoft Purview DLP actions.

| **Symantec Response Rule** | **Microsoft Purview DLP Action**|
| ----------------- | ----------------- |
| Generate DLP Incident      | Generate Alert     |
| Logging (Syslog)           | Audit logs         |
| Network Prevent: Modify SMTP Message<li>Modify email subject<li>Modify header  | One or more of the following:<li>Prepend subject<li>Set headers        |
| Network Prevent: Block SMTP Message<li>Bounce message to sender<li>Redirect message to this address | One or more of the following:<li>Block / Restrict access<li>Send user notification<li>Redirect message to |
| Send Email Notification    | Send User Notification  |
| Endpoint Prevent<li>Notify<li>Notify with Cancel<li>Block               | One or more of the following (Endpoint Devices)<li>Notify<li>Block<li>Audit          |
| User Cancel| One or more of the following:<li>Block / Restrict access<li>User Overrides  |

## Next steps

Now that you've learned about the Microsoft Purview Data Loss Prevention migration assistant for Symantec, your next steps are to:

1. [Get started with the Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-get-started.md)
2. [Use the Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-use.md)
