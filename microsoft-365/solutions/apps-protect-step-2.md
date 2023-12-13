---
title: "Step 2. Apply enhanced data protection"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Step 2. Apply enhanced data protection
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 2. Apply enhanced data protection

Level 1 is the minimum data protection configuration for an enterprise mobile device. This configuration replaces the need for basic Exchange Online device access policies by requiring a PIN to access work or school data, encrypting the work or school account data, and providing the capability to selectively wipe the school or work data. However, unlike Exchange Online device access policies, the below App Protection Policy settings apply to all the apps selected in the policy, thereby ensuring data access is protected beyond mobile messaging scenarios.

The policies in level 1 enforce a reasonable data access level while minimizing the impact to users and mirror the default data protection and access requirements settings when creating an App Protection Policy within Microsoft Intune.

## Recommended iOS/iPadOS Level 1 app protection settings


### iOS/iPadOS data protection

App protection policies divide iOS/iPadOS data protection into three categories:
- Data transfer
- Encryption
- Functionality

#### Data transfer

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-17.png" alt-text="iOS/iPadOS level 1 app protection - Data transfer settings" border="false" :::

#### Encryption and functionality

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-18.png" alt-text="iOS/iPadOS level 1 app protection - Encryption and functionality settings" border="false" :::

### iOS/iPadOS access requirements

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-19.png" alt-text="iOS/iPadOS level 1 app protection - Access requirements settings" border="false" :::





## Next step

[:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-01.png" alt-text="Step 3 - Apply high data protection" border="false" :::](apps-protect-step-3.md)

Continue with [Step 3](apps-protect-step-3.md) to apply high data protection in Microsoft Intune.
