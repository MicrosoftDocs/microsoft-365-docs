---
title: "Learn about named entities (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
search.appverid: MET150
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleContainsSensitiveInformation'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
description: "Learn how named entities help you detect sensitive items containing names of people, physical addresses and medical terms via data loss prevention policies"
---

# Learn about named entities (preview)

[Sensitive information types](sensitive-information-type-learn-about.md) (SIT) are pattern-based classifiers. They detect strings like social security, credit card, or bank account numbers to identify sensitive items. For more information, see [Sensitive information types entity definitions](sensitive-information-type-entity-definitions.md).

**Named entities** are also sensitive information types. 
You can use them to detect person names, physical addresses, and medical terms and conditions in items. You can see them in the **Compliance Center > Data classification > Sensitive info types**.




Named entities SITs are either **bundled** or **unbundled**. 

bundled entities find all possible matches for the SIT
- **unbundled entities**.

Named entities are used in data loss prevention enhanced policy templates such as:




## Named entities are used in

- [Data loss prevention policies](data-loss-prevention-policies.md) 

- [Communication compliance](communication-compliance.md)
- [Auto-labelling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps)

## 



## For further information
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
- [Create a custom sensitive information type](create-a-custom-sensitive-information-type.md)
- [Create a custom sensitive information type in PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md)
