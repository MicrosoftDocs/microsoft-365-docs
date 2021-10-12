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
localization_priority: Normal
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Learn about exact data match based sensitive information types.
ms.custom: seo-marvel-apr2020
---

# Learn about exact data match based sensitive information types

[Sensitive information types](sensitive-information-type-learn-about.md) are used to help identify sensitive items so that you can prevent them from being inadvertently or inappropriately shared, to help in locating relevant data in eDiscovery, and to apply governance actions to certain types of information. You define a custom sensitive information type (SIT) based on:

- patterns
- keyword evidence such as *employee*, *badge*, or *ID*
- character proximity to evidence in a particular pattern
- confidence levels

But what if you wanted a custom sensitive information type (SIT) that uses exact data values, instead of one that found matches based on generic patterns? With Exact Data Match (EDM) based classification, you can create a custom sensitive information type that is designed to:

- be dynamic and easily refreshed
- be more scalable
- result in fewer false-positives
- work with structured sensitive data
- handle sensitive information more securely, not sharing it with anyone, including Microsoft
- be used with several Microsoft cloud services

![EDM-based classification.](../media/EDMClassification.png)

EDM-based classification enables you to create custom sensitive information types that refer to exact values in a database of sensitive information. The database can be refreshed daily, and contain up to 100 million rows of data. So as employees, patients, or clients come and go, and records change, your custom sensitive information types remain current and applicable. And, you can use EDM-based classification with policies, such as [data loss prevention policies](dlp-learn-about-dlp.md) or [Microsoft Cloud App Security file policies](/cloud-app-security/data-protection-policies).

> [!NOTE]
> Microsoft 365 Information Protection supports double byte character set languages for:
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

The sensitive source table that contains the sensitive information values that the EDM SIT will look for. It is made up of columns and roes. The column headers are the field names, the rows are an instance of data and each cell contains the values for that instance for that field.

Here's a simple example of a sensitive information source table.

|First Name  |Last Name  |Date of Birth  |
|---------|---------|---------|
|Isaiah   |Langer  | 05-05-1960 |
|Ana   |Bowman         |11-24-1971 |
|Oscar   |Ward         |02-12-1998 |


### Rule package

Every SIT has a rule package. You use the rule package in an EDM SIT to define:

- Matches, which specify the field that will be the primary element to be used in exact lookup. It can be a regular expression with or without a checksum validation, a keyword list, a keyword dictionary, or a function.
- Classification, which specifies the sensitive type match that triggers EDM lookup.
- Supporting element which are elements that, when found provide supporting evidence that help increase the confidence of the match. For example, keyword “SSN” in proximity of an SSN number. It can be a regular expression with or without a checksum validation, keyword list, keyword dictionary.
- Confidence levels (high, medium, low) reflect how much supporting evidence was detected along with the primary element. The more supporting evidence an item contains, the higher the confidence that a matched item contains the sensitive info you're looking for. See, [Fundamental parts of a sensitive information type](sensitive-information-type-learn-about.md#fundamental-parts-of-a-sensitive-information-type) for more on confidence levels.
Proximity – Number of characters between primary and supporting element

### You supply your own schema and data

[Microsoft 365 comes with more than 200 SITS](sensitive-information-type-entity-definitions.md) with predefined schemas, regex patterns, keywords and confidence levels. With EDM SITs, you are responsible for defining the schema as well as primary and secondary fields that identify sensitive items. Because the schema and primary and secondary data values are highly sensitive, you'll be encrypting them via a [hash](/dotnet/standard/security/ensuring-data-integrity-with-hash-codes) function that includes a randomly generated or self-supplied [salt](https://en.wikipedia.org/wiki/Salt_(cryptography)#:~:text=The%20salt%20value%20is%20generated%20at%20random%20and,the%20salt%20value%20and%20hashed%20value%20are%20stored.) value. Those hashed values are then uploaded to the service, so your sensitive data is never in the open.

### Primary and secondary/support elements

When you create an EDM SIT, you define a *primary element* field in the rule package. Primary fields are the elements for which all your content will be searched, and that need to follow a defined pattern in order to be identified. When the primary element is found in scanned items, EDM will then look for the *secondary* or supporting elements, which don't need to follow a pattern, and their proximity to the primary element. EDM requires that the primary element be first discoverable through an existing SIT. See, [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md) for a complete list of the available SITs. You'll have to find one of those that detects the class you want your EDM SIT to detect. For example, if your EDM SIT schema has U.S. social security number as the primary element, when you create your EDM schema, you'd associated it with the [U.S. social security number (SSN)](sensitive-information-type-entity-definitions.md#us-social-security-number-ssn) SIT.


## How matching works

EDM finds matches by comparing content it finds against a table of sensitive data that you define. The match testing is done using a combination of traditional rules and patterns to ensure that the matched data is an actual instance of data you want to find and protect. At its core, EDM works by comparing strings in your documents and emails against values in a table of sensitive data you provide to find out if the values in your content are present in the table by comparing one-way cryptographic hashes.

> [!TIP]
> A common practice is to combine the use of EDM Sensitive information types and the regular sensitive information types on which they are based in DLP rules, with different thresholds. For example, you could use an EDM sensitive information type that looks for social security numbers and other data, with strict requirements and low tolerance (e.g. one or more matches will cause a DLP alert), while using the regular sensitive information type on which you based your EDM type (e.g. the U.S. Social Security Number built-in sensitive information type) for higher counts (e.g. more than 100 matches), in case sensitive information not recorded in your databases or that’s being used in a way that doesn’t align with your EDM definition for additional evidence is being exfiltrated in large volumes.  

## See also

- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md#get-started-with-exact-data-match-based-sensitive-information-types)
   