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
ms.date: 01/03/2023
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

Up until recently, if you're using multiple Microsoft endpoint security solutions, the highest functional subscription would set the experience for your tenant. For example, if some users were assigned licenses for Defender for Endpoint Plan 1, and other users were assigned Defender for Endpoint Plan 2, all licensed users would receive Defender for Endpoint Plan 2 capabilities. And, starting a trial or purchasing licenses for a higher subscription would change the tenant experience to the higher level experience. 

We're happy to announce that you can now manage your subscription settings to accommodate [mixed licensing scenarios](defender-endpoint-plan-1-2.md#mixed-licensing-scenarios). You can:

- **Set your tenant to mixed mode and use device tags** (*recommended*) to specify which devices will receive features and capabilities from each plan; OR
- **Use the features and capabilities from one plan across all devices**.

## [**Use mixed mode**](#tab/mixed)

## Set your tenant to mixed mode and use device tags

1. Go to **Settings** > **Endpoints** > **Licenses**.

2. Under **Subscription state**, select **Manage subscription settings**. (If you don't see **Manage subscription settings**, it's because you have only one subscription applied to your tenant, and no further action is needed.)

3. A **Subscription settings** flyout opens. Choose the option to use multiple plans and use device tagging for mixed licenses.

4. Tag the devices that will receive Defender for Endpoint Plan 1 capabilities (all other devices will receive Defender for Endpoint Plan 2). You can choose to tag your devices manually or by using a dynamic rule.

   - To tag devices manually, create a tag called `License MDE P1`. To get help with this step, see [Create and manage device tags](machine-tags.md).
   - To use a dynamic rule, specify a set of criteria based on device name, domain, operating system platform, and/or device tags. Devices that meet the specified criteria will receive the `License MDE P1` tag.
   - Device tags are visible in the **Device inventory** view and in the [Defender for Endpoint APIs](apis-intro.md).

5. Save your rule and wait for up to three (3) hours for tags to be applied. 

## [**Choose one plan**](#tab/oneplan)

## Choose to use one plan for all devices

1. Go to **Settings** > **Endpoints** > **Licenses**.

2. Under **Subscription state**, select **Manage subscription settings**. (If you don't see **Manage subscription settings**, it's because you have only one subscription applied to your tenant, and no further action is needed.)

3. A **Subscription settings** flyout opens. Choose one plan for all users and devices, and then select **Done**. 

> [!NOTE]
> It can take up to three hours for your changes to take effect.

---

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
