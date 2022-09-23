---
title: "Learn about sensitive information types"
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
ms.localizationpriority: medium
ms.collection:
- tier1
- highpri
- M365-security-compliance
description: "This article gives an overview of sensitive information types and how they detect sensitive information like social security, credit card, or bank account numbers to identify sensitive items"
---

# Learn about sensitive information types

Identifying and classifying sensitive items that are under your organizations control is the first step in the [Information Protection discipline](./information-protection.md).  Microsoft Purview provides three ways of identifying items so that they can be classified:

- manually by users
- automated pattern recognition, like sensitive information types
- [machine learning](classifier-learn-about.md)

Sensitive information types (SIT) are pattern-based classifiers. They detect sensitive information like social security, credit card, or bank account numbers to identify sensitive items, see [Sensitive information types entity definitions](sensitive-information-type-entity-definitions.md) for a complete list of all SITs.

Microsoft provides a large number of pre-configured SITs or you can create your own.

## Sensitive information types are used in

- [Microsoft Purview Data Loss Prevention policies](dlp-learn-about-dlp.md)
- [Sensitivity labels](sensitivity-labels.md)
- [Retention labels](retention.md)
- [Insider risk management](insider-risk-management.md)
- [Communication compliance](communication-compliance.md)
- [Auto-labelling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps)
- [Microsoft Priva](/privacy/priva)



## Categories of sensitive information types

### Built in sensitive information types

These SITs are created by Microsoft show up in the compliance console by default. These SITs cannot be edited, but they can be used as templates and copied to create custom sensitive information types. See, [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md) for a full listing of all SITs.

### Named entity sensitive information types

Named entity SITs also show up in the compliance console by default. They detect person names, physical addresses, and medical terms and conditions. They cannot be edited or copied. See, [Learn about named entities ](named-entities-learn.md#learn-about-named-entities) for more information. Named entity SITs come in two types:

**un-bundled**

These named entity SITs have a narrower focus, like a single country, or a single class of terms. Use them when you need a DLP policy with a narrower detection scope. See, [Examples of named entity SITs](named-entities-learn.md#examples-of-named-entity-sits).

**bundled**

Bundled named entity SITs detect all possible matches in a class, like All physical addresses. Use them as broad criteria in your DLP policies for detecting sensitive items. See, [Examples of named entity SITs](named-entities-learn.md#examples-of-named-entity-sits).

### Custom sensitive information types

If the pre-configured sensitive information types don't meet your needs, you can create your own custom sensitive information types that you fully define or you can copy one of the built-in ones and modify it. See, [Create a custom sensitive information type in Compliance center](create-a-custom-sensitive-information-type.md) for more information.

### Exact data match sensitive information types

All EDM-based SITs are created from scratch. You use them to detect items that have exact values which you define in a database of sensitive information. See, [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types) for more information.

## Fundamental parts of a sensitive information type

Every sensitive information type entity is defined by these fields:

- name: how the sensitive information type is referred to
- description: describes what the sensitive information type is looking for
- pattern: A pattern defines what a sensitive information type detects. It consists of the following components.
  - Primary element – The main element that the sensitive information type is looking for. It can be a **regular expression** with or without a checksum validation, a **keyword list**, a **keyword dictionary**, or a **function**.
  - Supporting element – Elements that act as supporting evidence that help in increasing the confidence of the match. For example, keyword "SSN" in proximity to an SSN number. It can be a regular expression with or without a checksum validation, keyword list, keyword dictionary.
  - Confidence Level - Confidence levels (high, medium, low) reflect how much supporting evidence was detected along with the primary element. The more supporting evidence an item contains, the higher the confidence that a matched item contains the sensitive info you're looking for.
  - Proximity – Number of characters between primary and supporting element.

![Diagram of corroborative evidence and proximity window.](../media/dc68e38e-dfa1-45b8-b204-89c8ba121f96.png)

Learn more about confidence levels in this short video.

 > [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4Hx60]

### Example sensitive information type

#### Argentina national identity (DNI) number

### Format

Eight digits separated by periods

### Pattern

Eight digits:

- two digits
- a period
- three digits
- a period
- three digits

### Checksum

No

### Definition

A DLP policy has medium confidence that it's detected this type of sensitive information if, within a proximity of 300 characters:

- The regular expression Regex_argentina_national_id finds content that matches the pattern.
- A keyword from Keyword_argentina_national_id is found.

```xml
<!-- Argentina National Identity (DNI) Number -->
<Entity id="eefbb00e-8282-433c-8620-8f1da3bffdb2" recommendedConfidence="75" patternsProximity="300">
   <Pattern confidenceLevel="75">
      <IdMatch idRef="Regex_argentina_national_id"/>
      <Match idRef="Keyword_argentina_national_id"/>
  </Pattern>
</Entity>
```

### Keywords

#### Keyword_argentina_national_id

- Argentina National Identity number
- Identity
- Identification National Identity Card
- DNI
- NIC National Registry of Persons
- Documento Nacional de Identidad
- Registro Nacional de las Personas
- Identidad
- Identificación

### More on confidence levels

In a sensitive information type entity definition, **confidence level** reflects how much supporting evidence is detected in addition to the primary element. The more supporting evidence an item contains, the higher the confidence that a matched item contains the sensitive info you're looking for. For example, matches with a high confidence level will contain more supporting evidence in close proximity to the primary element, whereas matches with a low confidence level would contain little to no supporting evidence in close proximity.

A high confidence level returns the fewest false positives but might result in more false negatives. Low or medium confidence levels returns more false positives but few to zero false negatives.

- **low confidence**: Matched items will contain the fewest false negatives but the most false positives. Low confidence returns all low, medium, and high confidence matches. The low confidence level has a value of 65.
- **medium confidence**: Matched items will contain an average amount of false positives and false negatives. Medium confidence returns all medium, and high confidence matches. The medium confidence level has a value of 75.
- **high confidence**: Matched items will contain the fewest false positives but the most false negatives. High confidence only returns high confidence matches and has a value of 85.

You should use high confidence level patterns with low counts, say five to ten, and low confidence patterns with higher counts, say 20 or more.

> [!NOTE]
> If you have existing policies or custom sensitive information types (SITs) defined using number-based confidence levels (also know as accuracy), they will automatically be mapped to the three discrete confidence levels; low confidence, medium confidence, and high confidence, across the Security @ Compliance Center UI.
>
> - All policies with minimum accuracy or custom SIT patterns with confidence levels of between 76 and 100 will be mapped to high confidence.
> - All policies with minimum accuracy or custom SIT patterns with confidence levels of between 66 and 75 will be mapped to medium confidence.
> - All policies with minimum accuracy or custom SIT patterns with confidence levels less than or equal to 65 will be mapped to low confidence.

## Creating custom sensitive information types

You can choose from several options to create custom sensitive information types in the Compliance Center.

- **Use the UI** - You can set up a custom sensitive information type using the Compliance Center UI. With this method, you can use regular expressions, keywords, and keyword dictionaries. To learn more, see [Create a custom sensitive information type](create-a-custom-sensitive-information-type.md).

- **Use EDM** - You can set up custom sensitive information types using Exact Data Match (EDM)-based classification. This method enables you to create a dynamic sensitive information type using a secure database that you can refresh periodically. See [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types).

- **Use PowerShell** - You can set up custom sensitive information types using PowerShell. Although this method is more complex than using the UI, you have more configuration options. See [Create a custom sensitive information type in Security & Compliance PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md).

> [!NOTE]
> Improved confidence levels are available for immediate use within Microsoft Purview data loss prevention services, information protection, Communication Compliance, data lifecycle management, and records management.
> Information Protection now supports double byte character set languages for:
> - Chinese (simplified)
> - Chinese (traditional)
> - Korean
> - Japanese
>
> This support is available for sensitive information types. See, [Information protection support for double byte character sets release notes](mip-dbcs-relnotes.md) for more information.

> [!TIP]
> To detect patterns containing Chinese/Japanese characters and single byte characters or to detect patterns containing Chinese/Japanese and English, define two variants of the keyword or regex.
>
> - For example, to detect a keyword like "机密的document", use two variants of the keyword; one with a space between the Japanese and English text and another without a space between the Japanese and English text. So, the keywords to be added in the SIT should be "机密的 document" and "机密的document". Similarly, to detect a phrase "東京オリンピック2020", two variants should be used; "東京オリンピック 2020" and "東京オリンピック2020".
>
> Along with Chinese/Japanese/double byte characters, if the list of keywords/phrases also contain non Chinese/Japanese words also (like English only), you should create two dictionaries/keyword lists. One for keywords containing Chinese/Japanese/double byte characters and another one for English only.
>
> - For example, if you want to create a keyword dictionary/list with three phrases "Highly confidential", "機密性が高い" and "机密的document", the you should create two keyword lists.
>     1. Highly confidential
>     2. 機密性が高い, 机密的document and 机密的 document
>
> While creating a regex using a double byte hyphen or a double byte period, make sure to escape both the characters like one would escape a hyphen or period in a regex. Here is a sample regex for reference:
>
> `(?<!\d)([4][0-9]{3}[\-?\-\t]*[0-9]{4}`
>
> We recommend using string match instead of word match in a keyword list.

## Provide match/not a match accuracy feedback in sensitive info types

You can view the number of matches a SIT has in **Sensitive info types** and **Content explorer**. You can also provide feedback on whether an item is actually a match or not using the **Match**, **Not a Match** feedback mechanism and use that feedback to tune your SITs. See, [Increase classifier accuracy (preview)](data-classification-increase-accuracy.md) for more information. 


## For further information

- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
- [Create a custom sensitive information type](create-a-custom-sensitive-information-type.md)
- [Create a custom sensitive information type in PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md)

To learn how to use sensitive information types to comply with data privacy regulations, see [Deploy information protection for data privacy regulations with Microsoft 365](../solutions/information-protection-deploy.md)  (aka.ms/m365dataprivacy).

<!-- fwlink for this topic https://go.microsoft.com/fwlink/?linkid=2135644-->
