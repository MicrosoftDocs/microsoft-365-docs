---
title: "Manage self-service password reset in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: ragovind
ms.date: 06/21/2023
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to manage self-service password reset (SSPR)."
---

# Manage self-service password reset in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse lets Managed Service Providers (MSPs) manage Azure Active Directory (Azure AD) self-service password reset (SSPR). SSPR gives users the ability to change or reset their password with no administrator or help desk involvement. If a user's account is locked or they forget their password, they can follow prompts to unblock themselves and get back to work. This ability reduces help desk calls and loss of productivity when a user can't sign in to their device or an application.

## Before you begin

The following conditions must be met before a tenant will appear in the list:

- The customer tenant must have an Azure AD Premium license for each user. For more information on which licenses support SSPR, see [Licensing requirements for Azure Active Directory self-service password reset](/azure/active-directory/authentication/concept-sspr-licensing).

- The customer tenant must be active within Lighthouse. To learn how to determine if a tenant is active, see [Overview of the Windows 365 (Cloud PCs) page in Microsoft 365 Lighthouse](m365-lighthouse-tenants-page-overview.md).

## View SSPR tenant status

- In the left navigation pane in Lighthouse, select **Users** > **Password reset**.

The Password reset page provides an overview of the tenants that have enabled SSPR through the recommended settings, the number of users who haven't registered for SSPR, and a detailed breakdown by tenant of the SSPR deployment progress across the organizations that you manage.

## Enable SSPR for a tenant

1. In the left navigation pane in Lighthouse, select **Users** > **Password reset**.

2. On the **Password reset** page, select a tenant from the list to open the details pane.

3. Select **Edit SSPR settings in Azure Active Directory** to go to Azure Active Directory (Azure AD).

4. In Azure AD, enable SSPR for all or selected users. To learn more, see [Tutorial: Enable users to unlock their account or reset passwords using Azure Active Directory self-service password reset](/azure/active-directory/authentication/tutorial-enable-sspr).

## Notify users to register for SSPR

1. In the left navigation pane in Lighthouse, select **Users** > **Password reset**.

2. On the **Password reset** page, select a tenant from the list to open the details pane.

3. Select the users that you want to notify.

4. Select **Create email**.

Lighthouse opens your default email client and prepopulates the email message with instructions to register for SSPR. All the selected users will be included on the BCC line. If you prefer to individually email users, you can select the email icon next to the username.

If you want to use a different email account, you can export the list of users to a file. You can also download sample email templates that you can customize with your company branding.

## Related content

[Plan an Azure Active Directory self-service password reset deployment](/azure/active-directory/authentication/howto-sspr-deployment) (article)\
[Tutorial: Enable users to unlock their account or reset passwords using Azure Active Directory self-service password reset](/azure/active-directory/authentication/tutorial-enable-sspr) (article)\
[How to enable and configure SSPR in Azure AD](https://www.youtube.com/watch?v=rA8TvhNcCvQ) (video)\
[Manage multifactor authentication in Microsoft 365 Lighthouse](m365-lighthouse-manage-mfa.md) (article)
