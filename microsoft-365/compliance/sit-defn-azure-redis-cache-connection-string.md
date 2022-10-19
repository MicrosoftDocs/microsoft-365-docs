---
title: "Azure Redis cache connection string entity definition"
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
- tier3
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "Azure Redis cache connection string sensitive information type entity definition."
---

# Azure Redis cache connection string

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

The string `redis.cache.windows.net` followed by the characters and strings outlined in the pattern below, including the string `password` or `pwd`.

## Pattern

- the string `redis.cache.windows.net`
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string `password` or `pwd`
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of 43 characters that are lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- an equal sign (=)

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `CEP_Regex_AzureRedisCacheConnectionString` finds content that matches the pattern.
- The regular expression `CEP_CommonExampleKeywords` doesn't find content that matches the pattern.

```xml
<!--Azure Redis Cache Connection String-->
<Entity id="095a7e6c-efd8-46d5-af7b-5298d53a49fc" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureRedisCacheConnectionString" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_CommonExampleKeywords" />
        </Any>
  </Pattern>
</Entity>
```

## Keywords

### CEP_common_example_keywords

This sensitive information type identifies these keywords by using a regular expression, not a keyword list.

- contoso
- fabrikam
- northwind
- sandbox
- onebox
- localhost
- 127.0.0.1
- testacs.<!--no-hyperlink-->com
- s-int.<!--no-hyperlink-->net
