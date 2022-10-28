---
title: Manage your Microsoft Defender for Endpoint subscription settings
description: Learn about your options for managing your Defender for Endpoint subscription settings. Choose Plan 1, Plan 2, or mixed mode.
keywords: Defender for Endpoint, choose plan 1, choose plan 2, mixed mode, device tag, endpoint protection, endpoint security, device security, cybersecurity
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 10/28/2022
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.reviewer: shlomi, efratka
f1.keywords: NOCSH  
ms.collection: 
- M365-security-compliance
- m365initiative-defender-endpoint
---

# Manage Microsoft Defender for Endpoint subscription settings across devices

If you're using multiple Microsoft endpoint security solutions, such as Defender for Endpoint Plan 1 and Plan 2, you potentially have a [mixed licensing scenario](defender-endpoint-plan-1-2.md#mixed-licensing-scenarios). Up until now, in such cases, the highest functional Microsoft endpoint security subscription would set the experience for your tenant. Starting a trial or purchasing licenses for a higher subscription would change the tenant experience to the higher level experience. 

Now, however, you have several options available to manage your subscription settings across devices. You can:

- (Recommended) **[Set your tenant to mixed mode and use device tags](#set-your-tenant-to-mixed-mode-and-use-device-tags)** to specify which devices will receive features and capabilities from each plan; OR
- **[Use the features and capabilities from one plan across all devices](#choose-to-use-one-plan-for-all-devices)**.

## Set your tenant to mixed mode and use device tags

1. Go to **Settings** > **Endpoints** > **Licenses**.

2. Under **Subscription state**, select **Manage subscription settings**. (If you don't see **Manage subscription settings**, it's because you have only one subscription applied to your tenant, and no further action is needed.)

3. A **Subscription settings** flyout opens. Choose the option to use multiple plans and use device tagging for mixed licenses.

4. To select an assignment option for devices, follow these steps:

   1. Either select an existing rule, such as a **Plan 1 devices rule**, or create a new device rule to tag devices.
   2. Tag one set of devices, such as those that should receive Defender for Endpoint Plan 1 capabilities. Device tags are visible in the **Device inventory** view and in the [Defender for Endpoint APIs](apis-intro.md).

> [!NOTE]
> It can take up to three hours for your changes to take effect.

## Choose to use one plan for all devices

1. Go to **Settings** > **Endpoints** > **Licenses**.

2. Under **Subscription state**, select **Manage subscription settings**. (If you don't see **Manage subscription settings**, it's because you have only one subscription applied to your tenant, and no further action is needed.)

3. A **Subscription settings** flyout opens. Choose one plan for all users and devices, and then select **Done**. 

> [!NOTE]
> It can take up to three hours for your changes to take effect.

## Review license usage

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Choose **Settings** > **Endpoints** > **Licenses**.

3. Review your available and assigned licenses.

## More resources

- [Compare Microsoft endpoint security plans](defender-endpoint-plan-1-2.md)
- [Licensing and product terms for Microsoft 365 subscriptions](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).
- [How to contact support for Defender for Endpoint](contact-support.md).
- [Get started with Microsoft Security (trial offers)](https://www.microsoft.com/security/business/get-started/start-free-trial)
- [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md) (endpoint protection for small and medium-sized businesses)
