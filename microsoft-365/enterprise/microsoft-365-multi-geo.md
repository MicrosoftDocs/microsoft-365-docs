---
title: "Microsoft 365 Multi-Geo"
ms.reviewer: adwood
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.custom: seo-marvel-apr2020
ms.collection: Strat_SP_gtc
localization_priority: Normal
f1.keywords:
- NOCSH
description: In this article, learn how to expand your Microsoft 365 presence to multiple geographic regions with Microsoft 365 Multi-Geo.
---

# Microsoft 365 Multi-Geo

With Microsoft 365 Multi-Geo, your organization can expand its Microsoft 365 presence to multiple geographic regions and/or countries within your existing tenant. Reach out to your Microsoft Account Team to sign up your Multi-National Company for Microsoft 365 Multi-Geo.
  
With Microsoft 365 Multi-Geo, you can provision and store data at rest in the geo locations that you've chosen to meet data residency requirements, and at the same time unlock your global roll out of modern productivity experiences to your workforce.

#### Video: Introducing Microsoft 365 Multi-Geo

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1Yk6B?autoplay=false]

In a Multi-Geo environment, your Microsoft 365 tenant consists of a central location (where your Microsoft 365 subscription was originally provisioned) and one or more satellite locations. In a multi-geo tenant, the information about geo locations, groups, and user information, is mastered in Azure Active Directory (Azure AD). Because your tenant information is mastered centrally and synchronized into each geo location, sharing and experiences involving anyone from your company contain global awareness.

![Screenshot of multi-geo map from the SharePoint admin center](../media/multi-geo-world-map.png)

Note that Microsoft 365 Multi-Geo is not designed for performance optimization, it is designed to meet data residency requirements. For information about performance optimization for Microsoft 365, see [Network planning and performance tuning for Microsoft 365](https://support.office.com/article/e5f1228c-da3c-4654-bf16-d163daee8848) or contact your support group.

## Terminology

Here are the key terms used in describing Microsoft 365 Multi-Geo:

- **Central location** - the geo location where your tenant was originally provisioned.
- **Geo administrator** - An administrator who can administer one or more specified satellite locations.
- **Geo code** - a three-letter code for a given geo location.
- **Geo location** – A geographic location that can be used in a multi-geo tenant to host data, including Exchange mailboxes and OneDrive and SharePoint sites.
- **Preferred Data Location (PDL)** – A user property set by the administrator that indicates where the geo location where the users Exchange mailbox and OneDrive should be provisioned. The PDL also determines where SharePoint sites that are created by the user are provisioned.
- **Satellite location** – The geo locations where the geo-aware Microsoft 365 workloads (SharePoint, OneDrive, and Exchange) are enabled in a multi-geo tenant.
- **Tenant** – An organization's representation in Microsoft 365 which typically has one or more domains associated with it (for example, contoso.com).

## Licensing

Microsoft 365 Multi-Geo is available as an add-on to the following Microsoft 365 subscription plans for EA customers with a minimum of 250 Microsoft 365 seats in their tenant, and a minimum of 5% of those seats using multi-geo. Please contact your Microsoft account team for details.

- Microsoft 365 F1, E1, E3, or E5
- Exchange Online Plan 1 or Plan 2
- OneDrive for Business Plan 1 or Plan 2
- SharePoint Online Plan 1 or Plan 2

## Microsoft 365 Multi-Geo availability

Microsoft 365 Multi-Geo is currently offered in these regions and countries:

[!INCLUDE [Microsoft 365 Multi-Geo locations](../includes/microsoft-365-multi-geo-locations.md)]

## Getting started

Follow these steps to get started with multi-geo:

1. Work with your account team to add the _Multi-Geo Capabilities in Microsoft 365_ service plan. They will guide you to add the number of licenses needed. Multi-Geo feature is available to EA customers with a minimum of 250 Microsoft 365 subscriptions.

   Before you can start using Microsoft 365 Multi-Geo, Microsoft needs to configure your Exchange Online tenant for multi-geo support. This one-time configuration process is triggered after you order the *Multi-Geo Capabilities in Microsoft 365* service plan and the licenses show up in your tenant. You'll receive notifications in the [Microsoft 365 message center](https://support.office.com/article/38FB3333-BFCC-4340-A37B-DEDA509C2093) once your Multi-Geo licenses are applied and you then may begin configuring and using your Microsoft 365 Multi-Geo capabilities.

2. Read [Plan your multi-geo environment](plan-for-multi-geo.md).

3. Learn about [administering a multi-geo environment](administering-a-multi-geo-environment.md) and [how your users will experience the environment](multi-geo-user-experience.md).

4. When you are ready to set up Microsoft 365 Multi-Geo, [configure your tenant for multi-geo](multi-geo-tenant-configuration.md).

5. [Set up search](configure-search-for-multi-geo.md).

## See also

[Multi-Geo in Exchange Online and OneDrive](https://Aka.ms/GoMultiGeo)

[Multi-Geo Capabilities in OneDrive and SharePoint Online](multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-microsoft-365.md)

[Multi-Geo Capabilities in Exchange Online](multi-geo-capabilities-in-exchange-online.md)

[Teams experience in a multi-geo environment](https://docs.microsoft.com/microsoftteams/teams-experience-o365odb-spo-multi-geo)
