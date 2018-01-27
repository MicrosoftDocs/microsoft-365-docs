---
title: "Step 14: Self-service group management"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 01/29/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: ""
---

# Step 14: Self-service group management

![This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Optional-BothSKUs.png)

**Summary:** 

With Azure AD self-service group management, group owners who are not assigned an administrative role can create and manage security groups. Users can request membership in a security group and that request goes to the group owner, rather than an IT administrator. This allows the day-to-day control of group membership to be delegated to team, project, or business owners who understand the business use for the group and can manage its membership.

For example, group-based access must be granted to an application or resource, such as a SharePoint Online team site. Rather than an IT administrator managing the group membership for an Azure security group, an administrator instructs a business or team owner create the group and manage its membership. The IT administrator grants access to the application or resource to the new group and subsequent group membership is managed by the business or team owner.

>[!Note]
>Self-service group management is available only for Azure AD security and Office 365 groups. It is not available for mail-enabled groups, distribution lists, or any group that has been synchronized from your on-premises Windows Server Active Directory forest.
>

To use self-service group management, you must first determine which groups are candidates for self-service management and then communicate the responsibilities of group management to their intended owners.

Then, see the [instructions to configure an Azure AD group for self-service management](https://docs.microsoft.com/azure/active-directory/active-directory-accessmanagement-self-service-group-management).

The results of this step are specific groups that are enabled to allow the group owners to manage their membership.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step14)
 corresponding to this step.

## Next step

[Step 15: Azure AD Identity Protection](identity-azure-ad-identity-protection.md)

