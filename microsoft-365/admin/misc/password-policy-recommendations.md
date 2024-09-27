---
title: "Password policy recommendations"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 05/28/2024
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

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

As the admin of an organization, you're responsible for setting the password policy for users in your organization. Setting the password policy can be complicated and confusing, and this article provides recommendations to make your organization more secure against password attacks.

Microsoft cloud-only accounts have a predefined password policy that can't be changed. The only items you can change are the number of days until a password expires and whether or not passwords expire at all.
  
To determine how often Microsoft 365 passwords expire in your organization, see [Set password expiration policy for Microsoft 365](../manage/set-password-expiration-policy.md).

For more information about Microsoft 365 passwords, see:

[Reset passwords](../add-users/reset-passwords.md) (article)

[Set an individual user's password to never expire](../add-users/set-password-to-never-expire.md) (article)

[Let users reset their own passwords](../add-users/let-users-reset-passwords.md) (article)

[Resend a user's password](../add-users/resend-user-password.md) (article)

[Time to rethink mandatory password changes](https://go.microsoft.com/fwlink/p/?linkid=861018).
  
## Understanding password recommendations

Good password practices fall into a few broad categories:
  
- **Resisting common attacks** This involves the choice of where users enter passwords (known and trusted devices with good malware detection, validated sites), and the choice of what password to choose (length and uniqueness).

- **Containing successful attacks** Containing successful hacker attacks is about limiting exposure to a specific service, or preventing that damage altogether, if a user's password gets stolen. For example, ensuring that a breach of your social networking credentials doesn't make your bank account vulnerable, or not letting a poorly guarded account accept reset links for an important account.

- **Understanding human nature** Many valid password practices fail in the face of natural human behaviors. Understanding human nature is critical because research shows that almost every rule you impose on your users results in a weakening of password quality. Length requirements, special character requirements, and password change requirements all result in normalization of passwords, which makes it easier for attackers to guess or crack passwords.

## Password guidelines for administrators

The primary goal of a more secure password system is password diversity. You want your password policy to contain lots of different and hard to guess passwords. Here are a few recommendations for keeping your organization as secure as possible.

- Maintain an fourteen-character minimum length requirement

- Don't require character composition requirements. For example, \*&amp;(^%$

- Don't require mandatory periodic password resets for user accounts

- Ban common passwords, to keep the most vulnerable passwords out of your system

- Educate your users to not reuse their organization passwords for nonwork related purposes

- Enforce registration for [multi-factor authentication](../security-and-compliance/set-up-multi-factor-authentication.md)

- Enable risk based multi-factor authentication challenges

### Password guidance for your users

Here's some password guidance for users in your organization. Make sure to let your users know about these recommendations and enforce the recommended password policies at the organizational level.
  
- Don't use a password that is the same or similar to one you use on any other websites

- Don't use a single word, for example, **password**, or a commonly used phrase like **Iloveyou**

- Make passwords hard to guess, even by people who know a lot about you, such as the names and birthdays of your friends and family, your favorite bands, and phrases you like to use

## Some common approaches and their negative impacts

They're some of the most commonly used password management practices, but research warns us about their negative impacts.
  
### Password expiration requirements for users

Password expiration requirements do more harm than good, as they make users select predictable passwords, composed of sequential words and numbers that are closely related to each other. In these cases, the next password can be predicted based on the previous password. Password expiration requirements offer no containment benefits because cybercriminals almost always use credentials as soon as they compromise them.
  
### Minimum password length requirements

To encourage users to think about a unique password, we recommend keeping a reasonable eight-character minimum length requirement.
  
### Requiring the use of multiple character sets

Password complexity requirements reduce key space and cause users to act in predictable ways, doing more harm than good. Most systems enforce some level of password complexity requirements. For example, passwords need characters from all three of the following categories:
  
- uppercase characters

- lowercase characters

- non-alphanumeric characters

Most people use similar patterns. For example, a capital letter in the first position, a symbol in the last, and a number in the last 2. Cyber criminals are aware about such patterns, so they run their dictionary attacks using the most common substitutions, "$" for "s", "@" for "a," "1" for "l". Forcing your users to choose a combination of upper, lower, digits, special characters has a negative effect. Some complexity requirements even prevent users from using secure and memorable passwords, and force them into coming up with less secure and less memorable passwords.
  
## Successful Patterns

In contrast, here are some recommendations in encouraging password diversity.
  
### Ban common passwords

The most important password requirement you should put on your users when creating passwords is to ban the use of common passwords to reduce your organization's susceptibility to brute force password attacks. Common user passwords include: **abcdefg**, **password**, **monkey**.
  
### Educate users to not reuse organization passwords anywhere else

One of the most important messages to get across to users in your organization is to not reuse their organization password anywhere else. The use of organization passwords in external websites greatly increases the likelihood that cybercriminals can compromise these passwords.
  
### Enforce Multi-Factor Authentication registration

Make sure your users update contact and security information, like an alternate email address, phone number, or a device registered for push notifications, so they can respond to security challenges and be notified of security events. Updated contact and security information helps users verify their identity if they ever forget their password, or if someone else tries to take over their account. It also provides an out of band notification channel for security events such as login attempts or changed passwords. 
  
To learn more, see [Set up multi-factor authentication](../security-and-compliance/set-up-multi-factor-authentication.md).
  
### Enable risk based multi-factor authentication

Risk-based multi-factor authentication ensures that when our system detects suspicious activity, it can challenge the user to ensure that they're the legitimate account owner.
  
## Next steps

Want to know more about managing passwords? Here's some recommended reading:

- [Forget passwords, go passwordless](https://www.microsoft.com/security/business/identity-access-management/passwordless-authentication)

- [Microsoft Password Guidance](https://www.microsoft.com/research/wp-content/uploads/2016/06/Microsoft_Password_Guidance-1.pdf)

- [Do Strong Web Passwords Accomplish Anything?](https://go.microsoft.com/fwlink/p/?linkid=861008)

- [Password Portfolios and the Finite-Effort User](https://go.microsoft.com/fwlink/p/?linkid=861014)

- [Preventing Weak Passwords by Reading Users' Minds](https://go.microsoft.com/fwlink/p/?linkid=861015)

- [Choosing Secure Passwords](https://go.microsoft.com/fwlink/p/?linkid=861016)

- [Time to rethink mandatory password changes](https://go.microsoft.com/fwlink/p/?linkid=861018)

## Related content

[Reset passwords](../add-users/reset-passwords.md) (article)\
[Set an individual user's password to never expire](../add-users/set-password-to-never-expire.md) (article)\
[Let users reset their own passwords](../add-users/let-users-reset-passwords.md) (article)\
[Resend a user's password - Admin Help](../add-users/resend-user-password.md) (article)
