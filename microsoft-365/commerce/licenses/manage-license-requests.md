---
title: "Manage self-service license requests in the Microsoft 365 admin center"
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
description: "Learn how to review and approve or deny license requests for products and services from users in the Microsoft 365 admin center."
ms.date: 09/07/2023
---

# Manage self-service license requests in the Microsoft 365 admin center

> [!NOTE]
> The information in this article only applies to self-service purchased products and services. To learn more, see [Self-service purchase FAQ](../subscriptions/self-service-purchase-faq.yml).

If you turn-off self-service purchases in your organization, you can set up license requests in the Microsoft 365 admin center to manage the license request process for your users. When a user tries to make a self-service purchase for a product that you've blocked, they can submit a request for a license to you, the admin. When they make a request, they can add the names of other users who also need licenses for the product.

> [!NOTE]
> If you block users from making self-service purchases, Microsoft doesn't send them marketing emails. Also, if they're using a trial version of a product, they don't see prompts to buy it. To learn more, see [Manage self-service purchases (Admin)](../subscriptions/manage-self-service-purchases-admins.md).

To see and manage license requests, use the **Requests** tab on the **Licensing** page in the admin center. The list shows the name of the product requested, name of the person requesting a license, date requested, and status of the request. You can filter the list to show requests that are pending or completed. Requests are held for 30 days.

## Before you begin

You must be a global, billing, or license admin to perform the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

> [!NOTE]
> If you're the person who signed up for the subscription, you're automatically a global admin.

## Use your own request process

If your organization has its own request process, you can use it instead. You create a message to display to users when they request a license.

> [!IMPORTANT]
> If you use your own request process, no requests are displayed on the **Requests** tab. Existing requests from before you added your message continue to appear until you approve or decline them.

1. In the Microsoft 365 admin center, select the **Navigation menu**, then select **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a>.
2. On the **Licenses** page, select the **Requests** tab, then select **Use your existing request process instead**.
3. In the **Use your request process** pane, select the **Use my organization's request process** check box.
4. In the **Message** box, type the message you want users to see when they request a license. If you want to also include a link to your organizations policy or other documentation, enter the URL in the **Link to documentation (optional)** text box.
5. Select **Save**.

When you return to the **Requests** list, you see the message **You're using your own license request process**. To make changes to the message that is sent to users, select **Use your existing request process instead**.

## Stop using your own request process

1. In the admin center, select the **Navigation menu**, then select **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a>.
2. On the **Licenses** page, select the **Requests** tab, then select **Use your existing request process instead**.
3. In the **Use your request process** pane, clear **Use my organization's request process** check box.
4. Select **Save**.

## Approve or deny a license request

1. In the admin center, select the **Navigation menu**, then select **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a>.
2. On the **Licenses** page, select the **Requests** tab.
3. Select the row that contains the request you want to review. The side pane shows details about which users want licenses to the product.
    - To deny the entire request, select **Don't approve**, and in the dialog box, select **Don't approve**.
    - To deny some users but approve others, select the X by the name of the users that you want to remove. Their names are moved under **Do not assign to these users**.
4. If you have more than one product, under **Select a product**, select the one that you want to use to assign licenses for.
5. To deny users access to certain app and services, expand **Turn apps and services on or off**, then clear the check boxes for the ones that you want to exclude.
6. At the bottom of the pane, type an optional message in the text box.
7. When you're finished, select **Approve**. The pane shows the details of the request.
8. Close the pane. Users receive an email that says their request was approved or denied.

## Share a license request by email

If you don’t have the authority within your organization to make decisions about who can receive a license for a particular product or service, you can share a license request via email with someone in your organization who does. You can only share one request at a time. The person who receives the license request email doesn’t need access to the Microsoft 365 admin center to review the request. They simply respond to the email and indicate whether the person should be given the license they requested, and then you [approve or deny the request](#approve-or-deny-a-license-request).

1. In the admin center, select the **Navigation menu**, then select **Billing** > **Licenses**.
2. On the **Licenses** page, select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2245727" target="_blank">Auto-claim policy</a> tab.
3. Select the **Share request** tab, then select a request to share.
4. In the request pane, select **Share request**.
5. In the **Share license request details** pane, type an email address, then select the recipient name.
    > [!NOTE]
    > You can select more than one recipient, but if the email that you entered doesn’t resolve into a user name, you can’t share the request.
6. To personalize the email, select the **Include a personalized message** check box. Type a **Subject** and **Message** in the corresponding fields.
7. When you’re finished, select **Share request**.

## Related content

[Assign licenses to users](../../admin/manage/assign-licenses-to-users.md) (article)\
[Move users to a different subscription](../subscriptions/move-users-different-subscription.md) (article)\
[Buy or remove subscription licenses](buy-licenses.md) (article)\
[Self-service purchase FAQ](../subscriptions/self-service-purchase-faq.yml)
