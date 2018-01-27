---
title: "Step 12: Automatic group membership based on account attributes"
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

# Step 12: Automatic group membership based on account attributes

![This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Optional-BothSKUs.png)

**Summary:** 

In Azure AD, you can automatically and dynamically add or remove user accounts as members of an Azure AD group by creating a series of rules that are assigned to the group. 

- If a new user account matches all of the rules for the group, it becomes a member. 
- If a user account who is not a member of the group its attributes change so that it matches all the rules for the group, it becomes a member of that group.
- If a user account does not match all of the rules for the group, it is not added to the group.
- If a user account who is not a member of the group has attributes that change so that it no longer matches the rules for the group, it is removed as a member of the group.

The rules that you configure for dynamic membership are based on user account attributes, such as Department or Country.

To use dynamic membership, you must first determine the sets of groups that have a common set of user account attributes. For example, all of the members of the Sales department should be in the Sales Azure AD group, based on the user account attribute Department set to “Sales”.

See the [instructions to create and configure the rules for a dynamic Azure AD group](https://docs.microsoft.com/azure/active-directory/active-directory-groups-dynamic-membership-azure-portal).

The results of this step are:

- A set of Azure AD dynamic groups
- A set of rules on each dynamic group
- 
As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step12) corresponding to this step.

## Next step

[Step 13: Azure AD access and usage reporting](identity-azure-ad-access-usage-reporting.md)


