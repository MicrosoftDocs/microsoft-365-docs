---
title: "DLP policy conditions and exceptions (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: None
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: ""
---

# DLP policy conditions and exceptions (preview)

Conditions and exceptions in DLP policies identify sensitive items rule is applied to or not applied to. For example, if the policy blocks sharing of an item policy  to only apply to items that contain specific words Collectively, the conditions and exceptions in DLP policies are  are also known as predicates, because for every condition, there’s a corresponding exception that uses the exact same settings and syntax. The only difference is conditions specify the items to include, while exceptions specify items to exclude.

Most conditions and exceptions have one property that requires one or more values. For example, if the DLP policy is being applied to Exchange emails, the The sender is condition requires the sender of the message. Some conditions have two properties. For example, the A message header includes any of these words condition requires one property to specify the message header field, and a second property to specify the text to look for in the header field. Some conditions or exceptions don’t have any properties. For example, the Any attachment has executable content condition simply looks for attachments in messages that have executable content.

## Conditions and exceptions for DLP policies

The tables in the following sections describe the conditions and exceptions that are available in DLP. The property types are described in the Property types section.




## See also


- [Retention labels](retention.md)
- [Data loss prevention (DLP)](data-loss-prevention-policies.md)
- [Sensitivity labels](sensitivity-labels.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
- [Document finger printing](document-fingerprinting.md)
- [Exact data match](create-custom-sensitive-information-types-with-exact-data-match-based-classification.md)
