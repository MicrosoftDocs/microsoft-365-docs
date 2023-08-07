---
title: Review partner administrative privileges
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: jamitche, nicholak
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
ms.custom:
- commerce_subscriptions
- empty
search.appverid: MET150
description: "Learn how to review your list of Microsoft-certified solution providers (partners) to determine what admin privileges they have, and how to remove those privileges."
ms.date: 12/03/2021
---

# Review Microsoft-certified cloud solution provider partner administrative privileges

If you have a Microsoft-certified cloud solution provider (reseller partner), we recommend you conduct a quarterly review of the delegated administrative privileges (DAP) assigned to them. Make sure your organization wants this partner to have access to your organization's data and make purchases on your behalf.

> [!IMPORTANT]
> Giving DAP, which include Global admin permissions, to any partner might present a security risk. Having too many Global admins is also a security risk. [Learn more about recent activity targeting delegated privileges](https://www.microsoft.com/security/blog/2021/10/25/nobelium-targeting-delegated-administrative-privileges-to-facilitate-broader-attacks/).

After you accept a DAP agreement from a reseller partner, they can assign the Global admin role for your organization to their employees. The Global admin role gives the partner's employees access to your employees' personal data and other sensitive information. It also gives them permission to take tenant-wide actions, such as the following actions:

- Changing user passwords
- Adding users with email accounts
- Adding and managing web domains associated with your organization

When DAP is enabled, you have no control over the number of Global admins your partner can add. You can only grant or deny the partner DAP (Global admin) access to your account.

## Review and remove roles from partners

1. In the Microsoft 365 admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2074649" target="_blank">Partner relationships</a> page. Partners with DAP have **Global Administrator** listed in the **Roles** column.
2. To remove the Global admin role from a partner, find the name of the partner that you want to remove.
3. Select the row that has **Reseller** as the **Relationship Type**.
4. On the partner details page, select **Remove roles**, then select **Yes**.

> [!NOTE]
>
> - If you remove DAP (Global admin role) from a partner, we recommend that you contact them to discuss future service delivery. For example, you can create a user account with lower privileges and share that account information with your partner. Learn more about [adding users](../admin/add-users/add-users.md) and [assigning admin roles](../admin/add-users/assign-admin-roles.md).
> - Even with the Global admin role removed, the partner can still make purchases on your behalf. We recommend that you contact the partner to ask them to remove that ability in the Partner Center.

## Related content

[Manage partner relationships](manage-partners.md) (article)\
[About admin roles](../admin/add-users/about-admin-roles.md) (article)\
[Delegated admin privileges in Azure AD](/partner-center/customers-revoke-admin-privileges#delegated-admin-privileges-in-azure-ad) (article)
