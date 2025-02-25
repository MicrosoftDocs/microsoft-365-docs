---
title: "What happens to my data and access when my Microsoft 365 for business subscription ends?"
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: mijeffer, nicholak
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-business
ms.subservice: m365-commerce-acquisition
ms.localizationpriority: medium
ms.collection:
- Tier1 
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_subscriptions
- AdminSurgePortfolio
- AdminTemplateSet
- campaignIDs-batch1
search.appverid: MET150
description: "Learn what happens to your data when your Microsoft 365 for business subscription expires, is disabled, or if you cancel."
ms.date: 02/06/2025
---

# What happens to my data and access when my Microsoft 365 for business subscription ends?

When your subscription ends, your access to Microsoft 365 products and services, apps, and customer data goes through multiple statuses before the subscription is fully turned off, or deleted. Being aware of this status progression can help you return your subscription to an active status before it's too late. If you're leaving Microsoft 365, we recommend that you [back up your data](move-users-different-subscription.md#back-up-data-before-changing-microsoft-365-for-business-plans) before it gets deleted.

This article applies to all Microsoft 365 for business subscriptions, including Enterprise and Volume Licensing.

> [!IMPORTANT]
> For some subscriptions, you can only cancel during a limited window of time after you buy or renew your subscription. If the cancellation window has passed, [turn off recurring billing](renew-your-subscription.md) to cancel the subscription at the end of its term.
  
## Understand subscription lifecycle statuses

When your subscription ends, it goes through multiple lifecycle statuses before it gets deleted. This gives you, as the admin, time to reactivate the subscription if you want to continue the service, or to back up your customer data if you decide you no longer want the subscription.

A subscription goes through the following statuses over the course of its lifecycle:

Active > Expired > Disabled > Deleted

The **Expired** status starts immediately after the subscription reaches its end date, regardless of whether it expired naturally by reaching the end of the subscription term, you turned off recurring billing, canceled, or upgraded it.

The subscription only enters the **Expired** status after all the licenses are removed. If you order fewer than the original number of licenses, the subscription doesn’t enter the **Expired** status. Instead, admins have 90 days to resolve the conflict for any assigned licenses in excess of the purchased quantity. During this 90 day period there’s no service interruption to subscriptions that are assigned on a per user basis. For nonuser based subscriptions, like Office 365 Extra File Storage for SharePoint, a reduction in the license quantity immediately results in reduced storage. For Enterprise volume licensing customers, we recommend placing an Online Reservation to restore service, and then contact your licensing partner to understand why there was a reduction in licenses.

**For yearly or three-year subscriptions**, if you turn off recurring billing, it goes through all the lifecycle statuses. The **Expired** status starts on the subscription end date, not the date that you turned off recurring billing.

**For monthly subscriptions**, if you cancel a monthly subscription within the cancellation policy window, it skips the **Expired** status and immediately moves to the **Disabled** status on the date you cancel it. This means that your users immediately lose access to the Microsoft 365 assets, and only admins have access to the data during the Disabled state.

> [!IMPORTANT]
> If a subscription is deleted, adding a new subscription of the same type doesn't restore the data that was associated with the deleted subscription.

> [!NOTE]
> **What is "customer data"?** Customer data, as defined in the [Microsoft Online Service Terms](https://www.microsoft.com/en-us/licensing/product-licensing/products), refers to all data, including all text, sound, or image files that are provided to Microsoft by, or on behalf of, the customer through the customer's use of Microsoft 365 services. To learn more about the protection of customer data, see [Get started with the Microsoft Service Trust Portal](../../compliance/get-started-with-service-trust-portal.md).

 The number of days a subscription stays in each lifecycle status is different, depending on whether you bought the subscription directly from Microsoft, or through an Enterprise agreement, a Cloud Solution Provider (CSP), or Volume Licensing (VL). For more information, see [Lengths of time a subscription spends in each lifecycle status](#lengths-of-time-a-subscription-spends-in-each-lifecycle-status), later in this article. The following table explains what you can expect for each lifecycle status when a paid Microsoft 365 for business subscription ends.

|&nbsp;| Active | Expired* | Disabled* | Deleted |
|--|--------|---------|----------|---------|
| Customer data | Data is accessible to all | Data is accessible to all | Data is accessible to admins only | Data is deleted and Microsoft Entra ID is removed, if not in use by other services |
| Users | Users have normal access to Microsoft 365, files, and apps  | Users have normal access to Microsoft 365, files, and apps  | Users can't access apps in Microsoft 365. Apps in Microsoft 365 eventually move into a read-only, reduced functionality mode and display [Unlicensed Product notifications](https://support.microsoft.com/office/0d23d3c0-c19c-4b2f-9845-5344fedc4380) | Users can't access Microsoft 365, files, or apps  |
| Licenses bought via the Volume Licensing program| | Services available for 90 days from subscription end date<br><br>If seat quantity is reduced, no expired status is available|Service is immediately unavailable| N/A |
| Admins | Admins have normal access to Microsoft 365, data, and apps | Admins can access the admin center  | Admins can access the admin center, but can't assign licenses to users  | Admins can access the admin center to manage other subscriptions, or to buy new subscriptions |
| Reactivation | Subscription is already active | Global or billing admins can reactivate the subscription in the admin center | Global or billing admins can reactivate the subscription in the admin center | Subscription can't be reactivated |

*For most offers, in most countries/regions.
  
## Lengths of time a subscription spends in each lifecycle status

For most offers, in most countries and regions, the number of days a subscription stays in each lifecycle status is shown in the following table.

|&nbsp;| Active | Expired | Disabled | Deleted |
|--|--------|---------|----------|---------|
| All subscription terms | Default status | 30 days | 90 days | Terminal state |

### Lifecycle status durations for Enterprise customers

If you’re an Enterprise customer, the lifecycle statuses and time periods for each are different, based on the length of your subscription. The following table lists the statuses and number of days for each status and each subscription length.

|&nbsp;| Active | Grace | Inactive | Deleted |
|--|-------|-------|----------|---------|
| Monthly term | Default status | 30 days | 90 days | Terminal state |
| Annual term | Default status | 30 days | 90 days | Terminal state |
| Multi-year term | Default status | 90 days | 90 days | Terminal state |

### Lifecycle status durations for volume licensing customers

If you bought your subscription through an Enterprise volume licensing agreement or through the Open Value licensing program, the following table lists the statuses and number of days.

|&nbsp;| Active | Grace | Inactive | Deleted |
|--|--------|-------|----------|---------|
| Enterprise | Default status. Subscription end date aligns with the agreement end date | 90 days from subscription end date | 60 days | Terminal State |
| Open / Open Value | Subscription start date based on activation of token (not necessarily purchase date) | 30 days | 90 days | Terminal state |

> [!NOTE]
> Not all VL subscriptions have a 90 day grace period. Some products and services, like some Microsoft 365 Copilot subscriptions, bought through VL only have a 30 day grace period.

### Lifecycle status durations for Cloud Service Provider (CSP) customers

If you bought your subscription through a CSP, see [Subscription lifecycle states - Partner Center](/partner-center/subscription-lifecycle) for descriptions of the lifecycle statuses that apply to those subscriptions.

## Understand your options if your subscription is about to expire

While a subscription is active, you and your users have normal access to your data, services like email, OneDrive, and apps in Microsoft 365. As an admin, you receive a series of notifications via email and in the admin center as your subscription nears its expiration date.

If you’re a Volume Licensing customer, see [Options if your volume licensing subscription is about to expire](#options-if-your-volume-licensing-subscription-is-about-to-expire).

Before the subscription reaches its expiration date, you have two options:

1. **Enable recurring billing for the subscription.**
    - If **Recurring billing** is already turned on, you don't have to take any action. Your subscription is automatically billed, and you're charged for another year or month, depending on your current billing frequency.
    - If you turned off **Recurring billing**, you can [turn it back on](renew-your-subscription.md) to keep your subscription active. 
    - If you bought Microsoft 365 Apps for business with a prepaid card, you can [turn on **Recurring billing**](renew-your-subscription.md) for your subscription and provide a payment method to continue the subscription.
    - If you have Microsoft 365 Apps for business, see [Manage recurring billing for your subscription](renew-your-subscription.md).
2. **Let the subscription expire.**
    - If you don't want to continue your subscription, [turn off recurring billing](renew-your-subscription.md). Your subscription ends on its expiration date, and you can ignore all related email notifications.
    - If you're a Microsoft 365 Business Standard customer, and you prepaid for your subscription and activated it with a product key, you can let your subscription expire by taking no action.

## Lifecycle information for volume licensing customers

This section contains information specifically for customers who bought online services either through the Open Volume Licensing program or through a volume licensing program, like Enterprise, Select Plus, or Microsoft Products & Services Agreement (MPSA).

> [!NOTE]
> The Open Volume Licensing program was retired in December 2021.

For all VL subscriptions, the **Expired** status starts immediately after the subscription reaches its end date, and lasts for 90 days. Services immediately become unavailable when the **Expired** status ends. The exact end date depends on how you bought your subscription.

- For subscriptions bought through the VL program, the end date depends on the date you placed the order.
- For Open Value customers, the end date depends on the date you activated your product keys.

### Options if your volume licensing subscription is about to expire

1. **Enable recurring billing for the subscription.**
    - If your online services were bought through the Open Volume Licensing program, see [Microsoft Open License program changes](https://www.microsoft.com/en-us/licensing/news/microsoft-open-license-program-changes) for your options to renew existing subscriptions or buy new products and services.
    - If you bought your subscription through a Volume Licensing program, contact your Microsoft volume licensing partner about placing a renewal order.
2. **Let the subscription expire.**
    - If you're an Open Volume Licensing customer working with a partner, you can let your subscription expire by taking no action.
    - If you bought your subscription through a volume licensing program, contact your Microsoft volume licensing partner to ensure there's no automatic extension in place for your agreement.

## What happens when you cancel a subscription

If you cancel your subscription within the cancellation policy window, the subscription skips the **Expired** status and moves directly to the **Disabled** status.

We recommend that you [back up your data](move-users-different-subscription.md) before you cancel your subscription. As an admin, you can still access and back up data for your organization while it’s in the Disabled status. Any customer data that you leave behind might be deleted after 90 days and will be deleted no later than 180 days after cancellation.

> [!IMPORTANT]
> If you explicitly delete a subscription, it skips the Expired and Disabled statuses and SharePoint Online data and content, including OneDrive, is immediately deleted. To learn how to cancel, see [Cancel your subscription in the Microsoft 365 admin center](cancel-your-subscription.md). If you want your subscription data to be deleted before the typical **Disabled** status is over, you can [close your account](../close-your-account.md).

## What happens when your trial ends

When your trial ends, we automatically start billing you for your subscription. Before your trial ends, you can take one of the following actions:

- **Extend your trial.** If you need more time to evaluate Microsoft 365, you can [extend your trial](../extend-your-trial.md).
- **Cancel the trial or let it expire.** If you decide not to buy Microsoft 365, you can [turn off recurring billing](renew-your-subscription.md) and let your trial expire or [cancel it](cancel-your-subscription.md). Before your trial ends, back up any data that you want to keep. After the 30-day Expired status ends, your trial account information and data are permanently deleted.

> [!NOTE]
> The information on this page is subject to the [Microsoft Policy Disclaimer and Change Notice](https://go.microsoft.com/fwlink/p/?LinkId=613651). Return to this site periodically to review any changes.

## Related content

[Cancel your subscription](./cancel-your-subscription.md) (article)\
[Renew Microsoft 365 for business](./renew-your-subscription.md) (article)\
[Reactivate your subscription](./reactivate-your-subscription.md) (article)
