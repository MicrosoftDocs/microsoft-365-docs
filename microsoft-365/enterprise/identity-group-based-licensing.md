---
title: "Step 11: Group-based licensing"
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

# Step 11: Group-based licensing

![This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Optional-BothSKUs.png)

**Summary:** 

With group-based licensing, you can configure a security group in Azure AD to automatically assign licenses from a set of subscriptions to all the members of the group. If a user account is added to or removed from the group, the licenses for the configured subscriptions assigned to the group will be automatically assigned or removed from the user account.

For Microsoft 365 Enterprise, you configure Azure AD security groups to assign both of these licenses:

- Office 365 Enterprise E3 or E5
- Enterprise Mobility + Security E3 or E5
- 
To plan for group-based licenses for Microsoft 365 Enterprise, you need to determine which groups from Step 2 contain a list of accounts such that all the users in that groups must have both Office 365 and EMS licenses. Groups that contain Azure B2B accounts, for example, should not be configured for group-based licensing. Additionally, you need to ensure that you have enough licenses for all the group members. When you run out of licenses, new users are not assigned licenses until licenses become available.

See additional information on [Group-based licensing basics in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-licensing-whatis-azure-portal).

See the [steps to configure group-based licensing for an Azure security group](https://docs.microsoft.com/azure/active-directory/active-directory-licensing-group-assignment-azure-portal).

The results of this step are:

- You have identified which security groups are appropriate for group-based licensing.
- You have configured the appropriate groups for group-based licensing.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step11) corresponding to this step.


## Next step

[Step 12: Automatic group membership based on account attributes](identity-automatic-group-membership.md)

