---
title: "Microsoft 365 Multi-Geo"
ms.reviewer:
ms.date: 10/07/2024
ms.author: kvice
author: kelleyvice-msft
manager: scotv
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: multi-tenant
ms.custom: seo-marvel-apr2020
ms.collection: 
- Strat_SP_gtc
- must-keep
ms.localizationpriority: medium
f1.keywords:
- NOCSH
description: In this article, learn how to expand your Microsoft 365 presence to multiple geographic regions with Microsoft 365 Multi-Geo.
---

# Microsoft 365 Multi-Geo

The Microsoft 365 Multi-Geo Capabilities add-on provides Enterprise Agreement customers with the ability to expand their Microsoft 365 presence to multiple geographic regions within a single existing Microsoft 365 _Tenant_. Multi-Geo enables customers to manage data-at-rest locations at a granular level for their users, SharePoint sites, Microsoft 365 Groups, and Microsoft Teams teams level. Multi-Geo is targeted to customers who have a need to store data in multiple geographies to satisfy their data residency requirements.
  
Starting June 1, 2023, CSP partners can purchase Multi-Geo Capabilities for their customers who are using Microsoft 365, Office 365, Exchange, OneDrive and SharePoint subscriptions. With Microsoft 365 Multi-Geo, CSP partners will be able to ensure their customers meet their data residency requirements.
  
Microsoft 365 Multi-Geo is designed to meet your data residency requirements while retaining single-tenant administration and full-fidelity collaboration experiences between users as necessary.

If a customer requires performance optimization functionalities for Microsoft 365, see [Network planning and performance tuning for Microsoft 365](network-planning-and-performance.md) or contact your support group.

> [!NOTE]
> Exchange Online, SharePoint, OneDrive, and Microsoft Teams are available for Multi-Geo configuration. For more information about data residency commitments, see [Exchange Online](m365-dr-workload-exo.md), [SharePoint and OneDrive](m365-dr-workload-spo.md), and [Microsoft Teams](m365-dr-workload-teams.md#data-residency-commitments-available) for more details.

For a video introduction to Microsoft 365 Multi-Geo, see [SharePoint and OneDrive Multi-Geo to control where your data resides](https://www.youtube.com/watch?v=Do9U3JuROhk).

## Multi-Geo architecture

In a Multi-Geo environment, your Microsoft 365 _Tenant_ consists of a central location (where your Microsoft 365 subscription was originally provisioned) and one or more satellite locations. In a Multi-Geo enabled _Tenant_, the information about geo locations, groups, and user information, is mastered in Microsoft Entra ID. Because your _Tenant_ information is mastered centrally and synchronized into each geo location, sharing and experiences involving anyone from your company contain global awareness.

## Licensing

Microsoft 365 Multi-Geo is available as an add-on to the following Microsoft 365 subscription plans.

Enterprise Agreement customers must purchase a quantity of Multi-Geo licenses equal to or greater than 5% of their total eligible users. Similarly, CSP partners must purchase and assign a quantity of Multi-Geo licenses equal to or greater than 5% of their customers' total eligible Microsoft 365 users. For Enterprise customers, user subscription licenses must be on the same Enterprise Agreement as the Multi-Geo Services licenses. Contact your Microsoft account team for details.

- Microsoft 365 F1, F3, E3, or E5
- Office 365 F3, E1, E3, or E5
- Standalone Exchange Online Plan 1 or Plan 2
- Standalone OneDrive Plan 1 or Plan 2
- Standalone SharePoint Plan 1 or Plan 2

**Note that Small Business products do not currently qualify for Multi-Geo, even if they contain elements of the above list.**

Note that _Multi-Geo Capabilities in Microsoft 365_ is a user-level add-on license. You need a license for each user that you want to host in a _Satellite Geography_ location. You can add more licenses over time as you add users in _Satellite Geography_ locations.

There are no Multi-Geo licenses specific to shared resources such as SharePoint Sites, Microsoft 365 Groups, or Microsoft Teams teams. If enough Multi-Geo user licenses have been acquired, then customers are eligible to use Multi-Geo with shared resources without limitation.

## Microsoft 365 Multi-Geo availability

Microsoft 365 Multi-Geo is currently offered in these regions:

[!INCLUDE [Microsoft 365 Multi-Geo locations](../includes/microsoft-365-multi-geo-locations.md)]

To learn more about the definition of each region such as what countries or cities contain the datacenters, see [Overview and Definitions](m365-dr-overview.md).

If you utilize Microsoft Purview eDiscovery Standard or Premium, see [Microsoft 365 Multi-Geo eDiscovery configuration](multi-geo-ediscovery-configuration.md) and [Set up compliance boundaries for eDiscovery investigations](/purview/ediscovery-set-up-compliance-boundaries#searching-and-exporting-content-in-multi-geo-environments) for additional information on region usage and data storage as it relates to Microsoft Purview eDiscovery.

## Getting started

Whether you're a CSP partner managing your customer’s Microsoft 365 subscriptions or an Enterprise Agreement customer managing your own subscriptions, you can follow these steps to get started with Multi-Geo:

1. Ensure that you purchase Multi-Geo for at least 5% of the total eligible users in your Microsoft 365 subscription. Remember that you'll need a license for each user you want to host in a _Satellite Geography_ location.

2. Before you can start using Microsoft 365 Multi-Geo, Microsoft needs to configure your _Tenant_ for Multi-Geo support. This one-time automatic configuration process is triggered after you order the _Multi-Geo Capabilities in Microsoft 365_ and the licenses show up in your _Tenant_. You'll receive workload-specific notifications in the [Microsoft 365 message center](https://support.office.com/article/38FB3333-BFCC-4340-A37B-DEDA509C2093) once the _Tenant_ has completed the configuration process for each workload, and then you may begin configuring and using your Microsoft 365 Multi-Geo capabilities. The time required to configure a _Tenant_ for Multi-Geo support varies from _Tenant_ to _Tenant_, but most _Tenants_ finish within a month after receipt of the feature licenses. Larger or more complex _Tenants_ may require more time to complete the configuration process.

3. Read [Plan your multi-geo environment](plan-for-multi-geo.md).

4. Learn about [administering a multi-geo environment](administering-a-multi-geo-environment.md) and [how your users will experience the environment](multi-geo-user-experience.md).

5. When you're ready to set up Microsoft 365 Multi-Geo, [configure your tenant for multi-geo](multi-geo-tenant-configuration.md).

6. [Set up search](configure-search-for-multi-geo.md).
  
> [!NOTE]
> For more information on the Microsoft 365 services that support Multi-Geo, see the [EXO](m365-dr-workload-exo.md), [ODSP](m365-dr-workload-spo.md) and [Teams](m365-dr-workload-teams.md) workload data residency pages for more details.

## See also

[Multi-Geo in Exchange Online and OneDrive](https://Aka.ms/GoMultiGeo)

[Multi-Geo Capabilities in OneDrive and SharePoint](multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-microsoft-365.md)

[Multi-Geo Capabilities in Exchange Online](multi-geo-capabilities-in-exchange-online.md)

[Teams experience in a multi-geo environment](/microsoftteams/teams-experience-o365odb-spo-multi-geo)
