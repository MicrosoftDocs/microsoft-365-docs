---
title: "IP address v4 entity definition"
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
description: "IP address v4 sensitive information type entity definition."
---

# IP Address v4

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Complex pattern that accounts for formatted (periods) and unformatted (no periods) versions of the IPv4 addresses.

## Pattern

## Checksum

No

## Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_ipv4_address` finds content that matches the pattern.
- A keyword from `Keyword_ipaddress` is found.

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_ipv4_address` finds content that matches the pattern.

```xml
      <!-- IP Address v4-->
      <Entity id="a7dd5e5f-e7f9-4626-a2c6-86a8cb6830d2" patternsProximity="300" recommendedConfidence="75" relaxProximity="true">
        <Pattern confidenceLevel="85">
          <IdMatch idRef="Regex_ipv4_address" />
          <Match idRef="Keyword_ipaddress" />
        </Pattern>
        <Pattern confidenceLevel="75">
          <IdMatch idRef="Regex_ipv4_address" />
        </Pattern>
      </Entity>
```

## Keywords

### Keyword_ipaddress

- IP (case sensitive)
- ip address
- ip addresses
- internet protocol
- IP-כתובת ה
