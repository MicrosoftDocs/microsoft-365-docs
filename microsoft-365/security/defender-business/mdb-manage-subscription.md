---
title: Manage your endpoint security subscription settings across client devices
description: Learn about your options for managing your Defender for Business or Defender for Endpoint subscription settings. Choose between Defender for Endpoint or Defender for Business.
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 01/02/2023
ms.service: defender-business
ms.subservice: onboard
ms.localizationpriority: medium
ms.reviewer: shlomiakirav, efratka
f1.keywords: NOCSH  
ms.collection: 
- M365-security-compliance
- m365initiative-defender-business
---

# Manage your endpoint security subscription settings across client devices

Microsoft Defender for Business and Microsoft Defender for Endpoint are endpoint security subscriptions that your organization can use to protect devices, such as computers, tablets, and phones. As your organization grows, you might have a mix of subscriptions and licenses. This article describes how to manage your endpoint security subscriptions, such as by choosing whether to continue using Defender for Business or switching to using Defender for Endpoint Plan 2 features and capabilities across devices. (To learn more about mixed-licensing scenarios with Defender for Endpoint Plan 1 and Plan 2, see [Manage Microsoft Defender for Endpoint subscription settings across client devices](../defender-endpoint/defender-endpoint-subscription-settings.md).)

## Before you begin

- You should have active trial or paid licenses for both Defender for Business and Defender for Endpoint Plan 2. If you're using Defender for Business only, you can continue using it.[Configure Microsoft Defender for Endpoint capabilities](../defender-endpoint/onboard-configure.md)

- To access license information, you must have one of the following roles assigned in Microsoft Entra ID:
   
   - Global Admin
   - Security Admin

## View and manage your endpoint security subscription settings

1. As an admin, go to the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** > **Endpoints** > **Licenses**. Your usage report opens and displays information about your organization's Defender for Business and Defender for Endpoint licenses.

3. To change your subscription, under **Subscriptions applied to your devices**, select **Change subscription settings**. 

   > [!NOTE]
   > If you don't see **Change subscription settings**, at least one of the following conditions is true:
   > - You have Defender for Business or Defender for Endpoint (but not both); or 
   > - The ability to change your subscription settings hasn't rolled out to your tenant yet.

4. On the **Subscription settings** flyout, choose whether to use only Defender for Business or Defender for Endpoint Plan 2 across your organization's devices. Keep the following important points in mind before you save your changes:

   - Make sure you have enough licenses for the subscription you're using for all users in your organization. If you choose Defender for Endpoint Plan 2, you're no longer using your Defender for Business licenses.
   - If you select **Only Microsoft Defender for Endpoint Plan 2**, the simplified configuration experience for Defender for Business is replaced by advanced settings in Defender for Endpoint. Once this change is applied, you cannot undo it.
   - Make sure to review your security policies and settings. To get help with Defender for Endpoint policies and settings, see [Configure Microsoft Defender for Endpoint capabilities](../defender-endpoint/onboard-configure.md). If you're keeping Defender for Business, see [Set up, review, and edit your security policies and settings in Microsoft Defender for Business](mdb-configure-security-settings.md).  
   - It can take up to three hours for your changes to be applied.

## Review license usage

The license usage report is estimated based on sign-in activities on the device. Defender for Endpoint Plan 2 licenses are per user, and each user can have up to five concurrent, onboarded devices. To learn more about license terms, see [Microsoft Licensing](https://www.microsoft.com/en-us/licensing/default).  

To reduce management overhead, there's no requirement for device-to-user mapping and assignment. Instead, the license report provides a utilization estimation that is calculated based on device usage seen across your organization. It might take up to one day for your usage report to reflect the active usage of your devices.

> [!IMPORTANT]
> To access license information, you must have one of the following roles assigned in Microsoft Entra ID:
> - Security Admin
> - Global Admin
> - License Admin + MDE Admin

1. Go to the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Choose **Settings** > **Endpoints** > **Licenses**.

3. Review your available and assigned licenses. The calculation is based on detected users who have accessed devices that are onboarded to Defender for Business (or Defender for Endpoint).

## More resources

- [Licensing and product terms for Microsoft 365 subscriptions](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).
- [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md) (endpoint protection for small and medium-sized businesses)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
