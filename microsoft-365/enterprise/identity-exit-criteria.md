---
title: "Phase 2: Identity infrastructure exit criteria"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/15/2017
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: "Summary: Ensure that your configuration meets Microsoft 365 Enterprise criteria for identity-based services and infrastructure."
---

# Phase 2: Identity infrastructure exit criteria

**Summary:** Ensure that your configuration meets Microsoft 365 Enterprise criteria for identity-based services and infrastructure.

Before you move on to the next phase in the deployment process, ensure that your configuration meets the following criteria for identity-based services and infrastructure.

## Required exit criteria

The following criteria are required for your organization to have an identity infrastructure for Microsoft 365 Enterprise.

<a name="crit-phase2-step02-plan-users-groups"> </a>
### Users, groups, and group membership are determined

You have planned for and implemented the creation of user accounts and groups so that:

- Employees in your organization and the vendors, contractors, and partners that work for or with your organization have a corresponding user account in Azure AD.
- Azure AD groups and their members contain user accounts and other groups for various purposes, such as the provisioning of security settings for Microsoft cloud services, automatic licensing, and other uses.

If needed, go to the [step](phase2-step02-plan-users-groups.md) corresponding to this exit criteria.

<a name="crit-phase2-step03-azure-ad-connect"> </a>
### User and group identities are synchronized between your on-premises identity provider and your Azure AD tenant

If you have an existing on-premises identity provider such as Windows Server AD, you must use Azure AD Connect to synchronize the list of user accounts and groups from your on-premises identity provider to your Azure AD tenant.

With directory synchronization, your users can sign in to Office 365 and other Microsoft cloud services that use the same Azure AD tenant with the same credentials that they use to sign in to their computers and access intranet resources. 

If you don’t meet this criterion, you will have two sets of user accounts and groups:

- One that exists in your on-premises identity provider
- One that exists in your Azure AD tenant

In this state, the two separate sets of user accounts and groups must be manually maintained by both IT administrators and users. This will inevitably lead to unsynchronized accounts, their passwords, and groups.

#### How to test
To verify that password synchronization or federated authentication works correctly for authentication, sign in to the Office 365 portal with a set of valid on-premises credentials.

To verify that directory synchronization is working correctly, do the following:

1.	Use the user account and group management tool for your on-premises identity provider to create a new test group.
2.	Wait for the synchronization time.
3.	Check your Azure AD tenant to verify that the new test group name appears.
4.	Use the user account and group management tool for your on-premises identity provider to create a new test group.

If needed, go to the [step](phase2-step03-azure-ad-connect.md) corresponding to this exit criteria.

<a name="crit-phase2-step0x-mfa"> </a>
### Multifactor authentication is enabled for your users

You used Plan for multi-factor authentication for Office 365 Deployments and Set up multi-factor authentication for Office 365 users to enable MFA for your user accounts. 

If you don’t meet this criterion, your user accounts will be subject to online password determination attacks. If a user account password is compromised, all of the resources and capabilities, such as administrator roles, are available to the attacker. This allows them to copy, destroy, or hold for ransom private and internal documents and other data.

#### How to test

Create a test user account and assign them a license. Configure multifactor authentication for the test user account with the additional verification method that you are using for actual user accounts, such as sending a message to your phone. Lastly, sign in the the Office 365 or Azure portal with the test user account and verify that MFA prompts you for the additional verification information and results in a successful authentication. Finally, delete the test user account.

If needed, go to the step (link TBD) corresponding to this exit criteria.

<a name="crit-phase2-step0x-global-admins"> </a>
### You have dedicated global admin accounts with multifactor authentication

You have used the information and procedures in Protect your Office 365 global administrator accounts to heighten the security of your global administrator accounts. If you don’t meet this criterion, your global administrator accounts can be susceptible to attack and compromise, allowing an attacker to gain system-wide access to your data for harvesting, destruction, or ransom.

#### How to test

Use these steps to verify that you have protected your global administrator accounts:

1.	Run the following PowerShell command at the Windows Azure Active Directory Module for Windows PowerShell command prompt:
Get-MsolRoleMember -RoleObjectId (Get-MsolRole -RoleName "Company Administrator").ObjectId
You should only see the list of dedicated global administrator accounts.
2.	Sign in to Office 365 using each of the accounts from the previous steps. Each sign in must require multi-factor authentication and the strongest form of secondary authentication available in your organization.
3.	The Office 365 Cloud App Security administrator portal lists each of the global administrator account sign-ins from the previous step.

If needed, go to the step (link TBD) corresponding to this exit criteria.

## Optional but highly-recommended exit criteria

The following criteria are not required for your organization to have an identity infrastructure for Microsoft 365 Enterprise, but are highly recommended for additional user support, administration, and other capabilities.

<a name="crit-phase2-step01-customize-Office-365-sign-in-page"> </a>
### You have a sign-in screen that is personalized to your organization

You have used [Add company branding to your sign-in and Access Panel pages](http://aka.ms/aadpaddbranding) to add your organization’s branding to the Office 365 sign-in page.

If you don’t meet this criterion, your users will not see a visual indicator that they are accessing your organization. This can help:

- End-users more quickly address errors in their account name for your organization when signing in.
- IT administrators to more quickly distinguish between your production Office 365 subscription and dev/test subscriptions.

#### How to test

Sign-in to the Office 365 portal with your user account name and multifactor authentication. You should see your custom configuration elements on the sign-in page.

If needed, go to the [step](phase2-step01-customize-Office-365-sign-in-page.md) corresponding to this exit criteria.



## Next phase

Your next phase in the end-to-end deployment process for Microsoft 365 is [Mobile device management](phase3-mobility-infrastructure-microsoft-365-ent.md).
