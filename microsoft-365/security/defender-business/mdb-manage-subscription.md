---
title: Change your endpoint security subscription
description: Learn about your options for managing your Defender for Business or Defender for Endpoint subscription settings. Choose between Defender for Endpoint or Defender for Business.
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 01/03/2024
ms.service: defender-business
ms.localizationpriority: medium
ms.reviewer: shlomiakirav, efratka
f1.keywords: NOCSH  
ms.collection: 
- M365-security-compliance
- m365initiative-defender-business
---

# Change your endpoint security subscription

[Microsoft Defender for Business](mdb-overview.md) and [Microsoft Defender for Endpoint](../defender-endpoint/microsoft-defender-endpoint.md) are endpoint security subscriptions that your organization can use to protect devices, such as computers, tablets, and phones. As your organization grows, you might have a mix of subscriptions and licenses. For example, you might have some Defender for Business licenses, and some Defender for Endpoint licenses. 

This article describes how to apply either Defender for Business or Defender for Endpoint Plan 2 features and capabilities across all your organization's devices. (To learn more about mixed-licensing scenarios with Defender for Endpoint Plan 1 and Plan 2, see [Manage Microsoft Defender for Endpoint subscription settings across client devices](../defender-endpoint/defender-endpoint-subscription-settings.md).)

## Before you begin

- You should have active trial or paid licenses for both Defender for Business and Defender for Endpoint Plan 2. 

- If you're using Defender for Business only, you can continue using it. In this case, no changes are needed. But if you're considering switching to Defender for Endpoint Plan 2, follow the guidance in this article.
- To access license information, you must have one of the following roles assigned in Microsoft Entra ID:
   
   - Global Admin
   - Security Admin

## View and manage your endpoint security subscription settings

1. As an admin, go to the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** > **Endpoints** > **Licenses**. Your usage report opens and displays information about your organization's Defender for Business and Defender for Endpoint licenses.

3. To change your subscription, under **Subscriptions applied to your devices**, select **Change subscription settings**. 

   > [!NOTE]
   > If you don't see **Change subscription settings**, at least one of the following conditions is true:
   > - You have Defender for Business or Defender for Endpoint (but not both)
   > - You don't have enough Defender for Endpoint Plan 2 licenses for all users in your organization 
   > - The ability to change your subscription settings hasn't rolled out to your organization yet

4. On the **Subscription settings** flyout, choose whether to use only Defender for Business or Defender for Endpoint Plan 2 across your organization's devices. 

   > [!IMPORTANT]
   > Keep the following important points in mind before you save your changes:
   > 
   >   - Make sure you have enough licenses for the subscription you're using for all users in your organization. 
   >   - If you select **Only Microsoft Defender for Endpoint Plan 2**, the simplified configuration experience for Defender for Business is replaced with advanced settings that you can configure in Defender for Endpoint. If this change is applied, you can't undo it.
   >   - It can take up to three hours for your changes to be applied.
   >   - Make sure to review your security policies and settings. To get help with Defender for Endpoint policies and settings, see [Configure Defender for Endpoint capabilities](../defender-endpoint/onboard-configure.md). To get help with Defender for Business policies and settings, see [Review and edit your security policies and settings in Defender for Business](mdb-configure-security-settings.md).  

## Review license usage

The license usage report is estimated based on sign-in activities on the device. Defender for Endpoint Plan 2 licenses are assigned to users, and each user can have up to five concurrent, onboarded devices. To learn more about license terms, see [Microsoft Licensing](https://www.microsoft.com/en-us/licensing/default).  

To reduce management overhead, there's no requirement for device-to-user mapping and assignment. Instead, the license report provides a utilization estimation that is calculated based on device usage seen across your organization. It might take up to one day for your usage report to reflect the active usage of your devices.

> [!IMPORTANT]
> To access license information, you must have one of the following roles assigned in Microsoft Entra ID:
> - Security Admin
> - Global Admin

1. Go to the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Choose **Settings** > **Endpoints** > **Licenses**.

3. Review your available and assigned licenses. The calculation is based on detected users who have accessed devices that are onboarded to Defender for Business (or Defender for Endpoint).

## More information

- [Licensing and product terms for Microsoft 365 subscriptions](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).
- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint)
- [Microsoft Defender for Business](/microsoft-365/security/defender-business/mdb-overview) (endpoint protection for small and medium-sized businesses)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
