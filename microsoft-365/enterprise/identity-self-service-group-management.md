---
title: "Step 14: Allow users to create and manage their own groups"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/01/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Understand and configure Azure AD self-service group management.
---

# Step 14: Allow users to create and manage their own groups

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In Step 14, you identify Azure AD groups that can be managed by group owners instead of IT administrators. Known as self-service group management, this feature allows group owners who are not assigned an administrative role to create and manage security groups. Users can request membership in a security group and that request goes to the group owner, rather than an IT administrator. This allows the day-to-day control of group membership to be delegated to team, project, or business owners who understand the business use for the group and can manage its membership.

>[!Note]
>Self-service group management is available only for Azure AD security and Office 365 groups. It is not available for mail-enabled groups, distribution lists, or any group that has been synchronized from your on-premises Windows Server Active Directory forest.
>

For more information, see the [instructions to configure an Azure AD group for self-service management](https://docs.microsoft.com/azure/active-directory/active-directory-accessmanagement-self-service-group-management).

The results of this step are specific groups that are enabled to allow the group owners to manage their membership.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step14) corresponding to this step.

## Next step

[Step 15: Protect against credential compromise](identity-azure-ad-identity-protection.md)
