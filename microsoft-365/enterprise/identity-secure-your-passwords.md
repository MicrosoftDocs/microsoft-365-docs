---
title: "Step 2: Secure your passwords"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/20/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-identity-device-management
- Strat_O365_Enterprise
ms.custom:
description: You need to make your passwords strong and manageable across your organization.
---

# Step 2: Secure your passwords

![Phase 2-Identity](./media/deploy-foundation-infrastructure/identity_icon-small.png)

<a name="identity-password-prot"></a>
## Prevent bad passwords

*This is optional and applies to both the E3 and E5 versions of Microsoft 365*

All your users should be using [Microsoft's password guidance](https://www.microsoft.com/research/publication/password-guidance/) to create their user account passwords.

To prevent users from creating an easily-determined password, use Azure AD password protection, which uses both a global banned password list and an optional custom banned password list that you specify. For example, you can specify terms that are specific to your organization, such as:

- Brand names
- Product names
- Locations (for example, such as company headquarters)
- Company-specific internal terms
- Abbreviations that have specific company meaning

You can ban bad passwords [in the cloud](https://docs.microsoft.com/azure/active-directory/authentication/concept-password-ban-bad) and for your [on-premises Active Directory Domain Services (AD DS)](https://docs.microsoft.com/azure/active-directory/authentication/concept-password-ban-bad-on-premises).

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-password-prot) for this section.

<a name="identity-pw-reset"></a>
## Simplify password resets

*This is optional and applies to both the E3 and E5 versions of Microsoft 365*

In this section, you'll enable self-service password reset (SSPR) to allow users to reset or unlock their passwords or accounts. To alert you to misuse or abuse, you can use the detailed reporting that tracks when users access the system, along with notifications. You must enable password writeback before you can deploy password resets.

See the [instructions to roll out password reset](https://docs.microsoft.com/azure/active-directory/authentication/howto-sspr-deployment).

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Password reset](password-reset-m365-ent-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-pw-reset) for this section.


<a name="identity-sso"></a>
## Simplify user sign-in

*This is optional for hybrid environments and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In this section, you'll set up Azure Active Directory Seamless Single Sign-On (Azure AD Seamless SSO), which works with Password Hash Synchronization (PHS) and Pass-Through Authentication (PTA), to allow your users to sign in to services that use Azure AD user accounts without having to type in their passwords, and in many cases, their usernames. This gives your users easier access to cloud-based applications, such as Office 365, without needing any additional on-premises components such as identity federation servers.

You configure Azure AD Seamless SSO with the Azure AD Connect tool.

See the [instructions to configure Azure AD Seamless SSO](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-sso-quick-start).

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Azure AD Seamless Single Sign-on](single-sign-on-m365-ent-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-sso) for this section.


<a name="identity-custom-sign-in"></a>
## Customize the Office 365 sign-in page

*This is optional and for both the E3 and E5 versions of Microsoft 365 Enterprise*

In this section, you'll help users recognize your organization’s sign-in page by adding your company name, logo, and other recognizable elements. 

With Microsoft 365 Enterprise, you can customize the appearance of the sign-in and Access Panel pages so they include your company logo, color schemes, and custom user information. 

For more information, see [Add your company branding to Office 365 Sign In page](https://docs.microsoft.com/office365/admin/setup/customize-sign-in-page).

For configuration instructions, see [Add company branding to your sign-in and Access Panel pages](https://aka.ms/aadpaddbranding).

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-custom-sign-in) for this section.

## Next step

|||
|:-------|:-----|
|![Step 3](./media/stepnumbers/Step3.png)| [Secure and manage your user sign-ins](identity-secure-user-sign-ins.md) |
