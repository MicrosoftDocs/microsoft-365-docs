---
title: "Block user sign-in in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: aakash
ms.date: 04/09/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to block a user account if you think it's compromised so users can't sign in."
---

# Block user sign-in in Microsoft 365 Lighthouse

You can block a user account if you think it's compromised. When you block a user account, it immediately blocks anyone from signing in to that account. If a user tries to sign in, they're automatically signed out of all Microsoft 365 services within 60 minutes. Blocking a user account doesn't delete any data, and it doesn't stop the account from receiving mail.

## Block sign-in for a user

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Users** > **Account management**, and then select the **Search users** tab.

2. Enter the user's name in the search box.

3. From the search results list, select the user.

4. In the user details pane, select **Block sign-in**.

5. In the **Block sign-in** pane, select **Block this user from signing in**.

6. Select **Save changes**.

## Block sign-in for risky users

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Users** > **Risky users**.

2. On the **Risky Users** page, select the users you want to block from signing in.

3. Select **Block sign-in**.

4. In the **Manage sign-in status** pane, select **Block users from signing in**.

5. Select **Save**.

## Related content

[Manage Microsoft 365 user accounts](../enterprise/manage-microsoft-365-accounts.md) (article)\
[Reset user password](m365-lighthouse-reset-user-password.md) (article)
