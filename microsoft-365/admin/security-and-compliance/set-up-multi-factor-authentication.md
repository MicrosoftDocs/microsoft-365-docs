---
title: "Set up multi-factor authentication for users"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: 8f0454b2-f51a-4d9c-bcde-2c48e41621c6
description: "Learn how to set up multi-factor authentication for your organization."
monikerRange: 'o365-worldwide'
---

# Set up multi-factor authentication

Based on your understanding of [multi-factor authentication (MFA) and its support in Microsoft 365](multi-factor-authentication-microsoft-365.md), it's time to set it up and roll it out to your organization.

> [!IMPORTANT]
> If you purchased your subscription or trial after October 21, 2019, and you're prompted for MFA when you sign in, [security defaults](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) have been automatically enabled for your subscription.

## Before you begin

- You must be a Global admin to manage MFA. For more information, see [About admin roles](../add-users/about-admin-roles.md).
- If you have legacy per-user MFA turned on, [Turn off legacy per-user MFA](#turn-off-legacy-per-user-mfa).
- If you have Office 2013 clients on Windows devices, [turn on Modern Authentication for Office 2013 clients](./enable-modern-authentication.md).
- Advanced: If you have third-party directory services with Active Directory Federation Services (AD FS), set up the Azure MFA Server. See [advanced scenarios with Azure AD Multi-Factor Authentication and third-party VPN solutions](/azure/active-directory/authentication/howto-mfaserver-nps-vpn) for more information.

## Turn Security defaults on or off

For most organizations, Security defaults offer a good level of additional sign-in security. For more information, see [What are security defaults?](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults)

If your subscription is new, Security defaults might already be turned on for you automatically.

You enable or disable security defaults from the **Properties** pane for Azure Active Directory (Azure AD) in the Azure portal.

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) with global admin credentials.
2. In the left nav choose **Show All** and under **Admin centers**, choose **Azure Active Directory**.
3. In the **Azure Active Directory admin center** choose **Azure Active Directory** \> **Properties**.
4. At the bottom of the page, choose **Manage Security defaults**.
5. Choose **Yes** to enable security defaults or **No** to disable security defaults, and then choose **Save**.

If you have been using [baseline Conditional Access policies](/azure/active-directory/conditional-access/concept-baseline-protection), you will be prompted to turn them off before you move to using security defaults.

1. Go to the [Conditional Access - Policies page](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ConditionalAccessBlade/Policies).
2. Choose each baseline policy that is **On** and set **Enable policy** to **Off**.
3. Go to the [Azure Active Directory - Properties page](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties).
4. At the bottom of the page, choose **Manage Security defaults**.
5. Choose **Yes** to enable security defaults and **No** to disable security defaults, and then choose **Save**.

## Use Conditional Access policies

If your organization has more granular sign-in security needs, Conditional Access policies can offer you more control. Conditional Access lets you create and define policies that react to sign in events and request additional actions before a user is granted access to an application or service.

> [!IMPORTANT]
> Turn off both per-user MFA and Security defaults before you enable Conditional Access policies.

Conditional Access is available for customers who have purchased Azure AD Premium P1, or licenses that include this, such as Microsoft 365 Business Premium, and Microsoft 365 E3. For more information, see [create a Conditional Access policy](/azure/active-directory/authentication/tutorial-enable-azure-mfa).

Risk-based conditional access is available through Azure AD Premium P2 license, or licenses that include this, such as Microsoft 365 E5. For more information, see [risk-based Conditional Access](/azure/active-directory/conditional-access/howto-conditional-access-policy-risk).

For more information about the Azure AD P1 and P2, see [Azure Active Directory pricing](https://azure.microsoft.com/pricing/details/active-directory/).

### Turn on Modern authentication for your organization

For most subscriptions modern authentication is automatically turned on, but if you purchased your subscription before August 2017, it is likely that you will need to turn on Modern Authentication in order to get features like Multi-Factor Authentication to work in Windows clients like Outlook.


1. In the Microsoft 365 admin center, in the left nav choose **Settings** \> **Org settings**.
2. Under the **Services** tab, choose **Modern authentication**, and in the **Modern authentication** pane, make sure **Enable Modern authentication** is selected. Choose **Save changes**.

### Turn off legacy per-user MFA

If you have previously turned on per-user MFA, you must turn it off before enabling Security defaults.

1. In the Microsoft 365 admin center, in the left nav choose **Users** \> **Active users**.
1. On the **Active users** page, choose **Multi-factor authentication**.
1. On the multi-factor authentication page, select each user and set their Multi-Factor auth status to **Disabled**.

## Next steps

- [How to register for their additional verification method](https://support.microsoft.com/office/ace1d096-61e5-449b-a875-58eb3d74de14)
- [What is: Multifactor Authentication](https://support.microsoft.com/help/4577374/what-is-multifactor-authentication)
- [How to sign-in after registration](https://support.microsoft.com/office/2b856342-170a-438e-9a4f-3c092394d3cb)
- [How to change their additional verification method](https://support.microsoft.com/office/956ec8d0-7081-4518-a701-f8414cc20831)

## Related content

[Turn on multi-factor authentication](../../business-video/turn-on-mfa.md) (video)\
[Turn on multi-factor authentication for your phone](../../business-video/set-up-mfa.md) (video)