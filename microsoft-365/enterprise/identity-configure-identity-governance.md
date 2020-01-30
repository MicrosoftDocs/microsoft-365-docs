---
title: "Step 7: Configure identity governance"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/20/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-identity-device-management
- Strat_O365_Enterprise
ms.custom:
description: Understand and configure identity governance for your Azure AD tenant.
---

# Step 6: Configure identity governance

![Phase 2-Identity](./media/deploy-foundation-infrastructure/identity_icon-small.png)

Identity governance is all about protecting, monitoring, and auditing access to critical assets while ensuring employee productivity. For example, with identity governance, you can ensure that the right users have the right access to the right resources and determine if that access changes over time.

See [this article](https://docs.microsoft.com/azure/active-directory/governance/identity-governance-overview) for more information about identity governance for Azure Active Directory (Azure AD).


*This is optional and applies only to the E5 version of Microsoft 365 Enterprise*


<a name="identity-access-reviews"></a>
## Set up Azure AD access reviews

*This is optional and only applies to the E5 version of Microsoft 365 Enterprise*

In this step, you'll set up Azure AD access reviews, which allow you to review a user's access to ensure only the right people have continued access. For example:

- As a new employee joins your organization, you need to ensure they have the right access to be productive.
- As that employee moves to other teams, locations, or departments, you need to ensure that their access to previous teams, locations, or departments are removed as needed.
- When that employee or a guest leaves your organization, you need to ensure their access is removed.

This is especially important if your organization is subject to security audits to determine if user accounts have too much access, which could result in fines if in violation of industry or regional regulations.

See [this article](https://docs.microsoft.com/azure/active-directory/governance/access-reviews-overview) for more information about Azure AD access reviews.

Azure AD Privileged Identity Management (PIM) provides additional controls tailored to securing access rights for resources, across Azure AD, Azure, and other Microsoft cloud service. Azure AD PIM provides a comprehensive set of governance controls to help secure your company's resources such as directory, Office 365, and Azure resource roles. As with other forms of access, organizations can use access reviews to configure recurring access recertification for all users in administrator roles. Azure AD PIM is only available with the E5 version of Microsoft 365 Enterprise.

See these articles to configure different types of access reviews:

- [Groups and apps](https://docs.microsoft.com/azure/active-directory/governance/create-access-review)
- [Azure AD roles](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-how-to-start-security-review?toc=%2fazure%2factive-directory%2fgovernance%2ftoc.json)
- [Azure resource roles](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-resource-roles-start-access-review?toc=%2fazure%2factive-directory%2fgovernance%2ftoc.json)

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-access-reviews) for this section.

## Next step

[Identity infrastructure exit criteria](identity-exit-criteria.md)

