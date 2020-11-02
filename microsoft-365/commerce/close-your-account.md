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
[About the new Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/admin/microsoft-365-admin-center-preview?view=o365-21vianet).

::: moniker-end

When you close your account with Microsoft, all information related to your account is deleted. This information includes subscriptions, licenses, payment methods, users, and user data. Before you start this process, make sure to backup any data that you want to preserve.

## Step 1: Delete users

Delete all users except for one global administrator who completes the steps to close the account. Before you can delete the directory at the end of this process, you must delete all other users.

If users are synchronized from on-premises, first turn off sync, then delete the users in the cloud directory by using the Azure portal or Azure PowerShell cmdlets.

To delete users, see <a href="https://docs.microsoft.com/office365/admin/add-users/delete-a-user?view=o365-worldwide#user-management-admin-delete-one-or-more-users-from-office-365">User management admin: Delete one or more users</a>.

You can also use the <a href="https://go.microsoft.com/fwlink/?linkid=842230">Remove-MsolUser</a> PowerShell cmdlet to delete users in bulk.

If your organization uses Active Directory that synchronizes with Azure AD, delete the user account from Active Directory, instead. For instructions, see <a href="https://docs.microsoft.com/azure/active-directory/users-groups-roles/users-bulk-delete">Bulk delete users in Azure Active Directory</a>.

## Step 2: Cancel all active subscriptions

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

2. If the subscriptions list is in **Table** view, on the right, select **Cards**.

3. Find an active subscription, and in the **Settings & Actions** section, select **Cancel subscription**.

4. Follow the prompts to finish the process.

5. Repeat steps 1 through 4 to cancel all active subscriptions.

## Step 3: Delete all disabled subscriptions

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

2. If the subscriptions list is in **Table** view, on the right, select **Cards**.

3. Next to **Subscription status**, select **Disabled**.

4. Find a disabled subscription, and in the **Settings & Actions** section, select **Delete**.

5. In the **Delete subscription** dialog box, select the **I understand the impact** check box, then select **Delete subscription**.

6. For each disabled subscription, repeat steps 4 and 5 until all subscriptions have been deleted.

## Step 4: Disable multi-factor authentication

1. In the admin center, go to the **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. Choose **Multi-factor authentication**.

3. On the multi-factor authentication page, disable all accounts except for the global admin account that you're currently using.

You can also <a href="https://docs.microsoft.com/azure/active-directory/authentication/howto-mfa-userstates#change-state-using-powershell">use PowerShell to disable multi-factor authentication for multiple users</a>.

## Step 5: Delete the directory in Azure Active Directory

1. Sign in to the <a href="https://aad.portal.azure.com/" target="_blank">Azure AD admin center</a> with a Global Administrator account.

2. Select **Azure Active Directory**.

3. Switch to the organization you want to delete.

4. Select **Delete tenant**.

5. If your organization fails one or more checks, you see a link to more information on how to pass the checks. After you pass all checks, select **Delete** to complete the process.

After you complete this final step, your account with Microsoft is closed and deleted.
