---
title: "Manage Microsoft 365 user account passwords"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: overview
ms.prod: office-online-server
localization_priority: Normal
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-mar2020
ms.collection:
- Ent_O365
- M365-subscription-management
search.appverid:
- MET150
- MOE150
- MED150
- BCS160
ms.assetid: 98ca5b3f-f720-4d8e-91be-fe656548a25a
description: "Learn about how to manage Microsoft 365 user account passwords."
---

# Manage Microsoft 365 user account passwords

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can manage Microsoft 365 user account passwords in several different ways, depending on your identity configuration. You can manage user accounts in the [Microsoft 365 admin center](../admin/add-users/index.yml), in Active Directory Domain Services (AD DS), or in the Azure Active Directory (Azure AD) admin center.

## Plan for where and how you will manage your user account passwords

Where and how you can manage your user accounts depends on the identity model you want to use for your Microsoft 365. The two models are cloud-only and hybrid.
  
### Cloud-only

You manage user account passwords in:

- [The Microsoft 365 admin center](../admin/add-users/index.yml)
- The Azure AD admin center
    
### Hybrid

With hybrid identity, passwords are stored in AD DS so you must use on-premises AD DS tools to manage user account passwords. Even when using Password Hash Synchronization (PHS), in which Azure AD stores a hashed version of the already hashed version in AD DS, you and users must manage their passwords in AD DS.

With [password writeback](#pw_writeback), your users can change their AD DS passwords through Azure AD.

## Prevent bad passwords

All your users should be using [Microsoft's password guidance](https://www.microsoft.com/research/publication/password-guidance) to create their user account passwords.

To prevent users from creating an easily-determined password, use Azure AD password protection, which uses both a global banned password list and an optional custom banned password list that you specify. For example, you can specify terms that are specific to your organization, such as:

- Brand names
- Product names
- Locations (for example, such as company headquarters)
- Company-specific internal terms
- Abbreviations that have specific company meaning

You can ban bad passwords [in the cloud](/azure/active-directory/authentication/concept-password-ban-bad) and for your [on-premises AD DS](/azure/active-directory/authentication/concept-password-ban-bad-on-premises).

## Simplify user sign-in

Azure AD Seamless Single Sign-On (Azure AD Seamless SSO) works with PHS and Pass-Through Authentication (PTA), to allow your users to sign in to services that use Azure AD user accounts without having to type in their passwords, and in many cases, their usernames. This gives your users easier access to cloud-based applications, such as Office 365, without needing any additional on-premises components such as identity federation servers.

You configure Azure AD Seamless SSO with the Azure AD Connect tool. See the [instructions to configure Azure AD Seamless SSO](/azure/active-directory/connect/active-directory-aadconnect-sso-quick-start).

<a name="pw_writeback"></a>
## Simplify password updates to AD DS

With password writeback, you can allow users to reset their passwords through Azure AD, which is then replicated to AD DS. Users don’t need to access their on-premises AD DS to update their passwords. This is valuable to roaming or remote users who do not have a remote access connection to the on-premises network.

Password writeback is required to fully utilize Azure AD Identity Protection capabilities, such as requiring users to change their on-premises passwords when there has been a high risk of account compromise detected.

For additional information and configuration instructions, see [Azure AD SSPR with password writeback](/azure/active-directory/active-directory-passwords-writeback).

>[!Note]
>Upgrade to the latest version of Azure AD Connect to ensure the best possible experience and new features as they are released. For more information, see [Custom installation of Azure AD Connect](/azure/active-directory/connect/active-directory-aadconnect-get-started-custom).
>

## Simplify password resets

Self-service password reset (SSPR) allows users to reset or unlock their passwords or accounts. To alert you to misuse or abuse, you can use the detailed reporting that tracks when users access the system, along with notifications. You must enable [password writeback](#pw_writeback) before you can deploy password resets.

See the [instructions to roll out password reset](/azure/active-directory/authentication/howto-sspr-deployment).