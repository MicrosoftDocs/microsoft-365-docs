---
title: "Plan for Microsoft 365 Multi-Geo"
ms.reviewer: adwood
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020 
ms.collection: 
- Strat_SP_gtc
- SPO_Content
ms.localizationpriority: medium
description: "Learn about Microsoft 365 Multi-Geo, how multi-geo works, and what geo-locations are available for data storage."
---

# Plan for Microsoft 365 Multi-Geo

This guidance is designed for administrators of _Tenants_ preparing their Microsoft 365 _Tenant_ to be expanded to additional Geographies in accordance with the company's need to meet data residency requirements.

In a Multi-Geo configuration, your Microsoft 365 _Tenant_ consists of a _Primary Provisioned Geography_ location and one or more _Satellite Geography_ locations. This is a single _Tenant_ that spans across multiple _Geography_ locations.

To help you understand the basic concepts of the Multi-Geo configuration, please review terms in the Definitions section of the [Overview and Definitions page](m365-dr-overview.md).

Enabling Multi-Geo requires four key steps:

1. Work with your account team to add the _Multi-Geo Capabilities in Microsoft 365_ service plan.

2. Choose your desired _Satellite Geography_ location(s) and add them to your _Tenant_.

3. Set your users' Preferred Data Location to the desired _Satellite Geography_ location. When a new OneDrive for Business site or Exchange Online mailbox is provisioned for a user, it is provisioned to their PDL.

4. Migrate your users' existing OneDrive for Business sites from the _Primary Provisioned Geography_ location to their _Satellite Geography_ data location as needed. (Exchange Online mailboxes are migrated automatically when you set a user's PDL.)

See [Configure Microsoft 365 Multi-Geo](multi-geo-tenant-configuration.md) for details on each of these steps.

Please see the [Availability section](microsoft-365-multi-geo.md#microsoft-365-multi-geo-availability) of the M365 Multi-Geo Overview page for the _Geographies_ that can be a _Satellite Geography_ location where you can host OneDrive for Business and SharePoint Online sites, Exchange Online mailboxes, and Microsoft Teams. As you plan for Multi-Geo, make a list of the locations that you want to add to your Microsoft 365 _Tenant_. We recommend starting with one or two satellite locations and then gradually expanding to more geo locations, if needed.

## Best practices

We recommend that you create a test user in Microsoft 365 to do some initial testing. We'll walk through some testing and verification steps with this user before you proceed to onboard production users into Microsoft 365 Multi-Geo.

Once you've completed testing with the test user, select a pilot group – perhaps from your IT department – to be the first to use OneDrive for Business and Exchange Online in a new geo location. For this first group, select users who do not yet have a OneDrive for Business. We recommend no more than five people in this initial group and gradually expand following a batched rollout approach.

Each user should have a _preferred data location_ (PDL) set so that Microsoft 365 can determine in which _Geography_ location to provision their OneDrive. The user's preferred data location must match one of your chosen _Satellite Geography_ locations or your _Primary Provisioned Geography_. While the PDL field is not mandatory, we recommend that a PDL be set for all users. Workloads of a user without a PDL will be provisioned in the _Primary Provisioned Geography_.

Create a list of your users and include their user principal name (UPN) and the location code for the appropriate preferred data location. Include your test user and your initial pilot group to start with. You'll need this list for the configuration procedures.

If your users are synchronized from an on-premises Active Directory system to Azure Active Directory, you must set the preferred data location as an Active Directory attribute and synchronize it by using Azure Active Directory Connect. You cannot directly configure the preferred data location for synchronized users using Azure AD PowerShell. The steps to set up PDL in Active Directory and Synchronize it are covered in [Azure Active Directory Connect sync: Configure preferred data location for Microsoft 365 resources](/azure/active-directory/connect/active-directory-aadconnectsync-feature-preferreddatalocation).

The administration of a Multi-Geo _Tenant_ can differ from a non-multi-geo _Tenant_, as many of the SharePoint Online and OneDrive for Business settings and services are multi-geo aware. We recommend that you review [Administering a multi-geo environment](administering-a-multi-geo-environment.md) before you proceed with your configuration.

Read [User experience in a multi-geo environment](multi-geo-user-experience.md) for details about your end users' experience in a Multi-Geo environment.

To get started configuring Microsoft 365 Multi-Geo, see [Configure Microsoft 365 Multi-Geo](multi-geo-tenant-configuration.md).

Once you've completed the configuration, remember to [migrate your users' OneDrive libraries](move-onedrive-between-geo-locations.md) as needed to get your users working from their preferred data locations.

## Related topics

[Microsoft 365 Multi-Geo eDiscovery configuration](./multi-geo-ediscovery-configuration.md)
