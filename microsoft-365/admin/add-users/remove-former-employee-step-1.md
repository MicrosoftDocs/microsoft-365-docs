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
description: "Learn how block a former employee from logging in."
---

# Step 1 - Prevent an employee from logging in

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the box next to the user's name, and then select **Reset password**.
3. Enter a new password, and then select **Reset**. (Don't send it to them.)
4. Select the user's name to go to their properties pane, and on the **Account** tab, select **Initiate sign-out**.

Within an hour - or after they leave the current Microsoft 365 page they are on - they're prompted to sign in again. An access token is good for an hour, so the timeline depends on how much time is left on that token, and whether they navigate out of their current webpage.
  
> [!IMPORTANT]
> If the user is in Outlook on the web, just clicking around in their mailbox, they may not be kicked out immediately. As soon as they select a different tile, such as OneDrive, or refresh their browser, the sign-out is initiated.
  
To use PowerShell to sign out a user immediately, see [Revoke-AzureADUserAllRefreshToken](/powershell/module/azuread/revoke-azureaduserallrefreshtoken) cmdlet.
  
For more information about how long it takes to get someone out of email, see [What you need to know about terminating an employee's email session](#what-you-need-to-know-about-terminating-an-employees-email-session).
