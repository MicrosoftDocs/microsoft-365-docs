---
title: "All full names entity definition"
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
description: "All full names sensitive information type entity definition."
---

# All full names

All full names is a bundled named entity. It detects full names for people from all supported countries/regions, which include Australia, China, Japan, U.S., and countries in the EU. Use this SIT to detect all possible matches of full names.

## Format

Various.

## Pattern

Various.

## Checksum

No.

## Description

This named entity SIT matches personal names that a human would identify as a name with high confidence. For example, if a string is found consisting of a given name and is followed by a family name then a match is made with high confidence. It uses three primary resources:

- A dictionary of given names.
- A dictionary of family names.
- Patterns of how names are formed.

The three resources are different for each country.  The strings *Olivia Wilson* would trigger a match. Common given/family names are given a higher confidence than rarer names. However, the pattern also allows partial matches. If a given name from the dictionary is found and it's followed by a family name that isn't in the dictionary, then a partial match is triggered. For example, *Tomas Richard* would trigger a partial match. Partial matches are given lower confidence.

In addition, patterns that a human would see as indicative of names are also matched with appropriate confidence. Like *O. Wilson*, *O.P. Wilson*, *Dr. O. P. Wilson*, *Wilson, O.P.* or *T. Richard, Jr.* would be matches.

## Supported languages

- English
- Bulgarian
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