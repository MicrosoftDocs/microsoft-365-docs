---
title: "All Physical Addresses entity definition"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
search.appverid: MET150
ms.topic: reference
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleContainsSensitiveInformation'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "All Physical Addresses sensitive information type entity definition."
---

# All Physical Addresses

All physical addresses is a bundled entity SIT, which detects patterns related to physical addresses from all supported countries/regions.

## Format

Various

## Pattern

Various

## Checksum

No

## Description

The matching of street addresses is designed to match strings that a human would identify as a street address. To do this, it uses several primary resources:

- A dictionary of settlements, counties and regions.
- A dictionary of street suffixes, like Road, Street, or Avenue.
- Patterns of postal codes.
- Patterns of address formats.

The resources are different for each country. The primary resources are the patterns of address formats that are used in a given country. Different formats are chosen to make sure that as many addresses as possible are matched. These formats allow flexibility, for example, an address may omit the postal code or omit a town name or have a street with no street suffix. In all cases, such matches are used to increase the confidence of the match.

The patterns are designed to match individual single addresses, not generic locations. So strings such as *Redmond, WA 98052* or *Main Street, Albuquerque* won't be matched.

## Contains

This bundled named entity SIT contains these individual SITs:

- Australia physical addresses
- Austria physical addresses
- Belgium physical addresses
- Brazil physical addresses
- Bulgaria physical addresses
- Canada physical addresses
- Croatia physical addresses
- Cyprus physical addresses
- Czech Republic physical addresses
- Denmark physical addresses
- Estonia physical addresses
- Finland physical addresses
- France physical addresses
- Germany physical addresses
- Greece physical addresses
- Hungary physical addresses
- Iceland physical addresses
- Ireland physical addresses
- Italy physical addresses
- Latvia physical addresses
- Liechtenstein physical addresses
- Lithuania physical addresses
- Luxembourg physical addresses
- Malta physical addresses
- Netherlands physical addresses
- New Zealand physical addresses
- Norway physical addresses
- Poland physical addresses
- Portugal physical addresses
- Romania physical addresses
- Slovakia physical addresses
- Slovenia physical addresses
- Spain physical addresses
- Sweden physical addresses
- Switzerland physical addresses
- Turkey physical addresses
- United Kingdom physical addresses
- United States physical addresses

## Supported languages

- English
- Bulgarian
- Chinese
- Croatian
- Czech
- Danish
- Estonian
- Finnish
- French
- German
- Hungarian
- Icelandic
- Irish
- Italian
- Japanese
- Latvian
- Lithuanian
- Maltese
- Dutch
- Norwegian
- Polish
- Portuguese
- Romanian
- Slovak
- Slovenian
- Spanish
- Swedish
- Turkish