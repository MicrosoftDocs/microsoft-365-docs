---
title: "Step 5: Use groups for management"
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
description: You can use groups to automate management of some administrative tasks.
---

# Step 5: Use groups for management

![Phase 2-Identity](../media/deploy-foundation-infrastructure/identity_icon-small.png)

<a name="identity-self-service-groups"></a>
## Allow users to create and manage their own groups

*This is optional and applies to both the E3 and E5 versions of Microsoft 365*

In this section, you'll identify Azure Active Directory (Azure AD) groups that can be managed by group owners instead of IT administrators. Known as *self-service group management*, this feature allows group owners who are not assigned an administrative role to create and manage security groups. 

Users can request membership in a security group and that request goes to the group owner, rather than an IT administrator. This allows the day-to-day control of group membership to be delegated to team, project, or business owners who understand the business use for the group and can manage its membership.

>[!Note]
>Self-service group management is available only for Azure AD security and Office 365 groups. It is not available for mail-enabled groups, distribution lists, or any group that has been synchronized from your on-premises Active Directory Domain Services (AD DS).
>

For more information, see the [instructions to configure an Azure AD group for self-service management](https://docs.microsoft.com/azure/active-directory/active-directory-accessmanagement-self-service-group-management).

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-self-service-groups) for this section.

<a name="identity-dyn-groups"></a>
## Set up dynamic group membership

*This is optional and applies to both the E3 and E5 versions of Microsoft 365*

In this section, you'll create a series of rules that automatically add or remove user accounts as members of an Azure AD group. This is known as *dynamic group membership*. The rules are based on user account attributes, such as Department or Country.

Here’s how the rules are applied:

- If a new user account matches all the rules for the group, it becomes a member.
- If a user account isn’t a member of the group, but its attributes change so that it matches all the rules for the group, it becomes a member of that group.
- If a user account doesn’t match all the rules for the group, it isn’t added to the group.
- If a user account is a member of the group, but its attributes change so that it no longer matches all the rules for the group, it is removed as a member of the group.

To use dynamic membership, you must first determine the sets of groups that have a common set of user account attributes. For example, all members of the Sales department should be in the Sales Azure AD group, based on the user account attribute Department set to “Sales”.

See the [instructions to create and configure the rules for a dynamic Azure AD group](https://docs.microsoft.com/azure/active-directory/active-directory-groups-dynamic-membership-azure-portal).

The results of this section are:

- A set of Azure AD groups that can be configured for dynamic membership
- A set of rules on each dynamic group

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Automate licenses and group membership](automate-licenses-group-membership-microsoft-365-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-dyn-groups) for this section.

<a name="identity-group-license"></a>
## Set up automatic licensing

*This is optional and applies to both the E3 and E5 versions of Microsoft 365*

In this section, you'll configure security groups in Azure AD to automatically assign licenses from a set of subscriptions to all the members of the group. This is known as *group-based licensing*. If a user account is added to or removed from the group, the licenses for the group’s subscriptions will be automatically assigned or unassigned from the user account.

For Microsoft 365 Enterprise, you'll configure Azure AD security groups to assign the appropriate Microsoft 365 Enterprise license.

Make sure you have enough licenses for all the group members. If you run out of licenses, new users won’t be assigned licenses until licenses become available.

>[!Note]
>You should not configure *group-based licensing* for groups that contain Azure business to business (B2B) accounts.
>

See additional information on [Group-based licensing basics in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-licensing-whatis-azure-portal).

See the [steps to configure group-based licensing for an Azure security group](https://docs.microsoft.com/azure/active-directory/active-directory-licensing-group-assignment-azure-portal).

The results of this section are:

- You've identified which security groups are appropriate for group-based licensing.
- You've configured these groups for group-based licensing.

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Automate licenses and group membership](automate-licenses-group-membership-microsoft-365-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-group-license) for this section.

|||
|:-------|:-----|
|![Step 6](../media/stepnumbers/Step6.png)| [Configure identity governance](identity-configure-identity-governance.md) |
