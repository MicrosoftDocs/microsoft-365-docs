---
title: "Cancel your subscription"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: mnirkhe
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
- Adm_TOC
- commerce
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
ms.assetid: b1bc0bef-4608-4601-813a-cdd9f746709a
description: "Learn how to cancel your Office 365 for business or Microsoft 365 trial or paid subscription."
---

# Cancel your subscription

*Eligibility:* If you have fewer than 25 licenses assigned to users, you can cancel your Office 365 for business trial or paid subscription online in the admin center at any time. If you have more than 25 licenses assigned to users, [call support to cancel your subscription](../contact-support-for-business-products.md).

*Refund:* Any prorated credit will be returned to you within the next billing cycle.

> [!NOTE]
> If you have multiple subscriptions to the same product, such as Office 365 Enterprise E3, cancelling one of them will not impact the purchased licenses or services inside the other subscriptions.

## Steps to cancel your subscription

If you added your own domain name to use with your subscription, you must remove the domain before you cancel your subscription. For more information, see [Remove a domain from Office 365](../get-help-with-domains/remove-a-domain.md).

::: moniker range="o365-worldwide"

> [!NOTE]
> If you're not using the new Microsoft 365 admin center, you can turn it on by selecting the **Try the new admin center** toggle located at the top of the Home page.

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Products & services</a> page.

2. Find the subscription that you want to cancel, and under **Settings & Actions**, select **Cancel subscription**.

3. Review the important dates, provide feedback about why you are cancelling, then select **Cancel subscription**.

    Your subscription now appears in a **Disabled** state, and has reduced functionality until it's deleted. For more information about what you can expect when a paid Office 365 for business subscription is canceled, see [What happens to my data and access when my Office 365 for business subscription ends?](what-if-my-subscription-expires.md)

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847745" target="_blank">Subscriptions</a> page.

2. On the **Subscriptions** page, select a subscription.

3. From the **More actions** menu, select **Cancel subscription**.

    ![Close up of the More Actions menu.](../media/befa74b7-62c1-42a3-a38e-db76a1c97dba.png)

4. Review the important dates, provide feedback about why you are cancelling, then select **Cancel subscription**.

    Your subscription now appears in a **Disabled** state, and has reduced functionality until it's deleted. For more information about what you can expect when a paid Office 365 for business subscription is canceled, see [What happens to my data and access when my Office 365 for business subscription ends?](what-if-my-subscription-expires.md)

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Subscriptions</a> page.

2. On the **Subscriptions** page, select a subscription.

3. From the **More actions** menu, select **Cancel subscription**.

    ![Close up of the More Actions menu.](../media/befa74b7-62c1-42a3-a38e-db76a1c97dba.png)

4. Review the important dates, provide feedback about why you are cancelling, then select **Cancel subscription**.

    Your subscription now appears in a **Disabled** state, and has reduced functionality until it's deleted. For more information about what you can expect when a paid Office 365 for business subscription is canceled, see [What happens to my data and access when my Office 365 for business subscription ends?](what-if-my-subscription-expires.md)

::: moniker-end


## Other steps you might have to take

### Change custom domain settings

If you use a custom domain with your subscription, there are a few extra steps that you must do before you can cancel your subscription. If you don't have a custom domain, you can skip ahead to [Save your data](#save-your-data).

#### Change your domain nameserver records (if needed)

If you set up a custom domain, you added DNS records so the domain would work with Office 365 services. Before you remove your domain, be sure to update the DNS records, such as your domain MX record, at your DNS host.

For example, change the MX record at your DNS host. Email sent to your domain stops coming to your Office 365 address and goes to your new email provider instead. (An MX record determines where email for your domain is sent.)

- If your nameserver (NS) records [are pointing to Office 365 nameservers](../setup/add-domain.md), changes to your MX record don't take effect until you change your NS records to point to your new DNS host (see Step 2).

- Before you update the MX record, let your users know the date you plan to switch their email, and the new email provider you plan to use. Also, if your users want to move their existing Office 365 email to the new provider, they must take extra steps.

- On the day you change the MX record, follow the rest of the steps in this article.

#### Update your domain MX and other DNS records (if you're using a custom domain)

If you switched your nameserver (NS) records to Office 365 when you set up your domain, you must set up or update your MX record and other DNS records at the DNS host you plan to use, and then change your NS record to that DNS host.

If you didn't switch NS records when you set up your domain, when you change the MX record, your mail starts going to the new address right away.

For more information, see [How does Office 365 manage my DNS records?](../setup/domains-faq.md#how-does-office-365-manage-my-dns-records). To change your NS records, see [Remove a domain from Office 365](../get-help-with-domains/remove-a-domain.md).

### Save your data

When the cancellation becomes effective, your users lose access to their data. Before you cancel the subscription, have them save their OneDrive for Business or SharePoint Online files to another location. Any customer data that you leave behind might be deleted after 30 days, and is deleted no later than 180 days after cancellation.

- To move email, contacts, tasks, and calendar information to another account, see [Export or backup email, contacts, and calendar to an Outlook .pst file](https://support.office.com/article/14252b52-3075-4e9b-be4e-ff9ef1068f91.aspx).

- To save a document library or list content (such as contacts) from a SharePoint Online environment (OneDrive for Business or team sites) to file shares or to a local computer, see [Manual migration of SharePoint Online content](https://support.microsoft.com/kb/2783484).

### Uninstall Office (optional)

If you canceled your subscription, and didn't move users to a different subscription that includes Office, Office 365 runs in reduced functionality mode. When this happens, users can only read and print documents, and Office 365 applications display [Unlicensed Product notifications](https://support.office.com/article/0d23d3c0-c19c-4b2f-9845-5344fedc4380.aspx). To avoid any confusion, have your users [uninstall Office](https://support.office.com/article/9dd49b83-264a-477a-8fcc-2fdf5dbf61d8.aspx) from their machines.

## Related articles

[Renew your subscription](renew-your-subscription.md)

[Reactivate your subscription](reactivate-your-subscription.md)

[Switch to a different plan or subscription](switch-to-a-different-plan.md)
