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
ms.date:
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: "Learn about instance count and other sensitive information type limits"
ms.custom: seo-marvel-apr2020
---
# Sensitive information type limits

These limits apply to all sensitive information types (SIT) except exact data match sensitive information types which support up to 100.

> [!NOTE]
> We support up to 100 exact data match (EDM) evaluations. Policies that use EDM SITs should not be written with a **min** or **max** instance count value greater than 100.

These limits apply to all Microsoft Purview policies that use SITs.

To ensure high performance and lower latency, there are limitations in custom SITs configurations.

|Limit|Value|
|---|---|
|maximum number of custom SITs created through the Compliance center| 500 |
|maximum length of regular expression| 1024 characters|
|maximum length for a given term in a keyword list| 50 characters|
|maximum number of terms in keyword list| 2048|
|maximum number of distinct regexes per sensitive information type| 20|
|maximum size of a keyword dictionary (post compression)| 1MB (~1,000,000 characters)|
|maximum number of keyword dictionary based SITs in a tenant|50 |

> [!NOTE]
> If you have a business need to create more than 500 custom SITs, please raise a support ticket.

### Instance count supported values for SIT

The SIT instance count limit applies when SITs are used in these solutions:

- Microsoft Purview Data Loss Prevention policies
- Microsoft Purview Information Protection policies
- Microsoft Purview Data Lifecycle Management
- Communication Compliance
- Microsoft Purview Records Management
- Microsoft Defender for Cloud Apps
- Microsoft Priva

For a scanned item to satisfy rule criteria, the number of unique instances of a SIT in any single item must fall between the min and max values. This is called the **Instance count**.

- **Min** field: the lower limit (minimum number) of unique instances of a SIT that must be found in an item to trigger a match. The min field supports values of:
  - 1 to 500
- **Max** field: the upper limit on the number of unique instances of a SIT that can be found in an item and still trigger a match. The max field supports values of:
  - 1 to 500  - Use this when you want to set a specific upper limit that is 500 or less on the number of instances of a SIT in an item.
  - Any - Use `Any` when you want the unique instance count criteria to be satisfied when an undefined number of unique instances of a SIT are found in a scanned item and that number of unique instances meets or exceeds the minimum number of unique instances value. In other words, the unique instance count criteria are met as long as the min value is met.

For example, if you want the rule to trigger a match when at least 500 unique instances of a SIT are found in a single item, set the **min** value to `500` and the **max** value to `Any`.



