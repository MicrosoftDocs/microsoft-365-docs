---
title: "What happens to my data and access when my subscription ends?"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: jkinma, jmueller
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Adm_O365
ms.custom: 
- AdminSurgePortfolio
- commerce_subscriptions
search.appverid: MET150
description: "Learn what happens to your data when your Microsoft 365 for business subscription expires, is disabled, or if you cancel."
ms.date: 04/08/2021
---

# What happens to my data and access when my Microsoft 365 for business subscription ends?

If your subscription ends—either because it expires, or because you decide to cancel—your access to Microsoft 365 services, applications, and customer data go through multiple states before the subscription is fully turned off, or *deleted*. If you are aware of this progression, you'll be better equipped to return your subscription to an active state before it's too late, or—if you're leaving Microsoft 365—back up your data before it is ultimately deleted.

Read through this important information before you contact [Microsoft 365 support](../../business-video/get-help-support.md).
  
## What happens to data when a subscription expires?

- If your subscription expires, it goes through the following stages: Expired / Disabled / Deleted. The Expired stage starts immediately after the subscription has reached its end date.
- If you turn off recurring billing on your annual subscription, it goes through the same stages as an expired subscription. The first stage starts are the anniversary of the annual subscription, not starting on the date that you turned off the subscription's recurring billing setting.
- If you cancel your monthly subscription, it is disabled immediately (at the date of cancellation). This means your users lose access to the Microsoft 365 assets immediately and only admins have access to the data for the next 90 days.

The following table explains what you can expect when a paid Microsoft 365 for business subscription expires.

| Active | Expired <br/>(30 days\*) | Disabled <br/>(90 days\*) | Deleted |
|------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| *Data accessible to all*                                               | *Data accessible to all*                                                     | *Data accessible to admins only*                                             | **Data deleted<br/>Azure Active Directory is removed, if not in use by other services** |
| Users have normal access to Microsoft 365, files, and applications   | Users have normal access to Microsoft 365, files, and applications              | Users can't access Microsoft 365, files, or applications                        | Users can't access Microsoft 365, files, or applications                                     |
| Admins have normal access to Microsoft 365, data, and Office applications | Admins can access the admin center                                           | Admins can access the admin center, but can't assign licenses to users       | Admins can access the admin center to purchase and manage other subscriptions             |
|                                                                        | Global or billing admins can reactivate the subscription in the admin center | Global or billing admins can reactivate the subscription in the admin center |                                                                                           |

*For most offers, in most countries and regions.
  
> [!NOTE]
>
> **What is "customer data"?** Customer data, as defined in the [Microsoft Online Service Terms](https://go.microsoft.com/fwlink/p/?LinkId=613649), refers to all data, including all text, sound, or image files that are provided to Microsoft by, or on behalf of, the customer through the customer's use of Microsoft 365 services. To learn more about the protection of customer data, see the [Get started with the Microsoft Service Trust Portal](../../compliance/get-started-with-service-trust-portal.md).

## What happens if I cancel a subscription?

If you cancel your subscription before its term end date, the subscription skips the Expired stage and moves directly into the Disabled stage, which is 90 days for most subscriptions, in most countries and regions. We recommend that you [back up your data](back-up-data-before-switching-plans.md) before canceling, but as an admin, you can still access and back up data for your organization while it is in the Disabled stage. Any customer data that you leave behind may be deleted after 90 days, and will be deleted no later than 180 days after cancellation.
  
Here's what to expect for you and your users if you cancel a subscription.
  
- **Admin access** Admins can still sign in and access the admin center, and buy other subscriptions as needed. As a global or billing admin, you have 90 days to [reactivate the subscription](reactivate-your-subscription.md) with all data intact.

- **User access** Your users won't be able to use services like OneDrive for Business, or access customer data—for example, email or documents on team sites. Office applications, like Word and Excel, will eventually move into a read-only, reduced functionality mode and display [Unlicensed Product notifications](https://support.microsoft.com/office/0d23d3c0-c19c-4b2f-9845-5344fedc4380.aspx).

To learn how to cancel, see [Cancel your subscription](cancel-your-subscription.md).
  
> [!IMPORTANT]
> If you want your subscription data to be deleted before the typical Disabled stage is over, you can [close your account](../close-your-account.md).
  
> [!NOTE]
>
> If you explicitly delete a subscription, then it skips the Expired and Disabled stages and the SharePoint Online data and content, including OneDrive, is deleted immediately.

## What are my options if my subscription is about to expire?

While a subscription is active, you and your end users have normal access to your data, services like email and OneDrive for Business, and Office applications. As the admin, you'll receive a series of notifications via email and in the admin center as your subscription nears its expiration date.
  
Before the subscription actually reaches its expiration date, you have a few options:
  
- **Enable recurring billing for the subscription.**
  - If **Recurring billing** is already turned on, you don't have to take any action. Your subscription is automatically billed, and you are charged for an additional year or month, depending on your current payment frequency. If for any reason you've turned **Recurring billing** off, you can always [turn Recurring billing back on](renew-your-subscription.md).
  - If you purchased Microsoft 365 Apps for business with a prepaid card, you can [turn on Recurring billing](renew-your-subscription.md) for your subscription.
  - If you're an Open Volume Licensing customer with a prepaid, one-year subscription, contact your partner to purchase a new product key. You'll receive instructions via email to activate your key in the [Volume Licensing Service Center](https://go.microsoft.com/fwlink/p/?LinkID=282016). To learn how to find a new partner, or the partner you've worked with in the past, see [Find your partner or reseller](../../admin/manage/find-your-partner-or-reseller.md).
  - If you have Microsoft 365 Apps for business, see [Manage recurring billing for your subscription](renew-your-subscription.md).
- **Let the subscription expire.**
  - If you're paying by credit card or invoice and you don't want to continue your subscription, [turn Recurring billing off](renew-your-subscription.md). Your subscription ends on its expiration date, and you can ignore all related email notifications.
  - If you're an Open Volume Licensing customer working with a partner, you can let your subscription expire by taking no action.
  - If you're a Microsoft 365 Business Standard customer, and you prepaid for your subscription and activated it with a product key, you can let your subscription expire by taking no action.
- **Cancel before the subscription expires.** For details, see [Cancel your subscription](cancel-your-subscription.md).

## What happens after my subscription expires?

If you let your subscription expire, it goes through multiple states before it is ultimately deleted. This gives you, as the admin, time to reactivate if you want to continue the service, or to back up your data if you decide you no longer want the subscription.
  
Here's what you can expect when your subscription is in each state.
  
### State: Expired

**What to expect:** The Expired stage lasts for 30 days for most subscriptions, including subscriptions purchased through [Microsoft Open](https://go.microsoft.com/fwlink/p/?LinkID=613298), in most countries and regions. For Volume Licensing products, except for Microsoft Open, the Expired stage lasts 90 days.

In this state, users have normal access to the Microsoft 365 portal, Office applications, and services such as email and SharePoint Online.
  
As an admin, you still have access to the admin center. Don't worry—global or billing admins can [reactivate the subscription](reactivate-your-subscription.md) and continue using Microsoft 365. If you don't reactivate, [back up your data](back-up-data-before-switching-plans.md).
  
### State: Disabled

**What to expect:** If you don't reactivate your subscription while it is in the Expired stage, it moves into a Disabled stage, which lasts for 90 days for most subscriptions, in most countries and regions. For Volume Licensing products, the Disabled stage lasts 30 days.

In this state, your access decreases significantly. Your users can't sign in, or access services like email or SharePoint Online. Office applications eventually move into a read-only, reduced functionality mode and display [Unlicensed Product notifications](https://support.microsoft.com/office/0d23d3c0-c19c-4b2f-9845-5344fedc4380.aspx). You can still sign in and get to the admin center, but can't assign licenses to users. Your customer data, including all user data, email, and files on team sites, is available only to you and other admins.

As a global or billing admin, you can [reactivate the subscription](reactivate-your-subscription.md) and continue using Microsoft 365 with all of your customer data intact. If you choose not to reactivate, [back up your data](back-up-data-before-switching-plans.md).

### State: Deleted
  
**What to expect:** If you don't reactivate your subscription while it is expired or disabled, the subscription is deleted.
  
Admins and users no longer have access to the services or Office applications that came with the subscription. All customer data—from user data to documents and email—is permanently deleted and is unrecoverable.
  
At this point, you can't reactivate the subscription. However, as a global or billing admin, you can still access the admin center to manage other subscriptions, or to buy new subscriptions to meet your business needs.
  
> [!NOTE]
>
> - Adding a new subscription of the same type that has been deleted does not restore the data that was associated with the deleted subscription.
> - If a CSP license is suspended, there is no 30 day Expired stage, and services are disabled immediately. Data is deleted after 90 days if the tenant is not reactivated by adding a new license.

### What happens when my trial ends?

When your trial ends, you can't continue using Microsoft 365 for free. You have a few options:

- **Buy Microsoft 365.** When your trial expires, it moves into the Expired stage, giving you another 30 days (for most trials, in most countries and regions) to purchase Microsoft 365. To learn how to convert your trial into a paid subscription, see [Buy a subscription from your free trial](../try-or-buy-microsoft-365.md#buy-a-subscription-from-your-free-trial).
- **Extend your trial.** Need more time to evaluate Microsoft 365? In certain cases, you can [extend your trial](../extend-your-trial.md).
- **Cancel the trial or let it expire.** If you decide not to buy Microsoft 365, you can let your trial expire or [cancel it](cancel-your-subscription.md). Back up any data you want to keep. Soon after the 30 day Expired stage, your trial account information and data is permanently erased.

> [!NOTE]
>
> The information on this page is subject to the [Microsoft Policy Disclaimer and Change Notice](https://go.microsoft.com/fwlink/p/?LinkId=613651). Return to this site periodically to review any changes.

## Related content

[Cancel your subscription](./cancel-your-subscription.md) (article)\
[Renew Microsoft 365 for business](./renew-your-subscription.md) (article)\
[Reactivate your subscription](./reactivate-your-subscription.md) (article)
