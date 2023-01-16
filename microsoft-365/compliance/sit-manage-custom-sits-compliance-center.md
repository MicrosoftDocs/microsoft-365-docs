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
ms.date: 
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

This article walks you through the steps to modify and remove an existing custom sensitive information type in the Compliance center.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Modify custom sensitive information types in the Compliance Center

1. In the Compliance Center, go to **Data classification** \> **Sensitive info types** and choose the sensitive information type from the list that you want to modify choose **Edit**.

2. You can add other patterns, with unique primary and supporting elements, confidence levels, character proximity, and [**additional checks**](sit-regex-validators-additional-checks.md#sensitive-information-type-additional-checks) or edit/remove the existing ones.

## Remove custom sensitive information types in the Compliance Center 

> [!NOTE]
> You can only remove custom sensitive information types; you can't remove built-in sensitive information types.

> [!IMPORTANT]
> Before your remove a custom sensitive information type, verify that no DLP policies or Exchange mail flow rules (also known as transport rules) still reference the sensitive information type.

1. In the Compliance Center, go to **Data classification** \> **Sensitive info types** and choose the sensitive information type from the list that you want to remove.

2. In the fly-out that opens, choose **Delete**.
