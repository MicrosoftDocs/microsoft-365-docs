---
title: "Step 1 - Prevent a former employee from logging in and block access to Microsoft 365 services"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 01/06/2025
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
  - has-azure-ad-ps-ref, azure-ad-ref-level-one-done
description: "Block a former employee from logging in and block their access to Microsoft 365 services."
---

# Step 1 - Prevent a former employee from logging in and block access to Microsoft 365 services

If you need to immediately prevent a user's sign-in access, reset their password. When you do this, you force a sign out of the user from Microsoft 365.

> [!NOTE]
> You need to be a global administrator to initiate sign-out for other administrators. For non administrator users, you can use a User Administrator or a Helpdesk Administrator user to perform this action. [Learn more about the Admin Roles](about-admin-roles.md).

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the user's name, and then select **Reset password**.
1. Enter a new password, and then select **Reset**.
1. Choose whether to automatically create the new password or require the user to change their password when they first sign in.
1. Select **Reset password**. You can print the new password if you want. Then select **Close**.
1. Select the user's name again, and on the **Account** tab, select **Sign out of all sessions**.

Within an hour - or after they leave the current Microsoft 365 page they're on - they're prompted to sign in again. An access token is good for an hour, so the timeline depends on how much time is left on that token, and whether they leave the current webpage.
  
> [!IMPORTANT]
> If the user is in Outlook on the web, just clicking around in their mailbox, they may not be kicked out immediately. As soon as they select a different tile, such as OneDrive, or refresh their browser, the sign-out is initiated.
  
To use PowerShell to sign out a user immediately, see the [Revoke-MgUserSignInSession](/powershell/module/microsoft.graph.users.actions/revoke-mgusersigninsession) cmdlet.
  
For more information about how long it takes to get someone out of email, see [What you need to know about terminating an employee's email session](remove-former-employee-step-7.md#what-you-need-to-know-about-terminating-an-employees-email-session).

## Block a former employee's access to Microsoft 365 services

> [!IMPORTANT]
 > Blocking an account can take up to 24 hours to take effect. If you need to immediately prevent a user's sign-in access, follow the steps above and reset their password.

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the name of the employee that you want to block, and select **Block sign-in**.
3. On the **Block sign-in** page, select Block this user from signing in and then **Save changes**.

## Block a former employee's access to email (Exchange Online)

If you have email as part of your Microsoft 365 subscription, sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a> and follow these steps to block your former employee from accessing their email.
  
1. Go to the Exchange admin center > **Recipients** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2183135" target="_blank">Mailboxes</a>.
2. Select the former employee's mailbox and then under **Email apps & mobile devices**, select **Manage email apps settings**.
3. On the **Manage email apps settings** page, turn **Off** the slider for all the options:

     - **Outlook desktop (MAPI)**
     - **Exchange web services**
     - **Mobile (Exchange ActiveSync)**
     - **IMAP**
     - **POP3**
     - **Outlook on the web**
4. Select **Save**.

## Related content

[Exchange admin center in Exchange Online](/exchange/exchange-admin-center) (article)

[Restore a user](restore-user.md) (article)
