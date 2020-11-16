---
title: "Remove a former employee"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
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
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 44d96212-4d90-4027-9aa9-a95eddb367d1
description: "Follow this checklist to remove an employee from Microsoft 365 and secure data. "
---

# Remove or Delete a former employee

::: moniker range="o365-21vianet"

> [!NOTE]
> The admin center is changing. If your experience doesn't match the details presented here, see 
[About the new Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/admin/microsoft-365-admin-center-preview?view=o365-21vianet).

::: moniker-end
  
## Sign out now!

::: moniker range="o365-worldwide"

Watch a short video about removing an employee. <br><br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1FOfR] 

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](https://support.microsoft.com/office/6ab4bbcd-79cf-4000-a0bd-d42ce4d12816).

To prevent an employee from logging in:

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the box next to the user's name, and then select **Reset password**.
3. Enter a new password, and then select **Reset**. (Don't send it to them.)
4. Select the user's name to go to their properties pane, and on the **Account** tab, select **Initiate sign-out**.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.

2. Select the user, and then select **Reset password**.

3. Enter a new password, and then select **Reset**. (Don't send it to them.)

4. Select the user's name to go to their properties pane, and on the **Account** tab, select **Initiate sign-out**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

2. Select the user, and then select **Reset password**.

3. Enter a new password, and then select **Reset**. (Don't send it to them.)

4. Select the user's name to go to their properties pane, and on the **Account** tab, select **Initiate sign-out**.

::: moniker-end

> [!NOTE]
> You need to be a global administrator to initiate sign-out.

Within an hour - or after they leave the current Microsoft 365 page they are on - they're prompted to sign in again. An access token is good for an hour, so the timeline depends on how much time is left on that token, and whether they navigate out of their current webpage.
  
> [!IMPORTANT]
> If the user is in Outlook on the web, just clicking around in their mailbox, they may not be kicked out immediately. As soon as they select a different tile, such as OneDrive, or refresh their browser, the sign-out is initiated.
  
To use PowerShell to sign out a user immediately, see [Revoke-AzureADUserAllRefreshToken](https://docs.microsoft.com/powershell/module/azuread/revoke-azureaduserallrefreshtoken?view=azureadps-2.0) cmdlet.
  
For more information about how long it takes to get someone out of email, see [What you need to know about terminating an employee's email session](#what-you-need-to-know-about-terminating-an-employees-email-session).
  
## Overview of all the steps to remove an employee and secure data

A question we often get is, "What should I do to protect data when an employee leaves the organization?" This article explains how to block access to Microsoft 365 and the steps you should take to secure your data.
  
> [!NOTE]
> If you are a global administrator you can delete the employee, forward their email, choose what to do with their OneDrive content using the new guided experience. For more information, see [Global admin: Delete a user](remove-former-employee.md). However, we recommend completing all of the additional steps listed here to ensure the employee doesn't have access to your company's data. 
  
Here's a quick overview. Each step is explained in detail in this article.
  
|||
|:-----|:-----|
|**Step** <br/> |**Why do this** <br/> |
|1. [Save the contents of a former employee's mailbox](#save-the-contents-of-a-former-employees-mailbox) <br/> |This is useful for the person who is going to take over the employee's work, or if there is litigation.  <br/> |
|2. [Forward a former employee's email to another employee or convert to a shared mailbox](#forward-a-former-employees-email-to-another-employee-or-convert-to-a-shared-mailbox) <br/> |This lets you keep the former employee's email address active. If you have customers or partners still sending email to the former employee's address, this gets them to the person taking over the work.  <br/> |
|3. [Wipe and block a former employee's mobile device](#wipe-and-block-a-former-employees-mobile-device) <br/> |Removes your business data from the phone or tablet.  <br/> |
|4. [Block a former employee's access to Microsoft 365 data](#block-a-former-employees-access-to-microsoft-365-data)<br/> |It prevents the person from accessing their old Microsoft 365 mailbox and data.  <br/><br/> **Tip**: When you block a user's access, you're still paying for their license. To stop paying for it, delete the license from your subscription (step 5).  |
|5. [Move the employee's OneDrive content](get-access-to-and-back-up-a-former-user-s-data.md) <br/> |If you only remove a user's license but don't delete the account, the content in the user's OneDrive will remain accessible to you even after 30 days.  <br/><br/> Before you delete the account, you should move the content of their OneDrive to another location that's easy for you to access. After you delete an employee's account, the content in their OneDrive is retained for **30** days. During that 30 days, however, you can restore the user's account, and gain access to their OneDrive content. If you restore the user's account, the OneDrive content will remain accessible to you even after 30 days.  <br/> |
|5a. What if the person used their personal computer to access OneDrive and SharePoint?  <br/> |If they used a personal computer instead of a company-issued computer to download files from OneDrive and SharePoint, there's no way for you to wipe those files they stored.  <br/><br/> They continue to have access to any files that were synced to their computer.  <br/> |
|6. [Remove and delete the Microsoft 365 license from a former employee](#remove-and-delete-the-microsoft-365-license-from-a-former-employee)<br/> |When you remove a license, you can assign it to someone else. Or, you can delete the license so you don't pay for it until you hire another person.  <br/><br/> When you remove or delete a license, the user's old email, contacts, and calendar are retained for **30 days**, then permanently deleted. If you remove or delete a license but don't delete the account, the content in the user's OneDrive will remain accessible to you even after 30 days.  <br/> |
|7. [Delete a former employee's user account](#delete-a-former-employees-user-account)<br/> |This removes the account from your admin center. Keeps things clean.  <br/> |

## Save the contents of a former employee's mailbox

There are two ways you can save the contents of the former employee's mailbox:
  
1. Add the former employee's email address to your version of Outlook 2013 or 2016, and then export the data to a .pst file. You can import the data to another email account as needed. To learn how to do this, see [Get access to and back up a former user's data](get-access-to-and-back-up-a-former-user-s-data.md).

    OR

2. Place a Litigation Hold or In-Place Hold on the mailbox before the deleting the user account. This is much more complicated than the first option but worth doing if: your Enterprise plan includes archiving and legal hold, litigation is a possibility, and you have a technically strong IT department.

    After you convert the mailbox to an "inactive mailbox," administrators, compliance officers, or records managers can use In-Place eDiscovery tools in Exchange Online to access and search the contents.

    Inactive mailboxes can't receive email and aren't displayed in your organization's shared address book or other lists.

    To learn how to place a hold on a mailbox, see [Manage inactive mailboxes in Exchange Online](https://docs.microsoft.com/microsoft-365/compliance/create-and-manage-inactive-mailboxes).

## Forward a former employee's email to another employee or convert to a shared mailbox

In this step, you assign the former employee's email address to another employee, or [convert the user's mailbox to a shared mailbox](../email/convert-user-mailbox-to-shared-mailbox.md) that you've created.
  
- Creating a shared mailbox is the less expensive way to go because you won't have to pay for a license **as long as the mailbox is smaller than 50GB**. Over 50GB and you'll need to assign a license to it.
- If you convert the mailbox to a shared mailbox, all the old email will be available, too. This can take up a lot of space.
- If you set up email forwarding, only  *new*  emails sent to the former employee will now be sent to the current employee.

 > [!IMPORTANT]
 > If you're setting up email forwarding or a shared mailbox, at the end, don't delete the former employee's account. The account needs to be there to anchor the email forwarding or shared mailbox.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the name of the employee that you want to block, and then select the **Mail** tab.
3. Under **Email Forwarding**, select **Manage email forwarding**.
4. Turn on **Forward all email sent to this mailbox**. In the **Forwarding address** box, type the email address of the current employee who's going to get the email.
5. Select **Save**.
6. Remember, don't delete the former employee's account.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.

2. Select the employee that you want to block and expand **Mail Settings**.

3. Next to **Email forwarding**, select **Edit**.

4. Turn on **Forward all email sent to this mailbox**. In the **Forwarding address** box, type the email address of the current employee (or shared mailbox) who's going to get the email.
  
5. Select **Save**.

6. Remember, don't delete the former employee's account.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

2. Select the employee that you want to block and expand **Mail Settings**.

3. Next to **Email forwarding**, select **Edit**.

4. Turn on **Forward all email sent to this mailbox**. In the **Forwarding address** box, type the email address of the current employee (or shared mailbox) who's going to get the email.
  
5. Select **Save**.

6. Remember, don't delete the former employee's account.

::: moniker-end

## Wipe and block a former employee's mobile device

If your former employee had an organization phone, you can use the Exchange admin center to wipe and block that device so that all organization data is removed from the device and it can no longer connect to Office 365.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>.
2. In the Exchange admin center, navigate to **Recipients** \> **Mailboxes**.
3. Select the user, and under **Mobile Devices**, select **View details**.
4. On the **Mobile Device Details** page, under **Mobile devices**, select the mobile device, select **Wipe Data**![Wipe Device](../../media/1c113a36-53cb-4974-884f-3ecd9535506e.png), and then select **Block**.
5. Select **Save**.
   > [!TIP]
   > Be sure you remove or disable the user from your on-premises Blackberry Enterprise Service. You should also disable any Blackberry devices for the user. Refer to the Blackberry Business Cloud Services Administration Guide if you need specific steps on how to disable the user.

## Block a former employee's access to Microsoft 365 data

 > [!IMPORTANT]
 > Blocking an account can take up to 24 hours to take effect. If you need to immediately prevent a user's sign-in access, you should [reset their password](reset-passwords.md) and then initiate a one-time event that will sign them out of Microsoft 365 sessions across all devices. See [Sign out now!](#sign-out-now)

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the name of the employee that you want to block, and under the user's name, select the symbol for **Block this user**.
3. Select **Block the user from signing in**, and then select **Save**.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.

2. Select the employee that you want to block, and then select **Block sign-in**.

3. Select **Block the user from signing in**, and then select **Save**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

2. Select the employee that you want to block, and then select **Block sign-in**.

3. Select **Block the user from signing in**, and then select **Save**.

::: moniker-end

## Block a former employee's access to email (Exchange Online)

If you have email as part of your Microsoft 365 subscription, you need to sign in to the Exchange admin center to follow these steps to block your former employee from accessing their email.
  
1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>.
2. In the Exchange admin center, navigate to **Recipients** \> **Mailboxes**.
3. Double-click the user and go to the **Mailbox features** page. Under **Mobile Devices**, select **Disable Exchange ActiveSync** and **Disable OWA for Devices,** and answer **Yes** to both when prompted.
4. Under **Email Connectivity**, select **Disable** and answer **Yes** when prompted.

## Remove and delete the Microsoft 365 license from a former employee

So you don't continue paying for a license after someone leaves your organization, you need to remove their Microsoft 365 license and then delete it from your subscription. If you choose not to delete the license from your subscription, you can assign it to another user.
  
When you remove the license, all that user's data is held for 30 days. You can [access](get-access-to-and-back-up-a-former-user-s-data.md) the data, or [restore](restore-user.md) the account if the user comes back. After 30 days, all the user's data (except for documents stored on SharePoint Online) is permanently deleted from Microsoft 365 and can't be recovered.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the name of the employee that you want to block, and then select the **Licenses and Apps** tab.
3. Clear the check boxes for the license(s) you want to remove, and then select **Save changes**.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.

2. Select the employee that you want to block, and then next to **Product licenses**, select **Edit**.

3. On the **Product licenses** page, toggle off the license(s) you want to remove, and then select **Save**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

2. Select the employee that you want to block, and then next to **Product licenses**, select **Edit**.

3. On the **Product licenses** page, toggle off the license(s) you want to remove, and then select **Save**.

::: moniker-end

**To reduce the number of licenses you're paying for** until you hire another person, do the following steps:

::: moniker range="o365-worldwide"
1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page, and select the **Products** tab.
2. Select the subscription from which you want to remove licenses.
3. On the details page, select **Remove licenses**.
4. In the **Remove licenses** pane, under New quantity, in the **Total licenses** box, enter the total number of licenses that you want for this subscription. For example, if you have 25 licenses and you want to remove one of them, enter 24.
5. Select **Save**.
::: moniker-end

::: moniker range="o365-germany"
1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847745" target="_blank">Subscriptions</a> page.
2. Select **Add/Remove licenses** to delete the license so you don't pay for it until you hire another person.
::: moniker-end

::: moniker range="o365-21vianet"
1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Subscriptions</a> page.
2. Select **Add/Remove licenses** to delete the license so you don't pay for it until you hire another person.
::: moniker-end

When you [add another person](add-users.md) to your business, you'll be prompted to buy a license at the same time, with just one step!

For more information about managing user licenses for Microsoft 365 for business, see [Assign licenses to users in Microsoft 365 for business](../manage/assign-licenses-to-users.md), and [Unassign licenses from users in Microsoft 365 for business](../manage/remove-licenses-from-users.md).
  
## How the deleted employee account affects Skype for Business

When you remove a user's license from Office 365, the PSTN calling number associated with the user will be released. You can assign it to another user.
  
If the user belongs to a queue group, they will no longer be a viable target of the call queue agents. So, we recommend also removing the user from the groups associated with the call queue.

## Set up call forwarding to people in your organization

If you need to set up call forwarding for the terminated employee's phone number, the call forwarding setting under calling policies can set up forwarding where incoming calls can be forwarded to other users or can ring another person at the same time. For more information, see [Calling policies in Microsoft Teams](https://docs.microsoft.com/microsoftteams/teams-calling-policy).
  
## Delete a former employee's user account

After you've saved and accessed all the former employee's user data, you can delete the former employee's account.
  
Don't delete the account if you've set up email forwarding or converted it to a shared mailbox. Both need the account to anchor the forwarding or shared mailbox.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the name of the employee that you want to delete.
3. Under the user's name, select the symbol for **Delete user**. Choose the options you want for this user, and then select **Delete user**.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.

2. Select the name of the employee that you want to delete.

3. At the top of the page, select **Delete user**. Choose the options you want for this user, and then select **Delete user**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

2. Select the name of the employee that you want to delete.

3. At the top of the page, select **Delete user**. Choose the options you want for this user, and then select **Delete user**.

::: moniker-end

When you delete a user, the account becomes inactive for approximately 30 days. You have until then to restore the account before it is permanently deleted.
  
### Does your organization use Active Directory?

If your organization synchronizes user accounts to Microsoft 365 from a local Active Directory environment, you must delete and restore those user accounts in your local Active Directory service. You can't delete or restore them in Office 365.
  
To learn how to delete and restore user account in Active Directory, see [Delete a User Account](https://go.microsoft.com/fwlink/?linkid=841808).
  
If you're using Azure Active Directory, see the [Remove-MsolUser](https://go.microsoft.com/fwlink/?linkid=842230) PowerShell cmdlet.
  
## What you need to know about terminating an employee's email session

Here's information about how to get an employee out of email (Exchange).
  
|||
|:-----|:-----|
|**What you can do** <br/> |**How you do it** <br/> |
|Terminate a session (such as Outlook on the web, Outlook, Exchange active sync, etc.) and force to open a new session  <br/> |Reset password  <br/> |
|Terminate a session and block access to future sessions (for all protocols)  <br/> |Disable the account. For example, (in the Exchange admin center or using PowerShell):  <br/>  `Set-Mailbox user@contoso.com -AccountDisabled:$true` <br/> |
|Terminate the session for a particular protocol (such as ActiveSync)  <br/> |Disable the protocol. For example, (in the Exchange admin center or using PowerShell):  <br/>  `Set-CASMailbox user@contoso.com -ActiveSyncEnabled:$false` <br/> |

The above operations can be done in three places:
  
|||
|:-----|:-----|
|**If you terminate the session here** <br/> |**How long it takes** <br/> |
|In the Exchange admin center or using PowerShell  <br/> |Expected delay is within 30 min  <br/> |
|In the Azure Active Directory admin center  <br/> |Expected delay is 60 min  <br/> |
|In an on-premises environment  <br/> |Expected delay is 3 hours or more  <br/> |

### How to get fastest response for account termination

 **Fastest**: Use the Exchange admin center (use PowerShell) or Azure Active Directory admin center. In an on-premises environment, it can take several hours to sync the change through DirSync.
  
 **Fastest for a user with presence on-premises and in the Exchange Datacenter**: Terminate the session using Azure Active Directory admin center/Exchange admin center AND make the change in the on-premises environment as well. Otherwise, the change in Azure Active Directory admin center/Exchange admin center will be overwritten by DirSync.
  
## Related articles

[Restore a user](restore-user.md)
