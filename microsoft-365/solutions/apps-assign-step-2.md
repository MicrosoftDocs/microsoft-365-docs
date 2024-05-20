---
title: "Step 2. Assign apps to groups"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 05/07/2024
description: Step 2. Assign apps to groups.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 2. Assign apps to groups

Level 1 is the minimum data protection configuration for an enterprise mobile device. This configuration replaces the need for basic Exchange Online device access policies by requiring a PIN to access work or school data, encrypting the work or school account data, and providing the capability to selectively wipe the school or work data. However, unlike Exchange Online device access policies, the below App Protection Policy settings apply to all the apps selected in the policy, thereby ensuring data access is protected beyond mobile messaging scenarios.

The policies in level 1 enforce a reasonable data access level while minimizing the impact to users and mirror the default data protection and access requirements settings when creating an App Protection Policy within Microsoft Intune.

## Assign initial apps to your organization

### Company Portal

If your organization is managing apps with Intune, you need to use the Company Portal app. End users at your organization use the Company Portal to securely access company data and do common tasks. End users can access these tasks and information using either the Company Portal app, Company Portal website, or Intune app. The Company Portal app supports iOS/iPadOS, Linux, macOS, and Windows devices. The Intune app supports Android devices.

Intune allows you to customize the Company Portal so that it better supports your organization. Specifically, you can set the Company Portal branding, support information, enrollment, privacy, notifications, device categories, app sources, and self-service actions.

> [!NOTE]
> The "Company Portal" is commonly used as the descriptor for the Intune app, Company portal app, and the Company portal website.
> 
> You don't need to use the Company Portal if you are only managing devices (MDM). If you are using **MAM** or **MDM + MAM**, you need to use the Company Portal.

### Microsoft Threat Defence app

### Assign Microsoft Outlook

### Assign Microsoft 365 Apps

### Assign Microsoft Edge

### Assign Microsoft Teams

### Assign other apps

## Include and exclude app assignments




## Next step

[:::image type="content" source="../media/assign-managed-apps/assign-managed-apps-03.png" alt-text="Step 3. Verify and monitor app assignments." border="false" :::](apps-assign-step-3.md)

Continue with [Step 3](apps-assign-step-3.md) to verify and monitor app assignments using Microsoft Intune.