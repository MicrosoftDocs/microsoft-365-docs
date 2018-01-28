---
title: "Step 7: Multi-factor authentication"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 01/29/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: ""
---

# Step 7: Multi-factor authentication

![This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise](./media/banners/Banner-Optional-BothSKUs.png)

**Summary:** 

Multi-factor authentication (MFA) uses more than one method of verification. Without MFA, you use a password as the only verification method. The problem with passwords is that many of them are easily guessed by an attacker or shared by user unknowingly with untrusted parties.

MFA adds a second layer of security to user sign-ins and transactions by requiring an additional verification method after you have correctly specified the user account password, such as:

- Something you have, such as a personal and trusted device that is not easily spoofed or duplicated, such as a phone.
- Something you are, a biometric attribute such as your fingerprint.

You enable MFA and configure the secondary authentication method on a per-user account basis. This will start the process of requiring users to register for multi-factor authentication next time they sign-in.

For more information, see [Plan for multi-factor authentication for Office 365 Deployments](https://support.office.com/article/Plan-for-multifactor-authentication-for-Office-365-Deployments-043807b2-21db-4d5c-b430-c8a6dee0e6ba).

To configure multifactor authentication, [Set up multi-factor authentication for Office 365 users](https://support.office.com/article/Set-up-multi-factor-authentication-for-Office-365-users-8f0454b2-f51a-4d9c-bcde-2c48e41621c6).

>[!Note]
>You can also require MFA with conditional access policies. For more information, see [Step 2: Configure conditional access policy settings](infoprotect-configure-conditional-access-policy-settings.md) in the Information Protection phase.
>

Make sure that you inform your users that MFA is being required for thier accounts. They must understand the requirements for the secondary authentication method (such as mandatory use of a smart phone to sign in), can configure it correctly, and experience it without errors.

The results of this step are that your user accounts are enabled for MFA.

>[!Note]
>In some applications, such as Microsoft Office 2010 or older and Apple Mail, you can't use MFA. To use these apps, you'll need to use "app passwords" in place of your traditional password. The app password allows the app to bypass MFA and continue working. To learn more about app passwords, see [Create an app password for Office 365](https://support.office.com/article/Create-an-app-password-for-Office-365-3e7c860f-bda4-4441-a618-b53953ee1183).
>

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step7) corresponding to this step.

## Next step

[Step 8: Single sign-on](identity-single-sign-on.md)
