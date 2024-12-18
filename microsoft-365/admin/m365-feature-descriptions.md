---
title: "Microsoft 365 feature descriptions"
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.date: 06/18/2022
audience: ITPro
ms.topic: conceptual
f1.keywords:
- 'microsoft-365-and-office-365-general-information'
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.custom:
- Adm_ServiceDesc
- Adm_ServiceDesc_top
ms.collection:
- tier2
- scotvorg
- adm_o365
- adm_toc
ms.assetid: 721676a0-5108-488e-ae0c-7316617d0006
description: "Learn about the information available for Microsoft 365 feature descriptions."
---

# Microsoft 365 feature descriptions

# [**User account management**](#tab/User-account-management)

## User account management

Microsoft supports the following methods for creating, managing, and authenticating users. However, this topic doesn't include information about security features that allow or prohibit access to individual Microsoft resources (for example, role-based access control in Microsoft Exchange Online or configuring security in Microsoft SharePoint Online). For details about these features, see the [Exchange Online service description](/office365/servicedescriptions/exchange-online-service-description/exchange-online-service-description) and the [SharePoint Online service description](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-service-description). If you need information about tools that can help you perform administrative tasks, see [Tools to manage Microsoft accounts](/office365/enterprise/manage-office-365-accounts). To learn how to perform day-to-day management tasks, see [Common management tasks](/office365/admin/manage/manage).
  
**Need help with signing in, installing or uninstalling, or canceling your subscription?:** Get help with: [signing in](https://support.office.com/article/where-to-sign-in-to-office-365-for-business-e9eb7d51-5430-4929-91ab-6157c5a050b4) | [Installing or uninstalling Office](https://support.office.com/article/download-and-install-or-reinstall-office-365-or-office-2019-on-a-pc-or-mac-4414eaaf-0478-48be-9c42-23adc4716658) | [Canceling Office 365](https://support.office.com/article/Cancel-Office-365-for-business-b1bc0bef-4608-4601-813a-cdd9f746709a)
  
For other issues, visit the [Microsoft support center](https://support.microsoft.com/contactus/). To get support for Office 365 operated by 21Vianet in China, contact the [21Vianet support team](https://support.office.com/article/Get-technical-billing-and-subscription-support-for-Office-365-operated-by-21Vianet-671FB12E-F5D8-4CDF-B3E9-E8068A9AA496).
  
**Sign-in options:** Microsoft has two systems that can be used for user identities: **Work or school account (cloud identity)** and **Federated account (federated identity)**. The type of identity affects the user experience and user account management options, as well as hardware and software requirements and other deployment considerations.

**Work or school account (cloud identity)** - Users receive Microsoft Entra cloud credentials—separate from other desktop or corporate credentials—for signing into Microsoft cloud services. This is the default identity, and is recommended in order to minimize deployment complexity. Passwords for work or school accounts use the Microsoft Entra ID [password policy](/previous-versions/azure/jj943764(v=azure.100)).

**Federated account (federated identity)** - For all subscriptions in organizations with on-premises Active Directory that use single sign-on (SSO), users can sign into Microsoft services by using their Active Directory credentials. The corporate Active Directory stores and controls the password policy. For information about SSO, see [Single sign-on roadmap](/previous-versions/azure/azure-services/hh967643(v=azure.100)).

**Single sign-on:** For organizations using single sign-on, all users on a domain must use the same identity system: either cloud identity or federated identity. For example, you could have one group of users that only needs a cloud identity because they don't access on-premises systems, and another group of users who use Microsoft and on-premises systems. You would add two domains to Office 365, such as **contractors.contoso.com** and **staff.contoso.com**, and only set up SSO for one of them. An entire domain can be converted from cloud identity to federated identity, or from federated identity to cloud identity.

**Authentication:** Except for Internet sites for anonymous access created with SharePoint Online, users must be authenticated when accessing Microsoft services. **Modern authentication**, **Cloud identity authentication**, and **Federated identity authentication**. Microsoft uses forms-based authentication, and authentication traffic over the network is always encrypted with TLS/SSL using port 443. Authentication traffic uses a negligible percentage of bandwidth for Microsoft services.

**Modern authentication** - Modern authentication brings Microsoft Authentication Library-based sign-in to Office client apps across platforms. This enables sign-in features such as Multi-Factor Authentication (MFA), SAML-based third-party identity providers with Office client applications, and smart card and certificate-based authentication. It also removes the need for Microsoft Outlook to use the basic authentication protocol. For more information, including the availability of modern authentication across Office applications, see [How modern authentication works for Office 2013 and Office 2016 client apps](/office365/enterprise/modern-auth-for-office-2013-and-2016). Modern authentication is turned on by default for Exchange Online. To learn how to turn it on or off, see [Enable modern authentication in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/enable-or-disable-modern-authentication-in-exchange-online).

**Cloud identity authentication** - Users with cloud identities are authenticated using traditional challenge/response. The web browser is redirected to the Microsoft sign-in service, where you type the user name and password for your work or school account. The sign-in service authenticates your credentials and generates a service token, which the web browser posts to the requested service and logs you in.

**Federated identity authentication** - Users with federated identities are authenticated using Active Directory Federation Services (AD FS) 2.0 or other Security Token Services. The web browser is redirected to the Microsoft sign-in service, where you type your corporate ID in the form a user principal name (UPN), for example: _isabel@contoso.com_. The sign-in service determines that you're part of a federated domain and offers to redirect you to the on-premises Federation Server for authentication. If you're logged on to the desktop (domain joined), you're authenticated (using Kerberos or NTLMv2) and the on-premises Security Token Service generates a logon token, which the web browser posts to the Microsoft sign-in service. Using the logon token, the sign-in service generates a service token that the web browser posts to the requested service and logs you in. For a list of available Security Token Services available, see [Single sign-on roadmap](/previous-versions/azure/azure-services/hh967643(v=azure.100)).

**Multi-Factor Authentication:** With Multi-Factor Authentication, users are required to acknowledge a phone call, text message, or an app notification on their smartphone after correctly entering their password. Only after this second authentication can the user sign in. Microsoft administrators can enroll users for multi-factor authentication in the Microsoft 365 admin center. Learn more about [Multi-Factor Authentication](/office365/admin/security-and-compliance/set-up-multi-factor-authentication).

**Rich client authentication:** For rich clients such as Microsoft Office desktop applications, authentication can occur in two ways: **Microsoft Online Services Sign-In Assistant** and **Basic/proxy authentication over SSL**. To ensure proper discovery and authentication of Microsoft services, administrators must apply a set of components and updates to each workstation that uses rich clients (such as Microsoft Office 2010) and connects to Office 365. Desktop setup is an automated tool to configure workstations with the required updates. For more information, see [Use my current Office desktop apps](https://support.office.com/article/3324b8b8-dceb-45e2-ac24-c642720108f7).

**Microsoft Online Services Sign-In Assistant** - The Sign-in assistant, which is installed by desktop setup, contains a client service that obtains a service token from the sign-in service and returns it to the rich client. If you have a cloud identity, you receive a prompt for credentials, which the client service sends to the sign-in service for authentication (using WS-Trust). If you have a federated identity, the client service first contacts the AD FS 2.0 server to authenticate the credentials (using Kerberos or NTLMv2) and obtain a logon token that is sent to the sign-in service (using WS-Federation and WS-Trust).

**Basic/proxy authentication over SSL** - The Outlook client passes basic authentication credentials over SSL to Exchange Online. Exchange Online proxies the authentication request to the identity platform, and then to on-premises Active Directory Federation Server (for SSO).

**Sign-in experience:** The sign-in experience changes depending on the type of identity in use:
  
| Service | Cloud identity | Federated identity |
|:-----|:-----|:-----|
| Outlook 2016 |Sign in each session <sup>1</sup> |Sign in each session <sup>2</sup> |
| Outlook 2013 |Sign in each session <sup>1</sup> |Sign in each session <sup>2</sup> |
| Outlook 2010 or Office 2007 on Windows 7 |Sign in each session <sup>1</sup> |Sign in each session <sup>2</sup> |
| Outlook 2010 or Office Outlook 2007 on Windows Vista |Sign in each session <sup>1</sup> |Sign in each session <sup>2</sup> |
| Microsoft Exchange ActiveSync |Sign in each session <sup>1</sup> |Sign in each session <sup>2</sup> |
| POP, IMAP, Outlook for Mac |Sign in each session <sup>1</sup> |Sign in each session <sup>2</sup> |
| Web experiences: Microsoft 365 admin center/Outlook on the web/SharePoint Online/Office for the web |Sign in each browser session<sup>4</sup> |Sign in each session <sup>3</sup> |
| Office 2010 or Office 2007 using SharePoint Online |Sign in each SharePoint Online session <sup>4</sup> |Sign in each SharePoint Online session<sup>3</sup> |
| Skype for Business Online |Sign in each session <sup>1</sup> |No prompt |
| Outlook for Mac |Sign in each session <sup>1</sup> |Sign in each session <sup>2</sup> |

<sup>1</sup> When first prompted, you can save your password for future use. You won't receive another prompt until you change the password. <br/> 
<sup>2</sup> You enter your corporate credentials. You can save your password and won't be prompted again until your password changes. <br/> 
<sup>3</sup> All apps require you to enter or select your username to sign in. You aren't prompted for your password if your computer is joined to the domain. If you select **Keep me signed in** you won't be prompted again until you sign out. <br/> 
<sup>4</sup> If you select **Keep me signed in** you won't be prompted again until you sign out.

**Create user accounts:** There are multiple ways for you to add users. To learn more, see [Add users individually or in bulk - Admin Help](/office365/admin/add-users/add-users) and [Add users and assign licenses - Microsoft 365 admin | Microsoft Docs](/microsoft-365/admin/add-users/add-users). If you're using Office 365 operated by 21Vianet in China, see [Create or edit user accounts in Office 365 operated by 21Vianet - Admin Help](/office365/admin/add-users/add-users).

**Delete user accounts:** How you delete accounts depends on whether or not you're using directory synchronization. If you aren't using directory synchronization, accounts can be deleted by using the admin page or by using Windows PowerShell. If you're using directory synchronization, you must delete users from the local Active Directory, rather than from Office 365.

**Deleted accounts:** When an account is deleted, it becomes inactive. For approximately 30 days after having deleted it, you can restore the account. For more information about deleting and restoring accounts, see [Delete users](/office365/admin/add-users/delete-a-user) and [Restore users](/office365/admin/add-users/restore-user) or, if you're using Office 365 operated by 21Vianet in China, see [Create or edit user accounts in Office 365 operated by 21Vianet - Admin Help](/office365/admin/add-users/add-users).

**Password management:** The policies and procedures for password management depend on the identity system.

**Cloud identity password management:** When using cloud identities, passwords are automatically generated when the account is created. For cloud identity password strength requirements, see [password policy](/previous-versions/azure/jj943764(v=azure.100)). To increase security, users must change their passwords when they first access Microsoft services. As a result, before users can access Microsoft services, they must sign into the Microsoft 365 admin center, where they're prompted to change their passwords. Admins can set the password expiration policy. For more information, see [Set a user's password expiration policy](/office365/admin/manage/set-password-expiration-policy).

**Cloud identity password reset:** There are several tools for resetting passwords for users with cloud identities: **Admin resets password,** **User changes passwords with Outlook on the web**, **Role-based reset password rights**, and **Reset passwords using Windows PowerShell**.

**Admin resets password** - If users lose or forget their passwords, admins can reset users' passwords in the admin center or by using Windows PowerShell. Users can only change their own password if they know their existing password. For enterprise plans, if administrators lose or forget their passwords, a different administrator with the Global Administrator role can reset administrators' passwords in the Microsoft 365 admin center or by using Windows PowerShell. For more information, see [Reset passwords for admins](/office365/admin/add-users/reset-passwords). If you're working in Office 365 operated by 21Vianet in China, see [Change or reset passwords in Office 365 operated by 21Vianet](https://support.office.com/article/change-or-reset-your-password-in-office-365-operated-by-21vianet-d8eb5b62-9d0e-4267-a9bf-2aa491ee6d0b).

**User changes passwords with Outlook on the web** - The Outlook on the web options page includes a Change password hyperlink, which redirects users to the **Change Password** page. The user must know their previous password. For more information, see [Change password](https://support.office.com/article/change-password-in-outlook-web-app-50bb1309-6f53-4c24-8bfd-ed24ca9e872c). If you're using Office 365 operated by 21Vianet in China, see [Change or reset passwords in Office 365 operated by 21Vianet](https://support.office.com/article/change-or-reset-your-password-in-office-365-operated-by-21vianet-d8eb5b62-9d0e-4267-a9bf-2aa491ee6d0b).

**Role-based reset password rights** - For enterprise plans, authorized users such as helpdesk staff can be assigned the **Reset Password** user right and the right to change passwords by using predefined or custom roles without becoming full services administrators. By default in enterprise plans, admins with the Global Administrator, Password Administrator, or User Management Administrator role can change passwords. For more information, see [Assigning admin roles](/office365/admin/add-users/assign-admin-roles).

**Reset passwords using Windows PowerShell** - Service administrators can use Windows PowerShell to reset passwords.

**Federated identity password management:** When using federated identities, passwords are managed in Active Directory. The on-premises Security Token Service negotiates the authentication with Federation Gateway without passing users' local Active Directory passwords over the internet to Office 365. Local password policies are used, or, for web clients, two-factor identification. Outlook on the web doesn't include a Change Password hyperlink. Users change their passwords using standard, on-premises tools or through their desktop PC logon options.

**Directory Sync:** If you have [Directory Sync with single sign-on (SSO)](/previous-versions/azure/azure-services/dn441213(v=azure.100)) enabled in your organization environment and there is an outage that impacts your federated identity provider, Password Sync Backup for Federated Sign-in provides the option to manually switch your domain to Password Sync. Using Password Sync will allow your users access while the outage is fixed. Learn [how to switch from Single Sign-On to Password Sync](https://go.microsoft.com/fwlink/p/?LinkId=509832).

**License management:** A license gives a user access to a set of Microsoft services. An administrator assigns a license to each user for the service they need access to. For example, you can assign a user access to Skype for Business Online, but not SharePoint Online.

**Billing:** Microsoft billing admins can make changes to subscription details like the number of user licenses and number of additional services your company uses. Check out [Assign or remove a license](/office365/admin/subscriptions-and-billing/assign-licenses-to-users). If you're using Office 365 operated by 21Vianet, see [Assign or remove licenses in Office 365 operated by 21Vianet](/office365/admin/subscriptions-and-billing/assign-licenses-to-users).

**Group management:** Security groups are used in SharePoint Online to control access to sites. Security groups can be created in the Microsoft 365 admin center. For more information about security groups, see [Create, edit, or delete a security group](/office365/admin/email/create-edit-or-delete-a-security-group).

**Microsoft Entra services:** Microsoft Entra ID brings comprehensive identity and access management capabilities to Office 365. It combines directory services, advanced identity governance, application access management and a rich standards-based platform for developers. Learn more about the [Free, Basic, and Premium editions of Microsoft Entra ID](/previous-versions/azure/dn532272(v=azure.100)).

# [**Support, help, and training**](#tab/Support)

## Support

With every Microsoft 365 and Office 365 subscription for enterprise, business, frontline, education, and government, Microsoft Support provides global technical, pre-sales, billing, and subscription support. Support is available both online through the Microsoft 365 admin center and by telephone for both paid and trial subscriptions. For more information, see [Microsoft Support Options](/Office365/Admin/contact-support-for-business-products). To contact technical support, see: [Contact Microsoft 365 for business support](/Office365/Admin/contact-support-for-business-products). Technical Support doesn't include troubleshooting third-party services or add-ins. Learn about finding answers from other customers in the [Microsoft Community](https://answers.microsoft.com/).

**Support:** The Microsoft development and operations teams are complemented by a dedicated support organization, which plays an important role in providing customers with business continuity. Support staff has a deep knowledge of the service and its associated applications as well as direct access to Microsoft experts in architecture, development, and testing. The support organization closely aligns with operations and product development, offers fast resolution times and provides a channel for customers' voices to be heard. Feedback from customers provides input to the planning, development, and operations processes. For more information about support, see the [Support](/office365/servicedescriptions/office-365-platform-service-description/support) article.

**Support for Online issue tracking:** Customers need to know that their issues are being addressed, and they need to be able to track timely resolution. The Microsoft 365 admin center provides a single web-based interface for support. Customers can use the portal to add and monitor service requests and receive feedback from Microsoft support teams.

**Support for Self-help, backed by continuous staff support:** Microsoft offers a wide range of self-help resources and tools that can help customers to resolve service-related issues without requiring Microsoft support. Before customers enter service requests, they can access knowledge base articles and FAQs that provide immediate help with the most common problems. These resources are continually updated with the latest information, which helps avoid delays by providing solutions to known issues. However, when an issue arises that needs the help of a support professional; staff members are available for immediate assistance by telephone and through the administration portal 24 hours a day, 7 days a week.

**Administrator support:** Authorized administrators can use the Microsoft 365 admin center to submit service requests online, access support telephone numbers, and view all open and recently closed service requests. Service requests submitted in the admin center can be reopened for up to 14 days after the request has been closed. For instructions, see [Contact Microsoft 365 for business support](/Office365/Admin/contact-support-for-business-products).

**Microsoft 365 support:** The Microsoft 365 technical support team troubleshoots only those issues that are related to Microsoft 365 and Office 365. Issues that originate in customer networks fall outside of the support boundaries, and in these cases, customers must either work with their networking team or engage the [Microsoft Networking team](https://support.microsoft.com/contactus) for assistance.

**Community and self-service support options:** Self-service support is available for all plans, and includes troubleshooting tools and videos, help articles and videos, as well as forums and wikis in the [Microsoft 365 community](https://go.microsoft.com/fwlink/p/?LinkID=279811). For more information about self-service support resources, see the [Help and training](/office365/servicedescriptions/office-365-platform-service-description/help-and-training) service description.

**Pre-sales support:** Pre-sales support provides assistance on subscription features and benefits, plan comparisons, pricing and licensing, and helps to identify the right solution to meet your business needs. In addition, pre-sales support can help you find a Partner, and purchase and sign up for a trial. You can call during local business hours, Monday through Friday. Pre-sales support can be accessed using the same phone number as with technical support. The support telephone number can be found on the admin center of the free trial. For instructions, see [Contact Microsoft 365 for business support](/Office365/Admin/contact-support-for-business-products).

**Billing and subscription management support:** Assistance for billing and subscription management issues is available online or by telephone during local business hours, Monday through Friday. Billing and subscription management support can be accessed using the same phone number and online service request process as with technical support. The support telephone number can be found on the admin center. For instructions, see [Contact Microsoft 365 for business support](/Office365/Admin/contact-support-for-business-products). Here are some examples of billing and subscription management issues: Signing up for a trial or purchasing a subscription, Converting from a trial subscription to a paid subscription, Understanding the bill, Renewing a subscription, Adding or removing licenses, and Canceling a paid subscription.

**Technical support:** Technical support for Microsoft 365 subscriptions provides assistance with basic installation, setup, and general technical usage. Some examples of these issues are listed in the following table.

| Support category | Examples |
|:-----|:-----|
|Installation and setup  <br/> | Exchange Online:  <br/>  Mailbox migration  <br/>  Recipient configuration (mailbox permissions, configuring mail forwarding, configuring shared mailbox)  <br/>  Autodiscover configuration  <br/>  SharePoint Online:  <br/>  Permissions and user groups  <br/>  Configuration of guests  <br/>  Skype for Business Online:  <br/>  Installation and creating contacts  <br/>  Microsoft 365 Apps for enterprise: Installation and setup assistance  <br/> |
|Configuration  <br/> | Service configuration failure issues  <br/>  Provisioning issues  <br/>  Domain setup and re-delegation  <br/>  Service configuration issues  <br/>  Single sign-on (SSO)  <br/>  Active Directory synchronization  <br/> |

**Technical support case handling:** Microsoft assigns a severity level to a case when it is opened, based on an assessment of the issue type and customer impact. Examples of issue types and severity levels are shown in the following table.

| Severity level | Operations and support description | Examples |
|:-----|:-----|:-----|
|Sev A (Critical)  <br/> |One or more services aren't accessible or are unusable. Production, operations, or deployment deadlines are severely affected, or there will be a severe impact on production or profitability. Multiple users or services are affected.  <br/> | Widespread problems sending or receiving mail.  <br/>  SharePoint site down.  <br/>  All users can't send instant messages, join or schedule Skype for Business Meetings, or make Skype for Business calls.  <br/> |
|Sev B (High)  <br/> |The service is usable but in an impaired fashion. The situation has moderate business impact and can be dealt with during business hours. A single user, customer, or service is partially affected.  <br/> | Send button in Outlook is garbled.  <br/>  Setting is impossible from EAC (Exchange Admin Center) but possible in PowerShell.  <br/> |
|Sev C (Non-critical)  <br/> |The situation has minimal business impact. The issue is important but doesn't have a significant current service or productivity impact for the customer. A single user is experiencing partial disruption, but an acceptable workaround exists.  <br/> | How to set user password that never expires.  <br/>  User can't delete contact information in Exchange Online.  <br/> |

**Technical support initial response times:** Initial response time is based on the severity levels described above and the type of subscription. The response time objectives are described in the following table.

| Severity level | Microsoft 365 Business Basic<sup>1</sup><br> Microsoft 365 Apps for business<sup>1</sup><br> Microsoft 365 Business Standard<sup>1</sup><br> Microsoft 365 Business Premium<sup>1</sup> | All Microsoft 365 and Office 365 Enterprise (E),<br/> Frontline (F),<br/> Government (G), and<br/> Education (A) plans | Elevated support options<sup>3</sup> |
|:-----|:-----|:-----|:-----|
| Sev A (Critical)  <br/> |Available: 24/7<sup>4</sup> <br/> Response time: one hour  <br/> |Available: 24/7<sup>4</sup> <br/> Response time: one hour  <br/> |Available: 24/7<sup>4</sup> <br/> Response time: one hour  <br/> |
|Sev B (High)  <br/> |Available: business hours  <br/> Response time: no commitment  <br/> |Available: 24/7<sup>4</sup> <br/> Response time: next day  <br/> |Available: 24/7<sup>4</sup> <br/> Response time: 2 hours  <br/> |
|Sev C (Medium)  <br/> |Available: business hours  <br/> Response time: no commitment  <br/> |Available: 24/7<sup>4</sup> <br/> Response time: no commitment  <br/> |Available: 24/7<sup>4</sup> <br/> Response time: 4 hours  <br/> |

<sup>1</sup> Business plans include business hours support for all non-critical issues and 24/7 phone support from Microsoft.<br/>
<sup>2</sup> Enterprise plans include 24/7 phone support from Microsoft for all issues.<br/>
<sup>3</sup> For descriptions of the elevated support options, see [Additional support options](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-office-365-general-information?tabs=Support).<br/>
<sup>4</sup> Calls and service requests are handled 24 hours a day, seven days a week in most countries and regions.

**Support for standalone plans:** Support for paid standalone plans is handled with the same level of support and response time objectives as plans in the Enterprise service family. For a list of standalone plans, see [Standalone services](/office365/servicedescriptions/office-365-platform-service-description/office-365-plan-options#standalone-services).

**Technical support languages:** Depending on the location and language, support engineers are available during most regional business hours and, in several cases, on a 24-hour basis. For more information, see [International Phone Numbers](/Office365/Admin/contact-support-for-business-products) and [Microsoft Support Options](https://products.office.com/business/office-365-for-business-support-options). If additional translation assistance is required, support engineers can remain on the line and arrange for a translator to join the call.

**Business Assist for Microsoft 365:** Business Assist for Microsoft 365 is designed for small businesses to give you and your employees around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use. Learn more at [Business Assist for Microsoft 365](/microsoft-365/admin/misc/business-assist).

**Shared support responsibilities:** Microsoft understands that receiving timely technical support from qualified professionals is a key aspect of cloud services. Equally important is the critical role that the customer's IT department plays in the support of its users.

**Administrator responsibilities:** People with Microsoft administrator roles are the only ones in the customer's organization authorized to access the **Admin** section of the admin center, and to submit service requests to Microsoft, communicating directly with Microsoft about service requests. With Office 365 for enterprise and Microsoft 365 Apps Plan, you can designate several types of administrators who serve different functions. This service description uses the generic title administrator to refer to all categories of administrators. For more information about the types of administrator roles, see [Assigning admin roles](/office365/admin/add-users/assign-admin-roles).

**Administrator role**: The administrator is the primary contact that sets up and supports each service user. The administrator is responsible for service administration and account maintenance and provides user account setup and configuration to allow users access to the services, address client connectivity, client software, and mobility installation issues, address service availability issues within the customer's organizational span of control, use Microsoft's self-service support resources to resolve support issues. The administrator is expected to provide initial assistance for the customer's users. However, if the administrator is unable to resolve issues with the help of self-service support resources, they should contact [Technical support](/office365/servicedescriptions/office-365-platform-service-description/support#technical-support).

Office 365 for enterprise follows a role-based access control (RBAC) model: permissions and capabilities are defined by management roles. The person who signs up for Office 365 for his or her organization automatically becomes a global administrator, or top-level administrator. There are five administrator roles: global administrator, billing administrator, password administrator, service administrator, and user management administrator. For more information about administrator roles in Office 365 for enterprise, including how they apply to Exchange Online, SharePoint Online, and Skype for Business Online administration, see [Assigning administrator roles](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj878348(v=ws.11)). If you're using Office 365 operated by 21Vianet in China, see [Assign admin roles in Office 365 for business](/office365/admin/add-users/assign-admin-roles).

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. This helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

**Delegated administration and support for partners:** Partners can be authorized to administer accounts on behalf of customers. The customer doesn't require a user account for the partners use and doesn't consume a license when granting delegated administration authority. Partners can assign full or limited access to users within their organization. Limited access includes rights to reset passwords, manage service requests, and monitor service health (ability to use and specify a partner as a delegated administrator varies by region).

**Microsoft support role:** Microsoft support's role is to Troubleshoot and provide technical guidance for customer issues and escalations, gather and validate information related to specific service requests, provide issue coordination and resolution management, maintain communication with the administrators to help ensure that issues are addressed on an ongoing basis, provide assistance with licensing, invoicing, and subscription inquiries, provide assistance with purchasing and trial inquiries, and continually gather customer feedback on how to improve the service through surveys.

**Elevated support options:** While the support services included with Microsoft meet the needs of many customers, customers with more advanced requirements or complex environments should consider paid support options from Microsoft. These elevated support offers include quicker response objectives, the ability to set issue severity level, and access to additional technical resources and support account management. Examples of elevated support include: Service update management; end-to-end support for clients and services; reactive and advisory services from advanced engineers; and incident management and on-site workshops.

**Additional support services:** There are several types of additional support services available: For options for large enterprise customers looking for a managed support service that covers both Microsoft and on-premises technologies required to access the online service, see [Premier Support](https://www.microsoft.com/enterprise/services/support): for options for smaller enterprise customers in the United States, Canada, and the United Kingdom, see [Professional Direct Support](https://support.microsoft.com/help/4341255/support-for-business).

**Partners:** You can select a Microsoft partner and delegate administrative functions, including creating service request tickets. For more information, see the [Partners](/office365/servicedescriptions/office-365-platform-service-description/partners) service description and [Add, change, or delete a subscription advisor partner](/office365/admin/misc/add-partner).

**Technical support for partners:** If you're a partner and need information about specific partner support plans, see [Compare partner support plans](https://partner.microsoft.com/support/partnersupport). Partners can also escalate tickets to Microsoft. For more information, see [Escalating to Microsoft](/partner-center/customer-support#escalating-to-microsoft).

**Developers:** Developers can learn more about developing Office and SharePoint applications at the [MSDN Microsoft Developer Network](https://developer.microsoft.com/office/docs). Developer Support is available through online blogs and forums in the developer community, through Premier or Partner support resources, or directly through Microsoft. For links to Developer Support options, see [Support Resources](https://developer.microsoft.com/office/docs).

**Volume licensing**: If you have already purchased licenses from Microsoft under a volume licensing program, here's where to go for support: For support related to licenses and locating keys, go to the [Volume Licensing Service Center](https://www.microsoft.com/licensing/servicecenter/default.aspx); for technical support, see [Technical support](/office365/servicedescriptions/office-365-platform-service-description/support#technical-support); for billing questions, see [Billing and subscription management support](/office365/servicedescriptions/office-365-platform-service-description/support#billing-and-subscription-management-support); for general information about volume licensing, go to [Volume Licensing](https://www.microsoft.com/licensing/default).

> [!NOTE]
>
> The Microsoft team does not support scripts (for example, scripting techniques like JavaScript, VBScript, and so on, or VBA). If you need assistance with scripts, contact [Microsoft Support](https://support.microsoft.com/). For Office applications usage support, see [Support options for Microsoft Office application issues for subscribers](https://support.office.com/article/support-options-for-microsoft-office-application-issues-for-office-365-subscribers-0a02cd18-19be-4cfa-b430-3b53ea26920f).

## Help and training

Microsoft Office 365 provides the following help and training resources. Community resources apply to worldwide versions of Office 365. If you're using Office 365 operated by 21Vianet, you can use WeChat. See [Get technical, billing, and subscription support for Office 365 operated by 21Vianet](/microsoft-365/admin/contact-support-for-business-products) and scroll to the bottom of the page for a QR code.

**Online help:** Help articles and videos are available from any inline help link in the service, including the help icon in the top navigation bar of the Office 365 portal and Microsoft 365 admin center. You can also search all Office 365 help on [https://office.microsoft.com](https://go.microsoft.com/fwlink/p/?LinkId=272056).

**Training:** Training is available through videos, recorded live events, and classes leading to certification. For more information, see [Microsoft 365 basics video training](https://support.microsoft.com/office/microsoft-365-basics-video-training-396b8d9e-e118-42d0-8a0d-87d1f2f055fb), [Microsoft 365 Training](https://support.microsoft.com/training), [for admins and IT Pros](/training/m365/), [for small businesses](/microsoft-365/admin/admin-video-library), [browse the full learning catalog](/training/browse/), [become Microsoft certified](/certifications/), [browse all learning options](/training/browse/), and [watch live and recorded events](/training/tv/).

**Community:** The Office 365 Community is a single destination for self-help support information. It has the latest information to help customers find answers to a variety of technical, billing, and service questions through support forums, wikis, and blogs. The support forums are staffed and moderated by Microsoft Support agents. From the Office 365 Community home page, customers can access the following resources: Forums, Wikis, Blogs. For more information, visit the [Office 365 community](https://techcommunity.microsoft.com/).

**Forums:** Forums are intended to provide community participants with an online destination where they can post technical support questions and discuss topics related to the Office 365 services. Here are the forums that are available: Deploy Office 365, Directory integration services, Domains in Office 365, Downloads, Email and calendar, IM, meetings and conferencing, Manage Office 365, Manage projects, Mobile access, Office 365 for Mac, Office apps, Sites and document sharing, Trust Center documents, Upgrade to Office 365, Viva Engage

**Wikis:** Wikis include wiki pages created by Microsoft employees and authenticated community members. This collaborative site encompasses the latest collective content about specific Office 365 technical scenarios. Each individual wiki page typically includes links to websites, webcasts, troubleshooting videos, FAQ pages, documents, and downloads about that specific technical scenario. Historical tracking of every revision date and author alias is provided along with the ability to compare versions.

**Blogs**: The Office 365 Technical Blog is a good resource for obtaining current information about Office 365 online services and for learning about the benefits of Office 365 features and functions. Topics include product insights, new product announcements, customer interviews, and a guest blog series.

**Manage Office 365 guidance:** IT professionals of large organizations can visit the Manage Office 365 documentation home page. This page provides links to complex deployment guidance intended for large organizations. For more information, visit [Manage Office 365](/Office365/).

**Other self-help resources:** In addition to the Office 365 Community and online help, Office 365 includes the following self-help resources: Troubleshooting tool for Office 365, Technical support videos, Social media

**Troubleshooting tool for Office 365** After answering a series of short questions about your issue, the Troubleshooting tool for Office 365 suggests helpful tools and information based on your answers. To use the tool, go to the [Office troubleshooting for admins and IT professionals](/office365/troubleshoot/) page of the Office 365 Community.

**Technical support videos** English language-only instructional troubleshooting videos have been developed based on the most commonly asked questions from customers. There are more than 35 individual videos and more coming every week. Topics range from an overview of the BlackBerry&reg; Administration Center to activating and migrating directory synchronization. To view these videos, go to the Office 365 Community site and search for videos. Customers are encouraged to submit a request for a video through the community portal. Customers can also navigate to the [Office 365 YouTube](https://go.microsoft.com/fwlink/?LinkId=272059) and [Showcase](/office365/servicedescriptions/office-365-service-descriptions-technet-library) channels.

**Social media** Following Office 365 on [Facebook](https://go.microsoft.com/fwlink/?LinkId=272061), [Twitter](https://go.microsoft.com/fwlink/?LinkId=272062), and [LinkedIn](https://www.linkedin.com/groups/Microsoft-Office-365-3724282?itemaction=mclk&anetid=3724282&impid=&pgkey=anet_search_results&actpref=anetsrch_name&trk=anetsrch_name&goback=%2Egdr_1307137875158_1) provides a way for customers and partners to become more educated about Office 365. This fast and easy way of learning about Office 365 allows customers to listen to what others are saying and be able to add their own comments and tweets. Microsoft support professionals monitor the Microsoft-related Facebook and Twitter activity to assist with any support-related inquiries. To find the most current Facebook feeds along with the most recent tweets, go to the bottom of the Office 365 Community homepage to hear the daily discussions among customers and partners.

**Languages:** Online Help Articles, Wikis and Blogs, Forums, Tech Centers, and Troubleshooting are available in various languages.

**Languages for Online Help Articles:** Bulgarian, Chinese-Simplified, Chinese-Traditional, Czech, Danish, Dutch, Estonian, Finnish, French, German, Greek, Hungarian, Italian, Japanese, Korean, Latvian, Lithuanian, Norwegian, Polish, Portuguese, Portuguese-Brazil, Romanian, Russian, Serbian, Slovak, Slovenian, Spanish, Swedish, Thai, Turkish, and Ukrainian.

**Languages for Wikis and Blogs:** Arabic, Chinese-Simplified, Chinese-Traditional, Danish, Dutch, French, German, Italian, Japanese, Korean, Norwegian, Polish, Portuguese-Brazil, Russian, Spanish, and Swedish.

**Languages for Forums:** Chinese-Simplified, Chinese-Traditional, French, German, Italian, Japanese, Korean, Polish, Portuguese-Brazil, Russian, and Spanish.

**Languages for Tech Center:** Chinese-Simplified, Chinese-Traditional, French, German, Italian, Japanese, Korean, Portuguese-Brazil, Russian, and Spanish.

**Languages for Troubleshooting:** Chinese-Simplified, Chinese-Traditional, French, German, Italian, Japanese, Korean, Polish, Portuguese-Brazil, Russian, and Spanish.

# [**Domains, networking and partners**](#tab/Domains)

## Domains

**Domains**: When you add a domain, a step-by-step wizard helps you add users and convert your email addresses and other services to your business name. After you complete the wizard, your business email starts coming to Microsoft instead of going to your current email provider. To learn more, see [Add your users and domains to Microsoft](https://support.office.com/article/6383f56d-3d09-4dcb-9b41-b5f5a5efd611). If you use Office 365 operated by 21Vianet, see [Verify your domain](/office365/admin/setup/add-domain).

**Custom domains:** You can add up to 5000 domains to your subscription (including subdomains). You can't add a domain to Microsoft 365 that you're already using in another Microsoft cloud service. This restriction also means the same domain can't be added to multiple subscriptions. For more information, see [Domains FAQ](https://support.office.com/article/Domains-FAQ-1272bad0-4bd4-4796-8005-67d6fb3afc5a).

When you create a new user, the user's sign-in name and email address are assigned to the default domain as set in the Microsoft 365 admin center. To learn more, see [Add your users and domain](https://support.office.com/article/Add-your-users-and-domain-to-Office-365-6383f56d-3d09-4dcb-9b41-b5f5a5efd611). By default, the subscription uses the <*company name*>**.onmicrosoft.com** domain that was created with the account. For more information about domains in Office 365, see the [Domains](/office365/servicedescriptions/office-365-platform-service-description/domains) service description. If you're using Office 365 operated by 21Vianet in China, the default domain is <*companyname*>**.onmsChina.cn**.

**Adding domains:** You can add one or more custom domains to Microsoft rather than retaining the **onmicrosoft.com** domain and can assign users to sign in with any of the validated domains. Each user's assigned domain is the email address that will appear on sent and received email messages. You can host up to 900 registered internet domains, each represented by a different namespace.

**Second and third-level domains:** With Office 365 Enterprise and Microsoft 365 Apps for business, you can add any level domain, including third-level domains such as marketing.contoso.com. See [Add custom subdomains or multiple domains to Microsoft](/office365/admin/setup/domains-faq). If you're using Office 365 operated by 21Vianet, see [Add custom subdomains or multiple domains to Office 365 operated by 21Vianet](/office365/admin/setup/domains-faq).

**Domain verification DNS records:** With Microsoft 365, you can manage all your DNS records at your DNS hosting provider, or opt to have Microsoft set up and manage your domain's DNS records for you. If you continue to manage the records, you change specific records to point to Microsoft services as needed. If Microsoft manages your domain's DNS records for you, you first must switch your domain's nameserver records to point to Microsoft and then Microsoft sets up your services and then your domain's DNS records are managed at Microsoft.

**Domain registrars:** For a list of domain registrars for which we provide step-by-step directions for adding the records, including the specific values to use for each record, see [Create DNS records](/office365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider) or, if you're using Office 365 operated by 21Vianet, see Create DNS records at any provider for Office 365 operated by 21Vianet. If your domain is registered at GoDaddy, Microsoft can create the required records for you at GoDaddy.

**Managing DNS records:** No matter where your DNS records are hosted, you can set up the DNS records to use your domain for the URL for a public website hosted on Microsoft or with a different hosting provider. Microsoft proactively checks your DNS records to find and help fix DNS issues. If your DNS records don't match what we expect them to be, you'll receive a notification in the Microsoft 365 admin center, along with information that tells you how to fix the possible issues that have been identified. For more information, see [How Microsoft manages DNS records](/office365/admin/setup/domains-faq) or, for Office 365 operated by 21Vianet, see [Create DNS records for Office 365 when you manage your DNS records](/office365/admin/services-in-china/create-dns-records-when-you-manage-your-dns-records).

**Sharing a domain:** You can pilot some email addresses for a domain on Microsoft, and some on your previous email provider. This is recommended only for use during a pilot, because it requires additional setup steps and has some limitations for Microsoft services. For more information, see: [Pilot Microsoft 365 for a small business](https://support.office.com/article/39cee536-6a03-40cf-b9c1-f301bb6001d7) and [Eligibility - FastTrack – Microsoft 365](/fasttrack/eligibility).

## Networking

Microsoft supports the following networking features.

**Ports, protocols, and IP addresses:** Microsoft uses IPv4 and IPv6 addresses. Use of IPv6 addressing is optional and not required for connectivity with Office 365. Not all Microsoft 365 features are fully enabled using IPv6. For more information about Ipv6 support, see [IPv6 support in Microsoft services](/office365/enterprise/ipv6-support).

**IP addresses:** Microsoft maintains a list of allowed IP addresses in Microsoft help. For more information, see [URLs and IP address ranges](/office365/enterprise/urls-and-ip-address-ranges). For Office 365 operated by 21Vianet, see [URLs and IP Addresses for Office 365 operated by 21Vianet](/office365/enterprise/managing-office-365-endpoints).

> [!IMPORTANT]
>
> We strongly recommend that you enable routing to the root domain names listed in the articles above (such as *.Outlook.com, *.MicrosoftOnline.com and *.SharePoint.com) instead of routing to specific IP address subnets. Relying on IP address subnets runs the risk of outages for your users as changes are made.

**Bandwidth requirements:** For information on bandwidth requirements, see [Internet bandwidth planning](/office365/enterprise/network-planning-and-performance).

**Connecting to Microsoft:** All Connections to Microsoft are done over the public internet or over a private Azure ExpressRoute connection, and are secured by SSL as appropriate. Azure ExpressRoute allows connecting directly to the global Microsoft network, bypassing the internet. A Microsoft networking partner provides connectivity to the global Microsoft network. For more information about Azure ExpressRoute, see [Azure ExpressRoute for Office 365](/microsoft-365/enterprise/azure-expressroute).

**WAN accelerators:** Microsoft doesn't provide support for customer-owned WAN acceleration and caching devices with Office 365. If you decide to use a WAN optimization controller to improve performance under conditions of high latency or low bandwidth, you'll need to disable it while troubleshooting service requests with Microsoft, and work with your device vendor for device support. For more information, see [WAN Acceleration and caching devices with Office 365](https://support.microsoft.com/help/2690045/using-third-party-network-devices-or-solutions-with-office-365).

**Microsoft Global Network:** The Microsoft networking infrastructure consists of a large global portfolio of data centers, servers, content distribution networks, edge computing nodes, and fiber optic networks to provide global distribution of services. Sophisticated service instrumentation and monitoring integrate at the deepest levels with each component, giving visibility into the data center, network backbone, internet exchanges and beyond, to help spot, diagnose and manage the cause of disruptions that arise. The network is built to maintain sufficient capacity even for large scale network interruptions without degradation of performance. For more information, see [Microsoft Global Network](/azure/networking/microsoft-global-network).

**Consumer services networks:** To maintain the confidentiality and integrity of customer data, Microsoft keeps consumer services networks separate from Microsoft networks. Multiple techniques are used to control information flows, including but not limited to physical separation, logical separation, Firewalls, and protocol restrictions. For more information, see the [Office 365 Trust Center](https://www.microsoft.com/trust-center).

**Physical separation:** Network segments are physically separated by routers that are configured to prevent specific communication patterns.

**Logical separation:** Virtual LAN (VLAN) technology is used to further separate communications.

**Firewalls:** Firewalls and other network security enforcement points are used to limit data exchanges with systems that are exposed to the internet, and to isolate systems from back-end systems managed by Microsoft.

## Partners

As an authorized Microsoft partner, Microsoft Office 365 offers you an opportunity to grow your customer base and create lasting relationships with them. For a monthly or annual fee paid to you, your customers can use cloud-based services so they don't have to manage data backups, server hardware, and server updates. The services available to you depend on the types of services you're authorized to provide.

**Partner features:** For more information on how to use partner features, see [Build your business and administer your Office 365 partner subscription](https://go.microsoft.com/fwlink/?LinkID=271614&clcid=0x409) and review the partner features presentation. To receive access to the partner features, you can join Cloud Essentials by signing the [Microsoft Online Services Partner Agreement](https://go.microsoft.com/fwlink/p/?LinkId=285473).

> [!NOTE]
>
> Partner features as described below are not yet available in Office 365 operated by 21Vianet.

**Create trial invitations and purchase orders:** You can create and send trial invitations to your customers so they can try Office 365 by using the **Partner overview** page in Office 365. The invitation can contain one or more services, depending on the offer. If you're certified to offer delegated administration, you can add an option to the trial invitation that allows you to administer the account on behalf of your customer. This makes it easier for your customer to try Office 365.

**Trial invitation:** After you've sent a trial invitation for Office 365 to a customer, you can follow up by creating and sending a purchase offer that's customized to fit the needs of your customer including the specific services and the number of licenses your customer needs. If you're certified to offer delegated administration, you can add the option to the purchase offer that allows you to administer the account on behalf of your customer.

**Provide delegated administration:** Delegated administration allows a partner to have full administrative access to all the customer's services and subscriptions. This means you can perform administrative tasks on behalf of customers (including setting up mailboxes, adding or removing users and groups, data migration, and submitting service requests to Microsoft Customer Service and Support). Delegated administration capability is offered exclusively for partners who are enrolled in Cloud Essentials, Cloud Accelerate or the Cloud Deployment programs.

**Delegated administrator:** Before you can start administering a customer's account, the customer must authorize you as a delegated administrator. To get customer approval, you send them an offer for delegated administration, which you can include with a trial invitation or purchase offer. The customer authorizes a Delegated Administration partner by responding to the partner's invitational email. Even when a customer has authorized a partner to perform administrative tasks on its behalf, the customer can still contact Microsoft support directly and submit service requests.

**Delegated partner:** Each customer is entitled to have one delegated administration partner. This partner can also be a customer's Partner of Record (POR) but doesn't need to be. The roles of POR and delegated administration partners are separate, and the customer designates them separately. This lets a customer choose one partner for purchase advice and another partner for implementation or managed services. It also lets partners choose whether to build a business with a specialty in one or both of these roles.

**Connect with customers and other partners in the Office 365 Marketplace:** Office 365 Marketplace offers customers the opportunity to find partner services and expertise. For more information, see [Connect with customers through record or up next widget](/dynamics365/sales/connect-with-customers) and [Work with other partners - Partner Center](/partner-center/work-with-other-partners).

**Microsoft partner network:** The Microsoft Partner Network is committed to serving the needs of our partners. To join the network, and to see how Microsoft serves its partners, see [Microsoft Partner Network](https://go.microsoft.com/fwlink/?LinkID=272021&clcid=0x409).

# [**Privacy, security, rights, and SLA**](#tab/Privacy)

## Privacy, security, and transparency

Microsoft values the partnerships we have with our customers and places great emphasis on protecting the privacy and security of customer data. For more information, see the [Microsoft Trust Center](https://go.microsoft.com/fwlink/?LinkID=717951&clcid=0x409). The information in this article applies to worldwide versions of Office 365. If you're using a national cloud instance of Office 365, including Office 365 U.S. Government, and Office 365 operated by 21Vianet, see [Microsoft National Clouds](https://go.microsoft.com/fwlink/?linkid=841582).

**Privacy:** To learn about how Microsoft Office 365 protects the privacy of your data, see the [Privacy](https://go.microsoft.com/fwlink/?LinkID=717953&clcid=0x409) page. On specific steps for admins to take to configure Office 365 privacy settings  for Enterprise, Business, Government, and Education, see [Advanced Privacy Options for Administrators](https://go.microsoft.com/fwlink/p/?LinkID=285202).

**Security and privacy for other services:** For information about security and privacy for other Microsoft services, including Microsoft 365 Apps for enterprise, see [To which online services does the Trust Center apply?](https://www.microsoft.com/trustcenter/default.aspx)

**Security:** To learn how Microsoft delivers Office 365 services securely and reliably, see [Security](https://go.microsoft.com/fwlink/?LinkID=717954&clcid=0x409).

**Transparency:** As a customer, you can find out where your data resides, who at Microsoft can access it, and what we do with that information internally. For more information, see [Transparency](https://go.microsoft.com/fwlink/?LinkID=717955&clcid=0x409).

**Advanced eDiscovery:** Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases. Advanced eDiscovery builds on the existing set of eDiscovery capabilities in Office 365, allowing you to analyze large, unstructured data sets and reduce the amount of data that's relevant to a legal case. You can use the Search feature in the Office 365 Compliance Center to perform an initial search of all the content sources in your organization to identify and collect the data that might be relevant to a specific legal case. You can then analyze that data by applying the text analytics, machine learning, and relevance/predictive coding capabilities of Advanced eDiscovery. For more information, see [Advanced eDiscovery](/microsoft-365/compliance/overview-ediscovery-20).

**Customer Lockbox:** As a Microsoft admin, you can use Customer Lockbox to control how a Microsoft support engineer accesses your data during a help session. In cases where the engineer requires access to your data to troubleshoot and fix an issue, Customer Lockbox allows you to approve or reject the access request. If you approve it, the engineer is able to access the data. Each request has an expiration time, and once the issue is resolved, the request is closed and access is revoked. Customer Lockbox is included in the Office 365 Enterprise 5 plan, or you can purchase a separate subscription with any other Office 365 Enterprise plan. For more information, see [Office 365 Customer Lockbox Requests](/microsoft-365/compliance/customer-lockbox-requests).

**Microsoft Defender for Office 365:** Defender for Office 365 helps protect your organization against malware and viruses. Defender for Office 365 includes [Safe Links](/microsoft-365/security/office-365-security/safe-links-about), [Safe Attachments](/microsoft-365/security/office-365-security/safe-attachments-about), [Anti-phishing](/microsoft-365/security/office-365-security/anti-phishing-protection-about), and [Spoof intelligence](/microsoft-365/security/office-365-security/anti-spoofing-spoof-intelligence) features. For more information about Defender for Office 365, see [Microsoft Defender for Office 365 service description](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description).

**[Safe Links](/microsoft-365/security/office-365-security/safe-links-about) and [Safe Attachments](/microsoft-365/security/office-365-security/safe-attachments-about)**: Safe Links proactively protects your users from malicious hyperlinks in a message, providing protection every time the link is selected. Safe Attachments protects against unknown malware and viruses, routing all messages and attachments that don't have a known virus/malware signature to a special environment where Defender for Office 365 can detect malicious intent.

## Product use rights

**Microsoft Online Services product use rights:** If you comply with your Microsoft Online Subscription Agreement, you may use the online services and related software as expressly permitted under [Licensing Resources and Documents](https://www.microsoft.com/licensing/docs).

**Office 365 operated by 21Vianet product use rights:** Office 365 operated by 21Vianet is a service offered and operated only in China. This service is powered by technology that Microsoft has licensed to 21Vianet. See the [21Vianet Service Level Agreement](https://go.microsoft.com/fwlink/?linkid=846729) and [Online Services Standard Agreement](https://www.21vbluecloud.com/office365/O365-AgreeWebDir/) for Office 365 operated by 21Vianet. For more information, see [Microsoft 365 operated by 21Vianet](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-operated-by-21vianet).

**Licensing:** To learn about licensing programs for your organization, see [Volume Licensing](https://go.microsoft.com/fwlink/?LinkId=393693).

## Service level agreement

**Microsoft Online Services Level Agreement:** We provide financial backing to our commitment to achieve and maintain the service levels for each service. If we don't achieve and maintain the service levels for each service as described in the Service Level Agreement, then you might be eligible for a credit towards a portion of your monthly service fees. To learn more about our Service Level Agreements for the services, download the [Service Level Agreement for Microsoft Online Services](https://go.microsoft.com/fwlink/?linkid=272026). For overview information about system uptimes, as well as security, privacy, and compliance information, see [Transparent operations from Office 365](/office365/servicedescriptions/office-365-platform-service-description/service-health-and-continuity).

**Service updates:** Updates and upgrades are rolled out to customers based on many factors, such as geography, language, data center, and subscription. This means that not all updates are available immediately to existing customers. To find out about features that have just released, or are about to be released, check out the [Microsoft 365 Roadmap](https://go.microsoft.com/fwlink/?LinkId=509914). This topic doesn't apply to Office 365 operated by 21Vianet. To learn about service updates, see [Get technical, billing, and subscription support for Office 365 operated by 21Vianet](/microsoft-365/admin/contact-support-for-business-products).

**Targeted release:** With Targeted release, your organization or a set of your users receives a select set of service updates approximately one week before we begin our standard release process. To learn more, see [Microsoft release options](/office365/admin/manage/release-options-in-office-365).

**Update notifications:** Microsoft strives to notify customers in advance of any change that requires the administrator to take action to keep the service functioning normally. Unless otherwise noted, Microsoft will provide a minimum of 30 days advanced notification via [Message Center](/office365/admin/manage/message-center) when an update may require admin action. Most service updates are bug fixes, performance improvements, and security updates that require zero action on behalf of the customer. New and improved features are found on the [Microsoft 365 for business roadmap](https://roadmap.office.com/). Microsoft follows the [Online Lifecycle Policy](https://support.microsoft.com/lifecycle#gp/osslpolicy).

---

**Feature availability:** To view feature availability across plans, see [Microsoft 365 and Office 365 platform service description](/office365/servicedescriptions/office-365-platform-service-description/office-365-platform-service-description).
