---
title: "Overview of the Multifactor authentication page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: ragovind
ms.date: 06/30/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs), learn more about multifactor authentication in Microsoft 365 Lighthouse."
---

# Overview of the Multifactor authentication page in Microsoft 365 Lighthouse

Multifactor authentication (MFA) in Azure Active Directory (Azure AD) helps protect your customer tenants against breaches due to lost or stolen credentials by using a second form of authentication to provide an extra layer of security.

There are several ways to enable MFA:

- **Conditional Access policies (Recommended)** – Enable conditional access policies for tenants with Azure AD Premium licensing.

- **Security defaults** – Enable security defaults for tenants without Azure AD Premium licensing.

- **Per-user MFA** – It isn't recommended to enable MFA on a per-user basis unless the tenant doesn't have Azure AD Premium licensing and you don't want to use security defaults.

The **Multifactor authentication** page provides detailed information on the status of MFA enablement across your customer tenants and recommended actions to enhance your customers’ security. Select any tenant in the list to see more details about that tenant, including which Conditional Access policies requiring MFA are already configured and which users still need to register for MFA.

## Multifactor Authentication page

The Multifactor Authentication page includes the following:

- MFA enforcement
- MFA registration
- MFA insights
- MFA insights by tenant

:::image type="content" source="../media/m365-lighthouse-mfa-overview/m365-lighthouse-mfa-page.png" alt-text="Screenshot of the Multifactor authentication page." lightbox="../media/m365-lighthouse-mfa-overview/m365-lighthouse-mfa-page.png":::

## MFA enforcement

The MFA enforcement graph measures MFA enforcement progress by tenant, reporting the enforcement status of MFA for each tenant as either:

- **Conditional Access policy enablement** – one or more policies requiring MFA is enabled.
- **Security defaults** – Security defaults are enabled.
- **No MFA detected** - No Conditional Access policies that require MFA are enabled, and Security defaults have been disabled.

> [!NOTE]
> The detection of a Conditional Access policy that requires MFA with a deployment state of enabled does not mean that all targeted users will be required to authenticate with MFA. An assessment of a tenant's conditional access policies in Microsoft 365 Lighthouse or the tenant's Azure Active Directory portal is needed to confirm the tenant is secure.

## MFA registration

The MFA registration graph measures MFA registration progress by user, reporting the registration status of MFA for each user as either:

- **Registered** – the user has registered for MFA.
- **Not registered for MFA** – the user hasn't registered for MFA.
- **Excluded from MFA** – the user has been excluded from MFA registration in Lighthouse.
- **Data unavailable due to missing license** – the user is a member of a tenant for which data is unavailable due to a missing license.

> [!NOTE]
> The exclusion of a user from MFA registration in Lighthouse does not automatically result in the user’s exclusion from the applicable deployment task in Lighthouse or from a Conditional Access policy configured in the tenant. To ensure that the user is excluded from the applicable deployment task in Lighthouse and from Conditional Access policies configured in the tenant, see [Manage multifactor authentication](m365-lighthouse-manage-mfa.md).

## MFA insights

The MFA insights table can be filtered by MFA enablement method and availability of MFA registration progress.

The table provides the following information for each tenant:

|Column                 |Description                          |
|-----------------------|-----------------------------------|
|Tenant                                 | The name of the tenant.        |
|Total users                            | The number of users in the tenant.        |
|Users excluded from MFA registration   |  The number of users that have been excluded from MFA registration in Lighthouse.       |
|Registration progress                  | The number of users not excluded from MFA registration in Lighthouse that have registered. <br> **NOTE:** The number of Registered users may include users excluded from MFA registration in Lighthouse.      |
|MFA enablement method                  | The MFA enablement method employed by the tenant.        |
|Recommended actions                    | The actions that are recommended to optimize the security of the tenant.        |
|Last refreshed                         |  The date at which the data was last refreshed.       |

### Recommended actions

Recommended actions are determined for each tenant based on MFA enablement, licensing, and registration progress.

| **MFA enablement**                | **Licensing**            | **Registration progress**               | **Recommended actions**                              |
|-----------------------------------|--------------------------|-----------------------------------------|------------------------------------------------------|
| Conditional Access policy enabled | With Azure AD Premium    | Complete                                | Assess deployment                                    |
|                                   |                          | Not complete                            | Assess deployment, complete MFA registration         |
| Security defaults                 | With Azure AD Premium    | Complete                                | Deploy Conditional Access                            |
|                                   |                          | Not complete                            | Deploy Conditional Access, complete MFA registration |
|                                   | Without Azure AD Premium | Data unavailable due to missing license |                                                      |
| No MFA detected                   | With Azure AD Premium    | Complete                                | Deploy Conditional Access                            |
|                                   |                          | Not complete                            | Enable security defaults, complete MFA registration  |
|                                   | Without Azure AD Premium | Data unavailable due to missing license |                                                      |

## MFA insights by tenant

Selecting any tenant from the list opens the MFA insights details pane for that tenant, which provides the following information for each tenant:

- MFA enablement method
- Conditional access policies
- Users not registered for MFA
- Excluded users

:::image type="content" source="../media/m365-lighthouse-mfa-overview/m365-lighthouse-mfa-detailed-pane.png" alt-text="Screenshot of MFA detailed pane." lightbox="../media/m365-lighthouse-mfa-overview/m365-lighthouse-mfa-detailed-pane.png":::

## MFA enablement method tab

The tab provides tenant-specific details around the tenant’s MFA enablement method, links to additional information, and the next steps that should be taken to optimize tenant security.

If the tenant’s MFA enablement status is **No MFA detected**, Lighthouse prompts you to enable security defaults by selecting the **Use security defaults** box.

## Conditional access policies tab

The tab lists, links to, and reports the state of each Conditional Access policy detected in the tenant that requires MFA. You can use the links provided to view or edit the detected policy as needed to optimize tenant security.

## Users not registered for MFA tab

The tab provides recommended actions for managing MFA registration and lists the user accounts that have already been enabled for MFA but still need to register using their allowed verification options to be capable of using MFA.

The users not registered for MFA table can be exported, refreshed, or filtered by admins, members, and guest users, and it allows you to select user accounts to email, exclude, or block.

## Excluded users tab

The **Excluded users** tab lists the user accounts that are part of the **Microsoft 365 Lighthouse - MFA exclusions** security group and have been excluded from the MFA report. You can export and refresh the list and remove users from the excluded users list.

## Related content

[Manage multifactor authentication in Lighthouse](m365-lighthouse-manage-mfa.md) (article)\
[Plan an Azure Active Directory Multi-Factor Authentication deployment](/azure/active-directory/authentication/howto-mfa-getstarted) (article)\
[What are security defaults?](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) (article)\
[What is Conditional Access?](/azure/active-directory/conditional-access/overview) (article)\
[Learn how to convert users from per-user MFA to Conditional Access](/azure/active-directory/authentication/howto-mfa-getstarted#convert-users-from-per-user-mfa-to-conditional-access-based-mfa) (article)
