---
title: Step 1 - Prevent user sign-in and block access to Microsoft 365
description: Learn how to block a user from signing in and restrict their access to Microsoft 365 services with step-by-step instructions for admins.
#customer intent: As an admin, I want to prevent a user from signing in so that I can secure the organization's Microsoft 365 services.
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 09/17/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- SPO_Content
- trust-pod
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

When a user leaves your organization and you need to immediately prevent their access, first reset their password. You can also force them to sign out from Microsoft 365 services. If you think the account might be compromised, block sign-in so that no one can use it.

## Prerequisites

To complete this action for standard users, you need to have the User Administrator or Helpdesk Administrator role.

To sign out other administrators, you need to be a Global Administrator.

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Reset password and sign out of all sessions

1. In the Microsoft 365 admin center, go to **Users** \> **[Active users](https://admin.cloud.microsoft/?#/users)**.

1. Select the user's name, then select **Reset password**.

1. Choose whether to automatically create a new password or require the user to change their password when they first sign in.

1. Select **Reset password**. You can print the new password if you want. Then select **Close**.

1. Select the user's name again, and on the **Account** tab, select **Sign out of all sessions**.

Within an hour, or after they leave the current Microsoft 365 page they're on, they're prompted to sign in again. An access token is good for an hour, so the timeline depends on how much time is left on that token, and whether they leave the current webpage.
  
> [!IMPORTANT]
> If the user is using their mailbox in Outlook on the web, they might not be signed out immediately. As soon as they select a different tile, such as OneDrive, or refresh their browser, the service signs them out.
  
To use PowerShell to sign out a user immediately, see the [Revoke-MgUserSignInSession](/powershell/module/microsoft.graph.users.actions/revoke-mgusersigninsession) cmdlet.
  
For more information about how long it takes to get someone out of email, see [What you need to know about ending an user's email session](remove-former-employee-step-7.md#what-you-need-to-know-about-terminating-an-employees-email-session).

## Block a user's access to Microsoft 365 services

> [!IMPORTANT]
 > Blocking an account can take up to 24 hours to take effect. To immediately prevent a user's sign-in access, follow the previous steps to reset their password.

1. In the Microsoft 365 admin center, go to **Users** \> **[Active users](https://admin.cloud.microsoft/?#/users)**.

1. Select the name of the user that you want to block, and select **Block sign-in**.

1. On the **Block sign-in** page, select **Block this user from signing in** and then **Save changes**.

## Block a user's access to email in Exchange Online

If you have email as part of your Microsoft 365 subscription, sign in to the [Exchange admin center](https://admin.cloud.microsoft/exchange#) and follow these steps to block a user from accessing their email.

1. Go to the Exchange admin center > **Recipients** \> [Mailboxes](https://admin.cloud.microsoft/exchange#/mailboxes).

1. Select the user's mailbox. Under **Email apps & mobile devices**, select **Manage email apps settings**.

1. On the **Manage email apps settings** page, turn **Off** the slider for all the options:

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
