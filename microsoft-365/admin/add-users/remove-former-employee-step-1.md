---
title: "Step 1 - Stop an employee from logging in to Microsoft 365"
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
description: "Block a former employee from logging in and block access to Microsoft 365 services."
---

# Step 1 - Prevent a former employee from logging in and block access to Microsoft 365 services

If you need to immediately prevent a user's sign-in access, you should reset their password. In this step, force a sign out of the user from Microsoft 365.

> [!NOTE]
> You need to be a global administrator to initiate sign-out for other administrators. 
> For non administrator users, you can use a User Adminsitrator or a Helpdesk Administrator user to perform this action.
> Learn more about the Admin Roles <a href="https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles">About Admin Roles</a>

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the box next to the user's name, and then select **Reset password**.
3. Enter a new password, and then select **Reset**. (Don't send it to them.)
4. Select the user's name to go to their properties pane, and on the **Account** tab, select **Initiate sign-out**.

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

If you have email as part of your Microsoft 365 subscription, sign in to the Exchange admin center and follow these steps to block your former employee from accessing their email.
  
1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>.
2. In the Exchange admin center, navigate to **Recipients** \> **Mailboxes**.
3. Double-click the user and go to the **Mailbox features** page. Under **Mobile Devices**, select **Disable Exchange ActiveSync** and **Disable OWA for Devices,** and answer **Yes** to both when prompted.
4. Under **Email Connectivity**, select **Disable** and answer **Yes** when prompted.
