---
title: "Delete a user from your organization"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 10/01/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- SPO_Content
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
description: "Learn how to delete a Microsoft 365 user account, what to do with the user's email and OneDrive content, and whether to keep the product license."
---

# Delete a user from your organization
  
**Looking for how to delete your *own* Microsoft 365 user account that you use at work or school? Contact the technical support at your work or university to do these steps for you.**

## Before you begin

- You need to be a [user administrator](/microsoft-365/admin/add-users/about-admin-roles?view=o365-worldwide#commonly-used-microsoft-365-admin-center-roles&preserve-view=true) for the business or school to delete user accounts.
- You have 30 days to [restore](restore-user.md) the account before the user's data is permanently deleted.
- If you want to keep the user's OneDrive data, move it to a different location. You can even move the data up to 30 days after deleting the account. See [Get access to and back up a former user's data](get-access-to-and-back-up-a-former-user-s-data.md). You don't need to move their SharePoint files; you'll still have access to them.
- If you want to keep the user's email, **BEFORE** you delete the account, move the email to a different location. If you've already deleted the account: if it's been less than 30 days you can restore it, then move the email data, then delete the account. See [Get access to and back up a former user's data](remove-former-employee-step-5.md).
- If you have an Enterprise subscription like Office 365 Enterprise E3, you can preserve the mailbox data of a deleted user account by turning it into an *inactive mailbox*. To learn more, see [Manage inactive mailboxes in Exchange Online](../../compliance/inactive-mailboxes-in-office-365.md).

## Stop paying for their license, and choose what to do with their email and OneDrive content

If you are a [user administrator, SharePoint administrator and an Exchange online administrator](about-admin-roles.md), when you delete a user you can give another user access to their email and choose what to do with their OneDrive content.

### Things to consider

Before you begin, think about what you want to do with the user's email and OneDrive content, and whether you want to keep the license or stop paying for it.
  
|Item | Description |
|:-----|:-----|
|Product licenses |You can remove the license from the user and remove it from your subscriptions to stop paying for that license. If you select this option, the license will be removed automatically from your subscriptions.  <br/><br/> **You can't remove the license** if you bought it through a Partner or volume licensing. If you're paying for an annual plan or if you're in the middle of a billing cycle, you won't be able to remove the license from your subscription until your commitment is completed. |
|OneDrive content |If the user saved their files to OneDrive, you can give another user access to these files.  <br/><br/> You'll need to move the files you want to keep within the retention period that is set for OneDrive files. **By default, the retention period is 30 days.** If you don't move the files within the retention period after deleting the user, the OneDrive for the deleted user is moved to the site collection recycle bin, where it is kept for 93 days. During this time, users will no longer be able to access any shared content in the OneDrive. To restore the OneDrive, you need to use PowerShell. For info, see [Restore a deleted OneDrive](/onedrive/restore-deleted-onedrive).<br/><br/> To increase the number of days that you retain OneDrive files for deleted accounts, see [Set the OneDrive retention for deleted users](/onedrive/set-retention).  <br/><br/> **Important!** If the deleted user used a personal computer to download files from SharePoint and OneDrive, there's no way for you to wipe those files they stored on their computer. They will continue to have access to any files that were synced from OneDrive. |
|Email | Giving another user access to the deleted user's email will convert the deleted user's mailbox to a shared mailbox. The new mailbox owner can then access the mailbox and monitor for new email. You'll also have the following options:  <br/>  <br/>Change the display name - We recommend changing the display name so that it will be easy to identify the shared mailbox in the **Active users** list.  <br/>  <br/>  Turn on automatic replies - We've already written a polite automatic reply for you. You can send different automatic replies to people within your organization and people from outside your organization. <br/> <br/> [Remove any existing calendar permissions](/powershell/module/exchange/remove-mailboxfolderpermission) using PowerShell. <br/> <br/> Clean up aliases - Aliases are additional email addresses for users. Some organizations don't use them, so if you don't have any you don't need to do anything else here. If the user does have aliases, we recommend removing them so that you can reuse those email addresses. Otherwise, you can't reuse those email addresses until the retention period for deleted mailboxes has passed. By default, a deleted mailbox is recoverable for 30 days. For more information, see  [Delete or restore user mailboxes in Exchange Online](/exchange/recipients-in-exchange-online/delete-or-restore-mailboxes#delete-a-user-mailbox). |
|Active Directory |If your business uses **Active Directory** that is synchronizing with Microsoft Entra ID, you need to delete the user account from Active Directory. You can't do it through Microsoft 365. For instructions, see [Delete a User Account](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc753730(v=ws.11)). |

### Get started

Since the guided experience walks through the steps to delete a user, here's how to get started.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

 1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

2. Select the user that you want to delete, and then select **Delete user**.

3. On the Delete user page, select what you want to do with the user's license and email and OneDrive accounts.

4. Then select **Delete user**.

## User management admin: Delete one or more users from Microsoft 365

> [!IMPORTANT]
> Don't delete a user's account if you've [converted it to a shared mailbox](../email/convert-user-mailbox-to-shared-mailbox.md) or if you've set up email forwarding on the account. Those functions still need the account. A shared mailbox doesn't require a license. If you've converted the account to a shared mailbox you can [Stop paying for the license](#stop-paying-for-the-license). If you've set up email forwarding on the account, you can't remove the license. Doing so will stop email forwarding and deactivate the mailbox.
  
::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.  

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

2. Select the names of the users that you want to delete, select the three dots (more actions), and then choose  **Delete user**.

   Although you deleted the user's account, **you're still paying for the license**. See the next procedure to stop paying for the license.  Or, you can assign the license to another user. It won't be assigned to someone automatically.

### Stop paying for the license

Reducing the number of licenses is a separate step that can be performed by the billing admin.
  
::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Your products</a> page.
::: moniker-end

2. On the **Products** tab, select the subscription that you want to remove licenses for.

3. On the subscription details page, select **Remove licenses**.

4. In the **Remove licenses** pane, under **New quantity**, in the **Total licenses** box, enter the total number of licenses that you want for this subscription. For example, if you have 100 licenses and you want to remove five of them, enter 95.

5. Select **Save**.

Later when you go through the steps to add another person to your business, you'll be prompted to buy a license at the same time, with just one step!

## Delete many users at the same time

See the [Remove-MgUser](/powershell/module/microsoft.graph.users/remove-mguser) PowerShell cmdlet.

## Fix issues with deleting a user

Here are the most common issues people encounter when deleting a user:
  
- **You get an error message along the lines of "User cannot be deleted. Please try again later."** Double-check whether the account has email forwarding set up on it, or it's been converted to a shared mailbox. Both of these will cause that error. Don't delete the account if it has email forwarding or it's been converted to a shared mailbox.

- **You don't have the appropriate permissions to delete a user**. People who are [user management admins](about-admin-roles.md) can delete users. Usually this is the technical support in your school or business.

- **You delete the user but their name continues appear in your global address book**. This happens when a business is using Active Directory. You must delete the users account from Active Directory. For instructions, see [Delete a User Account.](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc753730(v=ws.11)).

**Do you want to delete Microsoft 365 from your computer? Go to [Cancel your subscription](../../commerce/subscriptions/cancel-your-subscription.md).**

## Related content

[Restore a user](restore-user.md) (article)\
[Permanently delete a mailbox](/exchange/permanently-delete-a-mailbox-exchange-2013-help) (article)\
[Remove a former employee from Microsoft 365](remove-former-employee.md) (article)\
[Add a new employee to Microsoft 365](add-new-employee.md) (article)\
[Delete a User Account](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc753730(v=ws.11)) (article): Use these instructions if your business uses **Active Directory** that is synchronizing with Microsoft Entra ID. You can't do it through Microsoft 365.
