---
title: "Benefits of multi-factor authentication for Microsoft 365 users"
f1.keywords:
- NOCSH
ms.author: josephd_msft
author: josephd
manager: laurawi
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: 8f0454b2-f51a-4d9c-bcde-2c48e41621c6
description: "Learn how to use security defaults to set up multi-factor authentication for Office 365 users."
monikerRange: 'o365-worldwide'
---

# Benefits of multi-factor authentication for Microsoft 365 users

Passwords, the most common method of authenticating a sign-in to a computer or online service, is also the most vulnerable. People can choose easy passwords and use the same passwords for multiple sign-ins to different computers and services. Malicious users have lists of the most common easy passwords and always try them first. They can also share your compromised password with the hacker community.

Even when people choose more difficult passwords, they are still vulnerable to social engineering attacks such as phishing emails. Here’s an example:

1.	The attacker sends an official-looking email requesting that the recipient change their password. 
2.	The user clicks on the link in the email, which takes them to a site that looks official and in which they enter their old password and a new one. 
3.	The attacker now has the user’s password and signs in to their service, such as Microsoft 365 or Office 365, duplicates the password change so the user can still sign in.

At this point, the attacker can begin roaming around your organization’s subscription, looking for sensitive data and trying to gain higher levels of access.

To provide an additional level of security for sign-ins, you must use multi-factor authentication (MFA), which uses both a password, which must still be as strong as possible, and a second method based on:

- Something you have with you that is not easily duplicated, such as a smart phone.
- Something you uniquely and biologically have, such as your fingerprint, face, or other biometric attribute.

The second authentication method is not employed until after the user’s password has been verified. With MFA, even if a strong user password is compromised, the attacker does not have your smart phone or your fingerprint to complete the sign-in.

## MFA in Microsoft 365 and Office 365

Both Microsoft 365 and Office 365 support MFA for any user account using either a text message sent to a phone that requires the user to type a verification code or the use of the Microsoft Authenticator smart phone app. 

In both cases, the MFA sign-in is using the “something you have with you that is not easily duplicated” method for the secondary authentication.
There are multiple ways in which you can enable MFA for Microsoft 365 and Office 365:

- For each individual user account
- With security defaults
- With Conditional Access policies

### MFA for an individual user account
For any size subscription, Microsoft strongly recommends MFA for user accounts that have administrator roles, especially the global administrator role. If a global administrator account is compromised, the attacker has full access to steal, destroy, or ransom your organization’s data.

You enable MFA for individual user accounts from the **Active user** pane of the Microsoft 365 admin center.

![](../media/benefits-of-multi-factor-authentication/per-user-mfa.png)

### Security defaults

Security defaults is a new feature for Microsoft 365 and Office 365 paid or trial subscriptions created after October 21, 2019. These subscriptions have security defaults turned on, which requires all of your users to use MFA with the Microsoft Authenticator app.
 
Users have 14 days to register for MFA with the Microsoft Authenticator app from their smart phones, which begins from the first time they sign in after security defaults has been enabled. After 14 days have passed, the user won't be able to sign in until MFA registration is finished.

Security defaults ensure that all organizations have a basic level of security for user sign-in that is enabled by default. You can disable security defaults in favor of MFA for individual accounts or with Conditional Access.

You enable or disable security defaults from the **Properties pane** for Azure Active Directory (Azure AD) in the Azure portal.

![](../media/benefits-of-multi-factor-authentication/security-defaults-mfa.png)

### Conditional Access

Conditional Access policies are a set of rules that specify the conditions under which sign-ins are evaluated and allowed. For MFA, you can create a Conditional Access policy that states:

- If the user account name is for a user that is an Exchange, user, password, security, SharePoint, or global administrator, require MFA before allowing access.

This policy is easier than trying to remember to configure individual user accounts for MFA when they are added to or removed from these administrator roles.

You can also use Conditional Access policies for more advanced capabilities, such as requiring that the sign-in is done from a compliant device, such as your laptop running Windows 10.

You configure Conditional Access policies from the **Security** pane for Azure AD in the Azure portal.

![](../media/benefits-of-multi-factor-authentication/conditional-access-mfa.png)

### Using these together

Keep in mind the following:

- You cannot enable security defaults if you have any Conditional Access policies enabled.
- If security defaults are enabled and you configure MFA for an individual user account, the secondary authentication method registered by the user is the one used for sign-ins.
  For example, when you enable security defaults, all users must use the Microsoft Authenticator app on a smart phone for secondary authentication. However, if a user has an older phone that can receive text messages but cannot run the Microsoft Authenticator app, you can enable MFA on that user account and have them register using the text message secondary authentication method.

This table shows the results of enabling MFA with security defaults, Conditional Access policies, and per-user account settings.

|| Enabled | Disabled | Secondary authentication method |
|:-------|:-----|:-------|:-------|
| **Security defaults**  | Can’t use Conditional Access policies | Can use Conditional Access policies | Microsoft Authenticator app |
| **Conditional Access policies** | If any are enabled, you can’t enable security defaults | If all are not enabled, you can enable security defaults  | User-specified  |
| **Per-user account** | Overrides security defaults being disabled and no Conditional Access policies requiring MFA  | Overridden by security defaults and Conditional Access policies  | User-specified, overrides use of Microsoft Authenticator app if security defaults is enabled |
||||

## Related articles

[Top 10 ways to secure Office 365 and Microsoft 365 Business plans](secure-your-business-data.md)

[Enable Modern Authentication for Office 2013 on Windows devices](enable-modern-authentication.md)
