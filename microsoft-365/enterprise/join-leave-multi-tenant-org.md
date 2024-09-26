---
title: Join or leave a multitenant organization in Microsoft 365
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 06/24/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: multi-tenant
ms.localizationpriority: medium
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn how to join or leave a multitenant organization in Microsoft 365.
---

# Join or leave a multitenant organization in Microsoft 365

To join a multitenant organization, a global administrator in the owner organization must first add your organization to the multitenant organization. Once they've done that, you can join the multitenant organization. You'll need the tenant ID of the owner organization in order to join.

Once you've joined, you can leave a multitenant organization at any time.

<a name='related-settings-in-azure-ad'></a>

## Related settings in Microsoft Entra ID

When you join an existing multitenant organization, the following settings are configured in Microsoft Entra ID:

- A cross-tenant synchronization configuration is added with the name *MTO_Sync_\<TenantID\>*, but no sync jobs are created yet. (If you already have a cross-tenant synchronization configuration, it remains unchanged.)
- An organization relationship is added to the [cross-tenant access settings](/azure/active-directory/external-identities/cross-tenant-access-overview) based on the [multitenant organization templates](/entra/identity/multi-tenant-organizations/multi-tenant-organization-templates) for cross-tenant access and identity synchronization. (If an organizational relationship already exists, the existing one is used.)
- The multitenant organization template for identity synchronization is set to allow users to sync into this tenant.
- The multitenant org template for cross-tenant access will be set to automatically redeem user invitations, inbound as well as outbound.

When you leave a multitenant organization, the cross-tenant access settings and cross-tenant synchronization configurations in Microsoft Entra ID aren't affected.

## Join an existing multitenant organization

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

To join an existing multitenant organization in Microsoft 365:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) as a global administrator.
1. Expand **Settings** and select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Get started**.
1. Select **Join an existing multitenant organization**.
1. Enter the tenant ID of the owner organization.
1. Select the **Allow users to sync into this tenant from the other tenants in this multitenant organization** and **Suppress consent prompts for users from the other tenant when they access apps and resources in my tenant** check boxes.
1. Select **Next**.
1. Select **Done**.

It can take up to four hours for your tenant to be joined to the multitenant organization.

> [!NOTE]
> If you encounter an error when joining the multitenant organization, try again after two hours. If the error reoccurs, contact Microsoft support.

The next step after you join the multitenant organization is to synchronize your users with the other tenants. For details, see [Synchronize users in multitenant orgs in Microsoft 365](sync-users-multi-tenant-orgs.md).

## Leave a multitenant organization

You can leave a multitenant organization as long as your tenant isn't the last owner tenant in the multitenant organization. You can also remove other member tenants.

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

To remove a tenant from a multitenant organization in Microsoft 365:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) as a global administrator.
1. Expand **Settings** and select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select the check box next to the tenant you want to remove.
1. Select **Remove tenant**.
1. Read the details regarding tenant removal in the side panel, and then select **Remove tenant**.

Removing a tenant doesn't change any user synchronization configurations or cross-tenant access settings in Microsoft Entra ID. We recommend you review these settings and make any updates needed after the tenant is removed.

### Remove synchronized users from other tenants

When you remove a tenant from a multitenant organization, you might want to stop synchronizing users between that tenant and the tenants that remain in the multitenant organization. This can be done by updating the cross-tenant synchronization configuration in Microsoft Entra ID and removing the security groups being synchronized, then restarting the synchronization with zero users.

Cross-tenant synchronization configurations for multitenant organizations that were created in the Microsoft 365 admin center are named *MTO_Sync_\<TenantID\>* in Microsoft Entra cross-tenant synchronization.

To remove the cross-synchronized users:

- For the tenant that is leaving the multitenant organization, update the synchronization configurations for each remaining tenant in the multitenant organization where you're synchronizing users.

- For each tenant that's remaining in the multitenant organization, update the synchronization configuration for the tenant that's leaving.

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

To remove your users from other tenants in a multitenant organization:

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com/) as a Global administrator.
1. Expand **Identity**, and then expand **External Identities**.
1. Select **Cross-tenant synchronization**.
1. Select **Configurations**.
1. Select the link for the configuration you want to update.
1. Select **Users and groups**
1. Select the check boxes for the security groups that you want to remove, and then select **Remove**.
1. Select **Overview**.
1. Select **Restart provisioning**.

Once the users have been removed from the other tenants' directories, you can stop provisioning for the synchronization configurations or delete them.

### Stop user sync and automatic invitation redemption

Once you remove a tenant from a multitenant organization, you might want to stop user sync and automatic invitation redemption with the tenants that remain in the multitenant organization.

To prevent user sync and automatic invitation redemption:

- For the tenant that is leaving the multitenant organization, update the cross-tenant access settings for each tenant that's remaining in the multitenant organization.

- For each tenant that's remaining in the multitenant organization, update the cross-tenant access settings for the tenant that's leaving.

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

To prevent user sync and automatic invitation redemption:

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com/) as a Global administrator.
1. Expand **Identity**, and then expand **External Identities**.
1. Select **Cross-tenant access settings**.
1. On the **Organizational settings** tab, select the link for the **Inbound access** settings for the tenant you want to update.
    1. On the **Trust settings** tab, clear the **Automatically redeem invitations with the tenant \<organization\>** check box.
    1. On the **Cross-tenant sync** tab, clear the **Allow users sync into this tenant** check box.
    1. Select **Save**.
1. Select the link for the **Outbound access** settings for the tenant you want to update.
    1. On the **Trust settings** tab, clear the **Automatically redeem invitations with the tenant \<organization\>** check box.
    1. Select **Save**.

For more information about cross-tenant access settings, see [Configure cross-tenant access settings for B2B collaboration](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-collaboration).

## Related topics

[Configure cross-tenant synchronization](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-configure)

[Overview: Cross-tenant access with Microsoft Entra External ID](/azure/active-directory/external-identities/cross-tenant-access-overview)

[Plan for multitenant organizations in Microsoft 365](plan-multi-tenant-org-overview.md)

[Set up a multitenant org in Microsoft 365](set-up-multi-tenant-org.md)

[Synchronize users in multitenant organizations in Microsoft 365](sync-users-multi-tenant-orgs.md)
