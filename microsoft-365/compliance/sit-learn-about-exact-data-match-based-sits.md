---
title: "Learn about exact data match based sensitive information types"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.date:
ms.localizationpriority: medium
ms.collection:
- tier1
- highpri
- purview-compliance
search.appverid:
- MOE150
- MET150
description: Learn about exact data match based sensitive information types.
ms.custom: seo-marvel-apr2020
---

# Learn about exact data match based sensitive information types

[Sensitive information types](sensitive-information-type-learn-about.md) are used to help identify sensitive items so that you can prevent them from being inadvertently or inappropriately shared. They are also used to help in locating relevant data in eDiscovery, and to apply governance actions to certain types of information. You define a custom sensitive information type (SIT) based on:

- patterns
- keyword evidence such as *employee*, *social security number*, or *ID*
- character proximity to evidence in a particular pattern
- confidence levels

But what if you wanted a custom sensitive information type (SIT) that uses exact or nearly exact data values, instead of one that found matches based on generic patterns? With Exact Data Match (EDM) based classification, you can create a custom sensitive information type that is designed to:

- be dynamic and easily refreshed
- result in fewer false-positives
- work with structured sensitive data
- handle sensitive information more securely, not sharing it with anyone, including Microsoft
- be used with several Microsoft cloud services

![EDM-based classification.](../media/EDMClassification.png)

EDM-based classification enables you to create custom sensitive information types that refer to exact values in a database of sensitive information. The database can be refreshed daily, and contain up to 100 million rows of data. So as employees, patients, or clients come and go, and records change, your custom sensitive information types remain current and applicable. And, you can use EDM-based classification with policies, such as [Microsoft Purview data loss prevention policies](dlp-learn-about-dlp.md) or [Microsoft Cloud App Security file policies](/cloud-app-security/data-protection-policies).

> [!NOTE]
> Microsoft Purview Information Protection supports double byte character set languages for:
>
> - Chinese (simplified)
> - Chinese (traditional)
> - Korean
> - Japanese
>
> This support is available for sensitive information types. See, [Information protection support for double byte character sets release notes (preview)](mip-dbcs-relnotes.md) for more information.

## What's different in an EDM SIT

When you work with EDM SITs, it's helpful to understand a few concepts that are unique to them.  

### Schema

The schema is an xml file that defines:

- The name of the schema, later referred to as the *DataStore*. 
- The field names that your sensitive information source table contains. There is a 1:1 mapping of schema field name to sensitive information source table column name.
- Which fields are searchable.
- Any search modifying parameters, called *configurable match*, like ignoring delimiters and case in searched values.

### Sensitive information source table

The sensitive information source table contains the values that the EDM SIT will look for. It is made up of columns and rows. The column headers are the field names, the rows are an instance of item and each cell contains the values for that item instance for that field.

Here's a simple example of a sensitive information source table.

|First Name|Last Name|Date of Birth|
|---|---|---|
|Isaiah|Langer| 05-05-1960|
|Ana|Bowman|11-24-1971|
|Oscar|Ward|02-12-1998|

### Rule package

Every SIT has a rule package. You use the rule package in an EDM SIT to define:

- Matches, which specify the field that will be the primary element to be used in exact lookup. It can be a regular expression with or without a checksum validation, a keyword list, a keyword dictionary, or a function.
- Classification, which specifies the sensitive information type match that triggers an EDM lookup.
- Supporting element, which are elements that, when found, provide evidence that helps increase the confidence of the match. For example, the occurrence of the keyword "SSN" in close proximity to an actual social security number. A supporting element can be a regular expression with or without a checksum validation, keyword list, or a keyword dictionary.
- Confidence levels (high, medium, low) reflect how much supporting evidence was detected in addition to the primary element. The more supporting evidence an item contains, the higher the confidence that a matched item contains the sensitive info you're looking for. See, [Fundamental parts of a sensitive information type](sensitive-information-type-learn-about.md#fundamental-parts-of-a-sensitive-information-type) for more on confidence levels.
- Proximity - The number of characters between primary and supporting element.

### You supply your own schema and data

[Microsoft Purview comes with many predefined SITS](sensitive-information-type-entity-definitions.md). These SITS come with schemas, regex patterns, keywords and confidence levels. But, with EDM SITs, you are responsible for defining the schema as well as primary and secondary fields that identify sensitive items. Because the schema and primary and secondary data values are highly sensitive, you'll be encrypting them via a [hash](/dotnet/standard/security/ensuring-data-integrity-with-hash-codes) function that includes a randomly generated or self-supplied [salt](https://en.wikipedia.org/wiki/Salt_(cryptography)#:~:text=The%20salt%20value%20is%20generated%20at%20random%20and,the%20salt%20value%20and%20hashed%20value%20are%20stored.) value. Only the hashed values are uploaded to the service, so your sensitive data is never in the open.

### Primary and secondary support elements

When you create an EDM SIT, you define a *primary element* field in the rule package. All content will be search for the primary element. EDM requires that the primary element be discoverable through an existing SIT. 

> [!NOTE]
> See, [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md) for a complete list of the available SITs.  

You'll have to find a predefined SIT that detects the sensitive information that you want your EDM SIT to detect. For example, if your EDM SIT schema has U.S. social security number as the primary element, when you create your EDM schema, you'd associated it with the [U.S. social security number (SSN)](sit-defn-us-social-security-number.md) SIT. Primary elements need to follow a defined pattern in order to be detected.

When the primary element is found in a scanned item, EDM will then look for *secondary* or supporting elements. Secondary elements don't need to follow a pattern, but do need to be within a certain proximity to the primary element.

## How matching works

EDM works by comparing strings in your documents and emails against values in the sensitive information source table to see if the values in the scanned content are present in the table. The comparison is done by comparing one-way cryptographic hashes.


> [!TIP]
> You can use both EDM SITs and the predefined SITs that they are based on, together, in DLP rules for better detection. Use the EDM SIT with higher confidence levels, and the predefined SIT with lower confidence levels. For example use an EDM SIT that looks for social security number and other supporting data with strict requirements with high confidence. Using the high confidence will generate a DLP match when few instances are detected. Then use a predefined SIT, like the U.S. Social Security Number, with lower confidence levels that will trigger a DLP match when higher numbers of occurrences are detected.  

## Services that EDM supports


|Service  |Locations  |
|---------|---------|
| Microsoft Purview Data Loss Prevention    | - SharePoint online </br>- OneDrive for Business </br>- Teams Chat </br>- Exchange Online </br>- Devices       |
|Microsoft Defender for Cloud Apps     | - SharePoint Online </br>- OneDrive for Business        |
|Auto-labeling (service side)     |- SharePoint online </br>- OneDrive for Business </br>- Exchange Online         |
|Auto-labeling (client side)     |- Word </br>- Excel </br>- PowerPoint </br>- Exchange desktop clients         |
|Customer Managed Key     |- SharePoint online </br>- OneDrive for Business </br>- Teams Chat </br>- Exchange Online </br>- Word </br>- Excel </br>- PowerPoint </br>- Exchange desktop clients </br>- Devices         |
|eDiscovery     |- SharePoint online </br>- OneDrive for Business </br>- Teams Chat </br>- Exchange Online </br>- Word </br>- Excel </br>- PowerPoint </br>- Exchange desktop clients  |
|Insider Risk Management     |- SharePoint online </br>- OneDrive for Business </br>- Teams Chat </br>- Exchange Online </br>- Word </br>- Excel </br>- PowerPoint </br>- Exchange desktop clients      |

## See also

- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md#get-started-with-exact-data-match-based-sensitive-information-types)
