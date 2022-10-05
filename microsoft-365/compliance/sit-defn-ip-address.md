---
title: "IP address entity definition"
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
description: "IP address sensitive information type entity definition."
---

# IP address

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

### IPv4:
Complex pattern that accounts for formatted (periods) and unformatted (no periods) versions of the IPv4 addresses

### IPv6:
Complex pattern that accounts for formatted IPv6 numbers (which include colons)

## Pattern

## Checksum

No

## Definition

For IPv6, a DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_ipv6_address` finds content that matches the pattern.
- No keyword from `Keyword_ipaddress` is found.

For IPv4, a DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_ipv4_address` finds content that matches the pattern.
- A keyword from `Keyword_ipaddress` is found.

For IPv6, a DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `Regex_ipv6_address` finds content that matches the pattern.
- No keyword from `Keyword_ipaddress` is found.

```xml
    <!-- IP Address -->
    <Entity id="1daa4ad5-e2dd-4ca4-a788-54722c09efb2" patternsProximity="300" recommendedConfidence="85">
      <Pattern confidenceLevel="85">
        <IdMatch idRef="Regex_ipv6_address" />
        <Any minMatches="0" maxMatches="0">
          <Match idRef="Keyword_ipaddress" />
        </Any>
      </Pattern>
      <Pattern confidenceLevel="95">
        <IdMatch idRef="Regex_ipv4_address" />
        <Any minMatches="1">
          <Match idRef="Keyword_ipaddress" />
        </Any>
      </Pattern>
      <Pattern confidenceLevel="95">
        <IdMatch idRef="Regex_ipv6_address" />
        <Any minMatches="1">
          <Match idRef="Keyword_ipaddress" />
        </Any>
      </Pattern>
    </Entity>
```

## Keywords

### Keyword_ipaddress

- IP (this keyword is case-sensitive)
- ip address
- ip addresses
- internet protocol
- IP-כתובת ה
