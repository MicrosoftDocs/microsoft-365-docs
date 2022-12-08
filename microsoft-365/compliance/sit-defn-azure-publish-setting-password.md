---
title: "Azure publish setting password entity definition"
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
description: "Azure publish setting password sensitive information type entity definition."
---

# Azure publish setting password

### Format

The string `userpwd=` followed by an alphanumeric string.

### Pattern

- the string `userpwd=`
- any combination of 60 lowercase letters or digits
- a quotation mark (")

### Checksum

No

### Definition

A DLP policy has high confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression `CEP_Regex_AzurePublishSettingPasswords` finds content that matches the pattern.
- The regular expression `CEP_CommonExampleKeywords` doesn't find content that matches the pattern.

```xml
<!--Azure Publish Setting Password-->
<Entity id="75f4cc8a-a68e-49e5-89ce-fa8f03d286a5" patternsProximity="300" recommendedConfidence="85">
  <Pattern confidenceLevel="85">
       <IdMatch idRef="CEP_Regex_AzurePublishSettingPasswords" />
       <Any minMatches="0" maxMatches="0">
           <Match idRef="CEP_CommonExampleKeywords" />
       </Any>
  </Pattern>
</Entity>
```

### Keywords

#### CEP_common_example_keywords

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
