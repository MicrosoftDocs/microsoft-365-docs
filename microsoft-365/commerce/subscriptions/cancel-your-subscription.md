---
title: "Cancel your subscription"
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
description: "If you have fewer than 25 user licenses, you can cancel your Microsoft 365 for business trial or paid subscription in the admin center."
ms.date: 04/08/2021
---

# Cancel your subscription

*Eligibility:* If you have fewer than 25 licenses assigned to users, you can cancel your Microsoft 365 for business trial or paid subscription online in the Microsoft 365 admin center at any time. If you have more than 25 licenses assigned to users, reduce it to less than 25 or [call support to cancel your subscription](../../business-video/get-help-support.md).

*Refund:* Any prorated credit will be returned to you within the next billing cycle.

> [!NOTE]
> If you have multiple subscriptions to the same product, such as Microsoft 365 Business Premium, canceling one of them will not impact the purchased licenses or services inside the other subscriptions.

## Before you begin

You must be a Global or Billing admin to do the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

## Steps to cancel your subscription

If you added your own domain name to use with your subscription, you must remove the domain before you cancel your subscription. For more information, see [Remove a domain](../../admin/get-help-with-domains/remove-a-domain.md).

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Find the subscription that you want to cancel. Select the three dots (more actions), then select **Cancel subscription**.
3. In the **Cancel subscription** pane, choose a reason why you're canceling. Optionally, provide any feedback.
4. Select **Save**.

Your subscription now appears in a **Disabled** state, and has reduced functionality until it's deleted. For more information about what you can expect when a paid Microsoft 365 for business subscription is canceled, see [What happens to my data and access when my Microsoft 365 for business subscription ends?](what-if-my-subscription-expires.md)

> [!NOTE]
> If you explicitly delete a subscription, then it skips the Expired and Disabled stages and the SharePoint Online data and content, including OneDrive, is deleted immediately.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847745" target="_blank">Your products</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Your products</a> page.
::: moniker-end

2. Select the **Products** tab.
3. Find the subscription that you want to cancel. Select the three dots (more actions), then select **Cancel subscription**.
4. In the **Cancel subscription** pane, choose a reason why you're canceling. Optionally, provide any feedback.
5. Select **Save**.

Your subscription now appears in a **Disabled** state, and has reduced functionality until it's deleted. For more information about what you can expect when a paid Microsoft 365 for business subscription is canceled, see [What happens to my data and access when my Microsoft 365 for business subscription ends?](what-if-my-subscription-expires.md).

## What happens when you cancel a subscription

If you cancel a subscription before the end of your term, the subscription status moves directly into a disabled state. For most subscriptions, in most countries and regions, the disabled state lasts 90 days. Admins can still access and back up data for their organization while the subscription is in the disabled state, but we recommend that admins [back up their data](back-up-data-before-switching-plans.md) before they cancel a subscription, especially if it's their only subscription. Admins can also reactivate the subscription while it's in the disabled state.

After 90 says, the subscription moves into the deleted state. Any data that you leave behind may be deleted after those 90 days is deleted no later than 180 days after cancellation. You can't remove a payment method from a canceled subscription until after it reaches the deleted state.

### What to expect for you and your users if you cancel a subscription
  
- **Admin access** Admins can still sign in and access the admin center, and buy other subscriptions as needed. As a global or billing admin, you have 90 days to [reactivate the subscription](reactivate-your-subscription.md) with all data intact.

- **User access** Your users won't be able to use services like OneDrive for Business, or access customer data like email or documents on team sites. Office applications, like Word and Excel, will eventually move into a read-only, reduced functionality mode and display [Unlicensed Product notifications](https://support.microsoft.com/office/0d23d3c0-c19c-4b2f-9845-5344fedc4380.aspx).

To learn more, see [What happens to my data and access when my subscription ends?](what-if-my-subscription-expires.md)

> [!IMPORTANT]
> If you want your subscription data to be deleted before the typical Disabled period is over, you can [close your account](../close-your-account.md).

## Other steps you might have to take

### Change custom domain settings

If you use a custom domain with your subscription, there are a few extra steps that you must do before you can cancel your subscription. If you don't have a custom domain, you can skip ahead to [Save your data](#save-your-data).

#### Change your domain nameserver records (if needed)

If you set up a custom domain, you added DNS records so the domain would work with Microsoft 365 services. Before you remove your domain, be sure to update the DNS records, such as your domain MX record, at your DNS host.

For example, change the MX record at your DNS host. Email sent to your domain stops coming to your Microsoft address and goes to your new email provider instead. (An MX record determines where email for your domain is sent.)

- If your nameserver (NS) records [are pointing to Microsoft 365 nameservers](../../admin/setup/add-domain.md), changes to your MX record don't take effect until you change your NS records to point to your new DNS host (see Step 2).

- Before you update the MX record, let your users know the date you plan to switch their email, and the new email provider you plan to use. Also, if your users want to move their existing Microsoft email to the new provider, they must take extra steps.

- On the day you change the MX record, follow the rest of the steps in this article.

#### Update your domain MX and other DNS records (if you're using a custom domain)

If you switched your nameserver (NS) records to Microsoft 365 when you set up your domain, you must set up or update your MX record and other DNS records at the DNS host you plan to use, and then change your NS record to that DNS host.

If you didn't switch NS records when you set up your domain, when you change the MX record, your mail starts going to the new address right away.

To change your NS records, see [Remove a domain](../../admin/get-help-with-domains/remove-a-domain.md).

### Save your data

When the cancellation becomes effective, your users lose access to their data. Before you cancel the subscription, have them save their OneDrive for Business or SharePoint Online files to another location. Any customer data that you leave behind might be deleted after 30 days, and is deleted no later than 180 days after cancellation.

- To move email, contacts, tasks, and calendar information to another account, see [Export or backup email, contacts, and calendar to an Outlook .pst file](https://support.microsoft.com/office/14252b52-3075-4e9b-be4e-ff9ef1068f91.aspx).

- To save a document library or list content (such as contacts) from a SharePoint Online environment (OneDrive for Business or team sites) to file shares or to a local computer, see [Manual migration of SharePoint Online content](/sharepoint/troubleshoot/migration-tool/content-manual-migration).

### Uninstall Office (optional)

If you canceled your subscription, and didn't [move users to a different subscription](move-users-different-subscription.md) that includes Microsoft 365, Microsoft 365 runs in reduced functionality mode. When this happens, users can only read and print documents, and Microsoft 365 applications display [Unlicensed Product notifications](https://support.microsoft.com/office/0d23d3c0-c19c-4b2f-9845-5344fedc4380.aspx). To avoid any confusion, have your users [uninstall Office](https://support.microsoft.com/office/9dd49b83-264a-477a-8fcc-2fdf5dbf61d8.aspx) from their machines.

## Next steps

If you want to completely close your account with Microsoft, see [Close your account](../close-your-account.md).

## Related content

[Renew your subscription](renew-your-subscription.md) (article)\
[Reactivate your subscription](reactivate-your-subscription.md) (article)\
[Move users to a different subscription](move-users-different-subscription.md) (article)
