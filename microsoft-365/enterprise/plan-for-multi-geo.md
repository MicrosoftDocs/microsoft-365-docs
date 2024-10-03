---
title: "Plan for Microsoft 365 Multi-Geo"
ms.reviewer:
ms.date: 10/02/2024
ms.author: kvice
author: kelleyvice-msft
manager: scotv
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: multi-tenant
f1.keywords:
- NOCSH
ms.custom:
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.collection: 
- Strat_SP_gtc
- SPO_Content
ms.localizationpriority: medium
description: "Learn about Microsoft 365 Multi-Geo, how multi-geo works, and what geo-locations are available for data storage."
---

# Plan for Microsoft 365 Multi-Geo

This guidance is for administrators of _Tenants_ preparing their Microsoft 365 _Tenant_ to meet their data residency requirements.

In a Multi-Geo configuration, your Microsoft 365 _Tenant_ consists of a _Primary Provisioned Geography_ location and multiple _Satellite Geography_ locations. You retain a single _Tenant_ that spans across multiple _Geography_ locations retaining single-tenant administration and full-fidelity collaboration experiences across _Geographies_. 

To help you understand the basic concepts of Multi-Geo configuration, review terms in the Definitions section of the [Overview and Definitions page](m365-dr-overview.md).

Enabling Multi-Geo requires four key steps:

1. Purchase the _Multi-Geo Capabilities in Microsoft 365_ add-on SKU for your Microsoft 365 subscription.

2. Configure any workloads that require customer specific settings for Multi-Geo.

3. Set your users' Preferred Data Location (PDL) to the desired _Satellite Geography_ location. A new user’s OneDrive site, Exchange Online mailbox, and Teams chat store is provisioned in the _Geography_ defined by their PDL value if the value is configured prior to assigning them a Microsoft 365 license. When an existing user's PDL value is set to a new value, then their existing Exchange Online mailbox and Teams chat store will automatically be migrated to the new geography.

4. Migrate your users' existing OneDrive sites from the _Primary Provisioned Geography_ location to their _Satellite Geography_ data location as needed. OneDrive sites don't migrate automatically like Exchange Online mailboxes or Teams chat stores.

See [Configure Microsoft 365 Multi-Geo](multi-geo-tenant-configuration.md) for details on each of these steps.

See the [Availability section](microsoft-365-multi-geo.md#microsoft-365-multi-geo-availability) of the Microsoft 365 Multi-Geo Overview page for the _Geographies_ that can be a _Satellite Geography_. 

## Best practices

We recommend that you create a test user in Microsoft 365 to do some initial testing. We'll walk through some testing and verification steps with this user before you proceed to onboard production users into Microsoft 365 Multi-Geo.

Once you've completed testing with the test user, select a pilot group – perhaps from your IT department – to be the first to use the Multi-Geo supporting workloads in _Satellite Geographies_.

Each user should have a _preferred data location_ (PDL) set so that Microsoft 365 can determine in which _Geography_ location to provision or relocate their data to. The user's preferred data location must match one of the available _Geographies_. While the PDL field isn't mandatory, we do recommend that a PDL value is set for all users. Users without a PDL value set will be provisioned in the _Primary Provisioned Geography_. If the PDL value isn't a valid value, then a user's data will be provisioned in the _Primary Provisioned Geography_.

Create a list of your users and include their user principal name (UPN) and the Preferred Data Location code. Include your test user and your initial pilot group to start with. You'll need this list for the configuration procedures.

If your users are synchronized from an on-premises Active Directory system to Microsoft Entra ID, then you must set the preferred data location as an Active Directory attribute and synchronize it by using Microsoft Entra Connect. You can't directly configure the preferred data location for synchronized users using [Microsoft Graph PowerShell](/powershell/microsoftgraph/overview). The steps to set up PDL in Active Directory and synchronize it are covered in [Microsoft Entra Connect Sync: Configure preferred data location for Microsoft 365 resources](/azure/active-directory/connect/active-directory-aadconnectsync-feature-preferreddatalocation).

The administration of a Multi-Geo _Tenant_ can differ from a non-multi-geo _Tenant_ in some scenarios. For example, many SharePoint and OneDrive settings and services are multi-geo aware. We recommend that you review [Administering a multi-geo environment](administering-a-multi-geo-environment.md) before you proceed with your configuration.

Read [User experience in a multi-geo environment](multi-geo-user-experience.md) for details about your end users' experience in a multi-geo environment.

To get started configuring Microsoft 365 Multi-Geo, see [Configure Microsoft 365 Multi-Geo](multi-geo-tenant-configuration.md).

Once you've completed the configuration, remember to [migrate your users' OneDrive libraries](move-onedrive-between-geo-locations.md) as needed to get your users working from their preferred data locations.

## Related topics

[Microsoft 365 Multi-Geo eDiscovery configuration](./multi-geo-ediscovery-configuration.md)
