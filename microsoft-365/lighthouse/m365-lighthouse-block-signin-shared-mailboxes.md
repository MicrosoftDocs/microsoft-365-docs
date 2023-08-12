---
title: "Block sign-in for shared mailbox accounts in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: ragovind, katmartin
ms.date: 06/21/2023
audience: Admin
ms.topic: article
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to block sign-in on shared mailbox accounts."
---

# Block sign-in for shared mailbox accounts using Microsoft 365 Lighthouse

Every shared mailbox has a corresponding user account. A shared mailbox is not intended for direct sign-in by its associated user account. You should always block sign-in for the shared mailbox account and keep it blocked.

Microsoft 365 Lighthouse provides visibility into all the shared mailboxes across your managed tenants that are enabled for direct sign-in. You can track and block sign-in for all shared mailbox accounts from the **Shared mailboxes** page.

## Block sign-in for shared mailbox accounts

1. In the left navigation pane in Lighthouse, select **Users** \> **Account management \>** **Shared mailboxes**.

2. On the **Shared mailboxes** tab, select the Shared mailbox account you want to block and then select **Block sign-in**.

3. In the **Manage sign-in status** pane, select **Block users from signing in**.

4. Select **Save**.

## Notify users that access is blocked (optional)

1. In the left navigation pane in Lighthouse, select **Users** \> **Account management** \> **Shared mailboxes**.

2. On the **Shared mailboxes** tab, select the check box next to the accounts you want to notify.

3. From the command bar, select **Create email**.

Lighthouse opens your default email client and prepopulates the email message to notify them login access has been blocked.

## Related content

[Block user sign-in](/microsoft-365/lighthouse/m365-lighthouse-block-user-signin.md) (article)\
[About shared mailboxes - Microsoft 365 admin](../admin/email/about-shared-mailboxes.md) (article)
