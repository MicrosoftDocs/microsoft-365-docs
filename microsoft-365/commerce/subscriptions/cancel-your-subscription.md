---
title: "Cancel your Microsoft business subscription"
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: jkinma, jmueller
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: high
ms.collection:
- highpri 
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_subscriptions
- VSBFY23
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkMAC
search.appverid: MET150
description: "Learn how to cancel your Dynamics 365, Intune, Power Platform, and Microsoft 365 for business trial or paid subscriptions in the Microsoft 365 admin center."
ms.date: 07/07/2022
---

# Cancel your Microsoft business subscription

If you want to cancel your subscription, the easiest way to do that is to [turn off recurring billing](renew-your-subscription.md). When you turn off recurring billing, you can continue to use your subscription until it expires at the end of the subscription term. If you want to cancel immediately, use the information and steps in this article to do that.

You can cancel your free trial at any time to stop future charges. After your 1-month free trial ends, you will be charged the applicable subscription fee.

> [!IMPORTANT]
> - This article only applies to Dynamics 365, Intune, Power Platform, Windows 365, and Microsoft 365 for business subscriptions. If you have Microsoft 365 Family or Personal, see [Cancel a Microsoft 365 subscription](https://support.microsoft.com/office/cancel-a-microsoft-365-subscription-46e2634c-c64b-4c65-94b9-2cc9c960e91b?OCID=M365_DocsCancel_Link).
> - If you bought your subscription through a Microsoft representative or a reseller partner, you have seven days to cancel for a pro-rated refund. Contact your seller or partner to help you cancel your subscription. [Learn more about partners](../manage-partners.md#what-can-a-partner-do-for-my-organization-or-school).
> - If your organization is located in Chile, and you bought your subscription through a partner in Chile, you have 10 days to cancel for a pro-rated refund.

## Before you begin

- You must be a Global or Billing admin to do the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
- Before you cancel a subscription, make sure your users [save their data](#save-your-data).
- If you added your own domain name to use with your subscription, you must [remove the domain](../../admin/get-help-with-domains/remove-a-domain.md) before you cancel your subscription.
- If you have a domain subscription, to prevent any other charges for that subscription, [turn off recurring billing](renew-your-subscription.md).

## Determine your cancellation options

> [!IMPORTANT]
> Before you continue, [determine if you have a billing profile](../billing-and-payments/manage-billing-profiles.md#view-my-billing-profiles).

### If you have a billing profile

You can only cancel and receive a prorated credit or refund if you cancel within seven days after the start or renewal of your subscription. If you cancel during this limited time window, the prorated amount is either credited towards your next invoice or returned to you in the next billing cycle.

If you need to cancel within seven days after the start or renewal of your subscription, go to [Steps to cancel your subscription](#steps-to-cancel-your-subscription) later in this article.

If more than seven days have passed, [turn off recurring billing](renew-your-subscription.md). This prevents your subscription from renewing at the end of its term.  You keep access to your products and services for the remainder of your subscription. If you have an annual subscription and are paying monthly, you are charged each month for the remainder of your subscription term.

### If you don't have a billing profile

If you cancel after you start or renew your subscription, you receive a prorated credit or refund. The amount is either credited towards your next invoice or returned to you in the next billing cycle.

The steps to cancel your trial or paid subscription depend on the number of licenses in your subscription. The following table explains what steps you can take, based on your number of licenses.

|If your subscription has  |You can  |
|--------------|--------------|
|25 or fewer licenses  | [Use the steps below to cancel](#steps-to-cancel-your-subscription) your trial or paid subscription online in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.        |
|More than 25 licenses   | Reduce the number of licenses to 25 or fewer and then [use the steps below to cancel](#steps-to-cancel-your-subscription).      |

If you can't reduce the number of licenses, [turn off recurring billing](renew-your-subscription.md). This prevents you from being charged again for your subscription, and lets you keep your access to your products and services for the remainder of your subscription.

If you're unable to cancel your subscription, [contact support](../../admin/get-help-support.md) for help.

## Steps to cancel your subscription

> [!NOTE]
> If you have multiple subscriptions to the same product, such as Microsoft 365 Business Premium, canceling one subscription won't impact the purchased licenses or services inside the others.

::: moniker range="o365-worldwide"

1. In the Microsoft 365 admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Your products</a> page.

::: moniker-end

2. Find the subscription that you want to cancel. Select the three dots (more actions), then select **Cancel subscription**.

3. In the **Cancel subscription** pane, choose a reason why you're canceling. Optionally, provide any feedback.

4. Select **Save**.

Your subscription now appears in a **Disabled** state, and has reduced functionality until it's deleted. For more information about what you can expect when a paid Microsoft 365 for business subscription is canceled, see [What happens to my data and access when my Microsoft 365 for business subscription ends?](what-if-my-subscription-expires.md)

> [!IMPORTANT]
> If you explicitly delete a subscription, then it skips the **Expired** and **Disabled** states and the SharePoint Online data and content, including OneDrive, is deleted immediately.

## Save your data

When the cancellation becomes effective, your users lose access to their data. Before you cancel the subscription, have them save their OneDrive for Business or SharePoint Online files to another location. Any customer data that you leave behind might be deleted after 30 days, and is deleted no later than 180 days after cancellation.

- To move email, contacts, tasks, and calendar information to another account, see [Export or backup email, contacts, and calendar to an Outlook .pst file](https://support.microsoft.com/office/14252b52-3075-4e9b-be4e-ff9ef1068f91).
- To save a document library or list content (such as contacts) from a SharePoint Online environment (OneDrive for Business or team sites) to file shares or to a local computer, see [Information about manual migration of SharePoint Online content](/sharepoint/troubleshoot/migration-tool/content-manual-migration).

## Next steps

### Uninstall Office (optional)

If you canceled your subscription, and didn't [move users to a different subscription](move-users-different-subscription.md) that includes Microsoft 365, Microsoft 365 runs in reduced functionality mode. When this happens, users can only read and print documents, and Microsoft 365 applications display [Unlicensed Product notifications](https://support.microsoft.com/office/0d23d3c0-c19c-4b2f-9845-5344fedc4380). To avoid any confusion, have your users [uninstall Office](https://support.microsoft.com/office/9dd49b83-264a-477a-8fcc-2fdf5dbf61d8) from their machines.

### Close your account (optional)

If you want to completely close your account with Microsoft, see [Close your account](../close-your-account.md).

## Related content

[Renew your subscription](renew-your-subscription.md) (article)\
[Reactivate your subscription](reactivate-your-subscription.md) (article)\
[Move users to a different subscription](move-users-different-subscription.md) (article)
