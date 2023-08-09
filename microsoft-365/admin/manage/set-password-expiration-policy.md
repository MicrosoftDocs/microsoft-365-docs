---
title: "Set the password expiration policy for your organization"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 06/26/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: high
ms.collection: 
- Tier1
- scotvorg
- highpri
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom: 
- VSBFY23
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- admindeeplinkMAC
- business_assist
description: "Learn how an admin can set a password expiration policy for your business, school, or nonprofit in Microsoft 365 admin center."
---

# Set the password expiration policy for your organization

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

This article is for people who set password expiration policy for a business, school, or nonprofit Microsoft 365 organization.

As the admin, you can make user passwords expire after a certain number of days, or set passwords to never expire. **By default, passwords are set to never expire for your organization**.

Current research strongly indicates that mandated password changes do more harm than good. They drive users to choose weaker passwords, re-use passwords, or update old passwords in ways that are easily guessed by hackers. We recommend enabling [multi-factor authentication](../security-and-compliance/set-up-multi-factor-authentication.md). To learn more about password policy, check out [Password policy recommendations](../misc/password-policy-recommendations.md).

## Before you begin

You must be a [global admin](../add-users/about-admin-roles.md) to perform these steps.

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Set password expiration policy

Follow the steps below if you want to set user passwords to expire after a specific amount of time.

1. In the Microsoft 365 admin center, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2072756" target="_blank">**Org Settings** tab</a>.

    If you aren't a global admin or security admin, you won't see this page.
  
2. On the **Password expiration policy** page, uncheck the box to change the password policy.

3. Type how often passwords should expire. Choose a number of days from **14 to 730** and select **Save**.

> [!IMPORTANT]
> Password expiration notifications are no longer supported in the Microsoft 365 admin center and Microsoft 365 apps.
  
## Important things you need to know about the password expiration feature
  
People who only use the Outlook app won't be forced to reset their Microsoft 365 password until it expires in the cache. This can be several days after the actual expiration date. There's no workaround for this at the admin level.

## Prevent last password from being used again

If you want to prevent your users from recycling old passwords, you can do so by enforcing password history in on-premises Active Directory (AD). See [Create a custom password policy](/azure/active-directory-domain-services/password-policy#create-a-custom-password-policy).

In Azure AD, The last password can't be used again when the user changes a password. The password policy is applied to all user accounts that are created and managed directly in Azure AD. This password policy can't be modified. See [Azure AD password policies](/azure/active-directory/authentication/concept-sspr-policy#password-policies-that-only-apply-to-cloud-user-accounts).

## Synchronize user passwords hashes from an on-premises Active Directory to Azure AD (Microsoft 365)

This article is for setting the expiration policy for cloud-only users (Azure AD). It doesn't apply to hybrid identity users who use password hash sync, pass-through authentication, or on-premises federation like ADFS.
  
To learn how to synchronize user password hashes from on premises AD to Azure AD, see [Implement password hash synchronization with Azure AD Connect sync](/azure/active-directory/hybrid/how-to-connect-password-hash-synchronization).

## Password policies and account restrictions in Azure Active Directory

You can set more password policies and restrictions in Azure active directory. Check out [Password policies and account restrictions in Azure Active Directory](/azure/active-directory/authentication/concept-sspr-policy) for more info.

## Update password Policy using PowerShell

The Set-MsolPasswordPolicy cmdlet updates the password policy of a specified domain or tenant and indicates the length of time that a password remains valid before it must be changed.

To learn how to update password policy for a specific domain or tenant, see [Set-MsolPasswordPolicy](/powershell/module/msonline/set-msolpasswordpolicy).

## Related content

[Let users reset their own passwords](../add-users/let-users-reset-passwords.md) (article)/

[Reset passwords](../add-users/reset-passwords.md) (article)
