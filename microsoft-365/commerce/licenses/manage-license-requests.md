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
ms.subservice: m365-commerce-acquisition
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
- admindeeplinkMAC
- GAUpdates
search.appverid: MET150
description: "Learn how to review and approve or deny license requests for products and services from users in the Microsoft 365 admin center."
ms.date: 05/13/2024
---

# Manage self-service license requests in the Microsoft 365 admin center

> [!NOTE]
> The information in this article only applies to self-service purchased products and services. To learn more, see [Self-service purchase FAQ](../subscriptions/self-service-purchase-faq.yml).

If you turn-off self-service purchases in your organization, you can set up license requests in the Microsoft 365 admin center to manage the license request process for your users. When a user tries to make a self-service purchase for a product that you've blocked, they can submit a request for a license to you, the admin. When they make a request, they can add the names of other users who also need licenses for the product.

> [!NOTE]
> If you block users from making self-service purchases, Microsoft doesn't send them marketing emails. Also, if they're using a trial version of a product, they don't see prompts to buy it. To learn more, see [Manage self-service purchases (Admin)](../subscriptions/manage-self-service-purchases-admins.md).

To see and manage license requests, use the **Requests** tab on the **Licensing** page in the admin center. The list shows the name of the product requested, name of the person requesting a license, date requested, and status of the request. You can filter the list to show requests that are pending or completed. Requests are held for 12 months.

## Before you begin

- You must be at least a User Administrator or a License Administrator to do the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
- If you're a partner who's an Admin On Behalf Of (AOBO) a customer, you must have a role that's set to Global Administrator in order to do the tasks in this article.

[!INCLUDE [ga-roles-limitation](../../includes/ga-roles-limitation.md)]

## Use your own request process

If your organization has its own request process, you can use it instead. You create a message to display to users when they request a license.

> [!IMPORTANT]
> If you use your own request process, no requests are displayed on the **Requests** tab. Existing requests from before you added your message continue to appear until you approve or decline them.

1. In the Microsoft 365 admin center, select the **Navigation menu**, then select **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a>.
2. On the **Licenses** page, select the **Requests** tab.
3. Select **Connect your request process**.
4. In the **Use your request process** pane, select the **Use my organization's request process** check box.
5. In the **Message** box, type the message you want users to see when they request a license. If you want to also include a link to your organizations policy or other documentation, enter the URL in the **Link to documentation (optional)** text box.
6. Select **Save**.

When you return to the **Requests** list, you see the message **You're using your own license request process**. To make changes to the message that is displayed to users, select **Use your existing request process instead**.

## Stop using your own request process

1. In the admin center, select the **Navigation menu**, then select **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a>.
2. On the **Licenses** page, select the **Requests** tab.
3. Select **Connect your request process**.
4. In the **Use your request process** pane, clear the **Use my organization's request process** check box.
5. Select **Save**.

## Approve or deny a license request

1. In the admin center, select the **Navigation menu**, then select **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a>.
2. On the **Licenses** page, select the **Requests** tab.
3. Select the row that contains the request you want to review. The details pane shows details about which users want licenses to the product.
4. You can assign licenses to each user through the default **Assign license to each of the approved people** option.
   - To approve the entire request, select **Submit**.
   - To approve some users and reject others, select the **X** next to the names of the users you want to remove. The names of the rejected users are moved to the **Reject for the following people** section.
   - To deny the entire request, select the **X** next to the name under the **Approve for the following people** section. Users whose requests were denied appear under the **Reject for the following people** section.
5. If you have more than one product, under **Select a product**, select the one that you want to use to assign licenses for.
   - To deny users access to certain apps and services, expand **Turn apps and services on or off**, then clear the check boxes for the ones that you want to exclude.
6. To assign licenses based on group membership, select **Assign license by adding the approved individuals to the following security group**.
   - A grayed-out option typically signifies that the security groups are either unlicensed or not yet configured.
   - For more information about how to assign licenses to a security group, see [Assign licenses to users by group membership using the Microsoft 365 admin center](/entra/identity/users/licensing-admin-center)
   - When multiple security groups are available, select the one to which you want to assign licenses.
7. In the text box at the bottom of the pane, type a message (optional). The user receives an email containing either the default message or your customized message.
8. When you're finished, select **Submit**. The details pane shows the details of the request.
9. Close the details pane. Users receive an email that says their request was approved or denied.

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
[Self-service purchase FAQ](../subscriptions/self-service-purchase-faq.yml) (article)
