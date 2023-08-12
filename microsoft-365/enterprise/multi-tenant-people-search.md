---
title: "Microsoft 365 Multi-Tenant Organization People Search"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/13/2023
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn about People Search in multi-tenant Microsoft 365 organizations.
---

# Microsoft 365 Multi-Tenant Organization People Search (public preview)

The Multi-Tenant Organization (MTO) People Search is a collaboration feature that enables search and discovery of people across multiple tenants. A tenant admin can enable cross-tenant synchronization that will allow users to be synced to another tenant and be discoverable in its global address list. Once enabled, users will be able to search and discover synced user profiles from the other tenant and view their corresponding people cards.

>[!NOTE]
>This Public Preview program is designed to give customers the opportunity to try out the multi-tenant people search feature. You can then validate the scenario and provide feedback to the product development team. The purpose of this article is to:
>
>- Give an overview of the feature
>- Define use cases that we currently support as part of the preview
>- Provide instructions on how you can configure and test the feature

![AAD sync](../media/mt-people-search/aad-sync.png)

> _Fig 1: Azure AD cross tenant synchronization illustration_

## Example scenario

Megan's user account has been synced from the _Fabrikam_ tenant to the target tenant, _Contoso_. Nestor from Contoso would like to search and view Megan's people card in Teams. After Megan's account has been synced, Nestor can search and discover Megan's people card in any of the Microsoft 365 apps.

![Limited people card](../media/mt-people-search/limited-people-card.png)

> _Fig 2: User can view a limited people card_


## Known limitations

- The Microsoft Teams audio and video call buttons will direct the call to the Megan's Contoso tenant Teams instance and not the Teams instance target tenant (Fabrikam).
- The current experience provides limited information on the people card (basic contact information, job title and office location).
- There is no external tag to differentiate synced users and internal users. For example, if there was a megan@fabrikam and megan@Contoso there's no (External) tag to show that megan@fabrikam is a different user.

## External Member Limitations

- External member isn't supported in Teams Connect shared channels.
- Converting an external guest into an external member or converting an external member into an external guest isn't currently supported by Teams. For more information, see Guest access in Microsoft Teams.
- External member isn't supported in Power BI. For more information, see Distribute Power BI content to external guest users using Azure Active Directory B2B.


## Prerequisites

To test the MTO People Search feature, it is assumed that you already have the following settings:

- Two Azure AD/Microsoft 365 tenants
- Both tenants have the **Azure AD Cross-tenant Synchronization** feature enabled
- Provisioned users from home to target tenants

## Use Cases

Multi-tenant organization people search is supported across a range of scenarios and Microsoft 365 applications. Some of the scenarios you can test and validate are described below:

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

- _Cross-Tenant synchronization_ is a feature that enables multi-tenant organizations to grant users access to applications in other tenants within the organization. It achieves this by synchronizing internal member users from a home tenant into a resource tenant as external B2B users.
