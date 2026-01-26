---
title: "Password policy recommendations"
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 12/01/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: high
ms.collection:
- Tier1
- ContentEngagementFY23
- scotvorg
- highpri
- Adm_O365
- Adm_NonTOC
- must-keep
ms.custom:
- VSBFY23
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
description: "Make your organization more secure against password attacks, and ban common passwords and enable risk-based multifactor authentication."
---

# Password policy recommendations for Microsoft 365 passwords

As a Microsoft 365 administrator, you're responsible for setting the password policy for users in your organization. Setting the password policy can be complicated and confusing, and this article provides recommendations to make your organization more secure against password attacks.

Microsoft cloud-only accounts have a predefined password policy that can't be changed. The only items you can change are the number of days until a password expires and whether or not passwords expire at all.
  
To determine how often Microsoft 365 passwords expire in your organization, see [Set password expiration policy for Microsoft 365](../manage/set-password-expiration-policy.md).
  
## Understanding password recommendations

Good password practices fall into a few broad categories:
  
- **Resisting common attacks**: This involves the choice of where users enter passwords (known and trusted devices with good malware detection, validated sites), and the choice of what password to choose (length and uniqueness).

- **Containing successful attacks**: Containing successful hacker attacks is about limiting exposure to a specific service, or preventing that damage altogether, if a user's password gets stolen. For example, ensuring that a breach of your social networking credentials doesn't make your bank account vulnerable, or not letting a poorly guarded account accept reset links for an important account.

- **Understanding human nature**: Many valid password practices fail in the face of natural human behaviors. Understanding human nature is critical because research shows that almost every rule you impose on your users results in a weakening of password quality. Length requirements, special character requirements, and password change requirements all result in normalization of passwords, which makes it easier for attackers to guess or crack passwords.

## Password guidelines for administrators

The primary goal of a more secure password system is password diversity. You want your password policy to contain lots of different and hard-to-guess passwords. Here are a few recommendations for keeping your organization as secure as possible.

- Maintain a 14-character minimum length requirement. (Even though Microsoft 365 requires at least eight characters, for stronger security, we recommend a minimum of 14 characters.)
- Don't use easy-to-guess passwords like `abcdefg` or `password`
- Educate users to not reuse their organization passwords for nonwork purposes
- Enforce registration for [multifactor authentication](../security-and-compliance/set-up-multi-factor-authentication.md)
- Enable risk-based multifactor authentication challenges

## Password guidance for users

Here's some password guidance for users in your organization. Make sure to let your users know about these recommendations and enforce the recommended password policies at the organizational level.
  
- Don't use a password that is the same or similar to one you use on any other websites
- Don't use a single word, for example, `password`, or a commonly used phrase like `Iloveyou`
- Set passwords that are hard to guess, even by people who know a lot about you. Examples include using names and birthdays of your friends and family, your favorite bands, and phrases you like to use
  
### Ban easy-to-guess passwords

The most important password requirement you should put on your users when creating passwords is to ban the use of easy-to-guess passwords that make your organization vulnerable to brute-force password attacks. Examples include: 

- `abcdefg`
- `password`
- `monkey`
- `123456`
  
### Educate users to not reuse organization passwords anywhere else

One of the most important messages to get across to users in your organization is to not reuse their organization password anywhere else. The use of organization passwords in external websites greatly increases the likelihood that cybercriminals can compromise these passwords.
  
### Enforce multifactor authentication registration

Make sure your users update contact and security information, like an alternate email address, phone number, or a device registered for push notifications, so they can respond to security challenges and be notified of security events. Updated contact and security information helps users verify their identity if they ever forget their password, or if someone else tries to take over their account. It also provides an out of band notification channel for security events such as sign-in attempts or changed passwords. 
  
To learn more, see [Set up multifactor authentication](../security-and-compliance/set-up-multi-factor-authentication.md).

### Enable risk based multifactor authentication

Risk-based multifactor authentication ensures that when our system detects suspicious activity, it can challenge the user to ensure that they're the legitimate account owner.

## Related content

- [Reset passwords](../add-users/reset-passwords.md)
- [Let users reset their own passwords](../add-users/let-users-reset-passwords.md)
- [Resend a user's password - Admin Help](../add-users/resend-user-password.md)
- [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585)

