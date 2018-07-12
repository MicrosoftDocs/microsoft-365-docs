---
title: "Step 7: Set up multi-factor authentication"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/05/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
description: Understand and configure multi-factor authentication for user accounts.
---

# Step 7: Set up multi-factor authentication

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![](./media/deploy-foundation-infrastructure/identity_icon-small.png)

In Step 7, you'll set up multi-factor authentication (MFA) to add a second layer of security to user sign-ins and transactions. MFA requires an additional verification method after users have correctly entered their password. Without MFA, the password is the only verification method. The problem with passwords is that many of them are easily guessed by an attacker or unknowingly shared with untrusted parties.

With MFA, the second layer of security can be:

- A personal and trusted device that isn’t easily spoofed or duplicated, such as a smart phone.
- A biometric attribute, such as a fingerprint.

You'll enable MFA and configure the secondary authentication method on a per-user account basis. Make sure to let users know that MFA is being enabled so they understand the requirements (such as mandatory use of a smart phone to sign in) and can sign in successfully.

For more information, see [Plan for multi-factor authentication for Office 365 Deployments](https://support.office.com/article/Plan-for-multifactor-authentication-for-Office-365-Deployments-043807b2-21db-4d5c-b430-c8a6dee0e6ba).

To configure multifactor authentication, [Set up multi-factor authentication for Office 365 users](https://support.office.com/article/Set-up-multi-factor-authentication-for-Office-365-users-8f0454b2-f51a-4d9c-bcde-2c48e41621c6).

>[!Note]
>You can also require MFA with conditional access policies. For example, you can configure a policy that required MFA when the authentication is determined to be of medium or high risk. For more information, see [Step 2: Configure conditional access policy settings](infoprotect-configure-conditional-access-policy-settings.md) in the Information Protection phase.
>

>[!Note]
>In some applications, such as Microsoft Office 2010 or older and Apple Mail, you can’t use MFA. To use these apps, you’ll need to use “app passwords” in place of your traditional password. The app password allows the app to bypass MFA and continue working. To learn more about app passwords, see [Create an app password for Office 365](https://support.office.com/article/Create-an-app-password-for-Office-365-3e7c860f-bda4-4441-a618-b53953ee1183).
>

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Multi-factor authentication](multi-factor-authentication-microsoft-365-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step7) for this step.

## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step8.png)| [Simplify user sign-in](identity-single-sign-on.md) |

