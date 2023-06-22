---
title: "Sensitive information type limits"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.date: 03/01/2023
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: "Learn about instance count and other sensitive information type limits"
ms.custom: seo-marvel-apr2020
---
# Sensitive information type limits

These limits apply to all Microsoft Purview policies that use SITs.

To ensure high performance and lower latency, there are limitations in custom SIT configurations, as described in the following table.

|Limit|Value|
|---|---|
|Maximum number of custom SITs created through the Microsoft Purview compliance portal| 500 |
|Maximum length of regular expression| 1024 characters|
|Maximum length for a given term in a keyword list| 50 characters|
|Maximum number of terms in keyword list| 2048|
|Maximum number of distinct regexes per SIT| 20|
|Maximum size of a keyword dictionary (post compression)| 1MB (~1,000,000 characters)|
|Maximum number of keyword dictionary based SITs in a tenant| 50 |
|Maximum number of MIP+MIG policies in a tenant| 10,000 |
|Maximum number of DLP rules in a policy | up to 600, as long as the policy size remains below 100KB and there is a maximum of 600 rules in the tenant |
|Maximum number of DLP rules in a tenant | 600 |
|Maximum size of an individual DLP rule | 100KB |
|Maximum size of a DLP policy | 100KB |
|Policy name character limit | 64 |
|Policy rule character limit | 64 |
|Comments character limit | 1024 |
|Description character limit | 1024 |
|GIR evidence limit | 100 with each SIT evidence in proportion to the number of occurrences |
|Text extraction limit | 1MB |
|Regex size limit (for all matches predicates) | 20KB |


> [!NOTE]
> If you have a business need to create more than 500 custom SITs, please raise a support ticket.

### Instance count supported values for SIT

The SIT instance count limit applies when using SITs in these solutions:

- Microsoft Purview Data Loss Prevention policies
- Microsoft Purview Information Protection policies
- Microsoft Purview Data Lifecycle Management
- Communication Compliance
- Microsoft Purview Records Management
- Microsoft Defender for Cloud Apps
- Microsoft Priva

For a scanned item to satisfy the rule criteria, the number of unique instances of a SIT in any single item must fall between the min and max values. This is called the **Instance count**.

- **Min** field: the lower limit (minimum number) of unique instances of a SIT that must be found in an item to trigger a match. The min field supports values of 1 to 500.
- **Max** field: the upper limit on the number of unique instances of a SIT that can be found in an item and still trigger a match. The max field supports the following values:
  - 1 to 500  - Use a value between `1` and `500` when you want to set a specific upper limit of 500 or less on the number of instances of a SIT in an item.
  - Any - Use `Any` when you want to ensure that the unique instance count criterion is satisfied when an undefined number of unique instances of a SIT are found in a scanned item and that the specified number of unique instances meets or exceeds the minimum number of unique instances value. In other words, the unique instance count criteria are met as long as the min value is met.

For example, if you want the rule to trigger a match when at least 500 unique instances of a SIT are found in a single item, set the **min** value to `500` and the **max** value to `Any`.
