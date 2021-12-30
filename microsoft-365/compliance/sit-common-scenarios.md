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

Banks would only like to classify Credit cards issued by them as sensitive. The credit cards issued by them start with a set of 6-digit patterns. They would like to customize the OOB Credit card definition to only detect the credit card numbers starting with these 6-digit patterns.

**Suggested solution**

1. Create a copy of the Credit card SIT​
1. Edit the high confidence pattern​
1. Add starts with additional check and add the list of Bin digits(formatted & unformatted). For example to ensure that only credit cards starting with 411111 & 433512 should be considered valid, add the following to the list 4111 11, 4111-11, 411111, 4335 12, 4335-12, 433512​
1. Repeat step 2 & 3 for low confidence pattern
