---
title: "Step 4 - Block a former employee's access to Microsoft 365 services"
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
description: "Follow these steps to block a former employee's access to Microsoft 365 services."
---

# Step 4 - Block a former employee's access to Microsoft 365 services

> [!IMPORTANT]
 > Blocking an account can take up to 24 hours to take effect. If you need to immediately prevent a user's sign-in access, you should [reset their password](reset-passwords.md) and then initiate a one-time event that will sign them out of Microsoft 365 sessions across all devices. See [Sign out now!](#sign-out-now)

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the name of the employee that you want to block, and under the user's name, select the symbol for **Block this user**.
3. Select **Block the user from signing in**, and then select **Save**.

## Block a former employee's access to email (Exchange Online)

If you have email as part of your Microsoft 365 subscription, you need to sign in to the Exchange admin center and follow these steps to block your former employee from accessing their email.
  
1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>.
2. In the Exchange admin center, navigate to **Recipients** \> **Mailboxes**.
3. Double-click the user and go to the **Mailbox features** page. Under **Mobile Devices**, select **Disable Exchange ActiveSync** and **Disable OWA for Devices,** and answer **Yes** to both when prompted.
4. Under **Email Connectivity**, select **Disable** and answer **Yes** when prompted.
