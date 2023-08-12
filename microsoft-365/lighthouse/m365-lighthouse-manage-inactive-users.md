---
title: "Manage inactive users in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: ragovind
ms.date: 07/03/2023
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
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to manage inactive users."
---

# Manage inactive users in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse provides visibility into all the users across your managed tenants that have been inactive for over six months. Inactive accounts may present security risks and tie up unused licenses. From the **Inactive users** page, you can track and clean up inactive accounts.

Lighthouse uses sign-in activity to detect inactive users accounts. The **Inactive users** page shows up to 500 inactive accounts for each tenant.

## Review inactive users

1. In the left navigation pane in Lighthouse, select **Users** > **Account management** > **Inactive users**.

2. On the **Inactive Users** tab, set filters to the desired result.

3. From the list of tenants, expand any tenant to see a list of inactive users within the tenant.

4. Select any user to open the user details pane and see more information about the account.

5. Once you've determined that a user account is no longer needed, you can delete or block the account. At the minimum, you should block the user account to reduce security risks. From the user details pane, select **Block sign-in** or **Delete user**.

## Block sign-in for multiple user accounts

1. In the left navigation pane in Lighthouse, select **Users** > **Account management** > **Inactive users**.

2. On the **Inactive users** tab, expand any tenant in the list to see a list of inactive users within the tenant, select the users you want to block, and then select **Block sign-in**.

3. In the **Manage sign-in status** pane, select **Block users from signing in**.

4. Select **Save**.

## Related content

[How to manage inactive user accounts in Azure AD](/azure/active-directory/reports-monitoring/howto-manage-inactive-user-accounts) (article)
