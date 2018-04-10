---
title: "Step 12: Set up dynamic group membership"
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
description: Understand and configure automatic group membership based on account attributes.
---

# Step 12: Set up dynamic group membership

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In Step 12, you'll create a series of rules that automatically add or remove user accounts as members of an Azure AD group. This is known as *dynamic group membership*. The rules are based on user account attributes, such as Department or Country.

Here’s how the rules are applied:

- If a new user account matches all the rules for the group, it becomes a member.
- If a user account isn’t a member of the group, but its attributes change so that it matches all the rules for the group, it becomes a member of that group.
- If a user account doesn’t match all the rules for the group, it isn’t added to the group.
- If a user account is a member of the group, but its attributes change so that it no longer matches all the rules for the group, it is removed as a member of the group.

To use dynamic membership, you must first determine the sets of groups that have a common set of user account attributes. For example, all members of the Sales department should be in the Sales Azure AD group, based on the user account attribute Department set to “Sales”.

See the [instructions to create and configure the rules for a dynamic Azure AD group](https://docs.microsoft.com/azure/active-directory/active-directory-groups-dynamic-membership-azure-portal).

The results of this step are:

- A set of Azure AD groups that can be configured for dynamic membership
- A set of rules on each dynamic group

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step12) for this step.

## Next step

[Step 13: Monitor tenant and sign-in activity](identity-azure-ad-access-usage-reporting.md)
