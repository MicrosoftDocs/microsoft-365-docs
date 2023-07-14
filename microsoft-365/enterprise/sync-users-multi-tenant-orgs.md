---
title: Sync users in multi-tenant orgs in Microsoft 365 (Preview)
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
description: Learn how manage user sync in multi-tenant orgs in Microsoft 365.
---

# Sync users in multi-tenant orgs in Microsoft 365 (Preview)

For users in your tenant to be able to collaborate in other tenants, you must synchronize the users to the other tenants.

Set up outbound directory sync from your tenant to other active tenants in this multitenant organization. Once you Share users, the selected users will sync to all active tenants in this organization. Upon completion, users in other active tenants will be able to search and discover the user profiles shared by your tenant.

Select the users and groups of users you want to share with the active tenants in your multitenant organization. Note: Groups will not be synced to target, only the users within the groups will be synced. Also, changes to your outbound sync settings here will reflect in Azure Active Directory too.

## Limit synchronized users to specific Azure AD attributes

[Scoping users or groups to be provisioned with scoping filters](/azure/active-directory/app-provisioning/define-conditional-rules-for-provisioning-user-accounts?pivots=cross-tenant-synchronization)


Set up a security group with the users you want to sync
Members are sync'd, owners aren't

Remove existing sync configurations for this tenant

> [!NOTE]
> The user synchronization settings in the Microsoft 365 admin center affect all tenants in your multi-tenant organization. If you want to change the synchronization settings for an individual organization, you can 

## Set up initial user sync for a multi-tenant org

To sync identities to other tenants in a multi-tenant org
1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Share users**.
1. Select **Select users and groups to share**.
1. Choose the security group that you created, and then select **Save**.
1. Select **Yes** to confirm.

This creates a cross-tenant synchronization configuration in Azure AD for each tenant in your multi-tenant organization. The synchronizations are named MTO_Sync_<TenantID>.

## Set up user synchronization with newly added tenants

If you add additional tenants to your multi-tenant organization, you need to set up user synchronization with those tenants.

To set up user synchronization with newly added tenants
1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Share users**.
1. Select **Share current user scope**.
1. Select **Yes** to confirm.

## Change which users are synchronized with other tenants

You can change which users are synchronized to other tenants in your multi-tenant organization.

To change which users are synchronized to other tenants
1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Share users**.
1. Select **Edit shared users and groups**.
1. Update the users and groups that you want to sync to other tenants and then select **Save**.
1. Select **Yes** to confirm.

This procedure updates the MTO_Sync_<TenantID> synchronization configurations in Azure AD for each tenant in your multi-tenant organization.

## Related topics

