---
title: "Turn on MFA by using security defaults or Conditional Access"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business-security
ms.date: 05/31/2024
ms.localizationpriority: medium
ms.collection:
- M365-Campaigns
- m365solution-smb
- highpri
- tier2
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how security defaults can help protect your organization from identity-related attacks by providing preconfigured security settings for Microsoft 365 Business Premium."
---

# Turn on multifactor authentication in Microsoft 365 Business Premium

Multifactor authentication (MFA) is a critical first step in securing your organization. Microsoft 365 Business Premium includes the option to use security defaults or Conditional Access policies to turn on MFA for your admins and user accounts. For most organizations, security defaults offer a good level of sign-in security. But if your organization must meet more stringent requirements, you can use Conditional Access policies instead.

This article provides information about:

- **Security defaults** (suitable for most businesses)
- **Conditional Access** (for businesses with more stringent security requirements)

> [!NOTE]
> You can use *either* security defaults *or* Conditional Access policies, but you can't use both at the same time.

# [Security defaults](#tab/secdefaults)

## Security defaults

Security defaults were designed to help protect your company's user accounts from the start. When turned on, security defaults provide secure default settings that help keep your company safe by:

- Requiring all users and admins to register for MFA using the [Microsoft Authenticator app](/azure/active-directory/authentication/concept-authentication-authenticator-app) or any third-party application using [OATH TOTP](/azure/active-directory/authentication/concept-authentication-oath-tokens#oath-software-tokens).
- Challenging users with MFA, mostly when they show up on a new device or app, but more often for critical roles and tasks.
- Disabling authentication from legacy authentication clients that can't do MFA.
- Protecting admins by requiring extra authentication every time they sign in.

MFA is an important first step in securing your company, and security defaults make enabling MFA easy to implement. If your subscription was created on or after October 22, 2019, security defaults might have been automatically enabled for you&mdash;you should check your settings to confirm.

> [!TIP]
> For more information about security defaults and the policies they enforce, see [Security defaults in Microsoft Entra ID](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults).

### To enable security defaults (or confirm they're already enabled)

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) as least a [Security Administrator](/entra/identity/role-based-access-control/permissions-reference#security-administrator).
1. Browse to **Identity** \> **Overview** \> **Properties**.
1. Select **Manage security defaults**.
1. Set **Security defaults** to **Enabled**.
1. Select **Save**.

   > [!IMPORTANT]
   > If your organization is using Conditional Access, security defaults are disabled. You can use either security defaults or Conditional Access, but not both at the same time.

# [Conditional Access](#tab/condit)

## Conditional Access

If your company or business has complex security requirements or you need more granular control over your security policies, then you should consider using Conditional Access instead of security defaults to achieve a similar or higher security posture.

Conditional Access lets you create and define policies that react to sign-in events and request other actions before a user is granted access to an application or service. Conditional Access policies can be granular and specific, empowering users to be productive wherever and whenever, but also protecting your organization.

Security defaults are available to all customers. Conditional Access requires one of the following subscriptions:

- Microsoft Entra ID P1 or P2
- Microsoft 365 Business Premium
- Microsoft 365 E3 or E5
- Enterprise Mobility & Security E3 or E5

If you want to use Conditional Access to configure policies, see the following step-by-step guides:

- [Require MFA for administrators](/azure/active-directory/conditional-access/howto-conditional-access-policy-admin-mfa)
- [Require MFA for Azure management](/azure/active-directory/conditional-access/howto-conditional-access-policy-azure-management)
- [Block legacy authentication](/azure/active-directory/conditional-access/howto-conditional-access-policy-block-legacy)
- [Require MFA for all users](/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa)
- [Require Microsoft Entra multifactor authentication registration](/azure/active-directory/identity-protection/howto-identity-protection-configure-mfa-policy) - Requires Microsoft Entra ID Protection, which is part of Microsoft Entra ID P2

To learn more about Conditional Access, see [What is Conditional Access?](/azure/active-directory/conditional-access/overview) For more information about creating Conditional Access policies, see [Create a Conditional Access policy](/azure/active-directory/authentication/tutorial-enable-azure-mfa#create-a-conditional-access-policy).

> [!NOTE]
> If you have a plan or license that provides Conditional Access but haven't yet created any Conditional Access policies, you're welcome to use security defaults. However, you'll need to turn off security defaults before you can use Conditional Access policies.

---

## Next step

[Protect your administrator accounts in Microsoft 365 Business Premium](m365bp-protect-admin-accounts.md)
