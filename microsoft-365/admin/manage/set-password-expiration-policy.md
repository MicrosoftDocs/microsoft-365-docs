---
title: "Set the password expiration policy for your organization"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 05/29/2024
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
- must-keep
ms.custom:
  - VSBFY23
  - AdminSurgePortfolio
  - okr_smb
  - AdminTemplateSet
  - admindeeplinkMAC
  - business_assist
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
description: "Learn how an admin can set a password expiration policy for your business, school, or nonprofit in Microsoft 365 admin center."
---

# Set the password expiration policy for your organization

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

This article is for people who set password expiration policy for a business, school, or nonprofit Microsoft 365 organization.

As the admin, you can make user passwords expire after a certain number of days, or set passwords to never expire. **By default, passwords are set to never expire for your organization**.

Current research strongly indicates that mandated password changes do more harm than good. They drive users to choose weaker passwords, reuse passwords, or update old passwords in ways that are easily guessed by hackers. We recommend enabling [multi-factor authentication](../security-and-compliance/set-up-multi-factor-authentication.md). To learn more about password policy, check out [Password policy recommendations](../misc/password-policy-recommendations.md).

## Before you begin

You must be a [user administrator](../add-users/about-admin-roles.md) to perform these steps.

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Set password expiration policy

Follow the steps below if you want to set user passwords to expire after a specific amount of time.

1. In the Microsoft 365 admin center, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2072756" target="_blank">**Org Settings** page</a>.

    If you aren't a security admin, you won't see this page.
  
2. In the **Security and Privacy** tab, on the **Password expiration policy** page, uncheck the box to change the password policy.

3. Type how often passwords should expire. Choose a number of days from **14 to 730** and select **Save**.

> [!IMPORTANT]
> Password expiration notifications are no longer supported in the Microsoft 365 admin center and Microsoft 365 productivity apps.
  
## Important things you need to know about the password expiration feature
  
People who only use the Outlook app won't be forced to reset their Microsoft 365 password until it expires in the cache. This can be several days after the actual expiration date. There's no workaround for this at the admin level.

## Prevent last password from being used again

If you want to prevent your users from recycling old passwords, you can do so by enforcing password history in on-premises Active Directory (AD). See [Create a custom password policy](/azure/active-directory-domain-services/password-policy#create-a-custom-password-policy).

In Microsoft Entra ID, The last password can't be used again when the user changes a password. The password policy is applied to all user accounts that are created and managed directly in Microsoft Entra ID. This password policy can't be modified. See [Microsoft Entra password policies](/azure/active-directory/authentication/concept-sspr-policy#password-policies-that-only-apply-to-cloud-user-accounts).

<a name='synchronize-user-passwords-hashes-from-an-on-premises-active-directory-to-azure-ad-microsoft-365'></a>

## New and federated domains

Password policies you choose is set for each managed domain in your organization. If you add a new domain or convert a domain from federated to managed, you need to re-enable the organization password policy to update all domains again, otherwise the new or converted domain keeps the default policy.

## Synchronize user passwords hashes from an on-premises Active Directory to Microsoft Entra ID (Microsoft 365)

This article is for setting the expiration policy for cloud-only users (Microsoft Entra ID). It doesn't apply to hybrid identity users who use password hash sync, pass-through authentication, or on-premises federation like Active Directory Federation Services (ADFS).
  
To learn how to synchronize user password hashes from on premises AD to Microsoft Entra ID, see [Implement password hash synchronization with Microsoft Entra Connect Sync](/azure/active-directory/hybrid/how-to-connect-password-hash-synchronization).

<a name='password-policies-and-account-restrictions-in-azure-active-directory'></a>

## Password policies and account restrictions in Microsoft Entra ID

You can set more password policies and restrictions in Microsoft Entra ID. Check out [Password policies and account restrictions in Microsoft Entra ID](/azure/active-directory/authentication/concept-sspr-policy) for more info.

## Update password Policy using PowerShell

The Update-MgDomain cmdlet updates the password policy of a specified domain or tenant and indicates the length of time that a password remains valid before it must be changed.

To learn how to update password policy for a specific domain or tenant, see [Update-MgDomain](/powershell/module/microsoft.graph.identity.directorymanagement/update-mgdomain).

## Related content

[Let users reset their own passwords](../add-users/let-users-reset-passwords.md) (article)

[Reset passwords](../add-users/reset-passwords.md) (article)
