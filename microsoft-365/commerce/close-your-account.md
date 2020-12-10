---
title: Close your account
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- commerce
ms.custom: 
- AdminSurgePortfolio
- fwlink 2133922 to Delete subscription heading
search.appverid:
- MET150
description: "Learn how to close your account with Microsoft."
---

# Close your account

::: moniker range="o365-21vianet"

> [!NOTE]
> The admin center is changing. If your experience doesn't match the details presented here, see 
[About the new Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/admin/microsoft-365-admin-center-preview?view=o365-21vianet&preserve-view=true).

::: moniker-end

When you close your account with Microsoft, all information related to your account is deleted. This information includes subscriptions, licenses, payment methods, users, and user data.

## Before you begin

Before you start this process, make sure to back up any data that you want to preserve.

You must be a Global or Billing admin to do the tasks in this article. For more information, see [About admin roles](../admin/add-users/about-admin-roles.md).

## Step 1: Delete users

Delete all users except for one global administrator. The global administrator completes the steps to close the account. Before you can delete the directory at the end of this process, you must delete all other users.

If users are synchronized from on-premises, first turn off sync, then delete the users in the cloud directory by using the Azure portal or Azure PowerShell cmdlets.

To delete users, see <a href="https://docs.microsoft.com/office365/admin/add-users/delete-a-user?view=o365-worldwide#user-management-admin-delete-one-or-more-users-from-office-365">User management admin: Delete one or more users</a>.

You can also use the <a href="https://go.microsoft.com/fwlink/?linkid=842230">Remove-MsolUser</a> PowerShell cmdlet to delete users in bulk.

If your organization uses Active Directory that synchronizes with Microsoft Azure Active Directory (Azure AD), delete the user account from Active Directory, instead. For instructions, see <a href="https://docs.microsoft.com/azure/active-directory/users-groups-roles/users-bulk-delete">Bulk delete users in Azure Active Directory</a>.

## Step 2: Cancel all active subscriptions

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. On the **Products** tab, find an active subscription. Select **More actions** (three dots), then select **Cancel subscription**.
3. In the **Cancel subscription** pane, choose a reason why you're canceling. Optionally, provide any feedback.
4. Select **Save**.
5. Repeat steps 1 through 4 to cancel all active subscriptions.

## Step 3: Delete all disabled subscriptions

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. On the **Products** tab, select a disabled subscription.
3. On the subscription details page, in the **Subscription and payment settings** section, select **Delete subscription**.
4. In the **Delete subscription** pane, select **Delete subscription**.
5. In the **Delete subscription** dialog box, select **Yes**.
6. For each disabled subscription, repeat steps 3 through 5 until all subscriptions are deleted.

> [!NOTE]
> The Delete subscription option isn't available until three days after you cancel a 'Free Trial' Azure subscription. Otherwise, If you're unable to immediately delete a disabled subscription, <a href="https://go.microsoft.com/fwlink/p/?linkid=518322" target="_blank">contact support</a>

## Step 4: Disable multi-factor authentication

1. Sign in to the admin center with a Global administrator account. To verify what roles you have, see [Check admin roles in your organization](../admin/add-users/assign-admin-roles.md#check-admin-roles-in-your-organization).
2. Go to the **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
3. Choose **Multi-factor authentication**.
4. On the multi-factor authentication page, disable all accounts except for the global admin account that you're currently using.

You can also <a href="https://docs.microsoft.com/azure/active-directory/authentication/howto-mfa-userstates#change-state-using-powershell">use PowerShell to disable multi-factor authentication for multiple users</a>.

## Step 5: Delete the directory in Azure Active Directory

1. Sign in to the <a href="https://aad.portal.azure.com/" target="_blank">Azure AD admin center</a> with a Global administrator account.
2. Select **Azure Active Directory**.
3. Switch to the organization that you want to delete.
4. Select **Delete tenant**.
5. If your organization fails one or more checks, you see a link to more information on how to pass the checks. After you pass all checks, select **Delete** to complete the process.

After you complete this final step, your account with Microsoft is closed and deleted.
