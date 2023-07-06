---
title: "Manage custom sensitive information types in compliance portal"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date: 06/02/2023
ms.localizationpriority: medium
ms.collection: 
- tier1
- purview-compliance
search.appverid: 
- MOE150
- MET150
description: "Learn how to modify, and remove custom sensitive information types in the Compliance Center."
ms.custom: seo-marvel-apr2020
---
# Manage custom sensitive information types in the Compliance center

This article walks you through the steps to modify and remove an existing custom sensitive information type in the Microsoft Purview compliance portal.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Modify custom sensitive information types in the compliance portal

1. In the compliance portal, go to **Data classification** \> **Classifiers** \> **Sensitive info types** and choose the sensitive information type from the list that you want to modify. Choose **Edit**.

2. You can add other patterns, with unique primary and supporting elements, confidence levels, character proximity, and [**additional checks**](sit-regex-validators-additional-checks.md#sensitive-information-type-additional-checks) or edit/remove the existing ones.

## Remove custom sensitive information types in the compliance portal

> [!NOTE]
> You can only remove custom sensitive information types; you can't remove built-in sensitive information types.

> [!IMPORTANT]
> Before your remove a custom sensitive information type, verify that no DLP policies or Exchange mail flow rules (also known as *transport rules*) still reference the sensitive information type.

1. In the compliance portal, go to **Data classification** \> **Classifiers** \>**Sensitive info types** and choose the sensitive information type that you want to remove from the list.

2. On the detail page for the selected sensitive information type, choose **Delete**.

3. At the confirmation pop-up, choose **Yes**.
