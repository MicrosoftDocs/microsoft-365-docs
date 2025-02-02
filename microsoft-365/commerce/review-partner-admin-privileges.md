---
title: "Review cloud solution provider (partner) admin privileges"
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: armanv, nicholak
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-acquisition
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management 
- Adm_O365
ms.custom:
- commerce_subscriptions
- admindeeplinkMAC
- GAUpdates
search.appverid: MET150
description: "Learn how to review your list of Microsoft-certified solution providers (partners) to determine what admin privileges they have, and how to remove those privileges."
ms.date: 01/07/2025
---

# Review Microsoft-certified cloud solution provider (partner) administrative privileges

If you have a Microsoft-certified cloud solution provider (reseller partner), we recommend that you conduct a quarterly review of the delegated administrative privileges (DAP) assigned to them. Make sure that your organization wants this partner to have access to your organization's data and make purchases on your behalf.

> [!CAUTION]
> Giving DAP, which include Global Administrator permissions, to any partner presents a security risk. We recommend that you limit the number of Global Administrators as much as possible.

After you accept a DAP agreement from a reseller partner, they can assign the Global Administrator role for your organization to their employees. The Global Administrator role gives the partner's employees access to your employees' personal data and other sensitive information. It also gives them permission to take the following tenant-wide actions:

- Change user passwords
- Add users with email accounts
- Add and manage web domains associated with your organization

When DAP is enabled, you have no control over the number of Global Administrators your partner can add. You can only grant or deny the partner DAP (Global Administrator) access to your account.

## Review and remove roles from partners

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2074649" target="_blank">Partner relationships</a> page. Partners with DAP have **Global Administrator** listed in the **Roles** column.
2. To remove the Global Administrator role from a partner, find the name of the partner that you want to remove.
3. Select the row that has **Reseller** as the **Relationship Type**.
4. On the partner details page, select **Remove roles**, then select **Yes**.

> [!NOTE]
>
> - If you remove DAP (Global Administrator role) from a partner, we recommend that you contact them to discuss future service delivery. For example, you can create a user account with lower privileges and share that account information with your partner. Learn more about [adding users](../admin/add-users/add-users.md) and [assigning admin roles](../admin/add-users/assign-admin-roles.md).
> - Even with the Global Administrator role removed, the partner can still make purchases on your behalf. We recommend that you contact the partner to ask them to remove that ability in the Partner Center.

## Related content

[Manage partner relationships](manage-partners.md) (article)\
[About admin roles](../admin/add-users/about-admin-roles.md) (article)\
[Delegated admin privileges in Microsoft Entra ID](/partner-center/customers-revoke-admin-privileges#delegated-admin-privileges-in-azure-ad) (article)
