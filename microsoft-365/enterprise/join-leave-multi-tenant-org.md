---
title: Join or leave multi-tenant orgs in Microsoft 365 (Preview)
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
description: Learn how manage multi-tenant orgs in Microsoft 365.
---

# Join or leave multi-tenant orgs in Microsoft 365 (Preview)






## Join an existing multi-tenant organization

To join an existing multi-tenant org in Microsoft 365
1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Get started**.
1. Select **Join an existing multitenant organization**.
1. Enter the tenant ID of the owner organization.
1. Select the **Allow users to sync into this tenant from the other tenants in this multitenant organization** and **Suppress consent prompts for users from the other tenant when they access apps and resources in my tenant** check boxes.
1. Select **Next**.
1. Select **Done**.


When you join an existing multi-tenant organization, the following settings are configured in Azure Active Directory:

- A cross-tenant synchronization configuration is added with the name MTO_Sync_<TenantID>, but no sync jobs are created yet.
- An organization relationship is added to the [cross-tenant access settings](/azure/active-directory/external-identities/cross-tenant-access-overview) based on the default configuration.
- The cross-tenant inbound settings are set to allow users to sync into this tenant.
- The cross-tenant outbound settings are set to automatically redeem invitations with the external tenant.

If you already have a cross-tenant synchronization configuration, it remains unchanged.


## Leave a multi-tenant organization

You can remove any member tenant, including your own. You can't remove owner tenants. Also, you can't remove the original creator tenant, even if it has been changed from owner to member. Removing a tenant must be done using Graph API. For details, see [Remove a member tenant](/azure/active-directory/multi-tenant-organizations/configure-graph#step-5-optional-remove-a-member-tenant).


