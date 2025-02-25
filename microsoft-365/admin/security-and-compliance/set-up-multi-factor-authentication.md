---
title: "Set up multifactor authentication for users"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 10/02/2024
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
- AdminTemplateSet
- admindeeplinkMAC
- adminvideo
- business_assist
description: "Learn how to set up multifactor authentication for your organization."
monikerRange: 'o365-worldwide'
---

# Set up multifactor authentication for Microsoft 365

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

Multifactor authentication means you and your employees must provide more than one way to sign in to Microsoft 365 is one of the easiest ways to secure your business. Based on your understanding of [multifactor authentication (MFA) and its support in Microsoft 365](multi-factor-authentication-microsoft-365.md), it's time to set it up and roll it out to your organization.

Multifactor authentication (MFA) is an important first step in securing your organization. Microsoft 365 for business gives you the option to use security defaults or Conditional Access policies to turn on MFA for your admins and user accounts. For most organizations, **Security defaults** offer a good level of sign-in security. But if your organization must meet more stringent requirements, you can use [Conditional Access policies](https://go.microsoft.com/fwlink/?linkid=2261708).

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Before you begin

- You must be a Global admin to manage MFA. For more information, see [About admin roles](../add-users/about-admin-roles.md).
- If you have legacy per-user MFA turned on, [Turn off legacy per-user MFA](#turn-off-per-user-mfa).
- Advanced: If you have third-party directory services with Active Directory Federation Services (AD FS), set up the Azure MFA Server. See [advanced scenarios with Microsoft Entra multifactor authentication and third-party VPN solutions](/azure/active-directory/authentication/howto-mfaserver-nps-vpn) for more information.

## Watch: Turn on multifactor authentication

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=eb0acd2a-edf5-4c1d-8e72-e3254bc7dc12]

## Steps: Turn on multifactor authentication

If you purchased your subscription or trial after October 21, 2019, and you're prompted for MFA when you sign in, [security defaults](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) have been automatically enabled for your subscription. If you purchased your subscription before October 2019, follow these steps to turn on **security default MFA**.

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) as least a [Security Administrator](/entra/identity/role-based-access-control/permissions-reference#security-administrator).
1. Browse to **Identity** > **Overview** > **Properties**.
1. Select **Manage security defaults**.
1. Set **Security defaults** to **Enabled**.
1. Select **Save**.

For more information, see [What are security defaults](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults)?

## Turn off per-user MFA

If you've previously turned on per-user MFA, you must turn it off before enabling Security defaults.  You should also turn off per-user MFA after you've configure your policies and settings in Conditional Access.

1. In the Microsoft 365 admin center, in the left nav choose **Users** \> **Active users**.
1. On the **Active users** page, choose **multifactor authentication**.
1. On the multifactor authentication page, select each user and set their multifactor authentication status to **Disabled**.

## Turn Security default MFA off

> [!IMPORTANT]
> It's not recommended to turn off MFA.

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) as at least a [security administrator](/entra/identity/role-based-access-control/permissions-reference#security-administrator) or [conditional access administrator](/entra/identity/role-based-access-control/permissions-reference#conditional-access-administrator).

1. Browse to **Identity** > **Overview** > **Properties**.
1. Select **Manage security defaults**.
1. Set **Security defaults** to **Disabled (not recommended)**.
1. Select **Save**.

## Use Conditional Access policies

If your organization has more granular sign-in security needs, [Conditional Access policies](https://go.microsoft.com/fwlink/?linkid=2261708) can offer you more control. Conditional Access lets you create and define policies that react to sign in events and request additional actions before a user is granted access to an application or service. You can also get started by using [conditional access templates](/entra/identity/conditional-access/concept-conditional-access-policy-common?tabs=secure-foundation).

> [!IMPORTANT]
> Do not forget to disable per-user MFA after you have enabled Conditional Access policies. This is important as it will result in inconsistent user experience.

Conditional Access is available for customers who bought Microsoft Entra ID P1, or licenses that include this, such as Microsoft 365 Business Premium, and Microsoft 365 E3. For more information, see [create a Conditional Access policy](/azure/active-directory/authentication/tutorial-enable-azure-mfa).

Risk-based conditional access is available through Microsoft Entra ID P2 license, or licenses that include risk based conditional access, like Microsoft 365 E5. For more information, see [risk-based Conditional Access](/azure/active-directory/conditional-access/howto-conditional-access-policy-risk).

For more information about the Microsoft Entra ID P1 and P2, see [Microsoft Entra pricing](https://azure.microsoft.com/pricing/details/active-directory/).

## Next steps - Send to your users

- [What is multifactor authentication](https://support.microsoft.com/help/4577374/what-is-multifactor-authentication)
- [Sign-in after registration](https://support.microsoft.com/office/2b856342-170a-438e-9a4f-3c092394d3cb)
- [Change additional verification method](https://support.microsoft.com/office/956ec8d0-7081-4518-a701-f8414cc20831)
- [Register for additional verification method](https://support.microsoft.com/office/ace1d096-61e5-449b-a875-58eb3d74de14)

## Related content

[Set up multifactor authentication](set-up-multi-factor-authentication.md) (video)

[Turn on multifactor authentication for your phone](https://support.microsoft.com/office/ace1d096-61e5-449b-a875-58eb3d74de14) (article)

[Security defaults and multifactor authentication](/microsoft-365/business-premium/m365bp-turn-on-mfa) (article)
