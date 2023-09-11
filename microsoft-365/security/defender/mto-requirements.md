---
title: Set up your multi-tenant view in Microsoft 365 Defender
description: Learn what steps you need to take to get started with multi-tenant view in Microsoft 365 Defender
ms.service: microsoft-365-security
ms.subservice: m365d
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

# Set up your multi-tenant view in Microsoft 365 Defender

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

This article describes the steps need to take start using the multi-tenant view in Microsoft 365 Defender.

1. Verify you meet the [Microsoft 365 Defender prerequisites](prerequisites.md).
2. [Verify your tenant access](#verify-your-tenant-access).
3. [Setup the multi-tenant view in Microsoft 365 Defender](#setup-the-multi-tenant-view-in-microsoft-365-defender).

>[!Note]
> [Data privacy](data-privacy.md), [role-based access control (RBAC)](m365d-permissions.md) and [Licensing](prerequisites.md#licensing-requirements) are respected by multi-tenant view in Microsoft 365 Defender.

## Verify your tenant access

To view the data, you have access to across multiple tenants in the multi-tenant view in Microsoft 365 Defender, you need to ensure you have the necessary permissions. For each tenant you want to view and manage, you need one of the following:

- [Azure Active Directory B2B authentication](/azure/active-directory/external-identities/what-is-b2b)
- [Granular delegated admin privileges (GDAP)](/partner-center/gdap-introduction)

>[!Note]
> Setting up [multi-factor authentication trust](/azure/active-directory/external-identities/authentication-conditional-access) is highly recommended for each tenant to avoid missing data in the multi-tenant view Microsoft 365 Defender.

### Verify your tenant access with Azure Active Directory B2B

1. Go to [My account](https://myaccount.microsoft.com/organizations)
2. Under **Organizations > Other organizations you collaborate with** see the list of organizations you have guest access to.

   :::image type="content" source="../../media/defender/mto-myaccount.png" alt-text="Screenshot of organizations in the myaccount portal" lightbox="../../media/defender/mto-myaccount.png":::

3. Verify all the tenants you plan to manage in the multi-tenant view in Microsoft 365 Defender appear in the list.
4. For each tenant, go to the [Microsoft 365 Defender portal](https://security.microsoft.com/?tid=tenant_id) and sign in to validate you can successfully access the tenant.

### Verify your tenant access with GDAP

1. Go to the [Microsoft Partner Center](https://partner.microsoft.com/commerce/granularadminaccess/list).
2. Under **Customers** you can find the list of organizations you have guest access to.
3. Verify all the tenants you plan to manage in the multi-tenant view in Microsoft 365 Defender appear in the list.
4. For each tenant, go to the [Microsoft 365 Defender portal)](https://security.microsoft.com/?tid=tenant_id) and sign in to validate you can successfully access the tenant.

## Setup the multi-tenant view in Microsoft 365 Defender

If this is the first time you're using the multi-tenant view in Microsoft 365 Defender, you'll need setup the tenants you want to view and manage. To get started:

1. Sign in to the [Multi-tenant view in Microsoft 365 Defender](https://mto.security.microsoft.com/).
2. Select **Add tenants**.

   :::image type="content" source="../../media/defender/mto-add-tenants.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant portal setup wizard" lightbox="../../media/defender/mto-add-tenants.png":::

3. Choose the tenants you want to manage in the multi-tenant view in Microsoft 365 Defender and select **Add**.

The features available in the multi-tenant view now appear on the navigation bar and you're ready to view and manage security data across all your tenants.

   :::image type="content" source="../../media/defender/mto-multi-tenant-view.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant settings page" lightbox="../../media/defender/mto-multi-tenant-view.png":::

## Next step

Use these articles to get started with the multi-tenant view in Microsoft 365 Defender:

- [View and manage incidents and alerts](./mto-incidents-alerts.md)
- [Advanced hunting](./mto-advanced-hunting.md)
- [Vulnerability management](./mto-dashboard.md)
- [Multi-tenant device view](./mto-tenant-devices.md)
- [Manage your tenants](./mto-tenants.md)
