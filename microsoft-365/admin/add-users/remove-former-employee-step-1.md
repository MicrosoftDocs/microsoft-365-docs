---
title: Step 1 - Prevent user sign-in and block access to Microsoft 365
description: Learn how to block a user from signing in and restrict their access to Microsoft 365 services with step-by-step instructions for admins.
#customer intent: As an admin, I want to prevent a user from signing in so that I can secure the organization's Microsoft 365 services.
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 01/05/2026
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
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
---

# Step 1 - Prevent user sign-in and block access to Microsoft 365

When an employee leaves your organization, the first step to preventing unauthorized access is to reset their password. You can also force the user account to be signed out from your Microsoft 365 services. If you think the account might be compromised, make sure to block signing in so that no one can use those credentials.

## Prerequisites

To complete this action for standard users, you must have an appropriate role assigned, such as User Administrator or Helpdesk Administrator role.

To sign out other administrators, you need to be a Global Administrator.

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Reset password and sign out of all sessions

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/), go to **Users** \> **Active users**. (Or, go directly to the [Active users page](https://admin.cloud.microsoft/?#/users).)

2. Select the user's name, then select **Reset password**.

3. Choose whether to automatically create a new password and whether to require the user to change their password when they first sign in.

4. Select **Reset password**. You can print the new password if you want. Then select **Close**.

5. Select the user's name again, and on the **Account** tab, select **Sign out of all sessions**.

Within an hour, or after the user leaves the current Microsoft 365 page they're on, they're prompted to sign in again. An access token is good for an hour, so the timeline depends on how much time is left on that token, and whether they leave the current webpage.
  
> [!IMPORTANT]
> If the user is using their mailbox in Outlook on the web, they might not be signed out immediately. As soon as they select a different tile, such as OneDrive, or refresh their browser, the service signs them out.
  
To use PowerShell to sign out a user immediately, see the [Revoke-MgUserSignInSession](/powershell/module/microsoft.graph.users.actions/revoke-mgusersigninsession) cmdlet.
  
For more information about how long it takes to get someone out of email, see [What you need to know about ending an user's email session](remove-former-employee-step-7.md#what-you-need-to-know-about-terminating-an-employees-email-session).

## Block a user's access to Microsoft 365 services

> [!IMPORTANT]
 > Blocking an account can take up to 24 hours to take effect. To immediately prevent a user's sign-in access, follow the previous steps to reset their password.

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/), go to **Users** \> **Active users**. (Or, go directly to the [Active users page](https://admin.cloud.microsoft/?#/users).)

2. Select the name of the user that you want to block, and select **Block sign-in**.

3. On the **Block sign-in** page, select **Block this user from signing in**, and then **Save changes**.

## Block a user's access to email in Exchange Online

If you have email as part of your Microsoft 365 subscription, you can use the Exchange admin center to block a user from accessing their email. See [Manage user mailboxes in Exchange Online](/exchange/recipients-in-exchange-online/manage-user-mailboxes/manage-user-mailboxes).
 
1. In the [Exchange admin center](https://admin.exchange.microsoft.com/), go to **Recipients** > **Mailboxes**. (Or, go directly to the [Mailboxes page](https://admin.cloud.microsoft/exchange#/mailboxes).)

2. Select a user's mailbox. 

3. Under **Email apps & mobile devices**, select **Manage email apps settings**.

3. On the **Manage email apps settings** page, turn **Off** the slider for all the options:

     - **Outlook desktop (MAPI)**
     - **Exchange web services**
     - **Mobile (Exchange ActiveSync)**
     - **IMAP**
     - **POP3**
     - **Outlook on the web**

1. Select **Save**.

## Related content

- [Exchange admin center in Exchange Online](/exchange/exchange-admin-center)

- [Restore a user](restore-user.md)
