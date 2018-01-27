Also see [Prerequisites](https://docs.microsoft.com/microsoft-365-enterprise/identity-access-policies#prerequisites) for additional recommendations on identity infrastructure.

## Required exit criteria

The following criteria are required for your organization to have an identity infrastructure for Microsoft 365 Enterprise.

<a name="crit-identity-step1"></a>
### Users, groups, and group membership are determined

You have planned for and implemented the creation of user accounts and groups so that:

- Employees in your organization and the vendors, contractors, and partners that work for or with your organization have a corresponding user account in Azure AD.
- Azure AD groups and their members contain user accounts and other groups for various purposes, such as the provisioning of security settings for Microsoft cloud services, automatic licensing, and other uses.

If needed, go to the [step](./includes/identity-plan-users-groups.md)
 corresponding to this exit criteria.

<a name="crit-identity-step2"></a>
### User and group identities are synchronized between your on-premises identity provider and your Azure AD tenant

If you have an existing on-premises identity provider such as Windows Server AD, you must use Azure AD Connect to synchronize the list of user accounts and groups from your on-premises identity provider to your Azure AD tenant.

With directory synchronization, your users can sign in to Office 365 and other Microsoft cloud services that use the same Azure AD tenant with the same credentials that they use to sign in to their computers and access intranet resources. 

If you don�t meet this criterion, you will have two sets of user accounts and groups:

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

If needed, go to the [step](./includes/identity-azure-ad-connect.md) corresponding to this exit criteria.

<a name="crit-identity-step5"></a>
### You have dedicated global admin accounts with multifactor authentication

You have used the information and procedures in [Protect your Office 365 global administrator accounts](https://support.office.com/en-us/article/Protect-your-Office-365-global-administrator-accounts-6b4ded77-ac8d-42ed-8606-c014fd947560) to heighten the security of your global administrator accounts. If you don�t meet this criterion, your global administrator accounts can be susceptible to attack and compromise, allowing an attacker to gain system-wide access to your data for harvesting, destruction, or ransom.

#### How to test

Use these steps to verify that you have protected your global administrator accounts:

1. Run the following PowerShell command at the Windows Azure Active Directory Module for Windows PowerShell command prompt:

```
Get-AzureADDirectoryRole | where { $_.DisplayName -eq "Company Administrator" } | Get-AzureADDirectoryRoleMember | Ft DisplayName
```
You should only see the list of dedicated global administrator accounts.

2. Sign in to Office 365 using each of the accounts from the previous steps. Each sign in must require multi-factor authentication and the strongest form of secondary authentication available in your organization.
3. The Office 365 Cloud App Security administrator portal lists each of the global administrator account sign-ins from the previous step.

If needed, go to the [step](./includes/identity-designate-protect-admin-accounts.md)
 corresponding to this exit criteria.

## Optional but highly-recommended exit criteria

The following criteria are not required for your organization to have an identity infrastructure for Microsoft 365 Enterprise, but are highly recommended for additional user support, administration, and other capabilities.

<a name="crit-identity-step3"></a>
### You have a sign-in screen that is personalized to your organization

You have used [Add company branding to your sign-in and Access Panel pages](http://aka.ms/aadpaddbranding) to add your organization�s branding to the Office 365 sign-in page.

If you don�t meet this criterion, your users will not see a visual indicator that they are accessing your organization. This can help:

- End-users more quickly address errors in their account name for your organization when signing in.
- IT administrators to more quickly distinguish between your production Office 365 subscription and dev/test subscriptions.

#### How to test

Sign-in to the Office 365 portal with your user account name and multifactor authentication. You should see your custom configuration elements on the sign-in page.

If needed, go to the [step](./includes/identity-customize-office-365-sign-in.md) corresponding to this exit criteria.

<a name="crit-identity-step7"></a>
### Multifactor authentication is enabled for your users

You used [Plan for multi-factor authentication for Office 365 Deployments](https://support.office.com/article/Plan-for-multifactor-authentication-for-Office-365-Deployments-043807b2-21db-4d5c-b430-c8a6dee0e6ba) and [Set up multi-factor authentication for Office 365 users](https://support.office.com/article/Set-up-multi-factor-authentication-for-Office-365-users-8f0454b2-f51a-4d9c-bcde-2c48e41621c6) to enable MFA for your user accounts. 

If you don�t meet this criterion, your user accounts will be subject to online password determination attacks. If a user account password is compromised, all of the resources and capabilities, such as administrator roles, are available to the attacker. This allows them to copy, destroy, or hold for ransom private and internal documents and other data.

#### How to test

Create a test user account and assign them a license. Configure multifactor authentication for the test user account with the additional verification method that you are using for actual user accounts, such as sending a message to your phone. Lastly, sign in the the Office 365 or Azure portal with the test user account and verify that MFA prompts you for the additional verification information and results in a successful authentication. Finally, delete the test user account.

If needed, go to the [step](./includes/identity-multi-factor-authentication.md) corresponding to this exit criteria.

<a name="crit-identity-step4"></a>
### The Azure AD Connect Health portal is displaying current status

You have used Using [Azure AD Connect Health with sync](https://docs.microsoft.com/en-us/azure/active-directory/connect-health/active-directory-aadconnect-health-sync) (for password synchronization) or [Using Azure AD Connect Health with AD FS](https://docs.microsoft.com/en-us/azure/active-directory/connect-health/active-directory-aadconnect-health-adfs) (for federated authentication) and have deployed Azure AD Connect Health, which involves:

- Installing the Azure AD Connect Health agent on each of your on-premises identity servers
- Using the Azure AD Connect Health portal to monitor the stated of the ongoing synchronization.

If you don�t meet this criterion, you can get misleading information on the state of your cloud-based identity infrastructure.

#### How to test
The Azure AD Connect Health portal shows the current and correct state of your on-premises identity servers and the ongoing synchronization.

If needed, go to the [step](./includes/identity-azure-ad-connect-health.md) corresponding to this exit criteria.

<a name="crit-identity-step16"></a>
### Remote users have access to on-premises web-based resources through Azure AD Application Proxy

You have used the information at [How to provide secure remote access to on-premises apps](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-application-proxy-get-started) to deploy Azure AD Application Proxy, which involves:

- Configuring an instance of the Application Proxy Service in Azure to transfer web traffic between users on the Internet and a server running the Application Proxy Connector.
- Configuring the Application Proxy Connector on an Internet-facing server to transfer web traffic between Application Proxy Service in Azure and on-premises web-based applications.

If you don�t meet this criterion, your remote or roaming employees and vendors, contractor, and partners will not be able to access on-premises, web-based applications using Azure AD Application Proxy.
The results of this step are:

- Deployment and configuration of the Azure Proxy Application service and Application Proxy Connectors to allow users to access on-premises web-based applications.

#### How to test

A user that is connected to the Internet outside the intranet can successfully access an intranet web-based resource configured on the Application Proxy Connector using their Azure AD user credentials that was synchronized from their on-premises Windows Server AD.

If needed, go to the [step](./includes/identity-azure-ad-application-proxy.md) corresponding to this exit criteria.

<a name="crit-identity-step10"></a>
### Self-service password reset is enabled

You have used [Azure AD self-service password reset rapid deployment](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-getting-started) to configure password reset for your users.

If you don�t meet this criterion, users will be dependent on user account administrators to reset their passwords, resulting in additional IT administration overhead.

#### How to test

1. Enable self-service password reset. 
2. Create a test user account with an initial password.
3. Use the steps in [Let users reset their own passwords in Office 365](https://support.office.com/en-us/article/Let-users-reset-their-own-passwords-in-Office-365-5bc3f460-13cc-48c0-abd6-b80bae72d04a) to reset the password on the test user account.
4. Sign out and then sign in to the test user account using the reset password.
5. Delete the test user account.

If needed, go to the [step](./includes/identity-password-reset.md) corresponding to this exit criteria.

<a name="crit-identity-step9"></a>
### Password writeback is enabled for your users

You have used the instructions in [Azure AD SSPR with password writeback](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-getting-started) to enable password writeback for the Azure AD tenant of your Microsoft 365 Enterprise subscription.

If you don�t meet this criterion, users that are not connected to your on-premises network must reset their passwords through an IT administrator for the on-premises Windows Server AD. This can result in additional administration burden on your IT department.

>[!Note]
>Password writeback is required to fully utilize Identity Protection feature capabilities, such as requiring users to change their on-premises passwords when there has been a high risk of account compromise detected.
>

#### How to test

You test password writeback by changing your password in Office 365. You should be able to use your account and new password to access on-premises Windows Sever AD resources.

1. Create a test user account in your on-premises Windows Server AD, allow directory synchronization to occur, and then grant it an Office 365 license.
2. From a remote computer that is joined to your on-premises Windows Server AD domain, sign in to the computer and the Office 365 portal using the credentials of the test user account.
3. Click **Settings > Office 365 settings > Password > Change password**.
4. Type the current password, type a new password, and then confirm it.
5. Sign out of the Office 365 portal and the remote computer and then sign in to the computer using the test user account and its new password. This proves that you were able to change the password of an on-premises Windows Server AD user account using the Azure AD tenant.

If needed, go to the [step](./includes/identity-password-writeback.md) corresponding to this exit criteria.

<a name="crit-identity-step8"></a>
#### Azure AD Seamless Single Sign-on is enabled for your users

You used the instructions in [Azure AD Connect: Seamless Single Sign-On](https://docs.microsoft.com/en-us/azure/active-directory/connect/active-directory-aadconnect-sso-quick-start) to enable Azure AD Seamless Single Sign-on for your organization. 

If you don�t meet this criterion, there are instances in which your users can be prompted to provide authentication credentials when accessing applications that use Azure AD.

#### How to test
1.	Enable Azure AD Seamless Single Sign-on. 
2.	Create a test user account in your on-premises Windows Server AD, allow directory synchronization to occur, and then grant it an Office 365 license.
3.	From an on-premises computer that is joined to an on-premises Windows Server AD domain, access an Office 365 resource, such as the Office 365 portal or a SharePoint Online team site or folder.
4.	Notice the absence of prompting for user name and password credentials.

If needed, go to the [step](./includes/identity-single-sign-on.md) corresponding to this exit criteria.

<a name="crit-identity-step11"></a>
### Group-based licensing to automatically assign and remove licenses to user accounts based on group membership

You have used the instructions in [Assign licenses to a group in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-licensing-group-assignment-azure-portal) to configure the appropriate Azure AD security groups in your organization for group-based licensing to assign licenses for both Office 365 and EMS.

If you don�t meet this criterion, you must manually:

- Assign licenses to new users whom you intend to have access to Office 365 and EMS.
- Retrieve licenses from users who are no longer with your organization or do not have access to Office 365 and EMS.

#### How to test

1. Create a test security group in Azure AD and configure group-based licensing to assign Office 365 and EMS licenses.
2. Create a test user account in Azure AD and add it to the test security group.
3. Examine the properties of the user account to ensure that it was assigned the Office 365 and EMS licenses.
4. Remove the test user account from the test security group.
5. Examine the properties of the user account to ensure that it no longer has the Office 365 and EMS licenses assigned.
6. Delete the test security group and the test user account.

If needed, go to the [step](./includes/identity-group-based-licensing.md) corresponding to this exit criteria.

<a name="crit-identity-step12"></a>
### Dynamic group membership settings automatically add user accounts to groups based on user account attributes

You have determined the set of Azure AD dynamic groups and used the instructions in [Attribute-based dynamic group membership in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-groups-dynamic-membership-azure-portal) to create the groups and add rules that determine the set of user account attributes and values for group membership.

If you don�t meet this criterion, group membership must be done manually as new accounts are added or as user account attributes change over time. For example, if someone moves from the Sales department to the Accounting department, you must:

- Update the value of the Department attribute for that user account.
- Manually remove them from the Sales group.
- Manually add them to the Accounting group.

If the Sales and Accounting groups were dynamic, you would only have to change the user account�s Department value.

#### How to test

1. Create a test dynamic group in Azure AD and configure a rule for the Department equals �test1�.
2. Create a test user account in Azure AD and set the Department attribute to �test1�.
3. Examine the properties of the user account to ensure that it was made a member of the test dynamic group.
4. Change the value of the Department attribute for the test user account to �test2�.
5. Examine the properties of the user account to ensure that it is no longer a member of the test dynamic group.
6. Delete the test dynamic group and the test user account.

If needed, go to the [step](./includes/identity-automatic-group-membership.md) corresponding to this exit criteria.

<a name="crit-identity-step14"></a>
### Self-service group management is enabled for specific Azure AD security and Office 365 groups

You have determined which groups are appropriate for self-service management, instructed their owners on group management workflow and responsibilities, and used the instructions in [Setting up self-service application access management in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-accessmanagement-self-service-group-management) to enable self-service management for those groups.

If you don�t meet this criterion, all Azure AD group management tasks must be done by IT administrators, which can be an administrative burden.

#### How to test

1. Create a test user account in Azure AD.
2. Sign-in as with the test user account and create a test Azure AD security group.
3. Sign out and then sign-in with your IT administrator account.
4. Configure the test security group for self-service management.
5. Sign out and then sign-in with your test user account.
6. Use the Azure portal to add members to the test security group.
7. Delete the test security group and the test user account.

If needed, go to the [step](./includes/identity-self-service-group-management.md) corresponding to this exit criteria.

<a name="crit-identity-step15"></a>
### Azure AD Identity Protection
You have used to enable Azure AD Identity Protection and are using it to:

- Address potential identity vulnerabilities.
- Detect possible credential compromise attempts.
- Investigate and address ongoing suspicious identity incidents.

If you don�t meet this criterion, you won�t be able to detect or automatically thwart credential compromise attempts or investigate identity-related security incidents. This potentially leaves your organization vulnerable to a successful credential compromise and the resulting threat to your organization�s private data.

If needed, go to the [step](./includes/identity-azure-ad-identity-protection.md) corresponding to this exit criteria.

<a name="crit-identity-step6"></a>
### Privileged Identity Management
You have used the instructions in [Configure Azure AD Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/active-directory-privileged-identity-management-configure) to enable PIM in your Azure AD tenant and configured your global administrator accounts as eligible admins.

If you don�t meet this criterion, your global administrator accounts are subject to ongoing online attack and if compromised, can allow an attacker to harvest, destroy, or hold your sensitive information for ransom.

If needed, go to the [step](./includes/identity-privileged-identity-management.md) corresponding to this exit criteria.
