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
description: "Learn how named entities help you detect sensitive items containing names of people, physical addresses, and medical terms via data loss prevention policies"
---

# Learn about named entities (preview)

 *Named entities* are [sensitive information types](sensitive-information-type-learn-about.md) (SIT). They're complex dictionary and pattern-based classifiers that you can use to detect person names, physical addresses, and medical terms and conditions. You can see them in the **Compliance Center > Data classification > Sensitive info types**. Here is a partial list of where you can use SITs:

- [Data loss prevention policies (DLP)](data-loss-prevention-policies.md) 
- [Sensitivity labels](sensitivity-labels.md)
- [Inside risk management](insider-risk-management-solution-overview.md)
- [Microsoft Cloud App Security](https://cloud-app-security/what-is-cloud-app-security)

DLP makes special use of named entities in *enhanced policy templates*, which are pre-configured DLP policies that you can customize for your organizations needs. You can also [create your own DLP policies](create-test-tune-dlp-policy.md) from a [blank template](create-a-dlp-policy-from-a-template.md) 
 and use a named entity SIT as a condition.

<!-- There are many other SITs that detect strings like social security, credit card, or bank account numbers to identify sensitive items. For more information, see [Sensitive information types entity definitions](sensitive-information-type-entity-definitions.md).-->

## Examples of named entity SITs

Named entity SITs come in two flavors, *bundled* and *unbundled*

Bundled named entity SITs detect all possible matches. Use them as broad criteria in your DLP policies for detecting sensitive items.

Unbundled named entity SITs have a narrower focus, like a single country. Use them when you need a DLP policy with a narrower detection scope.
 
Here are some examples of named entity SITs. You can find all 52 of them in the **Compliance Center > Data classification > Sensitive info types**.

|Named Entity |Description  |Bundled/Unbundled  |
|---------|---------|---------|
|All full names    |will detect all possible matches of full names         |   bundled      |
|All physical addresses    |will detect all possible matches of physical addresses     | bundled |
|All medical terms and conditions    |will detect all possible matches of medical terms and conditions |bundled |
|Australia Physical Addresses |  Detects patterns related to physical addresses from Australia. |unbundled |
|Blood Test Terms     |Detects terms related to blood tests, such as 'hCG'. English terms only.      |unbundled |
|Brand Medication Names     |Detects names of brand medication, such as 'Tylenol'. English terms only.         |unbundled |

## Examples of enhanced DLP policies

Here are some examples of enhanced DLP policies that use named entity SITs. You can find all 10 of them in the **Compliance Center > Data loss prevention > Create policy**. Enhanced templates can be used in DLP and auto-labeling.

|Policy category  |Template  |Description  |
|---------|---------|---------|
|Financial|U.S. Gramm-Leach-Bliley Act (GLBA) Enhanced         |Helps detect the presence of information subject to Gramm-Leach-Bliley Act (GLBA), including information like social security numbers or credit card numbers. This enhanced template extends the original by also detecting people's full names, U.S./U.K. passport number, U.S. driver's license number and U.S. physical addresses.         |
| Medical and health   |Australia Health Records Act (HRIP Act) Enhanced         |Helps detect the presence of information commonly considered to be subject to the Health Records and Information Privacy (HRIP) act in Australia, like medical account number and tax file number. This enhanced template extends the original by also detecting people's full names, medical terms and conditions, and Australia physical addresses.         |
|Privacy   |General Data Protection Regulation (GDPR) Enhanced         | Helps detect the presence of personal information for individuals inside the European Union (EU) to help meet GDPR privacy obligations. This enhanced template detects people's full names and physical addresses for countries in the EU.        |


## Next steps

- [Use named entities in your data loss prevention policies (preview)](named-entities-use.md)


## For further information
<!--- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)-->
- [Learn about Sensitive information types](sensitive-information-type-learn-about.md)
- [Create a custom sensitive information type](create-a-custom-sensitive-information-type.md)
- [Create a custom sensitive information type in PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md)
- [Data loss prevention policies (DLP)](data-loss-prevention-policies.md) 
- [Sensitivity labels](sensitivity-labels.md)
- [Retention labels](retention.md)
- [Communication compliance](communication-compliance.md)
- [Autolabeling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md) 
