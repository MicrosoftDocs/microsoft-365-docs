---
title: "Configure Microsoft 365 Lighthouse portal security"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "Managed Service Providers (MSPs) can follow the steps in this article to configure Microsoft 365 Lighthouse portal security."
---

# Configure Microsoft 365 Lighthouse portal security

> [!NOTE]
> The features described in this article are in Preview, are subject to change, and are only available to partners who meet the [requirements](m365-lighthouse-requirements.md). If your organization does not have Microsoft 365 Lighthouse, see [Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md).

Protecting access to customer data when a Managed Service Provider (MSP) has delegated access permissions to its tenants is a cybersecurity priority. Microsoft 365 Lighthouse comes with both required and optional capabilities to help you configure Microsoft 365 Lighthouse portal security.

## Set up multifactor authentication (MFA)

As mentioned in the blog post [Your Pa$$word doesn't matter](https://techcommunity.microsoft.com/t5/azure-active-directory-identity/your-pa-word-doesn-t-matter/ba-p/731984):

> "Your password doesn't matter, but MFA does. Based on our studies, your account is more than 99.9% less likely to be compromised if you use MFA."

When users access Microsoft 365 Lighthouse for the first time, they'll be prompted to set up MFA if their Microsoft 365 account doesn't already have it configured. Users won't be able to access Microsoft 365 Lighthouse until the required MFA setup step is completed. To learn more about authentication methods, see [Set up your Microsoft 365 sign-in for multifactor authentication](https://support.microsoft.com/office/ace1d096-61e5-449b-a875-58eb3d74de14).

## Set up roles to manage customer tenants

Access to customer tenant data and settings in Microsoft 365 Lighthouse is restricted to the Admin Agent and Helpdesk Agent roles from the Cloud Solutions Provider (CSP) program.

You can check which users in the partner tenant have the Admin Agent and Helpdesk Agent roles by reviewing the security group memberships on the [Azure AD – All Groups](https://portal.azure.com/#blade/Microsoft_AAD_IAM/GroupsManagementMenuBlade/AllGroups) page. To learn how to assign CSP program roles and other permissions to users, see [Assign roles and permissions to users](/partner-center/permissions-overview). As an MSP, if you don't already have delegated access privileges to customer tenants, learn how to get them in the article [Obtain permissions to manage a customer's service or subscription](/partner-center/customers-revoke-admin-privileges).

The following table lists the permissions required for the different Microsoft 365 Lighthouse pages to view and act on customer tenant data and settings for the Admin Agent and Helpdesk Agent roles.<br><br>

| Microsoft 365 Lighthouse page | Admin Agent permissions | Helpdesk Agent permissions |
|--|--|--|
| Home | <ul><li>View all</li></ul> | <ul><li>View all</li></ul> |
| Tenants | <ul><li>View all</li><li>Update customer contacts and website</li><li>View and apply deployment plans</li></ul> | <ul><li>View all</li><li>Update customer contacts and website</li><li>View deployment plans</li></ul> |
| Users | <ul><li>View all</li><li>Reset password</li><li>Block sign-in</li><li>Enable MFA</li></ul> | <ul><li>View all</li><li>Reset password</li><li>Block sign-in</li></ul> |
| Devices | <ul><li>View all</li></ul> | <ul><li>View all</li></ul> |
| Threats | <ul><li>View all</li><li>Run quick scan</li><li>Run full scan</li><li>Reboot device</li><li>Update antivirus</li></ul> | <ul><li>View all</li></ul> |
| Baselines | <ul><li>View all</li></ul> | <ul><li>View all</li></ul> |
| Service health | <ul><li>View all*</li></ul> | <ul><li>View all*</li></ul> |

> [!NOTE]
> Currently, to take the actions marked with * in the table, users will also need to have the Azure AD role in the partner tenant with the following property set: **microsoft.office365.serviceHealth/allEntities/allTasks**. For a list of Azure AD roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).

Given the broad permissions associated with the Admin Agent role, we suggest adhering to the principle of [least privileged access](/azure/active-directory/develop/secure-least-privileged-access) when designating a partner tenant user as an Admin Agent versus Helpdesk Agent. One way to do this is to assign the Helpdesk Agent role to the required partner tenant users. This lets them view customer data and settings but not make broad changes. Then, when needed, use the just-in-time access approval capabilities of Azure AD Privileged Identity Management (PIM) to give users a time-scoped Admin Agent role.

## Set up Azure AD Privileged Identity Management (PIM)

MSPs can minimize the number of people who have access to secure information or resources by using Azure AD Privileged Identity Management (PIM). PIM reduces the chance of a malicious person gaining access to resources or authorized users inadvertently impacting a sensitive resource. MSPs can also grant users just-in-time privileged access to resources and monitor what the designated users are doing with their privileged access.

> [!NOTE]
> Using Azure AD PIM requires an Azure AD Premium P2 license in the partner tenant.

The following steps elevate partner tenant users to time-scoped Admin Agent roles by using Azure AD PIM:

1. Create a role-assignable group as described in the article [Create a group for assigning roles in Azure Active Directory](/azure/active-directory/roles/groups-create-eligible).

2. Go to [Azure AD – All Groups](https://portal.azure.com/#blade/Microsoft_AAD_IAM/GroupsManagementMenuBlade/AllGroups) and add the new group as a member of the Admin Agents group.

3. Set up privileged access to the new group as described in the article [Assign eligible owners and members for privileged access groups](/azure/active-directory/privileged-identity-management/groups-assign-member-owner).

To learn more, see [What is Privileged Identity Management?](/azure/active-directory/privileged-identity-management/pim-configure)

## Other roles and permissions

The following table lists partner tenant roles and their associated permissions.<br><br>

| Partner tenant roles | Permissions within partner tenant |
|--|--|
| Global Administrator of partner tenant | <ul><li>Sign up for Microsoft 365 Lighthouse in the Microsoft 365 admin center.</li><li>Accept partner contract amendments during the first-run experience.</li><li>View customer tenants on the Tenants page.\*</li><li>Activate and inactivate a tenant.\*</li><li>Update customer contacts and website.\*</li><li>Create, update, and delete tags.\*</li><li>Assign and remove tags from a customer tenant.\*</li></ul> |
| Administrator of partner tenant with at least one<br> Azure AD role assigned with the following property set:<br> **microsoft.office365.supportTickets/allEntities/allTasks**<br> (For a list of Azure AD roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).) | <ul><li>Create Microsoft 365 Lighthouse service requests.</li></ul> |

> [!NOTE]
> Currently, to take the actions marked with * in the table, the Global Administrator must assume the Admin Agent role.

## Related content

[Overview of Microsoft 365 Lighthouse](m365-lighthouse-overview.md) (article)\
[Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)