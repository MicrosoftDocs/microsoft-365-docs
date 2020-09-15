---
title: "Delete a user from your organization"
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
- M365-subscription-management
- Adm_O365
- Adm_TOC
- SPO_Content
ms.custom:
- AdminSurgePortfolio
search.appverid:
- MET150
ms.assetid: d5155593-3bac-4d8d-9d8b-f4513a81479e
description: "Learn how to delete a user account. Decide what to do with the user's email and OneDrive content. And decide whether to keep the product license or stop paying for it."
---

# Delete a user from your organization
  
**Looking for how to delete your *own* Microsoft 365 user account that you use at work or school? Contact the technical support at your work or university to do these steps for you.**

## What you need to know about deleting users

- Only people who have [Microsoft 365 global admin](about-admin-roles.md) or User management permissions for the business or school can delete user accounts.
- You have 30 days to [restore](restore-user.md) the account before the user's data is permanently deleted.
- If you want to keep the user's OneDrive data, move it to a different location. You can even move the data up to 30 days after deleting the account. See [Get access to and back up a former user's data](get-access-to-and-back-up-a-former-user-s-data.md). You don't need to move their SharePoint files; you'll still have access to them.
- If you want to keep the user's email, **BEFORE** you delete the account, move the email to a different location. If you've already deleted the account: if it's been less than 30 days you can restore it, then move the email data, then delete the account. See [Get access to and back up a former user's data](get-access-to-and-back-up-a-former-user-s-data.md).
- If you have an Enterprise subscription like Office 365 Enterprise E3, you can preserve the mailbox data of a deleted user account by turning it into an *inactive mailbox*. To learn more, see [Manage inactive mailboxes in Exchange Online](https://docs.microsoft.com/microsoft-365/compliance/inactive-mailboxes-in-office-365).

## Global admin: Delete a user, stop paying for their license, and choose what to do with their email and OneDrive content

If you are a global administrator, when you delete a user you can also give another user access to their email, and choose what to do with their OneDrive content.

### Things to consider...

Before you begin, think about what you want to do with the user's email and OneDrive content, and whether you want to keep the license or stop paying for it.
  
|Item | Description |
|:-----|:-----|
|Product licenses  <br/> |You can remove the license from the user and remove it from your subscriptions to stop paying for that license. If you select this option, the license will be removed automatically from your subscriptions.  <br/><br/> **You can't remove the license** if you bought it through a Partner or volume licensing. If you're paying for an annual plan or if you're in the middle of a billing cycle, you won't be able to remove the license from your subscription until your commitment is completed.  <br/> |
|OneDrive content  <br/> |If the user saved their files to OneDrive, you can give another user access to these files.  <br/><br/> You'll need to move the files you want to keep within the retention period that is set for OneDrive files. **By default, the retention period is 30 days.** If you don't move the files within the retention period after deleting the user, the OneDrive content will be permanently deleted. To increase the number of days that you retain OneDrive files for deleted accounts, see [Set the OneDrive retention for deleted users](https://docs.microsoft.com/onedrive/set-retention).  <br/><br/> **Important!** If the deleted user used a personal computer to download files from SharePoint and OneDrive, there's no way for you to wipe those files they stored on their computer. They will continue to have access to any files that were synced from OneDrive.           |
|Email  <br/> | Giving another user access to the deleted user's email will convert the deleted user's mailbox to a shared mailbox. The new mailbox owner can then access the mailbox and monitor for new email. You'll also have the following options:  <br/>  <br/>Change the display name - We recommend changing the display name so that it will be easy to identify the shared mailbox in the **Active users** list.  <br/>  Turn on automatic replies - We've already written a polite automatic reply for you. You can send different automatic replies to people within your organization and people from outside your organization.  <br/> <br/> Clean up aliases - Aliases are additional email addresses for users. Some organizations don't use them, so if you don't have any you don't need to do anything else here. If the user does have aliases, we recommend removing them so that you can reuse those email addresses. Otherwise, you can't reuse those email addresses until the retention period for deleted mailboxes has passed. By default, a deleted mailbox is recoverable for 30 days. For more information, see  [Delete or restore user mailboxes in Exchange Online](https://docs.microsoft.com/exchange/recipients-in-exchange-online/delete-or-restore-mailboxes#delete-a-user-mailbox). <br/> |
|Active Directory  <br/> |If your business uses **Active Directory** that is synchronizing with Azure AD, you need to delete the user account from Active Directory. You can't do it through Office 365. For instructions, see [Delete a User Account](https://go.microsoft.com/fwlink/p/?linkid=841808).  <br/> |

### Get started

Since the guided experience walks through the steps to delete a user, here's how to get started.

::: moniker range="o365-worldwide"
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
::: moniker-end

::: moniker range="o365-germany"
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.
::: moniker-end

::: moniker range="o365-21vianet"
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.
::: moniker-end

2. Select the user that you want to delete, and then select **Delete user**.

## User management admin: Delete one or more users from Office 365

> [!IMPORTANT]
> Don't delete a user's account if you've [converted it to a shared mailbox](../email/convert-user-mailbox-to-shared-mailbox.md) or if you've set up email forwarding on the account. Those functions still need the account. A shared mailbox doesn't require a license. If you've converted the account to a shared mailbox you can [Stop paying for the license](#stop-paying-for-the-license). If you've set up email forwarding on the account, you can't remove the license. Doing so will stop email forwarding and deactivate the mailbox.
  
::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.  

2. Select the names of the users that you want to delete, select **More options** (**...**), and then choose  **Delete user**.

   Although you deleted the user's account, **you're still paying for the license**. See the next procedure to stop paying for the license.  Or, you can assign the license to another user. It won't be assigned to someone automatically.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.

2. Select the names of the users that you want to delete, and in the **Bulk actions** pane, choose **Delete users**.

   Although you deleted the user's account, **you're still paying for the license**. See the next procedure to stop paying for the license.  Or, you can assign the license to another user. It won't be assigned to someone automatically.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

2. Select the names of the users that you want to delete, and in the **Bulk actions** pane, choose **Delete users**.

   Although you deleted the user's account, **you're still paying for the license**. See the next procedure to stop paying for the license.  Or, you can assign the license to another user. It won't be assigned to someone automatically.

::: moniker-end

### Stop paying for the license

Reducing the number of licenses is a separate step that can only be performed by the global admin or billing admin.
  
::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page. If you don't see this option, you aren't a global admin or billing admin, and can't do this step.

2. On the **Products** tab, select the subscription that you want to remove licenses for.

3. On the subscription details page, select **Remove licenses**.

4. In the **Remove licenses** pane, under **New quantity**, in the **Total licenses** box, enter the total number of licenses that you want for this subscription. For example, if you have 100 licenses and you want to remove five of them, enter 95.

5. Select **Save**.

Later when you go through the steps to add another person to your business, you'll be prompted to buy a license at the same time, with just one step!

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847745" target="_blank">Subscriptions</a> page. If you don't see this option, you aren't a global admin or billing admin, and can't do this step.

2. Select the subscription (if you have more than one) and then select **Add/Remove licenses** to delete the license so you don't pay for it until you hire another person.  

   Later when you go through the steps to add another person to your business, you'll be prompted to buy a license at the same time, with just one step!

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Subscriptions</a> page. If you don't see this option, you aren't a global admin or billing admin, and can't do this step.

2. Select the subscription (if you have more than one) and then select **Add/Remove licenses** to delete the license so you don't pay for it until you hire another person.  

   Later when you go through the steps to add another person to your business, you'll be prompted to buy a license at the same time, with just one step!

::: moniker-end

## Delete many users at the same time

See the [Remove-MsolUser](https://go.microsoft.com/fwlink/p/?linkid=842230) PowerShell cmdlet.

## Fix issues with deleting a user

Here are the most common issues people encounter when deleting a user:
  
- **You get an error message along the lines of "User cannot be deleted. Please try again later."** Double-check whether the account has email forwarding set up on it, or it's been converted to a shared mailbox. Both of these will cause that error. Don't delete the account if it has email forwarding or it's been converted to a shared mailbox.

- **You don't have the appropriate permissions to delete a user**. Only people who are [Microsoft 365 global admins or user management admins](about-admin-roles.md) can delete users. Usually this is the technical support in your school or business.

- **You delete the user but their name continues appear in your global address book**. This happens when a business is using Active Directory. You must delete the users account from Active Directory. For instructions, see [Delete a User Account.](https://go.microsoft.com/fwlink/p/?linkid=841808)

**Do you want to delete Microsoft 365 from your computer? Go to [Cancel your subscription](../../commerce/subscriptions/cancel-your-subscription.md).**

## Related articles

[Restore a user](restore-user.md)
  
[Permanently delete a mailbox](https://technet.microsoft.com/library/jj863440%28v=exchg.150%29.aspx)

[Remove a former employee from Office 365](remove-former-employee.md)

[Add a new employee to Office 365](add-new-employee.md)

[Delete a User Account](https://go.microsoft.com/fwlink/p/?linkid=841808): Use these instructions if your business uses **Active Directory** that is synchronizing with Azure AD. You can't do it through Office 365.