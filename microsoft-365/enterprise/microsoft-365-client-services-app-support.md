---
title: "Microsoft 365 client and services app support"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Strat_O365_Enterprise
- M365-subscription-management
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: In this article, find details about Microsoft 365 client and services app support.
---

# Microsoft 365 client and services app support

Microsoft supports a wide range of security, authentication, and compliance features to keep customer data safe and allows IT administrators to customize policies within the Microsoft 365 admin center for their users. The following features are just a subset of the many enterprise features that you can configure depending on your Microsoft 365 subscription.

## Client and service support

### Continuous access evaluation (preview)

Continuous access evaluation is implemented by enabling services, like Exchange Online, SharePoint Online, and Teams, to subscribe to critical events in Azure Active Directory so that those events can be evaluated and enforced near real time. Critical event evaluation does not rely on Conditional Access policies so is available in any tenant.

The following events are currently evaluated:

- A user account is deleted or disabled
- The password for a user is changed or reset
- Multi-factor authentication is enabled for the user
- Administrator explicitly revokes all refresh tokens for a user
- Elevated user risk detected by Azure AD Identity Protection

For more information about continuous access evaluation for client and services app support, see [Continuous access evaluation (preview)](/azure/active-directory/conditional-access/concept-continuous-access-evaluation).

## Client support

### Certificate-based authentication

Certificate-based authentication (CBA) is the use of a digital certificate to identify a user, machine, or device before granting access to a resource, network, application, or service. In user authentication, it is often deployed in coordination with traditional methods such as usernames and passwords.

Some traditional solutions only work for users, such as biometrics and one-time passwords (OTP). With certificate-based authentication, the same solution can be used for all endpoints; users, devices, and the growing Internet of Things (IoT).

For more information about certificate-based authentication for client and services app support, see [Microsoft 365 Client App Support: Certificate-based Authentication](microsoft-365-client-support-certificate-based-authentication.md).

### Conditional Access

Conditional Access is the tool used by Azure Active Directory to bring signals together, to make decisions, and enforce organizational access policies. Conditional Access is at the heart of the new identity-driven control model.

Conditional Access policies are if-then statements for granting access to resources. If a user wants to access a resource, then the user must complete an action. Common signals that Conditional Access can use when making a policy access decision include:

- User or group membership
- IP location information
- Device information
- Application information
- Real-time and calculated risk detection
- Microsoft Cloud App Security (MCAS)

When making these access decisions, the policies can take different actions:

- The policy can block access: This configuration is the most restrictive action and prevents the user from accessing the resource.
- The policy can grant access: This configuration is a less restrictive decision and may still require one or more of the following options:

    - Multi-factor authentication
    - The device to be marked as compliant
    - The device is hybrid Azure AD joined
    - An approved client app
    - App protection policy configured (preview)

For more information about Conditional Access for client and services app support, see:

- [Microsoft 365 Client App Support: Device-based Conditional Access](microsoft-365-client-support-conditional-access.md)

### Mobile application management

Users often access both organization and personal documents, email, and data from the same mobile device. Those devices are often personally owned and should be configured to protect both organization data and the user's personal privacy.

When a user accesses organization data, the organization must be confident that organization policies, such as configuration policies and protection policies, are applied to help protect organization data on the device. Additionally, the user's personal content on the device should remain outside of the organization's control.

For organization-managed content, you can apply application management policies to control how data is accessed, shared, and used by using Microsoft Intune. For example, the following actions are supported:

- Remote wipe the managed organization content (also referred to org data)
- Prevent pasting organization content into non-organization locations
- Require a PIN to access organization content
- Prevent managed apps from running on jailbroken or rooted devices
- Prevent organization content from being saved to unapproved cloud storage providers
- Prevent unapproved content from being transferred into managed applications
- Allow access to organization content only after policies have been applied
- Deliver application configuration to manage the application's behavior and settings
- Restrict the managed application to a defined identity by disabling multi-identity capabilities or personal usage

For more information about mobile application management with Microsoft Intune, see [What is Microsoft Intune app management?](/mem/intune/apps/app-management)

### Multi-factor authentication

[Multi-factor authentication (MFA) is a method of computer access control in which a user is granted access only after successfully presenting several separate pieces of evidence to an authentication mechanism. This method typically uses at least two of the following categories:

- Knowledge (something they know)
- Possession (something they have)
- Inherence (something they are)

For more information about multi-factor authentication for client and services app support, see [Microsoft 365 Client App Support: Multi-factor authentication](microsoft-365-client-support-multi-factor-authentication.md).

### Single sign-on

Single sign-on (SSO) adds security and convenience when your users sign-on to applications in Azure Active Directory. With single sign-on, users sign in once with one account to access on-premises Active Directory Domain Services (AD DS) domain-joined devices, software as a service (SaaS) applications, and web applications in your organization.

For more information about single sign-on for client and services app support, see [Microsoft 365 Client App Support: Single sign-on](microsoft-365-client-support-single-sign-on.md).

## Services support

### Modern authentication

Modern authentication enables new scenarios for customers to authenticate against Office 365 and for tenant admins to enforce specific authentication requirements across the Office 365 tenancy, such as:

- Multi-factor authentication support for administrative interaction with the tenancy and services, and end-user interaction with applications and their data
- Conditional access
- SAML-based third-party identity provider sign-in
- Smartcard log on personal computers
- Certificate-based authentication on mobile devices
- No longer require the transmission of credentials over basic authentication.

For more information about modern authentication services support, see [Authentication vs. authorization](/azure/active-directory/develop/authentication-vs-authorization).

### Azure Active Directory Conditional Access

Azure Active Directory (Azure AD) Conditional Access rules allow customers to control access to online services, based on attributes such as device compliance or network location. The following solutions may be used:

- Azure AD multi-factor authentication-based Conditional Access
- Azure AD location-based Conditional Access
- Azure AD device-based Conditional Access

Azure AD Conditional access rules are applied per-application and are available for customers to control access based on different conditions. Using [Mobile Device Management (MDM) or Intune](/mem/intune/fundamentals/what-is-device-management), customers must be able to restrict access to Microsoft 365 to only those users who are using an organization device or who have enrolled their personal device for management. For example, customers may configure Conditional Access rules to enforce controls such as:

- Only allow access from devices that are domain joined or domain compliant
- Enforce multi-factor authentication for all access to Exchange Online services

For more information about Azure Active Directory Conditional Access, see [What is Conditional Access?](/azure/active-directory/conditional-access/overview)

### TLS 1.2 support

To provide the best-in-class encryption to our customers, Microsoft plans to discontinue support for Transport Layer Security (TLS) versions 1.0 and 1.1 in Office 365 and Office 365 GCC.

We understand that the security of your data is important, and we're committed to transparency about changes that may affect your use of the TLS service. We recommend that all client-server and browser-server combinations use TLS 1.2 (or a later version) to maintain connection to Office 365 services. You might have to update certain client-server and browser-server combinations.

For more information about TLS 1.2 support and services support, see [Preparing for TLS 1.2 in Office 365 and Office 365 GCC](../compliance/prepare-tls-1.2-in-office-365.md).