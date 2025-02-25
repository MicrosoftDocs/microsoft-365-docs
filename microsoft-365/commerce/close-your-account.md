---
title: Close your Microsoft business account
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: emmasheridan, nicholak
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
- commerce_subscriptions
- AdminSurgePortfolio
- fwlink 2133922 to Delete subscription heading
- AdminTemplateSet
- admindeeplinkMAC
- has-azure-ad-ps-ref
- GAUpdates
- campaignIDs-batch1
search.appverid: MET150
description: "Learn how to close your business account with Microsoft. All information related to your account is deleted including licenses, users, and user data."
ms.date: 07/22/2024
---

# Close your Microsoft business account

When you close your business account with Microsoft, we delete all information related to your account. This information includes subscriptions, licenses, payment methods, users, and user data. Follow the steps in this article to learn how to close your account with us.

If you want to close a personal Microsoft account, see [How to close your Microsoft account - Microsoft Support](https://support.microsoft.com/account-billing/c1b2d13f-4de6-6e1b-4a31-d9d668849979).

## Before you begin

> [!IMPORTANT]
> Before you start this process, make sure to back up any data that you want to preserve.

- You must be a Global Administrator to do the tasks in this article. For more information, see [About admin roles](../admin/add-users/about-admin-roles.md).
    [!INCLUDE [ga-roles-limitation](../includes/ga-roles-limitation.md)]
- [Find out what type of billing account you have](manage-billing-accounts.md#view-my-billing-accounts).
- If you have a Microsoft Customer Agreement (MCA) billing account type, you must be a billing account owner or contributor to do some of the tasks in this article. For information about billing account roles, see [Understand your Microsoft business billing account](manage-billing-accounts.md).

> [!NOTE]
> If you're the person who signed up for the subscription, you're automatically a Global Administrator.

## Step 1: Delete users

Delete all users except for your Global Administrator account. The Global Administrator must complete the steps to close the account. Before you can delete the directory at the end of this process, you must delete all other users.

If users are synchronized from on-premises, first turn off sync, then delete the users in the cloud directory by using the Azure portal or Azure PowerShell cmdlets. For more information, see [Delete Microsoft 365 user accounts with PowerShell](../enterprise/delete-and-restore-user-accounts-with-microsoft-365-powershell.md).

- To delete users, see [User management admin: Delete one or more users](../admin/add-users/delete-a-user.md#user-management-admin-delete-one-or-more-users-from-microsoft-365).
- To delete users in bulk, use the [Remove-MgUser](/powershell/module/microsoft.graph.users/remove-mguser) Microsoft Graph PowerShell cmdlet.

If your organization uses Active Directory that synchronizes with Microsoft Entra ID, delete the user account from Active Directory, instead. For instructions, see [Bulk delete users in Microsoft Entra ID](/azure/active-directory/users-groups-roles/users-bulk-delete).

## Step 2: Cancel all active subscriptions

You can cancel your subscriptions in the Microsoft 365 admin center. [Learn how to cancel your subscription](subscriptions/cancel-your-subscription.md#steps-to-cancel-your-subscription).

If you have an MCA billing account type, unless your subscription is still within the cancellation window, you can’t cancel your subscription immediately. Instead, you must [turn off recurring billing](subscriptions/renew-your-subscription.md), and then wait for the subscription to expire at the end of its term. You must be a billing account owner or contributor to turn off recurring billing.

## Step 3: Delete all disabled subscriptions

You can delete a subscription in the Microsoft 365 admin center. However, the steps to delete the subscription depend on the type of billing account that you have. [Find out what type of billing account you have](manage-billing-accounts.md#view-my-billing-accounts).

If you have an MCA billing account, you can’t delete a disabled subscription. The subscription is deleted at the end of the subscription term that you agreed to when you bought the subscription.

If you have an MOSA billing account type, use the following steps to delete your disabled subscriptions.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
    - If you’re using the **Simplified view**, select **Billing**.
    - If you’re using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select the disabled subscription that you want to delete.
3. On the subscription details page, in the **Subscription and payment settings** section, select **Delete subscription**.
4. In the **Delete subscription** pane, select **Delete subscription**.
5. In the **Delete subscription** dialog box, select **Yes**.
6. For each disabled subscription, repeat steps 1 through 5 until all subscriptions are deleted.

> [!NOTE]
> If you're unable to immediately delete a disabled subscription, [contact support](../admin/get-help-support.md).

## Step 4: Disable multi-factor authentication

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
2. In the **Navigation menu**, go to the **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
3. Select **Multi-factor authentication**.
4. On the multi-factor authentication page, disable all accounts except for the Global Administrator account that you're currently using.

You can also [use PowerShell to disable multi-factor authentication for multiple users](/azure/active-directory/authentication/howto-mfa-userstates#change-state-using-powershell).

<a name='step-5-delete-the-tenant-in-azure-active-directory'></a>

## Step 5: Delete the tenant in Microsoft Entra ID

To delete your tenant, follow the steps in [Delete a Microsoft Entra tenant - Microsoft Entra](/azure/active-directory/enterprise-users/directory-delete-howto#delete-the-organization).

After you complete this final step, your account with Microsoft is closed and deleted.

## Related content

[Understand your invoice for your Microsoft MCA billing account](billing-and-payments/understand-your-invoice.md) (article)\
[Understand your invoice for your Microsoft MOSA billing account](billing-and-payments/understand-your-invoice2.md) (article)\
[Cancel your Microsoft business subscription](subscriptions/cancel-your-subscription.md) (article)
