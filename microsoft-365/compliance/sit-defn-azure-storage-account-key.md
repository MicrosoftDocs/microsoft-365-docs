---
title: "Azure storage account key entity definition"
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
description: "Azure storage account key sensitive information type entity definition."
---

# Azure storage account key

## Format

The string `DefaultEndpointsProtocol` followed by the characters and strings outlined in the pattern below, including the string `AccountKey`.

## Pattern

- the string `DefaultEndpointsProtocol`
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string `AccountKey`
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of 86 characters that are lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- two equal signs (=)

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `CEP_Regex_AzureStorageAccountKey` finds content that matches the pattern.
- The regular expression `CEP_AzureEmulatorStorageAccountFilter` doesn't find content that matches the pattern.
- The regular expression `CEP_CommonExampleKeywords` doesn't find content that matches the pattern.

```xml
<!--Azure Storage Account Key-->
<Entity id="c7bc98e8-551a-4c35-a92d-d2c8cda714a7" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureStorageAccountKey" />
        <Any minMatches="0" maxMatches="0">
            <Match idRef="CEP_AzureEmulatorStorageAccountFilter" />
            <Match idRef="CEP_CommonExampleKeywords" />
        </Any>
  </Pattern>
</Entity>
```

## Keywords

### CEP_azure_emulator_storage_account_filter

This sensitive information type identifies these keywords by using a regular expression, not a keyword list.

- Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==

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