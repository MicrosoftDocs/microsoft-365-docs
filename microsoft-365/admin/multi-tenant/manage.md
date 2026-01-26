---
title: Manage Multiple Tenants in the Microsoft 365 admin center
description: Learn how to manage multiple Microsoft 365 tenants from a single location using tenant switcher and multitenant views. Streamline admin tasks across tenants efficiently.
customer-intent: As a Microsoft 365 administrator, I want to manage multiple tenants from a single location so that I can streamline administration tasks.
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 01/06/2026
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
- admindeeplinkMAC
---

# Manage multiple tenants in the Microsoft 365 admin center

[Multitenant management](/entra/identity/multi-tenant-organizations/overview) in the Microsoft 365 admin center offers a unified approach that allows partner administrators to manage all their tenants in a single location. This streamlined solution helps partners with [delegated administrator](/entra/identity/users/directory-delegated-administration-primer) roles efficiently manage multiple Microsoft 365 tenants. If you're a partner managing multiple tenants, you can:

- Move quickly between tenants you manage
- Assess service health, products, and billing across multiple tenants
- On the **All tenants** page, quickly see the health of all your tenants' services, any open service requests, your products and billing, and the number of users in that tenant

## Before you begin

You must have the [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) role assigned to perform this task.

> [!IMPORTANT]
> Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use another role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Move between tenants

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/?#/homepage), select a tenant name.

   :::image type="content" source="../../media/macorgswitcher.png" alt-text="Screenshot of Microsoft 365 admin center showing the multitenant switcher interface for managing multiple tenants.":::

1. Using the **Tenant switcher**, you can move quickly between tenants you manage.

   :::image type="content" source="../../media/yourtenantslist.png" alt-text="Screenshot of tenant switcher displaying list of managed tenants with search functionality in Microsoft 365 admin center.":::

## View the All tenants page

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/?#/homepage), in the navigation pane, select **All tenants**.

2. On the **All tenants** page, take one or more of the following steps:

   - Assess service health
   - Review license usage
   - Search for or select the tenant you want to manage
   - Pin your most often visited tenant to the top of the list.

If you mark a tenant as a favorite, the list automatically expands the tenant. Then you can immediately view the status details.

## View service health for all tenants

The service health view shows you if any incidents or advisories are affecting the tenants. It also tells you how many of your managed tenants are affected.

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/?#/homepage), in the multitenant view, select **Service Health**.

1. On the **Service health** page aggregated view, you can also see the total number of incidents, the total number of advisories affecting any of the managed tenants, and the number of services with active incidents. You can also see if any incidents and advisories affect your tenants.

   - You can use the filter option to view issues by issue type or by service.
   - You can review issues under **All services** or **All issues** tabs.

   :::image type="content" source="../../media/multitenant-servicehealth.png" alt-text="Screenshot of multitenant service health page displaying incident summary and affected services across managed tenants.":::

1. Select an incident on the **All services** or **All issues** tab to get more information about any incident on the **Overview** tab. Select the **Tenants affected** tab to get a list of the affected tenants.

   :::image type="content" source="../../media/tenantsaffected.png" alt-text="Screenshot of tenants affected tab showing detailed list of tenants impacted by service health issue.":::

   You can export the list of affected tenants to CSV format so that admins can share it with support teams.

## View a single tenant in the Microsoft 365 admin center

You can return to the Microsoft 365 admin center for any of the tenants from the **All tenants** page.

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/?#/homepage), in the navigation pane, select **All tenants**.

2. Select the tenant name for which you want to view the Microsoft 365 admin center. 

   The admin center opens for that tenant.

## Related content

- [Overview of Microsoft 365 Lighthouse](../../lighthouse/m365-lighthouse-overview.md)

- [Multitenant organization capabilities in Microsoft Entra ID](/entra/identity/multi-tenant-organizations/overview)

- [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference)

- [What is Partner Center?](/partner-center/enroll/overview)

- [Add and manage multiple tenants in your Partner Center account](/partner-center/account-settings/multi-tenant-account)