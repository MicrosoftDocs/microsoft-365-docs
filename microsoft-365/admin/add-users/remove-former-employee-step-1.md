---
title: "Step 1 - Prevent a former employee from logging in and block access to Microsoft 365 services"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 03/17/2021
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- SPO_Content
ms.custom:
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
- m365solution-removeemployee
- admindeeplinkEXCHANGE
search.appverid:
- BCS160
- MET150
- MOE150
description: "Global administrators can block a former employee from logging in and block their access to Microsoft 365 services."
---

# Step 1 - Prevent a former employee from logging in and block access to Microsoft 365 services

If you need to immediately prevent a user's sign-in access, you should reset their password. In this step, force a sign out of the user from Microsoft 365.

> [!NOTE]
> You need to be a global administrator to initiate sign-out for other administrators. For non administrator users, you can use a User Administrator or a Helpdesk Administrator user to perform this action. [Learn more about the Admin Roles](about-admin-roles.md)

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the box next to the user's name, and then select **Reset password**.
3. Enter a new password, and then select **Reset**. (Don't send it to them.)
4. Select the user's name to go to their properties pane, and on the **Account** tab, select **Sign out of all sessions**.

Within an hour - or after they leave the current Microsoft 365 page they are on - they're prompted to sign in again. An access token is good for an hour, so the timeline depends on how much time is left on that token, and whether they navigate out of their current webpage.
  
> [!IMPORTANT]
> If the user is in Outlook on the web, just clicking around in their mailbox, they may not be kicked out immediately. As soon as they select a different tile, such as OneDrive, or refresh their browser, the sign-out is initiated.
  
To use PowerShell to sign out a user immediately, see the [Revoke-AzureADUserAllRefreshToken](/powershell/module/azuread/revoke-azureaduserallrefreshtoken) cmdlet.
  
For more information about how long it takes to get someone out of email, see [What you need to know about terminating an employee's email session](remove-former-employee-step-7.md#what-you-need-to-know-about-terminating-an-employees-email-session).

## Block a former employee's access to Microsoft 365 services

> [!IMPORTANT]
 > Blocking an account can take up to 24 hours to take effect. If you need to immediately prevent a user's sign-in access, follow the steps above and reset their password.

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the name of the employee that you want to block, and under the user's name, select the symbol for **Block this user**.
3. Select **Block the user from signing in**, and then select **Save**.

## Block a former employee's access to email (Exchange Online)

If you have email as part of your Microsoft 365 subscription, sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a> and follow these steps to block your former employee from accessing their email.
  
1. Go to the Exchange admin center > **Recipients** \> <a href="https://go.microsoft.com/fwlink/?linkid=2183135" target="_blank">Mailboxes</a>.
1. Select the user mailbox from the list and then, in the *Details Pane* (on the right-hand side), select **Manage email apps settings** under **Email apps**. Turn **Off** the slider for all the options; **Mobile (Exchange ActiveSync)**, **Outlook on the web**, **Outlook desktop (MAPI)**, **Exchange web services**, **POP3**, and **IMAP**.
1. Select **Save**.

## Related content

[Exchange admin center in Exchange Online](/exchange/exchange-admin-center) (article)\

[Restore a user](restore-user.md) (article)
