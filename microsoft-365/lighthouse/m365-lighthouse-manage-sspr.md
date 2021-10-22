---
title: "Manage self-service password reset"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to manage self-service password reset."
---

# Manage self-service password reset

> [!NOTE]
> The features described in this article are in Preview, are subject to change, and are only available to partners who meet the [requirements](m365-lighthouse-requirements.md). If your organization does not have Microsoft 365 Lighthouse, see [Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md).

Microsoft 365 Lighthouse lets partners manage Azure Active Directory (Azure AD) self-service password reset (SSPR). SSPR gives users the ability to change or reset their password with no administrator or help desk involvement. If a user's account is locked or they forget their password, they can follow prompts to unblock themselves and get back to work. This ability reduces help desk calls and loss of productivity when a user can't sign in to their device or an application.

## Before you begin

The following conditions must be met before a tenant will appear in the list:

- The customer tenant must have an Azure AD Premium license for each user. For more information on which licenses support SSPR, see [Licensing requirements for Azure Active Directory self-service password reset](/azure/active-directory/authentication/concept-sspr-licensing).

- The customer tenant must be active within Lighthouse. To learn how to determine if a tenant is active, see [Microsoft 365 Lighthouse tenant list overview](m365-lighthouse-tenant-list-overview.md).

## View SSPR tenant status

1. In the left navigation pane of Lighthouse, select **Users**.

2. Select the **Password reset** tab.

The Password reset tab provides an overview of the tenants that have enabled SSPR through the recommended settings, the number of users who haven't registered for SSPR, and a detailed breakdown by tenant of the SSPR deployment progress across the organizations that you manage.

## Enable SSPR for a tenant

1. In the left navigation pane in Lighthouse, select **Users**.

2. Select the **Password reset** tab.

3. From the list of tenants, select a tenant to open the details pane.

4. Select **Edit SSPR settings in Azure Active Directory** to go to Azure Active Directory (Azure AD).

5. In Azure AD, enable SSPR for all or selected users. To learn more, see [Tutorial: Enable users to unlock their account or reset passwords using Azure Active Directory self-service password reset](/azure/active-directory/authentication/tutorial-enable-sspr).

## Notify users to register for SSPR

1. In the left navigation pane in Lighthouse, select **Users**.

2. Select the **Password reset** tab.

3. From the list of tenants, select a tenant to open the details pane.

4. Select the users that you want to notify.

5. Select **Create email**.

Lighthouse opens your default email client and prepopulates the email message with instructions to register for SSPR. All the selected users will be included on the BCC line. If you prefer to individually email users, you can select the email icon next to the username.

If you want to use a different email account, you can export the list of users to a file. You can also download sample email templates that you can customize with your company branding.

## Related content

[Plan an Azure Active Directory self-service password reset deployment](/azure/active-directory/authentication/howto-sspr-deployment) (article)\
[Tutorial: Enable users to unlock their account or reset passwords using Azure Active Directory self-service password reset](/azure/active-directory/authentication/tutorial-enable-sspr) (article)\
[How to enable and configure SSPR in Azure AD](https://www.youtube.com/watch?v=rA8TvhNcCvQ) (video)\
[Manage multifactor authentication](m365-lighthouse-manage-mfa.md) (article)
