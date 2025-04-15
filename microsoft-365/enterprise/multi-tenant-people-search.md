---
title: "Microsoft 365 multitenant Organization People Search"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 04/09/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: multi-tenant
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- must-keep
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn about People Search in multitenant Microsoft 365 organizations.
---

# Microsoft 365 Multitenant Organization People Search 

The multitenant Organization (MTO) People Search is a collaboration feature that enables search and discovery of people across multiple tenants. A tenant admin can enable cross-tenant synchronization that allows users to be synced to another tenant and be discoverable in its global address list. Once enabled, users are able to search and discover synced user profiles from the other tenant and view their corresponding people cards.

Learn more about [Cross Tenant Synchronization](/entra/identity/multi-tenant-organizations/cross-tenant-synchronization-overview)


![Azure AD Sync](../media/mt-people-search/aad-sync.png)

> _Fig 1: Microsoft Entra cross tenant synchronization illustration_

## Example scenario

Megan's user account has been synced from the _Fabrikam_ tenant to the target tenant, _Contoso_. Nestor from Contoso would like to search and view Megan's people card in Teams. After Megan's account has been synced, Nestor can search and discover Megan's people card in any of the Microsoft 365 apps.

![Limited people card](../media/mt-people-search/limited-people-card.png)

> _Fig 2: User can view a limited people card_

## Known limitations

The current experience provides limited information on the people card (basic contact information, job title and office location).

## Prerequisites

To test the MTO People Search feature, it's assumed that you already have the following settings:

- Two Microsoft Entra / Microsoft 365 tenants
- Both tenants have the **Microsoft Entra Cross-tenant Synchronization** feature enabled
- Provisioned users from home to target tenants
- Users are provisioned as UserType = member

## Use Cases

Multitenant organization people search is supported across a range of scenarios and Microsoft 365 applications. Some of the scenarios you can test and validate are described below:

1. **Microsoft Outlook (OWA, desktop and mobile app)**

   - Nestor (<nestor@contoso.com>) searches for "Megan" on the centralized search bar in OWA and gets the results and can view Megan's people card with limited profile information.
   - Nestor types in "Megan" in the _To_ line of the email and can send an email to Megan after getting the results for <megan@fabrikam.com>.
   - Nestor \@mentions "Megan" in the body of the email and can get the result for <megan@fabrikam.com>.
   - Nestor types in "Megan" in the _cc_ line of the email and can get the result for <megan@fabrikam.com>.
   - Nestor can hover and/or click on Megan's profile picture/initials to view Megan's limited people card.

2. **Microsoft OneDrive/SharePoint**

   - Nestor (<nestor@contoso.com>) searches for "Megan" in the centralized search bar on SharePoint and can get the result for <megan@fabrikam.com>.
   - Nestor can hover and/or click on Megan's profile picture/initials to view Megan's limited people card.
   - Nestor can share and collaborate on Office documents with Megan.

3. **Bing for Business**

   - Nestor (<nestor@contoso.com>) searches for "Megan" on the search bar and can view Megan's limited people card (<megan@fabrikam.com>).

## Key terminology

- _Home tenant_: The tenant you want to search from. The direction of the search is _outbound_.

- _Resource tenant_: The tenant you want to search in. The direction of the search is _inbound_.

  A tenant can be both home and resource tenant simultaneously.

- _Cross-Tenant synchronization_ is a feature that enables multitenant organizations to grant users access to applications in other tenants within the organization. It achieves this by synchronizing internal member users from a home tenant into a resource tenant as external B2B users.
