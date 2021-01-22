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

INTRODUCTION?

## Client support

### Certificate-based authentication

[Certificate-based authentication (CBA)](microsoft-365-client-support-certificate-based-authentication.md) is the use of a digital certificate to identify a user, machine, or device before granting access to a resource, network, application, etc. In the case of user authentication, it is often deployed in coordination with traditional methods such as username and password.

One differentiator of certificate-based authentication is that unlike some solutions that only work for users, such as biometrics and one time passwords (OTP), the same solution can be used for all endpoints – users, machine, devices, and even the growing Internet of Things (IoT).

### Conditional access

[Conditional access](microsoft-365-client-support-conditional-access.md) is the tool used by Azure Active Directory to bring signals together, to make decisions, and enforce organizational policies. Conditional Access is at the heart of the new identity driven control plane.

Conditional Access policies at their simplest are if-then statements, if a user wants to access a resource, then they must complete an action. 
Common signals that Conditional Access can take in to account when making a policy decision include the following signals:

- User or group membership
- IP Location information
- Device
- Application
- Real-time and calculated risk detection
- Microsoft Cloud App Security (MCAS)

Common decisions:

- Block access
    - Most restrictive decision
- Grant access
    - Least restrictive decision, can still require one or more of the following options:
        - Require multi-factor authentication
        - Require device to be marked as compliant
        - Require Hybrid Azure AD joined device
        - Require approved client app
        - Require app protection policy (preview)


### Mobile application management

End users often access both corporate and personal documents, email, and data from the same device. Those devices are often personally owned. When an end user accesses corporate data, the administrator must be confident that corporate policies, such as configuration policies and protection policies, will be applied to help protect corporate data on the device. The end user's personal content on the device will remain outside of IT's control.

For corporate-managed content, the administrator can apply application management policies to control how data is accessed, shared, and used. For example, the administrator can accomplish the following:

- Remote wipe the managed corporate content (also referred to org data)
- Prevent pasting corporate content into non-corporate locations
- Require a PIN to access corporate content
- Prevent managed apps from running on jailbroken or rooted devices
- Prevent corporate content from being saved to unapproved cloud storage providers
- Prevent unapproved content from being transferred into managed applications
- Allow access to corporate content only after policies have been applied
- Deliver application configuration to manage the application's behavior and settings

Restrict the managed application to a defined identity by disabling multi-identity capabilities or personal usage

### Multi-factor authentication

[Multi-factor authentication (MFA)](microsoft-365-client-support-modern-authentication.md) is a method of computer access control in which a user is granted access only after successfully presenting several separate pieces of evidence to an authentication mechanism – typically at least two of the following categories: knowledge (something they know), possession (something they have), and inherence (something they are).

### Single sign-on

[Single sign-on (SSO)](microsoft-365-client-support-single-sign-on.md) adds security and convenience when your users sign-on to applications in Azure Active Directory. With single sign-on, users sign in once with one account to access on-premises Active Directory Domain Services (AD DS) domain-joined devices, software as a service (SaaS) applications, and web applications.

## Services support

### Modern authentication

Modern Authentication enables new scenarios for customers to authenticate against Office 365 and for tenant admins to enforce specific authentication requirements across the Office 365 tenancy, such as:

- Multi-Factor Authentication (MFA) support for administrative interaction with the tenancy and services, and end-user interaction with applications and their data
- Conditional Access
- SAML-based third-party identity provider sign-in
- Smartcard log on on PC
- Certificate-Based Authentication on mobile devices
- No longer require the transmission of credentials over basic authentication.

Evolved Security Token Service (evoSTS, eSTS) simplifies the architecture and partner story for AAD combining STS providers (OrgID, ACS) and multiple Principal and Key stores (Webstore(OrgID), SQL Azure(ACS), MSODS).

### Azure Active Directory conditional access

Azure Active Directory (Azure AD) Conditional Access (CA) rules allow customers to control access to online services, based on attributes such as device compliance or network location. The following may be distinguished:

- Azure AD MFA-based conditional access
- Azure AD Location-based conditional access
- Azure AD Device-based conditional access

Azure AD CA rules are applied per-application and are available for customers to control access based on different conditions. Using Mobile Device Management (MDM) for Office 365   or Intune, customers must be able to restrict access to Office 365 to only those users who are using a company device or who have enrolled their personal device for management. For example, customers may configure conditional access rules to enforce controls such as:

- Only allow access from devices that are domain joined or compliant
- Enforce MFA for all access to Exchange Online services

### TLS 1.2 support

To provide the best-in-class encryption to our customers, Microsoft plans to deprecate Transport Layer Security (TLS) versions 1.0 and 1.1 in Office 365 and Office 365 GCC. We understand that the security of your data is important, and we're committed to transparency about changes that may affect your use of the TLS service.
The Microsoft TLS 1.0 implementation has no known security vulnerabilities. But because of the potential for future protocol downgrade attacks and other TLS vulnerabilities, we are discontinuing support for TLS 1.0 and 1.1 in Microsoft Office 365 and Office 365 GCC.

For information about how to remove TLS 1.0 and 1.1 dependencies, see the following white paper: Solving the TLS 1.0 problem.
