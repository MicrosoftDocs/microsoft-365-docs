---
title: Set up your Microsoft 365 Defender multi-tenant view
description: Learn what steps you need to take to get started with Microsoft 365 Defender multi-tenant view
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

# Set up your Microsoft 365 Defender multi-tenant view

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft 365 Defender multi-tenant

[!include[Prerelease information](../../includes/prerelease.md)]

This article describes the steps need to take start using the Microsoft 365 Defender multi-tenant portal.

1. [Verify your tenant access](#step-1-verify-your-tenant-access).
2. [Use the Microsoft 365 Defender multi-tenant setup wizard](#step-2-use-the-microsoft-365-defender-multi-tenant-setup-wizard).

## Step 1: Verify your tenant access

The first step is to make sure that you have the appropriate permissions for accessing multiple tenants using a single identity.

To access data from other tenants within the Microsoft 365 Defender multi-tenant portal, you must have one of the following for each of the tenants that you intend to view and manage:

- [Azure Active Directory B2B authentication](/azure/active-directory/external-identities/what-is-b2b)
- [Granular delegated admin privileges (GDAP)](/partner-center/gdap-introduction)

>[!Note]
> Setting up multi-factor authentication trust is highly recommended for each tenant to avoid missing data in the Microsoft 365 Defender multi-tenant portal.

### Verify your tenant access with Azure Active Directory B2B

1. Go to [My account](https://myaccount.microsoft.com/organizations)
2. Under **Organizations > Other organizations you collaborate with** you’ll see the list of organizations you have guest access to.

   :::image type="content" source="../../media/defender/mto-myaccount.png" alt-text="Screenshot of organizations in the myaccount portal" lightbox="../../media/defender/mto-myaccount.png":::

3. Verify all the tenants you plan to manage in the Microsoft 365 Defender multi-tenant portal appear in the list.
4. For each tenant, go to the [Microsoft 365 Defender portal)](https://security.microsoft.com/?tid=tenant_id) and log in to validate you can successfully access the tenant.

### Verify your tenant access with GDAP

1. Go to the [Microsoft Partner Center](https://partner.microsoft.com/commerce/granularadminaccess/list).
2. Under **Customers** you can find the list of organizations you have guest access to.
3. Verify all the tenants you plan to manage in the Microsoft 365 Defender multi-tenant portal appear in the list.
4. For each tenant, go to the [Microsoft 365 Defender portal)](https://security.microsoft.com/?tid=tenant_id) and login to validate you can successfully access the tenant.

>[!Note]
> Data boundaries, Role-based access control (RBAC), and licensing are respected by Microsoft 365 Defender multi-tenant.

### Step 2: Use the Microsoft 365 Defender multi-tenant setup wizard

If this is the first time you're using the Microsoft 365 Defender multi-tenant portal the setup wizard helps you add the tenants you want to view and manage in the portal. To get started:

1. Login to the [Microsoft 365 Defender multi-tenant portal](https://mto.security.microsoft.com/).
2. Select **Add tenants**.

   :::image type="content" source="../../media/defender/mto-add-tenants.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant portal setup wizard" lightbox="../../media/defender/mto-add-tenants.png":::

3. Choose the tenants you want to manage in the Microsoft 365 Defender multi-tenant portal and select **Add**.

The features available in multi-tenant portal will now appear on the navigation bar and you're ready to view and manage security data across all your tenants.

:::image type="content" source="../../media/defender/mto-multi-tenant-view.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant settings page" lightbox="../../media/defender/mto-multi-tenant-view.png":::

## Next step

Use these articles to get started with the Microsoft 365 Defender multi-tenant portal:

- [Manage incidents and alerts](./mto-incidents-alerts.md)
- [Advanced hunting](./mto-advanced-hunting.md)
- [Manage your tenants](./mto-tenants.md)
- [Vulnerability Management](./mto-dashboard.md)
