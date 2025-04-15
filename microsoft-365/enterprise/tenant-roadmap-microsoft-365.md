---
title: Tenant roadmap for Microsoft 365
f1.keywords:
- NOCSH
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/09/2024
audience: ITPro
ms.topic: concept-article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- M365-subscription-management
- m365initiative-coredeploy
- essentials-get-started
- must-keep
ms.custom: it-pro
description: The roadmap to set up your tenants for Microsoft 365.
---

# Tenant roadmap for Microsoft 365

Your Microsoft 365 tenant is the set of services assigned to your organization. Typically, this tenant is associated with one or more of your public DNS domain names and acts as a central and isolated container for different subscriptions and the licenses within them that you assign to user accounts. For more information, see [Subscriptions, licenses, accounts, and tenants for Microsoft's cloud offerings](subscriptions-licenses-accounts-and-tenants-for-microsoft-cloud-offerings.md).

When you create a Microsoft 365 tenant, you assign it to a specific geographical location. You can also have a tenant with multiple geographical locations and move your tenant from one location to another.

To get your tenant ready for user, groups, licenses, and cloud apps, it's critical to carefully plan and execute your tenant configuration.

## Set up your Microsoft 365 tenant

Before you begin planning your network for Microsoft 365 network connectivity, it's important to understand the connectivity principles for securely managing Microsoft 365 traffic and getting the best possible performance. Ensure that your networking is optimized for access to Microsoft 365 for both on-premises and remote workers by [understanding and planning for Microsoft 365 network optimization](microsoft-365-network-connectivity-principles.md).

Your next big tasks are planning for and then configuring your Microsoft 365 tenant for DNS domain names, common services, and for that identity infrastructure that supports secure user sign-in.

### Plan

To plan for your tenant implementation:

- [Understand subscriptions, licenses, and Microsoft Entra tenants](subscriptions-licenses-accounts-and-tenants-for-microsoft-cloud-offerings.md)
- [Understand how to use third-party SSL certificates](plan-for-third-party-ssl-certificates.md)
- [Understand the ways a Microsoft 365 tenant is integrated with Microsoft Entra services](integrated-apps-and-azure-ads.md)
- [Plan for client app support](microsoft-365-client-support-certificate-based-authentication.md)
- [Determine how to use hybrid modern authentication](hybrid-modern-auth-overview.md)
- [Plan for Office 2007 and Office 2010 upgrades](plan-upgrade-previous-versions-office.md)
- [Understand tenant isolation](/compliance/assurance/assurance-microsoft-365-isolation-controls#tenant-isolation)

### Deploy

To deploy your tenant:

- Add the [DNS domains](../admin/setup/add-domain.md) for your organization.
- Use the [setup guides in the Microsoft 365 admin center](setup-guides-for-microsoft-365.md).
- Build out your [identity infrastructure](deploy-identity-solution-overview.md).

### Move a tenant's geographic locations

Microsoft continues to open new datacenter geographic locations (geos) for Microsoft 365 services. These new datacenter geos add capacity and compute resources to support customer demand and usage growth. Additionally, the new datacenter geos offer in-geo data residency for core customer data.

For more information, see [Moving core data to new Microsoft 365 datacenter geos](moving-data-to-new-datacenter-geos.md).

## Deploy Microsoft 365 Multi-Geo

With Microsoft 365 Multi-Geo, your organization can expand its Microsoft 365 presence to multiple geographic regions and/or countries within your existing tenant.

For more information, see [Microsoft 365 Multi-Geo](microsoft-365-multi-geo.md).

## Manage multiple Microsoft 365 tenants

Although having a single tenant for your organization is ideal, you may be one of many organizations that have multiple tenants. Reasons can include mergers and acquisitions, you want administrative isolation, or you have a decentralized IT.

If you have multiple Microsoft 365 tenants, see these articles for more information about:

- [Inter-tenant collaboration](microsoft-365-inter-tenant-collaboration.md)
- [Cross-tenant mailbox migration](cross-tenant-mailbox-migration.md)
- [Tenant-to-tenant migrations](microsoft-365-tenant-to-tenant-migrations.md)

## Next step

Start your tenant planning with [Subscriptions, licenses, accounts, and tenants](subscriptions-licenses-accounts-and-tenants-for-microsoft-cloud-offerings.md).
