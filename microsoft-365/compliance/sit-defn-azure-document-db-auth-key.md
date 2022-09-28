---
title: "Azure DocumentDB auth key entity definition"
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
description: "Azure DocumentDB auth key sensitive information type entity definition."
---

# Azure DocumentDB auth key

## Format

The string `DocumentDb` followed by the characters and strings outlined in the pattern below.

## Pattern

- The string `DocumentDb`
- Any combination of between 3-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- A greater than symbol (>), an equal sign (=), a quotation mark ("), or an apostrophe (')
- Any combination of 86 lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- Two equal signs (=)

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `CEP_Regex_AzureDocumentDBAuthKey` finds content that matches the pattern.
- The regular expression `CEP_CommonExampleKeywords` doesn't find content that matches the pattern.

```xml
<!-- Azure Document DB Auth Key -->
<Entity id="0f587d92-eb28-44a9-bd1c-90f2892b47aa" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureDocumentDBAuthKey" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_CommonExampleKeywords" />
          </Any>
  </Pattern>
</Entity>
```

## Keywords

### CEP_CommonExampleKeywords

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
