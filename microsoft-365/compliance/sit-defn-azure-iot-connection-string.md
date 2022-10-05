---
title: "Azure IoT connection string entity definition"
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
description: "Azure IoT connection string sensitive information type entity definition."
---

# Azure IoT connection string

### Format

The string `HostName` followed by the characters and strings outlined in the pattern below, including the strings `azure-devices.net` and `SharedAccessKey`.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Pattern

- the string `HostName`
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string "azure-devices.<!--no-hyperlink-->net"
- any combination of between 1-200 lower- or uppercase letters, digits, symbols, special characters, or spaces
- the string `SharedAccessKey`
- zero to two whitespace characters
- an equal sign (=)
- zero to two whitespace characters
- any combination of 43 lower- or uppercase letters, digits, forward slash (/), or plus sign (+)
- an equal sign (=)

## Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `CEP_Regex_AzureIoTConnectionString` finds content that matches the pattern.
- The regular expression `CEP_CommonExampleKeywords` doesn't find content that matches the pattern.

```xml
<!--Azure IoT Connection String-->
<Entity id="0b34bec3-d5d6-4974-b7b0-dcdb5c90c29d" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
        <IdMatch idRef="CEP_Regex_AzureIoTConnectionString" />
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
