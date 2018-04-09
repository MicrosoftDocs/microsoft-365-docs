---
title: "Phase 2: Identity infrastructure exit criteria"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/13/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Ensure that your configuration meets Microsoft 365 Enterprise criteria for identity-based services and infrastructure.
---

# Phase 2: Identity infrastructure exit criteria

Before you move on to Phase 3, make sure that your identity infrastructure meets these conditions. Also see [Prerequisites](https://docs.microsoft.com/microsoft-365-enterprise/identity-access-policies#prerequisites) for additional recommendations on identity infrastructure.

<a name="crit-identity-step1"></a>
## Required: All users, groups, and group memberships have been created

You have created user accounts and groups so that:

- Employees in your organization and the vendors, contractors, and partners that work for or with your organization have a corresponding user account in Azure Active Directory (AD).
- Azure AD groups and their members contain user accounts and other groups for various purposes, such as the provisioning of security settings for Microsoft cloud services, automatic licensing, and other uses.

If needed, [Step 1](identity-plan-users-groups.md) can help you meet this requirement.

<a name="crit-identity-step2"></a>
## Required: Users and groups are synchronized with Azure AD

If you have an existing on-premises identity provider, such as Windows Server Active Directory (AD), you have used Azure AD Connect to synchronize user accounts and groups from your on-premises identity provider to your Azure AD tenant.

With directory synchronization, your users can sign in to Office 365 and other Microsoft cloud services using the same credentials that they use to sign in to their computers and access on-premises resources.

If needed, [Step 2](identity-azure-ad-connect.md) can help you meet this requirement.

If you skip this requirement, you’ll have two sets of user accounts and groups:

- User accounts and groups that exist in your on-premises identity provider
- User accounts and groups that exist in your Azure AD tenant

In this state, the two sets of user accounts and groups must be manually maintained by both IT administrators and users. This will inevitably lead to unsynchronized accounts, their passwords, and groups.

### How to test
To verify that authentication with on-premises credentials works correctly, sign in to the Office 365 portal with your on-premises credentials.

To verify that directory synchronization is working correctly, do the following:

1.	Create a new test group in Windows Server AD.
2.	Wait for the synchronization time.
3.	Check your Azure AD tenant to verify that the new test group name appears.

<a name="crit-identity-step5"></a>
## Required: Your global administrator accounts are protected 

You have [protected your Office 365 global administrator accounts](https://support.office.com/article/Protect-your-Office-365-global-administrator-accounts-6b4ded77-ac8d-42ed-8606-c014fd947560) to avoid compromising credentials that can lead to breaches of an Office 365 subscription.

If you skip this requirement, your global administrator accounts can be susceptible to attack and compromise, allowing an attacker to gain system-wide access to your data for harvesting, destruction, or ransom.

If needed, [Step 5](identity-designate-protect-admin-accounts.md) can help you meet this requirement.

### How to test

Use these steps to verify that you have protected your global administrator accounts:

1. Run the following Azure AD V2 command at the PowerShell command prompt. You should only see the list of dedicated global administrator accounts.
```
Get-AzureADDirectoryRole | where { $_.DisplayName -eq "Company Administrator" } | Get-AzureADDirectoryRoleMember | Ft DisplayName
```
2. Sign in to Office 365 using each of the accounts from step 1. Each sign in must require multi-factor authentication and the strongest form of secondary authentication available in your organization.

> [!Note]
> See [Connect to Office 365 PowerShell](https://docs.microsoft.com/office365/enterprise/powershell/connect-to-office-365-powershell) for instructions on installing the Azure AD V2 PowerShell module and signing in to Office 365.

<a name="crit-identity-step3"></a>
## Optional: The Office 365 sign-in screen is personalized for your organization

You have used [Add company branding to your sign-in and Access Panel pages](http://aka.ms/aadpaddbranding) to add your organization’s branding to the Office 365 sign-in page.

If you skip this option, your users will see a generic Office 365 sign-in screen and might not be confident that they’re signing into your organization’s site.

If needed, [Step 3](identity-customize-office-365-sign-in.md) can help you with this option.

### How to test

Sign in to the Office 365 portal with your user account name and multi-factor authentication. You should see your custom branding elements on the sign-in page.

<a name="crit-identity-step7"></a>
## Optional: Multi-factor authentication is enabled for your users

You used [Plan for multi-factor authentication for Office 365 Deployments](https://support.office.com/article/Plan-for-multifactor-authentication-for-Office-365-Deployments-043807b2-21db-4d5c-b430-c8a6dee0e6ba) and [Set up multi-factor authentication for Office 365 users](https://support.office.com/article/Set-up-multi-factor-authentication-for-Office-365-users-8f0454b2-f51a-4d9c-bcde-2c48e41621c6) to enable multifactor authentication (MFA) for your user accounts.

If you skip this option, your user accounts are vulnerable to credential compromise by cyber attackers. If a user account’s password is compromised, all the resources and capabilities of the account, such as administrator roles, are available to the attacker. This allows the attacker to copy, destroy, or hold for ransom internal documents and other data.

If needed, [Step 7](identity-multi-factor-authentication.md) can help you with this option.

### How to test

1.	Create a test user account in the Office 365 Admin portal and assign them a license. 
2.	Configure multi-factor authentication for the test user account with the additional verification method that you are using for actual user accounts, such as sending a message to your phone. 
3.	Sign in to the Office 365 or Azure portal with the test user account.
4.	Verify that MFA prompts you for the additional verification information and results in a successful authentication. 
5.	Delete the test user account.

<a name="crit-identity-step4"></a>
## Optional: Directory synchronization is monitored

You have used [Azure AD Connect Health with sync](https://docs.microsoft.com/azure/active-directory/connect-health/active-directory-aadconnect-health-sync) (for password synchronization) or [Using Azure AD Connect Health with AD FS](https://docs.microsoft.com/azure/active-directory/connect-health/active-directory-aadconnect-health-adfs) (for federated authentication) and have deployed Azure AD Connect Health, which involves:

- Installing the Azure AD Connect Health agent on each of your on-premises identity servers.
- Using the Azure AD Connect Health portal to monitor the state of the ongoing synchronization.

If you skip this option, you can more accurately assess the state of your cloud-based identity infrastructure.

If needed, [Step 4](identity-azure-ad-connect-health.md) can help you with this option.

### How to test
The Azure AD Connect Health portal shows the current and correct state of your on-premises identity servers and the ongoing synchronization.

<a name="crit-identity-step16"></a>
## Optional: Remote users have secure access

You have used the information at [How to provide secure remote access to on-premises apps](https://docs.microsoft.com/azure/active-directory/active-directory-application-proxy-get-started) to deploy the Azure AD Application Proxy, which involves:

- Configuring an instance of the Application Proxy Service in Azure to transfer web traffic between users on the Internet and a server running the Application Proxy Connector.
- Configuring the Application Proxy Connector on an Internet-facing server to transfer web traffic between Application Proxy Service in Azure and on-premises web-based applications.

If you skip this option, your remote or roaming employees and vendors, contractor, and partners will not be able to use Azure AD Application Proxy to access on-premises, web-based applications. They must use a more traditional remote access method such as virtual private networks.

If needed, [Step 16](identity-azure-ad-application-proxy.md) can help you with this option.

### How to test

A user can remotely access on-premises web-based applications using the Azure AD Application Proxy and their Azure AD user credentials.

<a name="crit-identity-step10"></a>
## Optional: Users can reset their own passwords

You have used [Azure AD self-service password reset rapid deployment](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-getting-started) to configure password reset for your users.

If you don’t meet this condition, users will be dependent on user account administrators to reset their passwords, resulting in additional IT administration overhead.

If needed, [Step 10](identity-password-reset.md) can help you with this option.

### How to test

1. Create a test user account with an initial password.
2. Use the steps in [Let users reset their own passwords in Office 365](https://support.office.com/article/Let-users-reset-their-own-passwords-in-Office-365-5bc3f460-13cc-48c0-abd6-b80bae72d04a) to reset the password on the test user account.
3. Sign out and then sign in to the test user account using the reset password.
4. Delete the test user account.

<a name="crit-identity-step9"></a>
## Optional: Password writeback is enabled for your users

You have used the instructions in [Azure AD SSPR with password writeback](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-getting-started) to enable password writeback for the Azure AD tenant of your Microsoft 365 Enterprise subscription.

If you skip this option, users who aren’t connected to your on-premises network must reset or unlock their Windows Server AD passwords through an IT administrator.

If needed, [Step 9](identity-password-writeback.md) can help you with this option.

>[!Note]
>Password writeback is required to fully utilize Azure AD Identity Protection features, such as requiring users to change their on-premises passwords when Azure AD has detected a high risk of account compromise.
>

### How to test

You test password writeback by changing your password in Office 365. You should be able to use your account and new password to access on-premises Windows Sever AD resources.

1. Create a test user account in your on-premises Windows Server AD, allow directory synchronization to occur, and then grant it an Office 365 license in the Office 365 admin portal.
2. From a remote computer that is joined to your on-premises Windows Server AD domain, sign in to the computer and the Office 365 portal using the credentials of the test user account.
3. Click **Settings > Office 365 settings > Password > Change password**.
4. Type the current password, type a new password, and then confirm it.
5. Sign out of the Office 365 portal and the remote computer and then sign in to the computer using the test user account and its new password. This proves that you were able to change the password of an on-premises Windows Server AD user account using the Azure AD tenant.

<a name="crit-identity-step8"></a>
## Optional: Users can sign in using single sign-in

You enabled [Azure AD Connect: Seamless Single Sign-On](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-sso-quick-start) for your organization to simplify how users sign in to cloud-based applications, such as Office 365.

If you skip this option, your users might be prompted to provide credentials when they access additional applications that use Azure AD.

If needed, [Step 8](identity-single-sign-on.md) can help you with this option.


<a name="crit-identity-step11"></a>
## Optional: Group-based licensing to automatically assign and remove licenses to user accounts based on group membership

You [enabled group-based licensing](https://docs.microsoft.com/azure/active-directory/active-directory-licensing-group-assignment-azure-portal) for the appropriate Azure AD security groups so that licenses for both Office 365 and EMS are automatically assigned or removed.

If you skip this option, you must manually:

- Assign licenses to new users whom you intend to have access to Office 365 and EMS.
- Remove licenses from users who are no longer with your organization or do not have access to Office 365 and EMS.

If needed, [Step 11](identity-group-based-licensing.md) can help you with this option.

### How to test

1. Create a test security group in Azure AD with the Azure portal and configure group-based licensing to assign Office 365 and EMS licenses.
2. Create a test user account in Azure AD and add it to the test security group.
3. Examine the properties of the user account in the Office 365 admin portal to ensure that it was assigned the Office 365 and EMS licenses.
4. Remove the test user account from the test security group.
5. Examine the properties of the user account to ensure that it no longer has the Office 365 and EMS licenses assigned.
6. Delete the test security group and the test user account.

<a name="crit-identity-step12"></a>
## Optional: Dynamic group membership settings automatically add user accounts to groups based on user account attributes

You have determined the set of Azure AD dynamic groups and used the instructions in [Attribute-based dynamic group membership in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-groups-dynamic-membership-azure-portal) to create the groups and the rules that determine the set of user account attributes and values for group membership.

If you skip this option, group membership must be done manually as new accounts are added or as user account attributes change over time. For example, if someone moves from the Sales department to the Accounting department, you must:

- Update the value of the Department attribute for that user account.
- Manually remove them from the Sales group.
- Manually add them to the Accounting group.

If the Sales and Accounting groups were dynamic, you would only have to change the user account’s Department value.

If needed, [Step 12](identity-automatic-group-membership.md) can help you with this option.

### How to test

1. Create a test dynamic group in Azure AD with the Azure portal and configure a rule for the Department equals “test1”.
2. Create a test user account in Azure AD and set the Department property to “test1”.
3. Examine the properties of the user account to ensure that it was made a member of the test dynamic group.
4. Change the value of the Department property for the test user account to “test2”.
5. Examine the properties of the user account to ensure that it is no longer a member of the test dynamic group.
6. Delete the test dynamic group and the test user account.

<a name="crit-identity-step14"></a>
## Optional: Self-service group management is enabled for specific Azure AD security and Office 365 groups

You have determined which groups are appropriate for self-service management, instructed their owners on group management workflow and responsibilities, and [set up self-service management in Azure AD](https://docs.microsoft.com/azure/active-directory/active-directory-accessmanagement-self-service-group-management) for those groups.

If you skip this option, all Azure AD group management tasks must be done by IT administrators.

If needed, [Step 14](identity-self-service-group-management.md) can help you with this option.

### How to test
1.	Create a test user account in Azure AD with the Azure portal.
2.	Sign-in as with the test user account and create a test Azure AD security group.
3.	Sign out and then sign-in with your IT administrator account.
4.	Configure the test security group for self-service management for the test user account.
5.	Sign out and then sign-in with your test user account.
6.	Use the Azure portal to add members to the test security group.
7.	Delete the test security group and the test user account.

<a name="crit-identity-step15"></a>
## Optional: You have enabled Azure AD Identity Protection to protect against credential compromise

You have enabled Azure AD Identity Protection to:

- Address potential identity vulnerabilities.
- Detect possible credential compromise attempts.
- Investigate and address ongoing suspicious identity incidents.

If you skip this option, you won’t be able to detect or automatically thwart credential compromise attempts or investigate identity-related security incidents. This potentially leaves your organization vulnerable to a successful credential compromise and the resulting threat to your organization’s sensitive data.

If needed, [Step 15](identity-azure-ad-identity-protection.md) can help you with this option.

<a name="crit-identity-step6"></a>
## Optional: You have set up Privileged Identity Management to support on-demand assignment of the global administrator role

You have used the instructions in [Configure Azure AD Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/active-directory-privileged-identity-management-configure) to enable PIM in your Azure AD tenant and configured your global administrator accounts as eligible admins.

You have also used the recommendations in [Securing privileged access for hybrid and cloud deployments in Azure AD](https://docs.microsoft.com/azure/active-directory/admin-roles-best-practices) to develop a roadmap that secures privileged access against cyber attackers.

If you skip this option, your global administrator accounts are subject to ongoing online attack and, if compromised, can allow an attacker to harvest, destroy, or hold your sensitive information for ransom.

If needed, [Step 6](identity-azure-ad-identity-protection.md) can help you with this option.


## Next phase

Your next phase in the end-to-end deployment process for Microsoft 365 is [Windows 10 Enteprise](windows10-infrastructure.md).
