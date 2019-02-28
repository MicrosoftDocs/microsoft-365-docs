---
title: "Step 12: Set up automatic licensing"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/01/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-identity-device-management
- Strat_O365_Enterprise
ms.custom:
description: Understand and configure group-based licensing for Azure AD groups.
---

# Step 12: Set up automatic licensing

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![](./media/deploy-foundation-infrastructure/identity_icon-small.png)

In this step, you'll configure security groups in Azure AD to automatically assign licenses from a set of subscriptions to all the members of the group. This is known as *group-based licensing*. If a user account is added to or removed from the group, the licenses for the group’s subscriptions will be automatically assigned or removed from the user account.

For Microsoft 365 Enterprise, you'll configure Azure AD security groups to assign both of these licenses:

- Office 365 Enterprise E3 or E5
- Enterprise Mobility + Security (EMS) E3 or E5

Using the groups you identified in Step 2, look for groups that contain a list of accounts where all users in that group must have both Office 365 and EMS licenses. Make sure you have enough licenses for all the group members. If you run out of licenses, new users won’t be assigned licenses until licenses become available.

>[!Note]
>You should not configure *group-based licensing* for groups that contain Azure business to business (B2B) accounts.
>

See additional information on [Group-based licensing basics in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-licensing-whatis-azure-portal).

See the [steps to configure group-based licensing for an Azure security group](https://docs.microsoft.com/azure/active-directory/active-directory-licensing-group-assignment-azure-portal).

The results of this step are:

- You've identified which security groups are appropriate for group-based licensing.
- You've configured these groups for group-based licensing.

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Automate licenses and group membership](automate-licenses-group-membership-microsoft-365-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-group-license) for this step.

## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step13.png)| [Monitor tenant and sign-in activity](identity-azure-ad-access-usage-reporting.md) |

