---
title: Identity and device access configurations - Microsoft 365 Enterprise | Microsoft docs
description:  Describes Microsoft recommendations and core concepts for deploying secure email, docs, and apps policies and configurations.
author: barlanmsft
manager: angrobe
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 08/30/2017
ms.author: barlan
ms.reviewer: martincoetzer
ms.custom: it-pro
---

# Identity and device access configurations

## Introduction
While there is no single best recommendation for all customer environments, the best practices and recommendations in this document describe general Microsoft recommendations about how to apply policy and configuration within the Microsoft cloud to ensure that your employees are both secure and productive.  

**Intended audience**
These recommendations are intended for enterprise infrastructure architects and IT Pros familiar with [Office 365](https://technet.microsoft.com/library/dn127064(v=office.14).aspx) and [Microsoft Enterprise Mobility + Security](http://microsoft.com/ems) which includes, among others, Azure Active Directory (identity), Microsoft Intune (device management), and Azure Information Protection (data protection).

**Customer environment**
The recommended policies are applicable to enterprise organizations operating both entirely within the Microsoft cloud and for customers with infrastructure deployed across on-premises and the Microsoft cloud.

**Assumptions**
Many of the provided recommendations rely on services available only with Enterprise Mobility + Security (EMS) E5 subscriptions. Recommendations presented assume full EMS E5 subscription capabilities.

If you don’t have E5 subscriptions, Microsoft recommends you implement Azure AD  baseline protection capabilities that are included with all plans. See [What is baseline protection](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-conditional-access-baseline-protection) in the Azure AD library.

**Caveats**
Your organization may be subject to regulatory or other compliance requirements, including specific recommendations that may require you to apply policies that diverge from these recommended configurations.  These configurations recommend usage controls that have not historically been available.  We recommend these controls, because we believe they represent a balance between security and productivity.  

While we’ve done our best to account for a wide variety of organizational protection requirements, we’re not able to account for all possible requirements or for all the unique aspects of your organization. Use these recommendations as a guide for how Microsoft and the secure productive enterprise team is thinking about how to correctly apply policy.  

>[!NOTE]
>For an overview of the core concepts necessary to understand the protection capabilities described in these recommendations, see the [Microsoft 365 Enterprise documentation home page](index.md).
>
##Three tiers of protection
Most organizations have specific requirements regarding security and data protection. These requirements vary by industry segment and by job functions within organizations. For example, your legal department and Office 365 administrators might require additional security and information protection controls around their email correspondence that are not required for other business unit users.

Each industry also has their own set of specialized regulations. Rather than providing a list of all possible security options or a recommendation per industry segment or job function, recommendations have been provided for three different tiers of security and protection that can be applied based on the granularity of your needs. 

- **Baseline protectio**n — We recommend you establish a minimum standard for protecting data, as well as the identities and devices that access your data. You can follow these baseline recommendations to provide strong default protection that meets the needs of many organizations.
- **Sensitive protection** — Some customers have a subset of data that must be protected at higher levels or require all data to be protected at a higher level. You can apply increased protection to all or specific data sets in your Office 365 environment. We recommend protecting identities and devices that access sensitive data with comparable levels of security.  
- **Highly regulated** — Some organizations may have a very small amount of data that is highly classified, trade secret, or regulated data. Microsoft provides capabilities to help organizations meet these requirements, including added protection for identities and devices.

![m365-idquality-](../images/M365-idquality-threetiers.png)

This guidance shows you how to implement protection for identities and devices for each of these tiers of protection. Use this guidance as a starting point for your organization and adjust the policies to meet your specific organization requirements.

It’s important to use consistent levels of protection across your data, identities, and devices. For example, if you implement this guidance, be sure to protect your data at comparable levels. These architecture models show you which capabilities are comparable.

**Identity and device protection for Office 365**
![O365_Identity_device_protection_thumb_source visio.png](../images/O365_Identity_device_protection_thumb_source visio.png)
[PDF](https://go.microsoft.com/fwlink/p/?linkid=841656) | [Visio](https://go.microsoft.com/fwlink/p/?linkid=841657) | [More languages](https://www.microsoft.com/download/details.aspx?id=55032)

**File Protection Solutions in Office 365**
![File Protection in Office 365_thumb.gif](../images/File Protection in Office 365_thumb.gif)
PDF | [Visio](http://download.microsoft.com/download/7/8/9/789645A5-BD10-4541-BC33-F8D1EFF5E911/MSFT_cloud_architecture_O365%20file%20protection.vsdx)

##Services and concepts for identity and device access protection

Microsoft 365 Enterprise is designed for large organizations and integrates Office 365 Enterprise, Windows 10 Enterprise, and Enterprise Mobility + Security (EMS) to empower everyone to be creative and work together, securely. 

This section provides an overview of the Microsoft 365 services and capabilities that are important for identity and device access.

###Microsoft Azure Active Directory

Azure AD provides a full suite of identity management capabilities. Our recommendations for securing access use the following capabilities:
- **Multi-factor authentication (MFA)** — MFA requires users to provide two forms of verification, such as a user password plus phone authentication with a pin. MFA greatly reduces the risk that a stolen identity can be used to access your Office 365 environment. 
- **Conditional access** — Azure AD evaluates the conditions of the user login and uses conditional access rules you create to allow access. For example, in this guidance we show you how to create a conditional access rule to require device compliance for access to sensitive data. This greatly reduces the risk that a hacker with a stolen identity can access your sensitive data. It also protects sensitive data on the devices because the devices meet specific requirements for health and security. 
- **Azure AD groups** — Conditional access rules, device management with Intune, and even permissions to files and sites in your organization rely on assignment to users and/or Azure AD groups. We recommend you create Azure AD groups that correspond to the levels of protection you are implementing. For example, your executive staff are likely higher value targets for hackers. Therefore, it makes sense to assign these employees to an Azure AD group and assign this group to conditional access rules and other policies that enforce a higher level of protection for access. 
- **Device registration** — You register a device into Azure AD to provide an identity to the device. This identity is used to authenticate the device when a user signs in and to apply conditional access rules that require domain-joined or compliant PCs. For this guidance, we use device registration to automatically register domain-joined Windows computers. Device registration is a prerequisite for managing devices with Intune. [bcarter==I dnn't see where we're using device registration for BYOD devices. Also, are we not using Azure AD Join?]

###Azure AD Identity Protection

[Azure AD Identity Protection](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-identityprotection) enables you to detect potential vulnerabilities affecting your organization’s identities and configure automated responses via conditional access policies to low, medium and high sign-in risk and user risk.

This guidance relies on this risk evaluation to apply conditional access rules for multi-factor authentication. This guidance also includes a conditional access rule that requires users to change their password if high risk activity is detected for their account.

###Mobile app protection

[Mobile app protection](https://docs.microsoft.com/en-us/intune/app-protection-policy) policies can be used to protect your company’s data in mobile apps with or without enrolling devices into management. In fact, your users' mobile devices can even be managed by another non-Microsoft MDM solution while Intune helps protect Office 365 information. While making sure your employees can still be productive, you can also prevent data loss—intentional and unintentional. By implementing app-level policies, you can restrict access to company resources and keep data within the control of your IT department.

This guidance shows you how to create recommended policies to enforce the use of approved apps and to determine how these apps can be used with your business data.

###Microsoft Intune

[Intune](https://docs.microsoft.com/en-us/intune/introduction-intune) is Microsoft’s cloud-based mobile device management service. This guidance recommends device management of Windows PCs with Intune and recommends device compliance policy configurations. Intune determines whether devices are compliant and sends this data to Azure AD to use when applying conditional access rule.

###Office 365

This guidance shows you how to implement a set of policies to protect access to Office 365, including Exchange Online, SharePoint Online, and OneDrive for Business. In addition to implementing these policies, we recommend you also raise the level of protection for your Office 365 tenant using these resources:

- [Configure your Office 365 tenant for increased security](https://support.office.com/en-us/article/Configure-your-Office-365-tenant-for-increased-security-8d274fe3-db51-4107-ba64-865e7155b355) (these recommendations apply to baseline security for your Office 365 tenant)
- [Office 365 security roadmap: Top priorities for the first 30 days, 90 days, and beyond](https://support.office.com/en-us/article/Office-365-security-roadmap-Top-priorities-for-the-first-30-days-90-days-and-beyond-28c86a1c-e4dd-4aad-a2a6-c768a21cb352) (these recommendations include logging, data governance, admin access, and threat protection)
- Secure SharePoint Online sites and files (this set of articles describes how to protect files and sites at appropriate levels for baseline, sensitive, and highly confidential protection)

###Windows 10 and Office 365 ProPlus
Windows 10 and Office 365 ProPlus are the recommended client environment for PCs. We recommend Windows 10, as Azure is designed to provide the smoothest SSO experience possible for both on-premises and Azure AD. Windows 10 also includes advanced security capabilities that can be managed through Intune. Office 365 ProPlus includes the latest versions of Office applications. These use modern authentication, which is more secure and a requirement for conditional access. These apps also include enhanced security and compliance tools.

##Applying these capabilities across the three tiers of protection

The following table summarizes our recommendations for using these capabilities across the three tiers of protection.

|Protection mechanism|Baseline|Sensitive|Highly regulated|
|:-------------------|:-------|:--------|:---------------|
|**Enforce MFA**|On medium or above sign-in risk|On low or above sign-in risk|On all new sessions|
|**Enforce Password Change**|For high risk users|For high risk users|For high risk users|
|**Enforce Intune Application Protection**|Yes|Yes|Yes|
|**Enforce Intune Enrollment (COD)**|Require a compliant or domain joined PC, but allow BYOD phones/tablets|Require a compliant or domain joined device|Require a compliant or domain joined device|











<!---## Core concepts
All the security measures in the world do not matter when users, who experience unnecessary friction when trying to get their work done, bypass your organizational security policies. Azure AD single-sign on (SSO) attempts to minimize the burden on users. This way users can remain productive while still conforming to the access control policies of the organization.

### Single sign-on authentication

The following diagram illustrates a typical SSO authentication flow:

![End user single sign-on experience](./media/policies-configurations/authentication-flow.png)

To begin authentication, the client submits credentials (such as username and password) and/or any SSO artifacts obtained in the past to Azure AD. An SSO artifact can be a session token for a browser or a refresh token for rich applications.

After the credentials and/or SSO artifact have been verified in Azure AD, and all applicable policies have been evaluated, an access token for the resource provider (Office 365 in the above diagram) is issued. Azure AD also issues an SSO artifact as part of the response to allow clients to achieve SSO in subsequent requests. The client stores the SSO artifact and submits the access token as a proof of identity to the resource provider. After Office 365 verifies the access token and performs necessary checks, it will grant the client access to the documents.

#### Single sign-on (SSO) refresh tokens
SSO can be achieved in various ways. For example, cookies from an identity provider can be used as the SSO artifact to store the sign-in state for a user within a browser. Future attempts to sign in silently (without any prompts for credentials) to applications using the same identity provider are then possible.

When a user authenticates with Azure AD, an SSO session is established with the user’s browser and Azure AD. The SSO token, in the form of a cookie, represents this session. Azure AD uses two kinds of SSO session tokens: persistent and non-persistent. Persistent session tokens are stored as persistent cookies by browsers when the **Keep me signed in** checkbox is selected during sign in. Non-persistent session tokens are stored as session cookies, and are destroyed when the browser is closed.

For robust applications capable of using modern authentication protocols, such as [OpenId Connect](http://openid.net/specs/openid-connect-core-1_0.html) and [OAuth 2.0](https://tools.ietf.org/html/rfc6749), SSO is enabled using refresh tokens as the SSO artifacts (in addition to earlier described SSO cookies). Refresh tokens are presented to an authorization server when an application requests a new access token. The refresh token contains claims and attributes about the kind of authentication methods used when authenticating users. For example, if a user has successfully authenticated using multiple methods (username & password and phone-based authentication), then a multi-factor authentication (MFA) claim is present in the refresh token. Also, there may be additional claims that contain data such as MFA validity duration.

Refresh tokens allow the client to obtain a new access token, without needing to do another interactive authentication. Refresh tokens have a much longer lifetime than access tokens and can be redeemed to obtain a new access and refresh token pair. The newly obtained refresh tokens can then be continually used to fetch another set of access and refresh tokens. The client continues this SSO process until either the refresh token maximum inactive time setting expires, the refresh token max age expires, or the authentication and authorization policy requirements change. This change occurs during the time when the original refresh token was issued. Significant user attribute changes, for example a password reset, also require a new authentication token to be generated. The client must do a fresh interactive authentication to continue further. Essentially it signifies a break in the SSO process that the client has not experienced until now.

#### Conditional access
Azure AD, acting as an authorization service for your applications, determines whether to issue access tokens based on an evaluation of any conditional access policies applied to the resource that you’re trying to access. If policy requirements are met, then an access token and updated refresh token are issued. If the policy is not met, the user receives instructions on how to meet the policy and/or is required to complete additional steps including multi-factor authentication (MFA). Once MFA has been completed, the MFA claim is added to the resulting refresh token.  

Claims in the refresh token get accumulated over time. Some of the claims have expiration timelines, after which they are no longer considered during authorization checks. This can sometimes cause unexpected results. For example, if a conditional access policy is configured so that MFA is required for authentication attempts coming from extranet locations. In this case, users might sometimes not receive the expected MFA prompt when accessing a resource from extranet. A possible reason for this is that the user could have previously performed MFA shortly before leaving the intranet. Therefore, they have a valid MFA claim in their access token. This MFA claim satisfies the policy requirement and thus Azure AD does not prompt the user with an additional MFA request.

#### Token lifetime policy
Beyond the expiration of individual claims in a token, tokens themselves have expiration times. As noted before, expired tokens are one reason why the SSO experience can be broken. You can set the lifetime of a token issued by Azure AD by using [token lifetime policies](https://docs.microsoft.com/azure/active-directory/active-directory-configurable-token-lifetimes). As can be inferred from above, defining the contours of an SSO session is harder to capture. For example, when rich apps as various factors that are seemingly disconnected can impact the lifetime of an SSO session.

>[!NOTE]
>Azure AD Global Administrators can control the validity and inactivity periods of refresh tokens. Information about access token and claims using the settings described in the article [Configurable token lifetimes in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-configurable-token-lifetimes).
>

#### Primary refresh tokens
So far, this article has discussed how SSO works within the context of a single client, but this is not enough to experience SSO within a single app. These days, users experience interactive workflows spanning multiple applications within the same suite of applications, such as Microsoft Office. Users also need access across unrelated applications, including internally developed line of business (LOB) applications.

Traditionally, domain joined Windows devices, using Windows Integrated Authentication (Kerberos), achieve a high degree of SSO experience across multiple applications and resources. These apps include supported browsers such as Internet Explorer or Edge. There is an analog for the Azure AD realm, in the form of a primary refresh token (PRT). This privileged token is only available to a select set of client entities (such as platform system components). The entities can then allow brokered authentication access to other client applications, so that they can also offer a seamless SSO experience. For Office 365 users on [iOS](https://docs.microsoft.com/azure/active-directory/develop/active-directory-sso-ios) and [Android](https://docs.microsoft.com/azure/active-directory/develop/active-directory-sso-android) devices, additional work has been done to reduce the number of required authentications by applying authentication broker functionality. This functionality is built into the Microsoft Authenticator and Intune Company Portal apps.

>[!NOTE]
>The recommendations described in this document assume that one of these apps (Microsoft Authenticator or Intune Company Portal) has been deployed to your users' iOS or Android devices.

### Multi-factor authentication
Multi-factor Authentication (MFA) provides a high level of trust about the subject of authentication, because the subject provides multiple proofs or pieces of evidence about its identity. The proofs can be pre-established secrets that only the subject and the authority are aware of or a physical entity that only the subject is expected to possess. MFA is typically performed in stages. First it establishes the identity using passwords, and then it requires a different (less prone to malicious attacks) authentication method as the second factor, or vice versa.

Different authorities may have a slightly different interpretation of MFA, or strong authentication. For example, some authorities (or more specifically the admins configuring policy on those authorities) may choose to interpret the physical smartcard-based authentication as MFA. This can happen even though strictly speaking smartcard authentication is a single stage authentication.

The combination of requiring a physical smartcard and the requirement to enter a PIN (secret) to use smartcard can be interpreted as MFA. However, organizations might choose to be more lenient in terms of how often more onerous authentication methods are required to be performed. In these cases, normal authentications, that take place between stronger authentications,can be considered to be valid for resources that typically require strong authentication. For example, in some organizations it may be acceptable to require a user to do MFA every few hours or days. The time depends on the sensitivity of resources they are protecting and as long as the physical location of the user attempting to access a resource, does not change.

Azure AD and AD FS use the MFA claim to indicate whether the authentication is performed with MFA. By default, Azure AD issues tokens with MFA claim when authentication is done with [Azure MFA](https://docs.microsoft.com/azure/multi-factor-authentication/multi-factor-authentication-get-started-cloud) or [Windows Hello for Business](https://docs.microsoft.com/windows/access-protection/hello-for-business/hello-identity-verification). In federation scenarios, Azure AD honors the MFA claim from federated identity providers such as AD FS and carries over the MFA claim in the tokens.

## Recommended client configurations
This section describes the default platform client configurations we recommend to provide the best SSO experience to your users, as well as the technical pre-requisites for conditional access.

### Windows devices
We recommend the Windows 10 (version 1703 or later), as Azure is designed to provide the smoothest SSO experience possible for both on-premises and Azure AD. Work or school issued devices should be configured to join Azure AD directly or if the organization uses on-premises AD domain join, those devices should be [configured to automatically and silently register with Azure AD](https://docs.microsoft.com/azure/active-directory/active-directory-conditional-access-automatic-device-registration-setup).

For BYOD Windows devices, users can use "Add work or school account". Note that Chrome browser users on Windows 10 need to [install an extension](https://chrome.google.com/webstore/detail/windows-10-accounts/ppnbnpeolgkicgegkbkbjmhlideopiji?utm_source=chrome-app-launcher-info-dialog) so those users can get the same smooth sign-in experience as Edge/IE. Also, if your organization has domain joined Windows 7 devices, you can install Microsoft Workplace Join for non-Windows 10 computers [package to register](https://www.microsoft.com/download/details.aspx?id=53554) the devices with Azure AD.

### iOS devices
We recommend installing the [Microsoft Authenticator app](https://docs.microsoft.com/azure/multi-factor-authentication/end-user/microsoft-authenticator-app-how-to) on user devices before deploying conditional access or MFA policies. At a minimum, the app should be installed when users are [asked to register their device](https://docs.microsoft.com/azure/multi-factor-authentication/end-user/multi-factor-authentication-end-user-first-time) with Azure AD by adding a work or school account or when they install the Intune company portal app to enroll their device into management. This depends on the configured conditional access policy.

### Android devices
We recommend users install the [Intune Company Portal app](https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal&hl=en
) and [Microsoft Authenticator app](https://docs.microsoft.com/azure/multi-factor-authentication/end-user/microsoft-authenticator-app-how-to) before conditional access policies are deployed or when required during certain authentication attempts. After app installation, users may be asked to register with Azure AD or enroll their device with Intune. This depends on the configured conditional access policy.

We also recommend that corporate-owned devices (COD) are standardized on OEMs and versions that support Android for Work or Samsung Knox to allow mail accounts to be managed and protected by Intune MDM policy.

## Security guidelines
This section contains general security guidelines that should be followed when implementing any of the recommendations provided in later sections.

### Security and productivity trade-offs
There is a trade-off to be made between security and productivity. To help understand these trade-offs, the Security-Functionality-Usability/Ease of Use (SFU) security triad is widely used:

![Security and productivity trade-offs](./media/policies-configurations/security-triad.png)

The recommendations are have provided are based on the following SFU security triad principles:

* Know the audience - Be flexible by job function/security bar
* Apply security policy just in time and ensure it is meaningful

### Administrators versus users
We recommend creating security groups that contain all the users who have administrative accounts or are eligible to receive an administrative account privileges on a temporary basis. These security groups should then be used to define conditional access policies specific to Azure AD and Office 365 administrators.  

The provided policy recommendations consider the privileges associated with an account. [Office 365 administrator](https://support.office.com/article/About-Office-365-admin-roles-da585eea-f576-4f55-a1e0-87090b6aaa9d) roles have substantially more privileges to Office 365 services. Thus, our policy recommendations for these accounts are more stringent than for regular user accounts. All the policies that refer to Administrators indicate the recommended policy for Office 365 administrative accounts.

### Reduce the number of accounts with persistent admin access
Use Azure AD Privileged Identity Management to reduce the number of persistent administrative accounts. In addition, we recommend that Office 365 administrators have a separate user account for regular non-administrative use and only use their administrative account when necessary to complete a task associated with their job function.

> [!NOTE] 
> For more information on securing privileged accounts in Azure AD, refer to this [article](https://docs.microsoft.com/en-us/azure/active-directory/admin-roles-best-practices) on best practices and a roadmap to implement it.

## Tiers of security and protection
Most organizations have specific requirements regarding security and data protection. These requirements vary by industry segment and by job functions within organizations. For example, your legal department and Office 365 administrators might require additional security and information protection controls around their email correspondence that are not required for other business unit users.

Each industry also has their own set of specialized regulations. Rather than providing a list of all possible security options or a recommendation per industry segment or job function, recommendations have been provided for three different tiers of security and protection that can be applied based on the granularity of your needs: [baseline, sensitive, and highly regulated](https://go.microsoft.com/fwlink/p/?linkid=841656).  

**Baseline**. We recommend that you establish a minimum standard for protecting data, as well as the identities and devices that access your data. Baseline recommendations can be followed to provide strong default protection that meets the needs of many organizations.

**Sensitive**. Some customers have a subset of data that must be protected at higher levels or require all data to be protected at these higher levels. You can apply increased protection to all or specific data sets in your Office 365 environment. We recommend protecting identities and devices that access sensitive data with comparable levels of security.

**Highly regulated**. Some organizations may have a very small amount of data that is highly classified, trade secret, or regulated data. Microsoft provides capabilities to help organizations meet these requirements, including added protection for identities and devices.

### Default protection mechanism recommendations
The following table contains default protection mechanism recommendations for each of the previously defined security and protection tiers:

|Protection mechanism|Baseline|Sensitive|Highly regulated|
|:-------------------|:-------|:--------|:---------------|
|**Enforce MFA**|On medium or above sign-in risk|On low or above sign-in risk|On all new sessions|
|**Enforce Password Change**|For high risk users|For high risk users|For high risk users|
|**Enforce Intune Application Protection**|Yes|Yes|Yes|
|**Enforce Intune Enrollment (COD)**|Require a compliant or domain joined device|Require a compliant or domain joined device|Require a compliant or domain joined device|

### Device ownership
The above table reflects the trend for many organizations to support a mix of corporate-owned devices (COD) as well as personal or bring-your-own devices (BYOD) to enable mobile productivity across their workforces. Intune App Protection Policies ensure that email is protected from exfiltrating out of the Outlook mobile app and other Office mobile apps, on both COD and BYOD.  

Corporate-owned devices are required to be managed by Intune or domain-joined to apply additional protections and control.  Depending on data sensitivity, your organization may choose to not allow BYOD for specific user populations or specific apps.--->

## Next steps

 [Deploy common identity and device access policies](identity-access-policies.md)
