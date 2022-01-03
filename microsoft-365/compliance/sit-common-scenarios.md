---
title: "Common usage scenarios for sensitive information types"
f1.keywords:
- NOCSH
ms.author: chrfox
author: v-tophillips
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date:
localization_priority: Normal
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Common implementation scenarios for sensitive information types
ms.custom: seo-marvel-apr2020
---

# Common usage scenarios for sensitive information types

This article describes some basic scenarios you could use as templates for implementing sensitive information types to protect your organization.

## Protect credit card numbers

Contoso Bank would like to classify only credit cards issued by them as sensitive. The credit cards issued by them start with a set of 6-digit patterns. They would like to customize the OOB credit card definition to only detect the credit card numbers starting with these 6-digit patterns.

**Suggested solution**

1. Create a copy of the credit card SIT​
1. Edit the high confidence pattern​
1. Add starts with additional check and add the list of bin digits(formatted & unformatted). For example to ensure that only credit cards starting with 411111 & 433512 should be considered valid, add the following to the list 4111 11, 4111-11, 411111, 4335 12, 4335-12, 433512​
1. Repeat step 2 & 3 for low confidence pattern

## Test numbers similar to Social Security numbers

Contoso has identified a few 9-digit test numbers which trigger the SSN policy. They would like to exclude these numbers from the list of valid matches for SSN.

**Suggested solution**

1. Create a copy of the SSN​
1. Edit the high confidence pattern​
1. Add the numbers to be excluded in the exclude specific values additional check. For example, to exclude 239-23-532 & 23923532, just adding 23923532 will suffice​
1. Repeat step 2 & 3 for other confidence patterns as well

## Phone numbers in signature trigger match

Phone numbers in signature trigger a match for Australia company number policy.

**Suggested solution**

Add a not group in supporting elements using a keyword list containing commonly used keywords in signature of email like “Phone”, “Mobile”, “email”, “Thanks and regards” etc. Keep the proximity of this keyword list to a smaller value like 50 characters for better accuracy.

## Unable to trigger ABA routing policy

DLP policy is unable to trigger ABA routing number policy in large excel files because the required keyword is not found within 300 characters.

**Suggested solution**

Create a copy of the built in SIT and edit it to change the proximity of the keyword list from “300 characters” to “Anywhere in the document”. ​

> [!TIP]
> You may edit the keyword list to include/exclude keywords that are relevant to your organization.

## Unable to detect credit card numbers with unusual delimiters

Contoso Bank have noticed some of their employees share Credit card numbers with ‘/’ as a delimiter, for example 4111/1111/1111/1111, which is not detected by the out of the box credit card definition. Contoso would like to define their own regex and validate it using LuhnCheck.

**Suggested solution**

1. Create a copy of the Credit card SIT​
1. Add a new pattern​
1. In the primary element, select regular expression​
1. Define the regular expression which includes ‘/’ as part of the regular expression and then choose validator and select luhncheck or func_credit_card to ensure the regex also passes the LuhnCheck.
