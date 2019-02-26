---
title: "Step 4: Configure secure user authenticationn"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 02/25/2019
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

# Step 4: Configure secure user authentication

![](./media/deploy-foundation-infrastructure/identity_icon-small.png)

<a name="identity-mfa"></a>
# Set up multi-factor authentication

*This is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In this step, you'll set up multi-factor authentication (MFA) to add a second layer of security to user sign-ins and transactions. MFA requires an additional verification method after users have correctly entered their password. Without MFA, the password is the only verification method. The problem with passwords is that many of them are easily guessed by an attacker or unknowingly shared with untrusted parties.

With MFA, the second layer of security can be:

- A personal and trusted device that isn’t easily spoofed or duplicated, such as a smart phone.
- A biometric attribute, such as a fingerprint.

You'll enable MFA and configure the secondary authentication method on a per-user account basis. Make sure to let users know that MFA is being enabled so they understand the requirements, such as mandatory use of a smart phone to sign in, and can sign in successfully.

For more information, see [Plan for multi-factor authentication for Office 365 Deployments](https://docs.microsoft.com/office365/admin/security-and-compliance/multi-factor-authentication-plan).

To configure multifactor authentication, [Set up multi-factor authentication for Office 365 users](https://docs.microsoft.com/office365/admin/security-and-compliance/set-up-multi-factor-authentication).

You can require MFA with conditional access policies. For example, you can configure a policy that requires MFA when the authentication is determined to be of medium or high risk. For more information, see [Common identity and device access policies](identity-access-policies.md#require-mfa-based-on-sign-in-risk).

>[!Note]
>In some applications, such as Microsoft Office 2010 or older and Apple Mail, you can’t use MFA. To use these apps, you’ll need to use “app passwords” in place of your traditional password. The app password allows the app to bypass MFA and continue working. To learn more about app passwords, see [Create an app password for Office 365](https://support.office.com/article/Create-an-app-password-for-Office-365-3e7c860f-bda4-4441-a618-b53953ee1183).
>

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Multi-factor authentication](multi-factor-authentication-microsoft-365-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-mfa) for this section.



<a name="identity-ident-prot"></a>
## Protect against credential compromise

*This is optional and applies only to the E5 version of Microsoft 365 Enterprise*

In this section, you'll learn how to configure policies that protect against credential compromise, where an attacker determines a user’s account name and password to gain access to an organization’s cloud services and data. Azure AD Identity Protection provides a number of ways to help prevent an attacker from moving laterally through your accounts and groups, and subsequently, to your most valuable data.

With Azure AD Identity Protection, you can:

|||
|:---------|:---------|
|Determine and address potential vulnerabilities in your organization’s identities|Azure AD uses machine learning to detect anomalies and suspicious activity, such as sign-ins and post-sign-in activities. Using this data, Identity Protection generates reports and alerts that help you evaluate the issues and take action.|
|Detect suspicious actions that are related to your organization’s identities and respond to them automatically|You can configure risk-based policies that automatically respond to detected issues when a specified risk level has been reached. These policies, in addition to other conditional access controls provided by Azure Active Directory and Enterprise Mobility + Security (EMS), can either automatically block access or take corrective actions, including password resets and requiring multi-factor authentication for subsequent sign-ins.|
|Investigate suspicious incidents and resolve them with administrative actions|You can investigate risk events using information about the security incident. Basic workflows are available to track investigations and initiate remediation actions, such as password resets.|

See [more information about Azure AD Identity Protection](https://docs.microsoft.com/azure/active-directory/active-directory-identityprotection).

See the [steps to enable Azure AD Identity Protection](https://docs.microsoft.com/azure/active-directory/active-directory-identityprotection-enable).

The results of this step are that you've enabled Azure AD Identity protection and you are using it to:

- Address potential identity vulnerabilities.
- Detect possible credential compromise attempts.
- Investigate and address ongoing suspicious identity incidents.

|||
|:-------|:-----|
|![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon-small.png)| [Test Lab Guide: Azure AD Identity Protection](azure-ad-identity-protection-microsoft-365-test-environment.md) |
|||

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-ident-prot) for this section.

## Monitor tenant and sign-in activity

*This is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

In this step, you'll review audit logs and sign-in activity using Azure AD reporting. Two types of reports are available.

The **Audit logs activity report** records the history of every task performed in your Azure AD tenant. This report answers questions like:

- Who added someone to an admin group?
- Which users are signing into a specific app?
- How many password resets are happening?

The **Sign-ins activity report** records who performed the tasks reported by the audit logs report. This report answers questions like:

- For a specific user under investigation, what is their sign-in pattern?
- What is my volume of sign-ins over a day, week, or month?
- How many of these sign-in attempts were not successful, and for which accounts?

For more information about the reports and how to access them, see [Azure Active Directory reporting](https://docs.microsoft.com/azure/active-directory/active-directory-reporting-azure-portal).

As a result of this step, you'll gain awareness of these reports and an understanding of how you can use them to gain insights on Azure AD events and activities for planning and security purposes.



## Next step

|||
|:-------|:-----|
|![](./media/stepnumbers/Step5.png)| [Simplify access for users](identity-password-reset.md) |

