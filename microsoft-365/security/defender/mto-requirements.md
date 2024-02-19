---
title: Set up multitenant management in Microsoft Defender XDR
description: Learn what steps you need to take to get started with multitenant management in Microsoft Defender XDR.
ms.service: defender-xdr
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 09/01/2023
---

# Set up multi-tenant management in Microsoft Defender XDR

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

This article describes the steps you need to take to start using multi-tenant management in Microsoft Defender XDR.

>[!Note]
> In a multi-tenant environment, interactions between the multi-tenant user and the managed tenants may involve accessing data and managing configurations. However, these actions depend on the permissions that the managed tenant has granted to the multi-tenant user.

1. [Review the requirements](#review-the-requirements)
2. [Verify your tenant access](#verify-your-tenant-access)
3. [Set up multi-tenant management in Microsoft Defender XDR](#set-up-multi-tenant-management)

>[!Note]
> [Data privacy](data-privacy.md), [role-based access control (RBAC)](m365d-permissions.md) and [Licensing](prerequisites.md#licensing-requirements) are respected by multi-tenant management in Microsoft Defender XDR.

## Review the requirements

The following table lists the basic requirements you need to use multi-tenant management in Microsoft Defender XDR.

| Requirement | Description |
|:---|:---|
| Microsoft Defender XDR prerequisites | Verify you meet the [Microsoft Defender XDR prerequisites](prerequisites.md)|
| Multi-tenant access | To view and manage the data you have access to in multi-tenant management, you need to ensure you have the necessary access. For each tenant you want to view and manage, you need to have either: <br/> <br/> - [Granular delegated admin privileges (GDAP)](/partner-center/gdap-introduction) <br/> - [Microsoft Entra B2B authentication](/azure/active-directory/external-identities/what-is-b2b) <br/> <br/> To learn more about how to synchronize multiple B2B users across tenants, see [Configure cross-tenant synchronization](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-configure).|
| Permissions | Users must be assigned the correct roles and permissions at the individual tenant level, in order to view and manage the associated data in multi-tenant management. To learn more, see: <br/><br/> - [Manage access to Microsoft Defender XDR with Microsoft Entra global roles](./m365d-permissions.md) <br/> - [Custom roles in role-based access control for Microsoft Defender XDR](./custom-roles.md)<br/><br/> To learn how to grant permissions for multiple users at scale, see [What is entitlement management](/azure/active-directory/governance/entitlement-management-overview).|

>[!Note]
> Setting up [multi-factor authentication trust](/azure/active-directory/external-identities/authentication-conditional-access) is highly recommended for each tenant to avoid missing data in multi-tenant management Microsoft Defender XDR.

## Verify your tenant access

In order to view and manage the data you have access to in multi-tenant management, you need to ensure you have the necessary permissions. For each tenant you want to view and manage, you need to either:

- [Verify your tenant access with Microsoft Entra B2B](#verify-your-tenant-access-with-microsoft-entra-b2b)
- [Verify your tenant access with GDAP](#verify-your-tenant-access-with-gdap)

### Verify your tenant access with Microsoft Entra B2B

1. Go to [My account](https://myaccount.microsoft.com/organizations).
2. Under **Organizations > Other organizations you collaborate with** see the list of organizations you have guest access to.

   :::image type="content" source="../../media/defender/mto-myaccount.png" alt-text="Screenshot of organizations in the myaccount portal" lightbox="../../media/defender/mto-myaccount.png":::

3. Verify all the tenants you plan to manage appear in the list.
4. For each tenant, go to the [Microsoft Defender portal](https://security.microsoft.com/?tid=tenant_id) and sign in to validate you can successfully access the tenant.

### Verify your tenant access with GDAP

1. Go to the [Microsoft Partner Center](https://partner.microsoft.com/commerce/granularadminaccess/list).
2. Under **Customers** you can find the list of organizations you have guest access to.
3. Verify all the tenants you plan to manage appear in the list.
4. For each tenant, go to the [Microsoft Defender portal](https://security.microsoft.com/?tid=tenant_id) and sign in to validate you can successfully access the tenant.

## Set up multi-tenant management

The first time you use multi-tenant management in Microsoft Defender XDR, you need setup the tenants you want to view and manage. To get started:

1. Sign in to [Multi-tenant management in Microsoft Defender XDR](https://mto.security.microsoft.com/)
2. Select **Add tenants**.

   :::image type="content" source="../../media/defender/mto-add-tenants.png" alt-text="Screenshot of the Microsoft Defender XDR multi-tenant portal setup screen" lightbox="../../media/defender/mto-add-tenants.png":::

3. Choose the tenants you want to manage and select **Add**

>[!Note]
> The multi-tenant view in Microsoft Defender XDR currently has a limit of 50 target tenants.

The features available in multi-tenant management now appear on the navigation bar and you're ready to view and manage security data across all your tenants.

   :::image type="content" source="../../media/defender/mto-tenant-selection.png" alt-text="Screenshot of multi-tenant management in Microsoft Defender XDR" lightbox="../../media/defender/mto-tenant-selection.png":::

## Next step

Use these articles to get started with multi-tenant management in Microsoft Defender XDR:

- [View and manage incidents and alerts](./mto-incidents-alerts.md)
- [Advanced hunting](./mto-advanced-hunting.md)
- [Multi-tenant devices](./mto-tenant-devices.md)
- [Vulnerability management](./mto-dashboard.md)
- [Manage tenants](./mto-tenants.md)
