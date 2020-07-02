---
title: "Step 3: Secure and manage your user sign-ins"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/20/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-identity-device-management
- Strat_O365_Enterprise
ms.custom:
description: You can make user sign-ins to Windows devices and to Microsoft 365 more secure.
---

# Step 3: Secure and manage your user sign-ins

![Phase 2-Identity](../media/deploy-foundation-infrastructure/identity_icon-small.png)


<a name="identity-windows-hello"></a>
## Use Windows Hello for Business

*This is optional and applies to both the E3 and E5 versions of Microsoft 365*

Windows Hello for Business in Windows 10 Enterprise replaces passwords with strong two-factor authentication when signing on a Windows device. The two factors are a new type of user credential that is tied to a device and a biometric or PIN.

For more information, see [Windows Hello for Business Overview](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-overview).


<a name="identity-mfa"></a>
## Set up Azure Multi-Factor Authentication

*This is optional and applies to both the E3 and E5 versions of Microsoft 365*

In this step, you'll set up Azure Multi-Factor Authentication (MFA) to add a second layer of security to user sign-ins and transactions. MFA requires an additional verification method after users have correctly entered their password. Without MFA, the password is the only verification method. The problem with passwords is that many of them are easily guessed by an attacker or unknowingly shared with untrusted parties.

With MFA, the second layer of security can be:

- A personal and trusted device that isn’t easily spoofed or duplicated, such as a smart phone.
- A biometric attribute, such as a fingerprint.

You'll enable MFA and configure the secondary authentication method with [Conditional Access policies](https://docs.microsoft.com/azure/active-directory/authentication/howto-mfa-getstarted#enable-multi-factor-authentication-with-conditional-access), which allow you to use Azure Active Directory (Azure AD) groups to roll out MFA to specified sets of users, such as pilot users, geographical regions, or departments. Make sure to let your users know that MFA is being enabled so they understand the requirements, such as mandatory use of a smart phone to sign in, and can sign in successfully. 

For more information, see [Planning a cloud-based Azure Multi-Factor Authentication deployment](https://docs.microsoft.com/azure/active-directory/authentication/howto-mfa-getstarted).

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Azure Multi-Factor Authentication](multi-factor-authentication-microsoft-365-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-mfa) for this section.

<a name="identity-ident-prot"></a>
## Protect against credential compromise

*This is optional and applies only to the E5 version of Microsoft 365 Enterprise*

In this section, you'll learn how to configure policies that protect against credential compromise, where an attacker determines a user’s account name and password to gain access to an organization’s cloud services and data. Azure AD Identity Protection provides a number of ways to help prevent an attacker from compromising a user account's credentials.

With Azure AD Identity Protection, you can:

|||
|:---------|:---------|
|Determine and address potential vulnerabilities in your organization’s identities|Azure AD uses machine learning to detect anomalies and suspicious activity, such as sign-ins and post-sign-in activities. Using this data, Azure AD Identity Protection generates reports and alerts that help you evaluate the issues and take action.|
|Detect suspicious actions that are related to your organization’s identities and respond to them automatically|You can configure risk-based policies that automatically respond to detected issues when a specified risk level has been reached. These policies, in addition to other Conditional Access controls provided by Azure AD and Microsoft Intune, can either automatically block access or take corrective actions, including password resets and requiring Azure Multi-Factor Authentication for subsequent sign-ins.|
|Investigate suspicious incidents and resolve them with administrative actions|You can investigate risk events using information about the security incident. Basic workflows are available to track investigations and initiate remediation actions, such as password resets.|

See [more information about Azure AD Identity Protection](https://docs.microsoft.com/azure/active-directory/active-directory-identityprotection).

See the [steps to enable Azure AD Identity Protection](https://docs.microsoft.com/azure/active-directory/active-directory-identityprotection-enable).

The results of this step are that you've enabled Azure AD Identity Protection and you are using it to:

- Address potential identity vulnerabilities.
- Detect possible credential compromise attempts.
- Investigate and address ongoing suspicious identity incidents.

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Azure AD Identity Protection](azure-ad-identity-protection-microsoft-365-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-ident-prot) for this section.

|||
|:-------|:-----|
|![Step 4](../media/stepnumbers/Step4.png)| [Add your user accounts](identity-add-user-accounts.md) |
