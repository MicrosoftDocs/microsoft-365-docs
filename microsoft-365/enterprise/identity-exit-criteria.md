---
title: "Phase 2: Identity infrastructure exit criteria"
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
description: Ensure that your configuration meets Microsoft 365 Enterprise criteria for identity-based services and infrastructure.
---

# Phase 2: Identity infrastructure exit criteria

![Phase 2-Identity](./media/deploy-foundation-infrastructure/identity_icon-small.png)

Make sure your identity infrastructure meets the following required criteria and that you've considered those that are optional.

Also see [Prerequisites](https://docs.microsoft.com/microsoft-365/enterprise/identity-access-prerequisites) for additional recommendations on identity infrastructure.

<a name="crit-identity-global-admin"></a>
## Required: Your global administrator accounts are protected 

You've [protected your Office 365 global administrator accounts](https://docs.microsoft.com/office365/enterprise/protect-your-global-administrator-accounts) to thwart  credential compromise by attackers that can lead to breaches of your Microsoft 365 subscription.

If you skip this requirement, your global administrator accounts can be susceptible to attack and compromise, allowing an attacker to gain system-wide access to your data for harvesting, destruction, or ransom.

If needed, [Step 1](identity-create-protect-global-admins.md#identity-global-admin) can help you meet this requirement.

### How to test

Use these steps to verify that you've protected your global administrator accounts:

1. Run the following Azure Active Directory PowerShell for Graph command at the PowerShell command prompt. You should see only the list of dedicated global administrator accounts.
   ```powershell
   Get-AzureADDirectoryRole | where { $_.DisplayName -eq "Company Administrator" } | Get-AzureADDirectoryRoleMember | Ft DisplayName
   ```
2. Sign in to Office 365 using each of the accounts from step 1. Each sign in must require Azure Multi-Factor Authentication and the strongest form of secondary authentication available in your organization.

> [!Note]
> See [Connect to Office 365 PowerShell](https://docs.microsoft.com/office365/enterprise/powershell/connect-to-office-365-powershell) for instructions on installing the Azure Active Directory PowerShell for Graph module and signing in to Office 365.

<a name="crit-identity-pim"></a>
## Optional: You have set up Privileged Identity Management to support on-demand assignment of the global administrator role

You've used the instructions in [Configure Azure AD Privileged Identity Management (PIM)](https://docs.microsoft.com/azure/active-directory/active-directory-privileged-identity-management-configure) to enable PIM in your Azure AD tenant and configured your global administrator accounts as eligible admins.

You've also used the recommendations in [Securing privileged access for hybrid and cloud deployments in Azure AD](https://docs.microsoft.com/azure/active-directory/admin-roles-best-practices) to develop a roadmap that secures privileged access against cyber attackers.

If you skip this option, your global administrator accounts are subject to ongoing online attack and, if compromised, can allow an attacker to harvest, destroy, or hold your sensitive information for ransom.

If needed, [Step 1](identity-create-protect-global-admins.md#identity-pim) can help you with this option.

<a name="crit-identity-pam"></a>
## Optional: You have configure privileged access management in Office 365

You've used the information in the [Configure privileged access management in Office 365](https://docs.microsoft.com/office365/securitycompliance/privileged-access-management-configuration) topic to enable privileged access and create one or more privileged access policies in your organization. You've configured these policies and just-in-time access is enabled for access to sensitive data or access to critical configuration settings.

If needed, [Step 1](identity-create-protect-global-admins.md#identity-pam) can help you meet this requirement. 

<a name="crit-password-prot"></a>
## Optional: Azure AD password protection is banning the use of weak passwords

You have enabled the banning of bad passwords [in the cloud](https://docs.microsoft.com/azure/active-directory/authentication/concept-password-ban-bad) and for your [on-premises Active Directory Domain Services (AD DS)](https://docs.microsoft.com/azure/active-directory/authentication/concept-password-ban-bad-on-premises) for global banned passwords and, optionally, for custom terms.

If needed, [Step 2](identity-secure-your-passwords.md#identity-password-prot) can help you with this option.

<a name="crit-identity-pw-reset"></a>
## Optional: Users can reset their own passwords

You've used [Azure AD self-service password reset rapid deployment](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-getting-started) to configure password reset for your users.

If you don’t meet this condition, users will be dependent on user account administrators to reset their passwords, resulting in additional IT administration overhead.

If needed, [Step 2](identity-secure-your-passwords.md#identity-pw-reset) can help you with this option.

<a name="crit-identity-sso"></a>
## Optional: Users can sign in using Azure AD Seamless Single Sign-on

You enabled [Azure AD Connect: Seamless Single Sign-On](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect-sso-quick-start) for your organization to simplify how users sign in to cloud-based applications, such as Office 365.

If you skip this option, your users might be prompted to provide credentials when they access additional applications that use you Azure AD tenant.

If needed, [Step 2](identity-secure-your-passwords.md#identity-sso) can help you with this option.

<a name="crit-identity-custom-sign-in"></a>
## Optional: The Office 365 sign-in screen is personalized for your organization

You have used [Add company branding to your sign-in and Access Panel pages](https://aka.ms/aadpaddbranding) to add your organization’s branding to the Office 365 sign-in page.

If you skip this option, your users will see a generic Office 365 sign-in screen and might not be confident that they’re signing into your organization’s site.

If needed, [Step 2](identity-secure-your-passwords.md#identity-custom-sign-in) can help you with this option.


<a name="crit-identity-mfa"></a>
## Optional: Azure Multi-Factor Authentication is enabled for your users

You used [Plan for Azure Multi-Factor Authentication](https://docs.microsoft.com/azure/active-directory/authentication/howto-mfa-getstarted) and [Conditional Access policies](https://docs.microsoft.com/azure/active-directory/authentication/howto-mfa-getstarted#enable-multi-factor-authentication-with-conditional-access) to enable Azure Multi-Factor Authentication (MFA) for your user accounts.

If you skip this option, your user accounts are vulnerable to credential compromise by cyber attackers. If a user account’s password is compromised, all the resources and capabilities of the account, such as administrator roles, are available to the attacker. This allows the attacker to copy, destroy, or hold for ransom internal documents and other data.

If needed, [Step 3](identity-secure-user-sign-ins.md#identity-mfa) can help you with this option.

### How to test

1.	Create a test user account and assign them a license. 
2.	Configure Azure Multi-Factor Authentication for the test user account with the additional verification method that you are using for actual user accounts, such as sending a text message to your phone. 
3.	Sign in to the Office 36 portal with the test user account.
4.	Verify that MFA prompts you for the additional verification information and results in a successful authentication. 
5.	Delete the test user account.

<a name="crit-identity-ident-prot"></a>
## Optional: Azure AD Identity Protection is enabled to protect against credential compromise (Microsoft 365 E5 only)

You've enabled Azure AD Identity Protection to:

- Address potential identity vulnerabilities.
- Detect possible credential compromise attempts.
- Investigate and address ongoing suspicious identity incidents.

If you skip this option, you won’t be able to detect or automatically thwart credential compromise attempts or investigate identity-related security incidents. This potentially leaves your organization vulnerable to a successful credential compromise and the resulting threat to your organization’s sensitive data.

If needed, [Step 3](identity-secure-user-sign-ins.md#identity-ident-prot) can help you with this option.


### How to test

1. Create a test user account with an initial password.
2. Use the steps in [Let users reset their own passwords in Office 365](https://docs.microsoft.com/office365/admin/add-users/let-users-reset-passwords) to reset the password on the test user account.
3. Sign out and then sign in to the test user account using the reset password.
4. Delete the test user account.

<a name="crit-identity-sync"></a>
## Required for hybrid identity: Users and groups are synchronized with Azure AD

If you have an existing on-premises Active Directory Domain Services (AD DS), you have used Azure AD Connect to synchronize user accounts and groups from your on-premises AD DS to your Azure AD tenant.

With directory synchronization, your users can sign in to Office 365 and other Microsoft cloud services using the same credentials that they use to sign in to their computers and access on-premises resources.

If needed, [Step 4](identity-add-user-accounts.md#identity-sync) can help you meet this requirement.

If you skip this requirement, you’ll have two sets of user accounts and groups:

- User accounts and groups that exist in your on-premises AD DS
- User accounts and groups that exist in your Azure AD tenant

In this state, the two sets of user accounts and groups must be manually maintained by both IT administrators and users. This will inevitably lead to unsynchronized accounts, their passwords, and groups.

### How to test
To verify that authentication with on-premises credentials works correctly, sign in to the Office portal with your on-premises credentials.

To verify that directory synchronization is working correctly, do the following:

1.	Create a new test group in AD DS.
2.	Wait for the synchronization time.
3.	Check your Azure AD tenant to verify that the new test group name appears.

<a name="crit-identity-sync-health"></a>
## Optional: Directory synchronization is monitored

You've used [Azure AD Connect Health with sync](https://docs.microsoft.com/azure/active-directory/connect-health/active-directory-aadconnect-health-sync) (for password synchronization) or [Using Azure AD Connect Health with AD FS](https://docs.microsoft.com/azure/active-directory/connect-health/active-directory-aadconnect-health-adfs) (for federated authentication) and have deployed Azure AD Connect Health, which involves:

- Installing the Azure AD Connect Health agent on each of your on-premises identity servers.
- Using the Azure AD Connect Health portal to monitor the state of the ongoing synchronization.

If you skip this option, you can more accurately assess the state of your cloud-based identity infrastructure.

If needed, [Step 4](identity-add-user-accounts.md#identity-sync-health) can help you with this option.

### How to test
The Azure AD Connect Health portal shows the current and correct state of your on-premises domain controllers and the ongoing synchronization.


<a name="crit-identity-pw-writeback"></a>
## Optional: Password writeback is enabled for your users

You've used the instructions in [Azure AD SSPR with password writeback](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-getting-started) to enable password writeback for the Azure AD tenant of your Microsoft 365 Enterprise subscription.

If you skip this option, users who aren’t connected to your on-premises network must reset or unlock their AD DS passwords through an IT administrator.

If needed, [Step 4](identity-add-user-accounts.md#identity-pw-writeback) can help you with this option.

>[!Note]
>Password writeback is required to fully utilize Azure AD Identity Protection features, such as requiring users to change their on-premises passwords when Azure AD has detected a high risk of account compromise.
>

### How to test

You test password writeback by changing your password in Office 365. You should be able to use your account and new password to access on-premises AD DS resources.

1. Create a test user account in your on-premises AD DS, allow directory synchronization to occur, and then grant it a Microsoft 365 Enterprise license in the Microsoft 365 admin center.
2. From a remote computer that is joined to your on-premises AD DS domain, sign in to the computer and the Office portal using the credentials of the test user account.
3. Select **Settings > Office 365 settings > Password > Change password**.
4. Type the current password, type a new password, and then confirm it.
5. Sign out of the Office portal and the remote computer and then sign in to the computer using the test user account and its new password. This proves that you were able to change the password of an on-premises AD DS user account using the Azure AD tenant.

### How to test

Sign in to the Office 365 portal with your user account name and Azure Multi-Factor Authentication. You should see your custom branding elements on the sign-in page.


<a name="crit-identity-self-service-groups"></a>
## Optional: Self-service group management is enabled for specific Azure AD security and Office 365 groups

You've determined which groups are appropriate for self-service management, instructed their owners on group management workflow and responsibilities, and [set up self-service management in Azure AD](https://docs.microsoft.com/azure/active-directory/active-directory-accessmanagement-self-service-group-management) for those groups.

If you skip this option, all Azure AD group management tasks must be done by IT administrators.

If needed, [Step 5](identity-use-group-management.md#identity-self-service-groups) can help you with this option.

### How to test
1.	Create a test user account in Azure AD with the Azure portal.
2.	Sign-in as with the test user account and create a test Azure AD security group.
3.	Sign out and then sign-in with your IT administrator account.
4.	Configure the test security group for self-service management for the test user account.
5.	Sign out and then sign-in with your test user account.
6.	Use the Azure portal to add members to the test security group.
7.	Delete the test security group and the test user account.

<a name="crit-identity-dyn-groups"></a>
## Optional: Dynamic group membership settings automatically add user accounts to groups based on user account attributes

You've determined the set of Azure AD dynamic groups and used the instructions in [Attribute-based dynamic group membership in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-groups-dynamic-membership-azure-portal) to create the groups and the rules that determine the set of user account attributes and values for group membership.

If you skip this option, group membership must be done manually as new accounts are added or as user account attributes change over time. For example, if someone moves from the Sales department to the Accounting department, you must:

- Update the value of the Department attribute for that user account.
- Manually remove them from the Sales group.
- Manually add them to the Accounting group.

If the Sales and Accounting groups were dynamic, you would only have to change the user account’s Department value.

If needed, [Step 5](identity-use-group-management.md#identity-dyn-groups) can help you with this option.

### How to test

1. Create a test dynamic group in Azure AD with the Azure portal and configure a rule for the Department equals “test1”.
2. Create a test user account in Azure AD and set the Department property to “test1”.
3. Examine the properties of the user account to ensure that it was made a member of the test dynamic group.
4. Change the value of the Department property for the test user account to “test2”.
5. Examine the properties of the user account to ensure that it is no longer a member of the test dynamic group.
6. Delete the test dynamic group and the test user account.

<a name="crit-identity-group-license"></a>
## Optional: Group-based licensing to automatically assign and remove licenses to user accounts based on group membership

You [enabled group-based licensing](https://docs.microsoft.com/azure/active-directory/active-directory-licensing-group-assignment-azure-portal) for the appropriate Azure AD security groups so that your Microsoft 365 Enterprise licenses are automatically assigned or unassigned.

If you skip this option, you must manually:

- Assign licenses to new users whom you intend to have access.
- Unassign licenses from users who are no longer with your organization or do not have access.

If needed, [Step 5](identity-use-group-management.md#identity-group-license) can help you with this option.

### How to test

1. Create a test security group in Azure AD with the Azure portal and configure group-based licensing to assign Microsoft 365 Enterprise license.
2. Create a test user account in Azure AD and add it to the test security group.
3. Examine the properties of the user account in the Microsoft 365 admin center to ensure that it was assigned the Microsoft 365 Enterprise license.
4. Remove the test user account from the test security group.
5. Examine the properties of the user account to ensure that it no longer has the Microsoft 365 Enterprise license assigned.
6. Delete the test security group and the test user account.


<a name="crit-identity-access-reviews"></a>
## Optional: Access reviews configured and being used to monitor access

You have used these articles to configure different types of access reviews to monitor group memberships, access to enterprise applications, and role assignments:

- [Groups and apps](https://docs.microsoft.com/azure/active-directory/governance/create-access-review)
- [Azure AD roles](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-how-to-start-security-review?toc=%2fazure%2factive-directory%2fgovernance%2ftoc.json)
- [Azure resource roles](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-resource-roles-start-access-review?toc=%2fazure%2factive-directory%2fgovernance%2ftoc.json)

If needed, [Step 6](identity-configure-identity-governance.md#identity-access-reviews) can help you with this option.


## Results and next steps

Your identity infrastructure in the Microsoft 365 cloud uses strong authentication, protected administrator accounts, and simplified user access and management.

|||
|:-------|:-----|
|![Phase 3: Windows 10 Enterprise](./media/deploy-foundation-infrastructure/win10enterprise_icon-small.png)| If you're following the phases for the end-to-end deployment of Microsoft 365 Enterprise, your next phase is [Windows 10 Enterprise](windows10-infrastructure.md). |

