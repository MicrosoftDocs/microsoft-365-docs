---
title: Microsoft 365 Defender Multi-Tenant Organization Unified View 
description: Learn what steps you need to take to get started with Microsoft 365 Defender Multi-Tenant Organization Unified View 
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

# Microsoft 365 Defender Multi-Tenant Organization Unified View

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft 365 Defender Multi-Tenant Organization

Microsoft 365 Defender Multi-Tenant Organization Unified View is a unified experience where you can monitor and manage security across your enterprise. With the integrated alerts across identities, endpoints, data, apps, email, and collaboration tools - investigating and responding to threats now happen in a central location.

## Verify your tenant access

Before you start, make sure that you have the appropriate permissions for accessing multiple tenants using a single identity.

To access data from other tenants within the Microsoft 365 Defender Multi-Tenant Organization portal, you must have one of the following for each of the tenants that you intend to view and manage:

- [Granular delegated admin privileges (GDAP)](/partner-center/gdap-introduction)
- [Azure Active Directory B2B authentication](/azure/active-directory/external-identities/what-is-b2b)

>[!Note]
> Setting up multi-factor authentication trust is highly recommended for each tenant to avoid missing data in the Microsoft 365 Defender Multi-Tenant Organization portal.

### Verify your tenant access with Azure Active Directory B2B

1. Go to [My account](https://myaccount.microsoft.com/organizations)
2. Under **Organizations > Other organizations you collaborate with** you’ll see the list of organizations you have guest access to.

   :::image type="content" source="../../media/defender/mto-myaccount.png" alt-text="Screenshot of organizations in the myaccount portal" lightbox="../../media/defender/mto-myaccount.png":::

3. Verify all the tenants you plan to manage in the Microsoft 365 Defender Multi-Tenant Organization portal appear in the list.
4. For each tenant, go to the [Microsoft 365 Defender portal)](https://security.microsoft.com/?tid=tenant_id) to validate you can successfully access the tenant.

### Verify your tenant access with GDAP

1. Go to the [Microsoft Partner Center](https://partner.microsoft.com/commerce/granularadminaccess/list).
2. Under **Customers** you can find the list of organizations you have guest access to.
3. Verify all the tenants you plan to manage in theMicrosoft 365 Defender Multi-Tenant Organization portal appear in the list.
4. For each tenant, go to the [Microsoft 365 Defender portal)](https://security.microsoft.com/?tid=tenant_id) to validate you can successfully access the tenant.

## Key capabilities

Microsoft 365 Defender Multi-Tenant Organization Unified View offers the same experience as the Microsoft 365 Defender portal, as well as aggregating all the tenants you manage into unified views. The multi-tenant portal will only display data you are allowed to see and is compiled on-the-fly.

For each tenant you have access to in the Microsoft 365 Defender Multi-Tenant Organization portal You'll have the following key capabilities that focus on incident investigation flow and posture management:

| Capability | Description |
| ------ | ------ |
| Aggregated Incidents and alerts queues | Manage alerts & incidents originating from multiple tenants under Incidents & alerts. |
| Cross-Tenant advanced hunting| Proactively hunt for intrusion attempts and breach activity affecting your email, data, devices, and accounts over multiple tenants at the same time. |
| Defender Vulnerability Management dashboard |MTO Vulnerability Management provides both security administrators and security operations teams with aggregated vulnerability management information across multiple tenants. |

>[!Note]
> Data boundaries, Role-based access control (RBAC), and licensing are respected by Unified Views.

## Next steps

- To start using the portal, go to the [Microsoft 365 Defender Multi-Tenant Organization portal](https://mto.security.microsoft.com)
