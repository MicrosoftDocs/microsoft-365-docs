---
title: "Step 5: Simplify access for users"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 04/19/2019
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-identity-device-management
- Strat_O365_Enterprise
ms.custom:
description: Understand and configure self-service password reset (SSPR) for Azure AD.
---

# Step 5: Simplify access for users

![](./media/deploy-foundation-infrastructure/identity_icon-small.png)


<a name="identity-pw-writeback"></a>
## Simplify password updates

*This is optional for hybrid environments and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In this section, you'll allow users to reset their passwords through Azure Active Directory (Azure AD), which is then replicated to your local Active Directory Domain Services (AD DS). This process is known as password writeback. With password writeback, users don’t need to update their passwords through the on-premises Active Directory Domain Services (AD DS) where user accounts and their attributes are stored. This is valuable to roaming or remote users who do not have a remote access connection to the on-premises network.

Password writeback is required to fully utilize Identity Protection feature capabilities, such as requiring users to change their on-premises passwords when there has been a high risk of account compromise detected.

For additional information and configuration instructions, see [Azure AD SSPR with password writeback](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-writeback).

>[!Note]
>Upgrade to the latest version of Azure AD Connect to ensure the best possible experience and new features as they are released. For more information, see [Custom installation of Azure AD Connect](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-get-started-custom).
>

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Password writeback](password-writeback-m365-ent-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-pw-writeback) for this section.

<a name="identity-pw-reset"></a>
## Simplify password resets

*This is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

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

In this section, you'll set up Azure Active Directory Seamless Single Sign-On (Azure AD Seamless SSO) to allow your users to sign in to services that use Azure AD user accounts without having to type in their passwords, and in many cases, their usernames. This gives your users easier access to cloud-based applications, such as Office 365, without needing any additional on-premises components such as identity federation servers.

You'll configure Azure AD Seamless SSO with the Azure AD Connect tool.

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

When a user attempts to sign in from a device, they see something like the following example on the Office 365 sign-in page *before customization*.

![Example of the Office 365 sign-in page before customization](./media/identity-customize-office-365-sign-in/id-step01-sign-in-before.png)

And here is what the same user of the Contoso Corporation would see *after customization*.

![Example of the Office 365 sign-in page after customization](./media/identity-customize-office-365-sign-in/id-step01-sign-in-after.png)

For more information, see [Add your company branding to Office 365 Sign In page](https://docs.microsoft.com/office365/admin/setup/customize-sign-in-page).

For configuration instructions, see [Add company branding to your sign-in and Access Panel pages](http://aka.ms/aadpaddbranding).

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-custom-sign-in) for this section.


## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step6.png)| [Use groups for easier management](identity-self-service-group-management.md) |


