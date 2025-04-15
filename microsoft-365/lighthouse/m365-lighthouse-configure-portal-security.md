---
title: "Configure Microsoft 365 Lighthouse portal security"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: taylorau
ms.date: 06/09/2023
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-security
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to configure portal security."
---

# Configure Microsoft 365 Lighthouse portal security

Protecting access to customer data when a Managed Service Provider (MSP) has delegated access permissions to its tenants is a cybersecurity priority. Microsoft 365 Lighthouse comes with both required and optional capabilities to help you configure Lighthouse portal security. You must set up specific roles with multifactor authentication (MFA) enabled before you can access Lighthouse. You can optionally set up Microsoft Entra Privileged Identity Management (PIM) and Conditional Access.

## Set up multifactor authentication (MFA)

As mentioned in the blog post [Your Pa$$word doesn't matter](https://techcommunity.microsoft.com/t5/azure-active-directory-identity/your-pa-word-doesn-t-matter/ba-p/731984):

> "Your password doesn't matter, but MFA does. Based on our studies, your account is more than 99.9% less likely to be compromised if you use MFA."

When users access Lighthouse for the first time, they'll be prompted to set up MFA if their Microsoft 365 account doesn't already have it configured. Users won't be able to access Lighthouse until the required MFA setup step is completed. To learn more about authentication methods, see [Set up your Microsoft 365 sign-in for multifactor authentication](https://support.microsoft.com/office/ace1d096-61e5-449b-a875-58eb3d74de14).

## Set up role-based access control

Role-based access control (RBAC) grants access to resources or information based on user roles. Access to customer tenant data and settings in Lighthouse is restricted to specific roles from the Cloud Solution Provider (CSP) program. To set up RBAC roles in Lighthouse, we recommend using granular delegated administrative privileges (GDAP) to implement granular assignments for users. Delegated administrative privileges (DAP) is still required for the tenant to onboard successfully, but GDAP-only customers will soon be able to onboard without a dependency on DAP. GDAP permissions take precedence when DAP and GDAP coexist for a customer.

To set up a GDAP relationship, see [Obtain granular admin permissions to manage a customer's service - Partner Center](/partner-center/gdap-obtain-admin-permissions-to-manage-customer). For more information on which roles we recommend use Lighthouse, see [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md).

MSP technicians may also access Lighthouse by using Admin Agent or Helpdesk Agent roles via delegated administrative privileges (DAP).

For non-customer tenant-related actions in Lighthouse (for example, onboarding, customer deactivating/reactivating, managing tags, reviewing logs), MSP technicians must have an assigned role in the partner tenant. See [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) for more details on partner tenant roles.

<a name='set-up-azure-ad-privileged-identity-management-pim'></a>

## Set up Microsoft Entra Privileged Identity Management (PIM)

MSPs can minimize the number of people who have high-privilege role access to secure information or resources by using PIM. PIM reduces the chance of a malicious person gaining access to resources or authorized users inadvertently impacting a sensitive resource. MSPs can also grant users just-in-time high privilege roles to access resources, make broad changes, and monitor what the designated users are doing with their privileged access.

> [!NOTE]
> Using Microsoft Entra PIM requires a Microsoft Entra ID P2 license in the partner tenant.

The following steps elevate partner tenant users to time-scoped higher privilege roles by using PIM:

1. Create a role-assignable group as described in the article [Create a group for assigning roles in Microsoft Entra ID](/azure/active-directory/roles/groups-create-eligible).

2. Go to [Microsoft Entra ID – All Groups](https://portal.azure.com/#blade/Microsoft_AAD_IAM/GroupsManagementMenuBlade/AllGroups) and add the new group as a member of a security group for high-privilege roles (for example, Admin Agents security group for DAP or a similarly respective security group for GDAP roles).

3. Set up privileged access to the new group as described in the article [Assign eligible owners and members for privileged access groups](/azure/active-directory/privileged-identity-management/groups-assign-member-owner).

To learn more about PIM, see [What is Privileged Identity Management?](/azure/active-directory/privileged-identity-management/pim-configure)

<a name='set-up-risk-based-azure-ad-conditional-access'></a>

## Set up risk-based Microsoft Entra Conditional Access

MSPs may use risk-based Conditional Access to make sure their staff members prove their identity by using MFA and by changing their password when detected as a risky user (with leaked credentials or per Microsoft Entra threat intelligence). Users must also sign in from a familiar location or registered device when detected as a risky sign-in. Other risky behaviors include signing in from a malicious or anonymous IP address or from an atypical or impossible travel location, using an anomalous token, using a password from a password spray, or exhibiting other unusual sign-in behavior. Depending on a user's risk level, MSPs may also choose to block access upon sign-in. To learn more about risks, see [What is risk?](/azure/active-directory/identity-protection/concept-identity-protection-risks)

> [!NOTE]
> Conditional Access requires a Microsoft Entra ID P2 license in the partner tenant. To set up Conditional Access, see [Configuring Microsoft Entra Conditional Access](/appcenter/general/configuring-aad-conditional-access).

## Related content

[Password reset permissions](/azure/active-directory/roles/permissions-reference#password-reset-permissions) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[View your Microsoft Entra roles in Microsoft 365 Lighthouse](m365-lighthouse-view-your-roles.md) (article)\
[Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md) (article)\
[Overview of Microsoft 365 Lighthouse](m365-lighthouse-overview.md) (article)\
[Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
