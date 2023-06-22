---
title: "Manage license requests"
f1.keywords:
- CSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: sinakassaw, nicholak
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_licensing
- MACBillingLicensesRequests
- AdminSurgePortfolio
search.appverid: MET150
description: "Learn how to review and approve or deny license requests from users for your Microsoft 365 for business subscription."
ms.date: 06/13/2023
---

# Manage self-service license requests

> [!NOTE]
> The information in this article only applies to self-service purchased products. To learn more, see [Self-service purchase FAQ](../subscriptions/self-service-purchase-faq.yml).

If you disable self-service purchases in your organization, you can use licenses requests to manage the license request process for your users. When a user tries to make a self-service purchase for a product that you've blocked, they can submit a request for a license to you, the admin. When they make a request, they can add the names of other users who also need licenses for the product.

> [!NOTE]
> If you block users from making self-service purchases, Microsoft doesn't send them marketing emails. Also, if they're using a trial version of a product, they don't see prompts to buy it. To learn more, see [Manage self-service purchases (Admin)](../subscriptions/manage-self-service-purchases-admins.md).

To see and manage license requests, admin uses the **Requests** tab on the **Licensing** page. The list shows the name of the product that is requested, name of the person requesting a license, date requested, and status of the request. Admins can filter the list to show requests that are pending or completed. Requests are held for 30 days.

## Before you begin

You must be a Global admin to perform the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

## Use your own request process

If your organization has its own request process, you can use it instead. You create a message that is displayed to users when they request a license.

> [!IMPORTANT]
> If you use your own request process, no requests are displayed on the **Requests** tab. Existing requests from before you added your message continue to appear until you approve or decline them.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page, then select the **Requests** tab.
2. Select **Use your existing request process instead**.
3. In the right pane, in the **Message** box, type the message you want users to see when they request a license. If you want to also include a link to your organizations policy or other documentation, enter the URL in the **Link to documentation (optional)** text box.
4. Select **Save**.

When you return to the **Requests** list, you see the message **You're using your own license request process**. To make changes to the message that is sent to users, select **Use your existing request process instead**.

## Stop using your own request process

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page, then select the **Requests** tab.
2. Select **Use your existing request process instead**.
3. In the right pane, clear the **Use my organization's request process** check box.
4. Select **Save**.

## Approve or deny a license request

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page, then select the **Requests** tab.
2. Select the row that contains the request you want to review. The right pane shows details about which users want licenses to the product.
3. To deny the entire request, select **Don't approve**, and in the dialog box, select **Don't approve**.
4. To deny some users for the request, but approve others, select the X by the name of the users that you want to remove. Their names are moved under **Do not assign to these users**.
5. If you have more than one product, under **Select a product**, select the one that you want to use to assign licenses for.
6. To deny users access to certain app and services, expand **Turn apps and services on or off**, then clear the check boxes for the ones you want to exclude.
7. At the bottom of the pane, type an optional message in the text box.
8. When you're finished, select **Approve**. The right pane shows the details of the request.
9. Close the right pane.
    Users receive an email that says their request was approved or denied.

## Related content

[Assign licenses to users](../../admin/manage/assign-licenses-to-users.md) (article)\
[Move users to a different subscription](../subscriptions/move-users-different-subscription.md) (article)\
[Buy or remove subscription licenses](buy-licenses.md) (article)\
[Self-service purchase FAQ](../subscriptions/self-service-purchase-faq.yml)
