---
title: Microsoft Defender for Endpoint subscription settings
description: Learn about your options for managing your Defender for Endpoint subscription settings. Choose Plan 1, Plan 2, or mixed mode.
keywords: Defender for Endpoint, choose plan 1, choose plan 2, mixed mode, device tag, endpoint protection, endpoint security, device security, cybersecurity
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 07/25/2022
ms.prod: m365-security
ms.technology: mde
ms.localizationpriority: medium
ms.reviewer: shlomi, efratka
f1.keywords: NOCSH  
ms.collection: 
- M365-security-compliance
- m365initiative-defender-endpoint
---

# Microsoft Defender for Endpoint subscription settings

### Choose your subscription state

Up until recently, in cases of [mixed licenses](defender-endpoint-plan-1-2.md#mixed-licensing-scenarios), the highest functional Microsoft endpoint security subscription would set the experience for your tenant. Starting a trial or purchasing licenses for a higher subscription would change the tenant experience to the higher level experience. However, if you have Defender for Endpoint Plan 1 and Plan 2 in your tenant, you now have several options available to manage your subscription settings across devices. You can:

- (Recommended) Set your tenant to mixed mode, and use device tags to specify which devices will receive features and capabilities from each plan.
- Choose to use the features and capabilities from one plan across all users and devices.

### Set your tenant to mixed mode and specify device tags

If you're using multiple Microsoft endpoint security solutions, such as Defender for Endpoint Plan 1 and Plan 2, you can choose to set your subscription state to either use features and capabilities from one plan across your users and devices. 

1. Go to **Settings** > **Endpoints** > **Licenses**.

2. Under **Subscription state**, select **Manage subscription settings**. (If you don't see **Manage subscription settings**, it's because you have only one subscription applied to your tenant, and no further action is needed.)

3. A **Subscription settings** flyout opens. Choose the option to use multiple plans and use device tagging for mixed licenses.

4. To select an assignment option for devices, take one or more of the following steps:

   - Select an existing rule, such as a **Plan 1 devices rule**.
   - Create a new device rule to tag devices.
   - Tag devices (device tags are visible in the **Device inventory** view and in the [Defender for Endpoint APIs](apis-intro.md)).

> [!NOTE]
> You only need to tag one set of devices, such as devices to receive features and capabilities from Defender for Endpoint Plan 1. It can take up to three hours for your changes to take effect.

### Choose one plan for your users and devices

1. Go to **Settings** > **Endpoints** > **Licenses**.

2. Under **Subscription state**, select **Manage subscription settings**. (If you don't see **Manage subscription settings**, it's because you have only one subscription applied to your tenant, and no further action is needed.)

3. A **Subscription settings** flyout opens. Choose one plan for all users and devices, and then select **Done**. 

> [!NOTE]
> It can take up to three hours for your changes to take effect.

### Review license usage

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Choose **Settings** > **Endpoints** > **Licenses**.

3. Review your available and assigned licenses.

