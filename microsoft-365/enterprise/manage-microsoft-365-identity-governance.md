---
title: "Manage Microsoft 365 identity governance"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: overview
ms.prod: office-online-server
localization_priority: Normal
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-mar2020
ms.collection:
- Ent_O365
- M365-subscription-management
search.appverid:
- MET150
- MOE150
- MED150
- BCS160
ms.assetid: 98ca5b3f-f720-4d8e-91be-fe656548a25a
description: "Learn about how to use Microsoft 365 identity governance features."
---

# Manage Microsoft 365 identity governance

Identity governance is all about protecting, monitoring, and auditing access to critical assets while ensuring employee productivity. For example, with identity governance, you can ensure that the right users have the right access to the right resources and determine if that access changes over time.

For more information, See this [overview of identity governance for Azure Active Directory (Azure AD)](/azure/active-directory/governance/identity-governance-overview).

## Set up Azure AD access reviews

Azure AD access reviews allow you to review a user's access to ensure only the right people have continued access. For example:

- As a new employee joins your organization, you need to ensure they have the right access to be productive.
- As that employee moves to other teams, locations, or departments, you need to ensure that their access to previous teams, locations, or departments are removed as needed.
- When that employee or a guest leaves your organization, you need to ensure their access is removed.

This is especially important if your organization is subject to security audits to determine if user accounts have too much access, which could result in fines if in violation of industry or regional regulations.

For more information, see the [overview of access reviews](/azure/active-directory/governance/access-reviews-overview).

See these articles to configure different types of access reviews:

- [Groups and apps](/azure/active-directory/governance/create-access-review)
- [Azure AD roles](/azure/active-directory/privileged-identity-management/pim-how-to-start-security-review?toc=%2fazure%2factive-directory%2fgovernance%2ftoc.json)
- [Azure resource roles](/azure/active-directory/privileged-identity-management/pim-resource-roles-start-access-review?toc=%2fazure%2factive-directory%2fgovernance%2ftoc.json)

## Set up Azure AD entitlement management

Wiht Azure AD entitlement management, you can manage the identity and access lifecycle at scale by automating access request workflows, access assignments, reviews, and expiration.

Your employees need access to various groups, applications, and sites to perform their job. Managing this access can be challenging because requirements change, new applications are added, or users need additional access rights. When you collaborate with other organizations, you may not know who in the other organization needs access to your organization's resources, and outside users won't know what applications, groups, or sites your organization is using.

Azure AD entitlement management can help you more efficiently manage access to groups, applications, and SharePoint sites for internal and outside users.
 
For more information, see the [overview of Azure AD entitlement management](/azure/active-directory/governance/entitlement-management-overview).