---
title: "Step 1. Apply minimum data protection"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Step 1. Apply minimum data protection
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 1. Apply enterprise basic data protection (Level 1)

Once you have followed the [prerequisites](apps-protect-overview.md#prerequisites), determined which platforms you must support at your organization, understood the different [app data protection categories available for each support platform](/microsoft-365/solutions/apps-protect-overview#app-protection-categories-by-platform), and completed the [steps needed before applying the app protection framework](apps-protect-framework.md#steps-before-applying-the-app-protection-framework), you are ready to add app protection policies. 

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



## Recommended Android Level 1 app protection settings

### Android data protection

App protection policies divide Android data protection into three categories:
- Data transfer
- Encryption
- Functionality

#### Data transfer

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-17.png" alt-text="Android level 1 app protection - Data transfer settings" border="false" :::

#### Encryption and functionality

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-18.png" alt-text="Android level 1 app protection - Encryption and functionality settings" border="false" :::

### Android access requirements

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-19.png" alt-text="Android level 1 app protection - Access requirements settings" border="false" :::


## Recommended Windows Level 1 app protection settings

### Windows data protection

App protection policies divide Windows data protection into three categories:
- Data transfer
- Encryption
- Functionality

#### Data transfer

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-17.png" alt-text="Windows level 1 app protection - Data transfer settings" border="false" :::

#### Encryption and functionality

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-18.png" alt-text="Windows level 1 app protection - Encryption and functionality settings" border="false" :::

### Android access requirements

:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-19.png" alt-text="Windows level 1 app protection - Access requirements settings" border="false" :::




## Next step

[:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-01.png" alt-text="Step 2. Apply enhanced data protection" border="false" :::](apps-protect-step-2.md)

Continue with [Step 2](apps-protect-step-2.md) to apply enhanced data protection in Microsoft Intune.
