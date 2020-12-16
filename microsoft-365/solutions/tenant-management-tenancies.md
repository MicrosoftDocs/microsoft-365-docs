---
title: Your Microsoft 365 for enterprise tenancies
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
- m365solution-tenantmanagement
ms.custom:
- Ent_Solutions
description: "An overview of a single or multiple Microsoft 365 tenants and managing tenants for multi-geo and moving locations."
---

# Your Microsoft 365 for enterprise tenancies

One of your first tenant decisions is how many to have. Each Microsoft 365 tenant is distinct, unique, and separate from all other Microsoft 365 tenants. Each Microsoft 365 tenant is distinct, unique, and separate from all other Microsoft 365 tenants. It’s corresponding Azure AD tenant is also distinct, unique, and separate from all other Microsoft 365 tenants.

## Single tenancy
Having a single tenancy simplifies many aspects of your organization’s use of Microsoft 365. A single tenancy means a single Azure AD tenant with a single set of accounts, groups, and policies. Permissions and sharing of resources across your organization can be done through this central identity provider.

A single tenant provides the most feature-rich and simplified collaboration and productivity experience for your users.

Here is an example.

![A single Microsoft 365 tenant with its Azure AD tenant](../media/tenant-management-overview/tenant-management-example-tenant.png)

## Multiple tenancies

There are many reasons why your organization could have multiple tenants:

- Administrative isolation
- Decentralized IT
- Historical decisions
- Mergers, acquisitions, divestitures
- Clear separation of branding for conglomerate organizations
- Pre-production, test, or sandbox tenancies

Here is an example of an organization that has two tenants (Tenant A and Tenant B) in the same default datacenter geo.

![Multiple Microsoft 365 tenants with their own Azure AD tenants](../media/tenant-management-overview/tenant-management-example-multi-tenant.png)

When you have multiple tenants, there are restrictions and additional considerations when managing them and providing services to your users.

### Inter-tenant collaboration

If you want your users to collaborate more effectively across different Microsoft 365 tenants in a secure manner, inter-tenant collaboration options include using a central location for files and conversations, sharing calendars, using IM, audio/video calls for communication, and securing access to resources and applications.

For more information, see [Microsoft 365 inter-tenant collaboration](../enterprise/microsoft-365-inter-tenant-collaboration.md).

### Cross-tenant mailbox migration (preview)

Prior to cross-tenant mailbox migration (in preview), when moving Exchange Online mailboxes between tenants, you have to completely offboard a user mailbox from their current tenant (the source tenant) to on-premises and then onboard them to a new tenant (the target tenant). With the new cross-tenant mailbox migration feature, tenant administrators in both source and target tenants can move mailboxes between the tenants with minimal infrastructure dependencies in their on-premises systems. This removes the need to off-board and onboard mailboxes.

Here are two example tenants and their mailboxes before cross-tenant mailbox migration.

![Multiple Microsoft 365 tenants and their mailboxes](../media/tenant-management-overview/tenant-management-cross-tenant-mailbox-before.png)

Here is the target tenant (Tenant A) after cross-tenant mailbox migration.

![The target tenant after cross-tenant mailbox migration](../media/tenant-management-overview/tenant-management-cross-tenant-mailbox-after.png)

For more information, see [Cross-tenant mailbox migration](../enterprise/cross-tenant-mailbox-migration.md).

### Tenant-to-tenant migrations

There are several architectural approaches for mergers, acquisitions, divestitures, and other scenarios that might lead you to migrate an existing Microsoft 365 tenant to a new tenant. 

For detailed guidance, see [Microsoft 365 tenant-to-tenant migrations](../enterprise/microsoft-365-tenant-to-tenant-migrations.md).

## Multi-Geo for a tenant

With Microsoft 365 Multi-Geo, you can provision and store data at rest in the other datacenter geo locations that you've chosen to meet data residency requirements, and at the same time unlock your global roll out of modern productivity experiences to your workers.

In a Multi-Geo environment, your Microsoft 365 tenant consists of a default or central location where your Microsoft 365 subscription was originally created and one or more satellite locations. In a multi-geo tenant, the information about geo locations, groups, and user information is mastered in a global Azure AD tenant. Because your tenant information is mastered centrally and synchronized into each geo location, collaboration experiences involving anyone from your company are shared across the locations.

Here is an example.

![Example of a multi-geo Microsoft 365 tenant](../media/tenant-management-overview/tenant-management-example-multi-geo.png)

For more information, see [Microsoft 365 Multi-Geo](../enterprise/microsoft-365-multi-geo.md).

## Moving core data to a new datacenter geo

Microsoft continues to open new datacenter geos for Microsoft 365 services. These new datacenter geos add capacity and compute resources to support our ongoing customer demand and usage growth. Additionally, the new datacenter geos offer in-geo data residency for core customer data.

Although opening a new datacenter geo does not impact you and your core data stored in an already existing datacenter geo, Microsoft allows you to request an early migration of your organization's core customer data at rest to a new datacenter geo.

Here is an example in which a Microsoft 365 tenant was moved from the European Union (EU) datacenter geo to the one located in the United Kingdom (UK).

![Example of moving a Microsoft 365 tenant between datacenter geos](../media/tenant-management-overview/tenant-management-example-tenant-move.png)

For more information, see [Moving core data to new Microsoft 365 datacenter geos](../enterprise/moving-data-to-new-datacenter-geos.md).

## Next step

[![Step 2. Optimize your tenant for network for access](../media/tenant-management-overview/tenant-management-step-grid-networking.png)](tenant-management-networking.md)

Continue with [networking](tenant-management-networking.md) to provide optimal networking from your workers to Microsoft 365 cloud services.
