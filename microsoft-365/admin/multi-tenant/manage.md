---
title: Manage Multiple Tenants in Microsoft 365 Admin Center
description: Learn how to manage multiple Microsoft 365 tenants from a single location using tenant switcher and multitenant views. Streamline admin tasks across tenants efficiently.
#customer intent: As a Microsoft 365 admin, I want to manage multiple tenants from a single location so that I can streamline administration tasks.
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 09/18/2025
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


# Manage multiple tenants in Microsoft 365 admin center

Multitenant management in Microsoft 365 admin center offers a unified approach that allows partner admins to administer all tenants from a single location. This streamlined solution helps partners with delegated admin roles efficiently manage multiple Microsoft 365 tenants. If you're a partner managing multiple tenants, you can:

- Move quickly between tenants you manage.
- Assess service health, products, and billing across multiple tenants.
- On the **All tenants** page, you can quickly see the health of all your tenants' services, any open service requests, your products and billing, and the number of users in that tenant.

## Before you begin

You need to be a global admin to perform this task.

> [!IMPORTANT]
> Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Move between tenants

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/?#/homepage), select the org name.

    :::image type="content" source="../../media/macorgswitcher.png" alt-text="Screenshot of Microsoft 365 admin center showing the multitenant switcher interface for managing multiple tenants.":::

- From the **Tenant switcher**, you can move quickly between tenants you manage.

    :::image type="content" source="../../media/yourtenantslist.png" alt-text="Screenshot of tenant switcher displaying list of managed tenants with search functionality in Microsoft 365 admin center.":::

## View All tenants page

In the [Microsoft 365 admin center](https://admin.cloud.microsoft/?#/homepage), in the left nav, select **All tenants**.

- On the **All tenants** page, you can:
  - Assess service health
  - Review license usage
  - Search for, or select the tenant you want to manage
  - Pin your most often visited tenant to the top of the list.

If you mark a tenant as a favorite, the list automatically expands the tenant. Then you can immediately view the status details.

## View service health for all accounts

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

1. On the **All tenants** page, select the tenant name for which you want to view the admin center.
1. The admin center opens for that tenant.
