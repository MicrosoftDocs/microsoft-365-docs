---
title: "Manage self-service password reset in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: aakash
ms.date: 10/27/2023
audience: Admin
ms.topic: how-to
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to manage self-service password reset (SSPR)."
---

# Manage self-service password reset in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse lets Managed Service Providers (MSPs) manage Microsoft Entra self-service password reset (SSPR). SSPR gives users the ability to change or reset their password with no administrator or help desk involvement. If a user's account is locked or they forget their password, they can follow prompts to unblock themselves and get back to work. This ability reduces help desk calls and loss of productivity when a user can't sign in to their device or an application.

The Self-service password reset page provides detailed information on the status of SSPR enablement across your customer tenants and helps ensure users are enabled and registered.  

> [!NOTE]
> This page provides insights around tenants for which data availability is limited.

## Before you begin

The following condition must be met before a tenant appears in the list:

- The customer tenant must be active within Lighthouse. To learn how to determine if a tenant is active, see [Overview of the Tenants page in Microsoft 365 Lighthouse](m365-lighthouse-tenants-page-overview.md).

## View SSPR tenant status

In the left navigation pane in [Lighthouse](https://lighthouse.microsoft.com/), select **Users** > **Self-service password reset**.

The SSPR tenant status module reports enablement status across all customer tenants that have an Azure AD premium license, reporting how many tenants are:

- Not enabled for SSPR
- Enabled for some users
- Enabled for all users

## View SSPR user registration status

In the left navigation pane in [Lighthouse](https://lighthouse.microsoft.com/), select **Users** > **Self-service password reset**.

The Self-service password reset page provides an overview of the tenants that have enabled SSPR through the recommended settings, the number of users who haven't registered for SSPR, and a detailed breakdown by tenant of the SSPR deployment progress across the organizations that you manage.

## View self-service password reset details 

The self-service password reset details table provides a detailed view of SSPR enablement and registration for all customer tenants. The table can be exported, refreshed, searched, and filtered by SSPR tenant status, SSPR availability status, and user registration progress. The tenant details reported in the table include:

|Column      |Description  |
|------------|---------|
|Tenant        | The name of the tenant.         |
|Total users   | The number of users in the tenant.         |
|Enabled users | The number of users that have been enabled for SSPR.         |
|Registration progress     | The number of total users that have registered for SSPR.         |

> [!NOTE]
> Enabled users and registration progress data will be unavailable for tenants that do not have a Microsoft Entra premium license.

Selecting any tenant from the self-service password reset details table opens the tenant details pane, which provides additional details around the tenant's enablement and user registration status.

## Enable SSPR for a tenant

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Users** > **Self-service password reset**.

2. On the **Self-service password reset** page, select a tenant from the list to open the details pane.

3. Select **Edit SSPR settings in Azure Active Directory** to go to Azure Active Directory (Azure AD).

4. In Azure AD, enable SSPR for all or selected users. To learn more, see [Tutorial: Enable users to unlock their account or reset passwords using Azure Active Directory self-service password reset](/azure/active-directory/authentication/tutorial-enable-sspr).

## Notify users to register for SSPR

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Users** > **Self-service password reset**.

2. On the **Self-service password reset** page, select a tenant from the list to open the details pane.

3. Select the users that you want to notify.
4. Select **Create email**.

Lighthouse opens your default email client and prepopulates the email message with instructions to register for SSPR. All the selected users are included on the BCC line. If you prefer to individually email users, you can select the email icon next to the username.

If you want to use a different email account, you can export the list of users to a file. You can also download sample email templates that you can customize with your company branding.

## Related content

[Plan a Microsoft Entra self-service password reset deployment](/azure/active-directory/authentication/howto-sspr-deployment) (article)\
[Tutorial: Enable users to unlock their account or reset passwords using Microsoft Entra self-service password reset](/azure/active-directory/authentication/tutorial-enable-sspr) (article)\
[How to enable and configure SSPR in Microsoft Entra ID](https://www.youtube.com/watch?v=rA8TvhNcCvQ) (video)\
[Manage multifactor authentication in Microsoft 365 Lighthouse](m365-lighthouse-manage-mfa.md) (article)
