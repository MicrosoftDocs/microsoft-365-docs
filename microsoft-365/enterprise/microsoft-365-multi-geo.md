---
title: "Microsoft 365 Multi-Geo"
ms.reviewer:
ms.date: 10/07/2024
ms.author: v-fahasen
author: fhasen-msft
manager: v-nihmi
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

The _Microsoft 365 Multi-Geo Capabilities add-on_ ("_Multi-Geo_") provides enterprise customers with the ability to expand their Microsoft 365 presence to multiple geographic regions ("_Geographies_") within a single existing Microsoft 365 _Tenant_. Customers must license _Multi-Geo_ through the Enterprise Agreement, Web Direct, or CSP* channels. _Multi-Geo_ enables customers to manage data-at-rest locations at a granular level for their users, SharePoint sites, Microsoft Teams teams, and Microsoft 365 Copilot content of interactions. _Multi-Geo_ is for enterprise customers who need to store data in multiple _Geographies_ to satisfy data residency requirements, while retaining single-tenant administration and full-fidelity collaboration experiences between users as necessary.

Customers that require performance optimization functionalities for Microsoft 365 should refer to [Network planning and performance tuning for Microsoft 365](network-planning-and-performance.md) or contact their Support group.

> [!NOTE]
> Exchange Online, SharePoint, OneDrive, Microsoft Teams, and Microsoft 365 Copilot and Microsoft 365 Copilot Chat are available for _Multi-Geo_ configuration. For more information about data residency commitments, see [Exchange Online](m365-dr-workload-exo.md), [SharePoint and OneDrive](m365-dr-workload-spo.md), [Microsoft Teams](m365-dr-workload-teams.md#data-residency-commitments-available), and [Microsoft 365 Copilot and Microsoft 365 Copilot Chat](m365-dr-workload-copilot.md) for more details.

For a video introduction on _Microsoft 365 Multi-Geo_, see [SharePoint and OneDrive Multi-Geo to control where your data resides](https://www.youtube.com/watch?v=Do9U3JuROhk).

## Multi-Geo architecture

In a _Multi-Geo_ environment, a Microsoft 365 _Tenant_ consists of a _Primary Provisioned Geography_ (where a customer's Microsoft 365 subscription was originally provisioned) _and_ one or more _Satellite Geography_ locations. In a _Multi-Geo_ enabled _Tenant_, the information about _Geography_ locations, groups, and user information, is mastered in _Microsoft Entra ID_. Because a customer's _Tenant_ information is mastered centrally and synchronized into each _Geography_ location, sharing and experiences involving anyone from a customer's organization contain global awareness.

## Licensing

_Microsoft 365 Multi-Geo_ is available as an add-on to the following Microsoft 365 subscription plans:

- Microsoft 365 F1, F3, E3, or E5
- Office 365 F3, E1, E3, or E5
- Standalone Exchange Online Plan 1 or Plan 2
- Standalone OneDrive Plan 1 or Plan 2
- Standalone SharePoint Plan 1 or Plan 2

### Minimum Licensing

Enterprise Agreement customers must purchase a quantity of _Multi-Geo_ licenses equal to or greater than 5% of their total eligible Microsoft 365 users. Similarly, CSP partners must purchase and assign a quantity of _Multi-Geo_ licenses equal to or greater than 5% of their customers' total eligible Microsoft 365 users. For enterprise customers, user subscription licenses must be on the same Enterprise Agreement as the Multi-Geo Services licenses. Customers should contact their Microsoft account team for details.

**Note that Small Business products do not currently qualify for _Multi-Geo_, even if they contain elements of the above list.**

_Multi-Geo Capabilities in Microsoft 365_ is a user-level add-on license. Customers need a license for each user that they want to host in a _Satellite Geography_ location. Customers can add more licenses over time as they add users in _Satellite Geography_ locations.

There are no _Multi-Geo_ licenses specific to shared resources such as SharePoint Sites, Microsoft 365 Groups, Shared Mailboxes, or Microsoft Teams teams. If enough _Multi-Geo_ user licenses have been acquired, then customers are eligible to use _Multi-Geo_ with shared resources without limitation.

## Microsoft 365 Multi-Geo availability

_Microsoft 365 Multi-Geo_ is currently offered in these regions:

[!INCLUDE [Microsoft 365 Multi-Geo locations](../includes/microsoft-365-multi-geo-locations.md)]

To learn more about the definition of each region such as what countries or cities contain the data centers, see [Overview and Definitions](m365-dr-overview.md).

Customers that utilize Microsoft Purview eDiscovery Standard or Premium should refer to [Microsoft 365 Multi-Geo eDiscovery configuration](multi-geo-ediscovery-configuration.md) and [Set up compliance boundaries for eDiscovery investigations](/purview/ediscovery-set-up-compliance-boundaries#searching-and-exporting-content-in-multi-geo-environments) for additional information on region usage and data storage as it relates to Microsoft Purview eDiscovery.

## Getting started

Whether you are a CSP partner managing your customer’s Microsoft 365 subscriptions or an Enterprise Agreement customer managing your own subscriptions, you can follow these steps to get started with _Multi-Geo_:

1. Ensure that you purchase _Multi-Geo_ for at least 5% of the total eligible users in your Microsoft 365 subscription. Remember that you'll need a license for each user you want to host in a _Satellite Geography_ location.

2. Before you can start using _Microsoft 365 Multi-Geo_, Microsoft needs to configure your _Tenant_ for _Multi-Geo_ support. This one-time automatic configuration process is triggered after you order the _Multi-Geo Capabilities in Microsoft 365_ and the licenses show up in your _Tenant_. You'll receive service-specific notifications in the [Microsoft 365 message center](https://support.office.com/article/38FB3333-BFCC-4340-A37B-DEDA509C2093) once the _Tenant_ has completed the configuration process for each service, and then you may begin configuring and using your _Microsoft 365 Multi-Geo Capabilities_. The time required to configure a _Tenant_ for _Multi-Geo_ support varies from _Tenant_ to _Tenant_, but most _Tenants_ finish within a month after receipt of the feature licenses. Larger or more complex _Tenants_ may require more time to complete the configuration process.

3. Read [Plan your multi-geo environment](plan-for-multi-geo.md).

4. Learn about [administering a multi-geo environment](administering-a-multi-geo-environment.md) and [how your users will experience the environment](multi-geo-user-experience.md).

5. When you're ready to set up Microsoft 365 Multi-Geo, [configure your tenant for multi-geo](multi-geo-tenant-configuration.md).

6. [Set up search](configure-search-for-multi-geo.md).
  
> [!NOTE]
> For more information on the Microsoft 365 services that support _Multi-Geo_, see the [EXO](m365-dr-workload-exo.md), [ODSP](m365-dr-workload-spo.md), [Teams](m365-dr-workload-teams.md), and [Microsoft 365 Copilot](m365-dr-workload-copilot.md) service data residency pages for more details.

## See also

[Multi-Geo in Exchange Online and OneDrive](https://Aka.ms/GoMultiGeo)

[Multi-Geo Capabilities in OneDrive and SharePoint](multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-microsoft-365.md)

[Multi-Geo Capabilities in Exchange Online](multi-geo-capabilities-in-exchange-online.md)

[Teams experience in a multi-geo environment](/microsoftteams/teams-experience-o365odb-spo-multi-geo)
