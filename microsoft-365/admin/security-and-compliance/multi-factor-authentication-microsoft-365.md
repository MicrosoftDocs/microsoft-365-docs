---
title: "Multifactor authentication for Microsoft 365"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 08/12/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- trust-pod
ms.custom: 
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- admindeeplinkMAC
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn about the options for multi-factor authentication in Microsoft 365 (also known as MFA, two-factor authentication, or 2FA)."
---

# Multifactor authentication in Microsoft 365

Passwords are the most common method of authenticating users, but they're also the most vulnerable. People often use weak, easy to guess passwords, and use the same credentials at different services.

To provide an extra level of security, multifactor authentication (also known as MFA, two-factor authentication, or 2FA) requires a second verification method for user sign-ins based on:

- Something a user has that isn't easily duplicated. For example, a smart phone.
- Something unique to the user. For example, a fingerprint or other biometric attributes.

The extra verification method is used only after the password is verified. Even if a strong user password is compromised, the attacker doesn't have the user's smart phone or fingerprints to complete the sign-in.

The available methods to enable MFA in Microsoft 365 organizations, including Microsoft 365 for business organizations, are described in the following sections.

For configuration instructions, see [Set up MFA for Microsoft 365](set-up-multi-factor-authentication.md).

## Security defaults

Security defaults is a set of unmodifiable policies in all Microsoft 365 organizations via Microsoft Entra ID Free.

Security defaults include the following security features:

- Require all users and admins to register for Microsoft Entra multifactor authentication (MFA) using the [Microsoft Authenticator app](/entra/identity/authentication/concept-authentication-authenticator-app) or any non-Microsoft authentication app that supports [OATH TOTP](/entra/identity/authentication/concept-authentication-oath-tokens#oath-software-tokens).
- Require MFA for admin accounts at every sign in.
- Require MFA for users when necessary (for example, on new devices).
- Block legacy authentication protocols (for example, POP3 and IMAP4 in old email clients).
- Require MFA for users and admins accessing Azure Resource Manager services (for example, the Microsoft Azure portal).

Security defaults is either on or off in an organization. Microsoft 365 organizations created after October 2019 have security defaults (hence, MFA) turned on by default, **so you don't need to do anything to enable security defaults or MFA in a new organization**. For many organizations, security defaults offer a good, baseline level of sign-in security.

For more information about security defaults and the policies enforced, see [Enforced security policies in security defaults](/entra/fundamentals/security-defaults#enforced-security-policies).

To configure security defaults, see [Manage security defaults](set-up-multi-factor-authentication.md#manage-security-defaults).

## Conditional Access policies

In addition to security defaults, Conditional Access policies are available in organizations with Microsoft Entra ID P1 or P2. For example:

- Microsoft 365 Business Premium (Microsoft Entra ID P1)
- Microsoft 365 E3 (Microsoft Entra ID P1)
- Microsoft 365 E5 (Microsoft Entra ID P2)
- An add-on subscription

  > [!TIP]
  > Organizations with Microsoft Entra ID P2 also have access to Microsoft Entra ID Protection. You can create a Conditional Access policy to [require multifactor authentication for elevated sign-in risk](/entra/identity/conditional-access/policy-risk-based-sign-in). For more information, see [What is Microsoft Entra ID Protection?](/entra/id-protection/overview-identity-protection).

You create Conditional Access policies that react to sign-in events before a user is granted access to an application or service. If your organization has complex security requirements or you need granular control over security policies, you can use Conditional Access policies instead of security defaults.

> [!TIP]
> Organizations can use security defaults or Conditional Access policies, but not both at the same time. Conditional Access policies require security defaults to be turned off, so it's important to recreate the policies from security defaults in Conditional Access policies as a baseline for all users.

For more information about Conditional Access policies, see [What is Conditional Access?](/entra/identity/conditional-access/overview).

To configure Conditional Access policies, see [Manage Conditional Access policies](set-up-multi-factor-authentication.md#manage-conditional-access-policies).

<a name='azure-ad-identity-protection'></a>

## Legacy per-user MFA (not recommended)

If you can't use security defaults or Conditional Access for business reasons, last option is legacy MFA for individual Microsoft Entra ID accounts in all Microsoft 365 organizations via Microsoft Entra ID Free. We strongly recommend MFA for accounts with administrator roles, especially the Global Administrator role.

For configuration instructions, see [Enable per-user Microsoft Entra multifactor authentication to secure sign-in events](/entra/identity/authentication/howto-mfa-userstates).

## Comparing MFA methods

The following table shows the results of enabling MFA with security defaults, Conditional Access policies, or per-user account settings.

|Method|Method enabled|Method disabled|Available authentication methods|
|---|---|---|---|
|**Security defaults**|If security defaults is turned on, you can create new Conditional Access policies, but you can't turn them on.|After you turn off security defaults, you can turn on Conditional Access policies.|[Microsoft Authenticator app](/entra/identity/authentication/concept-authentication-authenticator-app) or any non-Microsoft authentication app that supports [OATH TOTP](/entra/identity/authentication/concept-authentication-oath-tokens#oath-software-tokens).|
|**Conditional Access policies**|If one or more Conditional Access policies exist in any state (**Off**, **On**, or **Report only**), you can't turn on security defaults.|If there are no Conditional Access policies, you can enable security defaults.|[Microsoft Authenticator app](/entra/identity/authentication/concept-authentication-authenticator-app) or any non-Microsoft authentication app that supports [OATH TOTP](/entra/identity/authentication/concept-authentication-oath-tokens#oath-software-tokens). <br/><br/>Other authentication methods might also be available, depending on the configured [authentication strength](/compliance/anz/e8-mfa-configure-authentication-strengths).|
|**Legacy per-user MFA (not recommended)**|Overrides security defaults and Conditional Access policies requiring MFA at each sign-in.|Overridden by security defaults or Conditional Access policies|User-specified during MFA registration|

## Next steps

- **Admins**:
  - [Set up MFA for Microsoft 365](set-up-multi-factor-authentication.md)
  - [Admin account security in Microsoft 365 for business](m365b-account-security-admins.md)

- **Users**: [Set up your Microsoft 365 sign-in for multifactor authentication](https://support.microsoft.com/office/ace1d096-61e5-449b-a875-58eb3d74de14) and the following video:

  > [!VIDEO https://learn-video.azurefd.net/vod/player?id=eb0acd2a-edf5-4c1d-8e72-e3254bc7dc12]

## Related content

[Turn on multifactor authentication](set-up-multi-factor-authentication.md) (video)\
[Turn on multifactor authentication for your phone](https://support.microsoft.com/office/ace1d096-61e5-449b-a875-58eb3d74de14) (video)
