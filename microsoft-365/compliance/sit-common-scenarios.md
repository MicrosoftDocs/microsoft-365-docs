---
title: "Common usage scenarios for sensitive information types"
f1.keywords:
- NOCSH
ms.author: chrfox
author: robmazz
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date:
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MOE150
- MET150
description: How to implement common sensitive information types use case scenarios
ms.custom: seo-marvel-apr2020
---

# Common usage scenarios for sensitive information types

This article describes how to implement some common sensitive information type (SIT) use case scenarios. You can use these procedures as examples and adapt them to your specific needs.

## Protect credit card numbers

Contoso Bank needs to classify the credit card numbers that they issue as sensitive. Their credit cards start with a set of six-digit patterns. They would like to customize the out of the box credit card definition to only detect the credit card numbers starting with their six-digit patterns.

**Suggested solution**

1. Create a copy of the credit card SIT. Use the steps to [copy and modify a sensitive information type](create-a-custom-sensitive-information-type.md#copy-and-modify-a-sensitive-information-type) to copy the credit card SIT.
1. Edit the high confidence pattern. Follow the steps in [edit or delete the sensitive information type pattern](sit-get-started-exact-data-match-create-rule-package.md#edit-or-delete-the-sensitive-information-type-pattern).
1. Add 'starts with' check and add the list of bin digit (formatted & unformatted). For example to ensure that only credit cards starting with 411111 & 433512 should be considered valid, add the following to the list 4111 11, 4111-11, 411111, 4335 12, 4335-12, 433512.
1. Repeat step 2 & 3 for the low confidence pattern.

## Test numbers similar to Social Security numbers

Contoso has identified a few nine-digit test numbers that trigger false positive matches in the Social Security Number (SSN) Microsoft Purview data loss prevention (DLP) policy. They would like to exclude these numbers from the list of valid matches for SSN.

**Suggested solution**

1. Create a copy of the SSN SIT. Use the steps to [copy and modify a sensitive information type](create-a-custom-sensitive-information-type.md#copy-and-modify-a-sensitive-information-type) to copy the SSN SIT.
1. Edit the high confidence pattern. Follow the steps in [edit or delete the sensitive information type pattern](sit-get-started-exact-data-match-create-rule-package.md#edit-or-delete-the-sensitive-information-type-pattern).
1. Add the numbers to be excluded in the 'exclude specific values' additional check. For example, to exclude 239-23-532 & 23923532, just adding 23923532 will suffice
1. Repeat step 2 & 3 for other confidence patterns as well

## Phone numbers in signature trigger match

Australia based Contoso finds that phone numbers in email signatures are triggering a match for their Australia company number DLP policy.

**Suggested solution**

Add a 'not' group in supporting elements using a keyword list containing commonly used keywords in signature of email like “Phone”, “Mobile”, “email”, “Thanks and regards” etc. Keep the proximity of this keyword list to a smaller value like 50 characters for better accuracy. For more information, see [Get started with custom sensitive information types](create-a-custom-sensitive-information-type.md).

## Unable to trigger ABA routing policy

DLP policy is unable to trigger ABA routing number policy in large excel files because the required keyword isn't found within 300 characters.

**Suggested solution**

Create a copy of the built-in SIT and edit it to change the proximity of the keyword list from “300 characters” to “Anywhere in the document”.

> [!TIP]
> You may edit the keyword list to include/exclude keywords that are relevant to your organization.

## Unable to detect credit card numbers with unusual delimiters

Contoso Bank has noticed some of their employees share Credit card numbers with ‘/’ as a delimiter, for example 4111/1111/1111/1111, which isn't detected by the out of the box credit card definition. Contoso would like to define their own regex and validate it using LuhnCheck.

**Suggested solution**

1. Create a copy of the Credit card SIT using the steps in [Customize a built-in sensitive information type](customize-a-built-in-sensitive-information-type.md).
1. Add a new pattern
1. In the primary element, select regular expression
1. Define the regular expression that includes ‘/’ as part of the regular expression and then choose validator and select luhncheck or func_credit_card to ensure the regex also passes the LuhnCheck.

## Ignore a disclaimer notice

Many organizations add legal disclaimers, disclosure statements, signatures, or other information to the top or bottom of email messages that enter or leave their organizations and in some cases even within the organizations. The employees themselves put signatures including – motivational quotes, social messages, and so on. A disclaimer or signature can contain the terms that are present in the lexicon of a CC and and may generate a lot of false positives.  

For example, a typical disclaimer might contain words like sensitive, or confidential and a policy looking for sensitive info will detect it as an incident, leading to lot of false positives. Thus providing customers with an option to ignore disclaimer can reduce false positives and increase the efficiency of compliance team.

### Example of disclaimer

Consider the following disclaimer:

IMPORTANT NOTICE: This e-mail message is intended to be received only by persons entitled to receive the confidential information it may contain. E-mail messages to clients of Contoso may contain information that is confidential and legally privileged. Please do not read, copy, forward, or store this message unless you are an intended recipient of it. If you have received this message in error, please forward it to the sender and delete it completely from your computer system.

If the SIT has been configured to detect a keyword confidential, then the pattern will invoke a match every time a disclaimer is used in the email, leading to a lot of false positives.

### Ignore disclaimer using prefix and suffix in SIT

One way to ignore the instances of keywords in the disclaimer is by excluding the instances of keywords which are preceded by a prefix and followed by a suffix.

Consider this disclaimer:

IMPORTANT NOTICE: This e-mail message is intended to be received only by persons *entitled to receive the* confidential **information it may contain**. E-mail messages to clients of Contoso may contain information that is confidential and legally privileged. Please do not read, copy, forward, or store this message unless you are an intended recipient of it. If you have received this message in error, please forward it to the sender and delete it completely from your computer system.

We have two instances of the keyword “confidential” and if we configure the SIT to ignore instances of this keyword preceded by prefixes (italicized in the example) and followed by suffixes (bolded in the example), then we can achieve ignoring disclaimers in most of the cases.

To ignore the disclaimer using prefix and suffix:

1. Add additional checks in the current SIT to exclude prefix and suffix text to the keyword which we want to ignore in the disclaimer.
1. Choose to exclude the prefix and in the **Prefixes** text box enter **contain information that is**.
1. Choose to exclude the suffix and in the **Suffixes** text box enter **and legally privileged**.
1. Repeat this process for other instances of the keywords in the disclaimer, as shown in the following graphic.

### Ignore disclaimer by excluding secondary elements

Another way to add a list of supporting elements (instances in disclaimer) which needs to be excluded is to exclude secondary elements.

Consider this disclaimer:

IMPORTANT NOTICE: This e-mail message is intended to be received only by persons entitled to receive the confidential information it may contain. E-mail messages to clients of Contoso may contain information that is confidential and legally privileged. Please do not read, copy, forward, or store this message unless you are an intended recipient of it. If you have received this message in error, please forward it to the sender and delete it completely from your computer system.

We have two instances of the keyword “confidential” in this example. If we configure the SIT to ignore instances of this keyword in the disclaimer (underlined as red), we can achieve ignoring disclaimers in most of the cases.

:::image type="content" source="../media/sit-scenario-edit-pattern.png" alt-text="You can add more conditions to the pattern to exclude additional instances in the disclaimer.":::

To ignore the disclaimer using secondary elements:

1. Select **Not any of these** group in the supporting elements.
1. Add the instances of disclaimer which we want to ignore as a keyword list/dictionary.
1. Add the keywords as a new line which we want to ignore. Remember that the length of each text can't be more than 50 characters.
1. Set the proximity of this element to be within 50-60 characters of the primary element.
