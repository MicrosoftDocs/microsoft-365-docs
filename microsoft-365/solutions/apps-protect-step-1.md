---
title: "Step 1. Apply minimum data protection"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 03/29/2024
description: Step 1. Apply minimum data protection.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 1. Apply enterprise basic data protection

Once you have followed the [prerequisites](apps-protect-overview.md#prerequisites), determined which platforms you must support at your organization, understood the different [app data protection categories available for each support platform](apps-protect-overview.md#app-protection-categories-by-platform), and completed the [steps needed before applying the app protection framework](apps-protect-framework.md#steps-before-applying-the-app-protection-framework), you're ready to add app protection policies. 

Level 1 is the minimum data protection configuration for an enterprise mobile device. This configuration replaces the need for basic Exchange Online device access policies by requiring a PIN to access work or school data, encrypting the work or school account data, and providing the capability to selectively wipe the school or work data. However, unlike Exchange Online device access policies, the below App Protection Policy settings apply to all the apps selected in the policy, thereby ensuring data access is protected beyond mobile messaging scenarios.

The policies in level 1 enforce a reasonable data access level while minimizing the impact to users and mirror the default data protection and access requirements settings when creating an App Protection Policy within Microsoft Intune.

## Recommended app protection settings

Use the following recommended app protection settings when creating and applying Intune app protection for Level 1 enterprise basic data protection.

[!INCLUDE [app-protection-framework-level1](~/../_memdocs/memdocs/intune/includes/app-protection-framework-level1.md)]
## Next step

[:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-steps-02.png" alt-text="Step 2. Apply enhanced data protection." border="false" :::](apps-protect-step-2.md)

Continue with [Step 2](apps-protect-step-2.md) to apply enhanced data protection in Microsoft Intune.
