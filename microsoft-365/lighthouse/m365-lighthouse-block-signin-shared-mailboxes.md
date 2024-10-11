---
title: "Block sign-in for shared mailbox accounts in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: aakash
ms.date: 04/09/2024
audience: Admin
ms.topic: conceptual
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

# Block sign-in for shared mailbox accounts in Microsoft 365 Lighthouse

Every shared mailbox has a corresponding user account. A shared mailbox isn't intended for direct sign-in by its associated user account. You should always block sign-in for the shared mailbox account and keep it blocked.

Microsoft 365 Lighthouse provides visibility into all the shared mailboxes across your managed tenants that are enabled for direct sign-in. You can track and block sign-in for all shared mailbox accounts from the **Shared mailboxes** tab on the **Account management** page.

## Block sign-in for shared mailbox accounts

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Users** > **Account management**, and then select the **Shared mailboxes** tab.

2. Select the shared mailbox account that you want to block, and then select **Block sign-in**.

3. In the **Manage sign-in status** pane, select **Block users from signing in**.

4. Select **Save**.

## Notify users that access is blocked (optional)

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Users** > **Account management**, and then select the **Shared mailboxes** tab.

2. Select the check box next to the shared mailbox accounts whose user you want to notify, and then select **Create email**.

Lighthouse opens your default email client and prepopulates the email message to notify the selected users that their login access has been blocked.

## Related content

[Block user sign-in](m365-lighthouse-block-user-signin.md) (article)\
[About shared mailboxes - Microsoft 365 admin](../admin/email/about-shared-mailboxes.md) (article)
