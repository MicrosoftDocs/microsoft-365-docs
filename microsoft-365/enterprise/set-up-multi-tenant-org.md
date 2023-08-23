---
title: Set up a multi-tenant org in Microsoft 365 (Preview)
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 08/17/2023
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn how to set up a multi-tenant org in Microsoft 365.
---

# Set up a multi-tenant org in Microsoft 365 (Preview)

> [!NOTE]
> Multi-tenant organizations in Microsoft 365 is available in [targeted release](/microsoft-365/admin/manage/release-options-in-office-365).

You can set up a multi-tenant organization or add tenants to an existing one in the Microsoft 365 admin center.

When each external tenant accepts the invitation to join the multi-tenant organization, the following settings are configured in Azure AD:

- A cross-tenant synchronization configuration is added with the name *MTO_Sync_\<TenantID\>*, but no sync jobs are created yet. (If you already have a cross-tenant synchronization configuration, it remains unchanged.)
- An organization relationship is added to the [cross-tenant access settings](/azure/active-directory/external-identities/cross-tenant-access-overview) based on the [multi-tenant organization templates](/azure/active-directory/multi-tenant-organizations/templates) for cross-tenant access and identity synchronization. (If an organizational relationship already exists, the existing one is used.)
- The multi-tenant organization template for identity synchronization is set to allow users to sync into this tenant.
- The multi-tenant org template for cross-tenant access will be set to automatically redeem user invitations, inbound as well as outbound.

## Set up a new multi-tenant organization

To set up a new multi-tenant org in Microsoft 365

1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Get started**.
1. Select **Create a new multitenant organization**, and then select **Next**.
1. Type a name and description for the multi-tenant org.
1. Enter the tenant IDs of any tenants that you want to invite to this org.
1. Select **Next**.
1. Select the **Allow users to sync into this tenant from the other tenants in this multitenant organization** and **Suppress consent prompts for users from the other tenant when they access apps and resources in my tenant** check boxes.
1. Select **Create multitenant organization**.
1. Copy the instructions for joining the multi-tenant org and email them to a global administrator in each of the orgs you invited.
1. Select **Done**.

The next step after each external tenant accepts the invitation to join the multi-tenant organization is to synchronize your users with the other tenants. For details, see [Synchronize users in multi-tenant orgs in Microsoft 365](sync-users-multi-tenant-orgs.md).

## Add a tenant to your multi-tenant organization

To add a tenant to your multi-tenant organization

1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Add new tenants**.
1. Enter the tenant IDs of the tenants you want to add, and then select **Add tenant**.
1. Copy the instructions for joining the multi-tenant org and email them to a global administrator in each of the orgs you invited.
1. Select **Done**.

The next step after each external tenant accepts the invitation to join the multi-tenant organization is to synchronize your users with the other tenants. For details, see [Synchronize users in multi-tenant orgs in Microsoft 365](sync-users-multi-tenant-orgs.md).

## Related topics

[Set up a multi-tenant organization using Microsoft Graph API](/azure/active-directory/multi-tenant-organizations/configure-graph#step-2-create-a-multi-tenant-organization)

[Plan for multi-tenant organizations in Microsoft 365](plan-multi-tenant-org-overview.md)

[Join or leave a multi-tenant organization in Microsoft 365](join-leave-multi-tenant-org.md)

[Synchronize users in multi-tenant organizations in Microsoft 365](sync-users-multi-tenant-orgs.md)

