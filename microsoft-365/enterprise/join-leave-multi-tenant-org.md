---
title: Join or leave a multi-tenant organization in Microsoft 365 (Preview)
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 07/30/2023
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn how join or leave a multi-tenant organization in Microsoft 365.
---

# Join or leave a multi-tenant organization in Microsoft 365 (Preview)

> [!NOTE]
> Multi-tenant organizations in Microsoft 365 is currently rolling out and may not yet be available for all organizations.

To join a multi-tenant organization, a global administrator in the owner organization must first add your organization to the multi-tenant organization. Once they've done that, you can join the multi-tenant organization. You'll need the tenant ID of the owner organization in order to join.

Once you've joined, you can leave a multi-tenant organization at any time.

#### Related settings in Azure AD

When you join an existing multi-tenant organization, the following settings are configured in Azure Active Directory:

- A cross-tenant synchronization configuration is added with the name *MTO_Sync_\<TenantID\>*, but no sync jobs are created yet. (If you already have a cross-tenant synchronization configuration, it remains unchanged.)
- An organization relationship is added to the [cross-tenant access settings](/azure/active-directory/external-identities/cross-tenant-access-overview) based on the [multi-tenant organization templates](/azure/active-directory/multi-tenant-organizations/templates) for cross-tenant access and identity synchronization. (If an organizational relationship already exists, the existing one is used.)
- The multi-tenant organization template for identity synchronization is set to allow users to sync into this tenant.
- The multi-tenant org template for cross-tenant access will be set to automatically redeem user invitations, inbound as well as outbound.

When you leave a multi-tenant organization, the cross-tenant access settings and cross-tenant synchronization configurations in Azure AD are not affected.

## Join an existing multi-tenant organization

To join an existing multi-tenant organization in Microsoft 365

1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Get started**.
1. Select **Join an existing multitenant organization**.
1. Enter the tenant ID of the owner organization.
1. Select the **Allow users to sync into this tenant from the other tenants in this multitenant organization** and **Suppress consent prompts for users from the other tenant when they access apps and resources in my tenant** check boxes.
1. Select **Next**.
1. Select **Done**.

It can take up to four hours for your tenant to be joined to the multi-tenant organization.

> [!NOTE]
> If you encounter an error when joining the multi-tenant organization, try again after two hours. If the error reoccurs, contact Microsoft support.

The next step after you join the multi-tenant organization is to synchronize your users with the other tenants. For details, see [Synchronize users in multi-tenant orgs in Microsoft 365](sync-users-multi-tenant-orgs.md).

## Leave a multi-tenant organization

You can leave a multi-tenant organization as long as your tenant isn't the owner tenant. You can also remove other member tenants.

To remove a tenant from a multi-tenant organization in Microsoft 365

1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select the check box next to the tenant you want to remove.
1. Select **Remove tenant**.
1. Read the details regarding tenant removal in the side panel, and then select **Remove tenant**.

Removing a tenant doesn't change any user sync configurations or cross-tenant access settings in Azure AD. We recommend you review these settings and make any updates needed after the tenant is removed.

## Related topics

[Configure cross-tenant synchronization](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-configure)

[Overview: Cross-tenant access with Azure AD External Identities](/azure/active-directory/external-identities/cross-tenant-access-overview)

[Plan for multi-tenant organizations in Microsoft 365](plan-multi-tenant-org-overview.md)

[Set up a multi-tenant org in Microsoft 365](set-up-multi-tenant-org.md)

[Synchronize users in multi-tenant organizations in Microsoft 365](sync-users-multi-tenant-orgs)
