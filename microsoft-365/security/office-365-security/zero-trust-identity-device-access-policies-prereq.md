---
title: Prerequisite work for implementing Zero Trust identity and device access policies
description: This article describes the prerequisites you need to meet to use Zero Trust identity and device access policies and configurations.
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.service: microsoft-365-zero-trust
ms.topic: conceptual
audience: Admin
f1.keywords: 
  - NOCSH
ms.reviewer: martincoetzer
ms.custom: 
  - it-pro
  - goldenconfig
ms.collection: 
  - M365-identity-device-management
  - m365-security
  - m365solution-identitydevice
  - m365solution-scenario
  - zerotrust-solution
  - tier2
search.appverid: met150
ms.date: 07/24/2023
---

# Prerequisite work for implementing Zero Trust identity and device access policies

This article describes the prerequisites admins must meet to use recommended Zero Trust identity and device access policies, and to use Conditional Access. It also discusses the recommended defaults for configuring client platforms for the best single sign-on (SSO) experience.

## Prerequisites

Before using the Zero Trust identity and device access policies that are recommended, your organization needs to meet prerequisites. The requirements are different for the various identity and authentication models listed:

- Cloud-only
- Hybrid with password hash sync (PHS) authentication
- Hybrid with pass-through authentication (PTA)
- Federated

The following table details the prerequisite features and their configuration that apply to all identity models, except where noted.

|Configuration|Exceptions|Licensing|
|---|:---:|---|
|[Configure PHS](/entra/identity/hybrid/connect/how-to-connect-password-hash-synchronization). This feature must be enabled to detect leaked credentials and to act on them for risk-based Conditional Access. **Note:** This is required regardless of whether your organization uses federated authentication.|Cloud-only|Microsoft 365 E3 or E5|
|[Enable seamless single sign-on](/entra/identity/hybrid/connect/how-to-connect-sso) to automatically sign users in when they are on their organization devices connected to your organization network.|Cloud-only and federated|Microsoft 365 E3 or E5|
|[Configure named locations](/entra/identity/conditional-access/location-condition#named-locations). Microsoft Entra ID Protection collects and analyzes all available session data to generate a risk score. We recommend you specify your organization's public IP ranges for your network in the Microsoft Entra ID named locations configuration. Traffic coming from these ranges is given a reduced risk score, and traffic from outside the organization environment is given a higher risk score.||Microsoft 365 E3 or E5|
|[Register all users for self-service password reset (SSPR) and multifactor authentication (MFA)](/entra/identity/authentication/concept-registration-mfa-sspr-combined). We recommend you register users for Microsoft Entra multifactor authentication ahead of time. Microsoft Entra ID Protection makes use of Microsoft Entra multifactor authentication to perform additional security verification. Additionally, for the best sign-in experience, we recommend users install the [Microsoft Authenticator app](https://support.microsoft.com/account-billing/351498fc-850a-45da-b7b6-27e523b8702a) and the Microsoft Company Portal app on their devices. These can be installed from the app store for each platform.||Microsoft 365 E3 or E5|
|[Plan your Microsoft Entra hybrid join implementation](/entra/identity/devices/hybrid-join-plan). Conditional Access will make sure devices connecting to apps are domain-joined or compliant. To support this on Windows computers, the device must be registered with Microsoft Entra ID.  This article discusses how to configure automatic device registration.|Cloud-only|Microsoft 365 E3 or E5|
|**Prepare your support team**. Have a plan in place for users that cannot complete MFA. This could be adding them to a policy exclusion group, or registering new MFA information for them. Before making either of these security-sensitive changes, you need to ensure that the actual user is making the request. Requiring users' managers to help with the approval is an effective step.||Microsoft 365 E3 or E5|
|[Configure password writeback to on-premises AD](/entra/identity/authentication/tutorial-enable-sspr). Password writeback allows Microsoft Entra ID to require that users change their on-premises passwords when a high-risk account compromise is detected. You can enable this feature using Microsoft Entra Connect in one of two ways: either enable **Password Writeback** in the optional features screen of Microsoft Entra Connect setup, or enable it via Windows PowerShell.|Cloud-only|Microsoft 365 E3 or E5|
|[Configure Microsoft Entra password protection](/entra/identity/authentication/concept-password-ban-bad). Microsoft Entra Password Protection detects and blocks known weak passwords and their variants, and can also block additional weak terms that are specific to your organization. Default global banned password lists are automatically applied to all users in a Microsoft Entra tenant. You can define additional entries in a custom banned password list. When users change or reset their passwords, these banned password lists are checked to enforce the use of strong passwords.||Microsoft 365 E3 or E5|
|[Enable Microsoft Entra ID Protection](/entra/id-protection/overview-identity-protection). Microsoft Entra ID Protection enables you to detect potential vulnerabilities affecting your organization's identities and configure an automated remediation policy to low, medium, and high sign-in risk and user risk.||Microsoft 365 E5 or Microsoft 365 E3 with the E5 Security add-on|
|**Enable modern authentication** for [Exchange Online](/Exchange/clients-and-mobile-in-exchange-online/enable-or-disable-modern-authentication-in-exchange-online) and for [Skype for Business Online](https://social.technet.microsoft.com/wiki/contents/articles/34339.skype-for-business-online-enable-your-tenant-for-modern-authentication.aspx). Modern authentication is a prerequisite for using MFA. Modern authentication is enabled by default for Office 2016 and 2019 clients, SharePoint, and OneDrive for Business.||Microsoft 365 E3 or E5|
|[Enable continuous access evaluation](/entra/identity/conditional-access/concept-continuous-access-evaluation) for Microsoft Entra ID. Continuous access evaluation proactively terminates active user sessions and enforces tenant policy changes in near real-time.||Microsoft 365 E3 or E5|

## Recommended client configurations

This section describes the default platform client configurations that we recommend to provide the best SSO experience to your users, as well as the technical prerequisites for Conditional Access.

### Windows devices

We recommend Windows 11 or Windows 10 (version 2004 or later), as Azure is designed to provide the smoothest SSO experience possible for both on-premises and Microsoft Entra ID. Work or school-issued devices should be configured to join Microsoft Entra ID directly or if the organization uses on-premises AD domain join, those devices should be [configured to automatically and silently register with Microsoft Entra ID](/entra/identity/devices/hybrid-join-plan).

For BYOD Windows devices, users can use **Add work or school account**. Note that users of the Google Chrome browser on Windows 11 or Windows 10 devices need to [install an extension](https://chrome.google.com/webstore/detail/windows-10-accounts/ppnbnpeolgkicgegkbkbjmhlideopiji?utm_source=chrome-app-launcher-info-dialog) to get the same smooth sign-in experience as Microsoft Edge users. Also, if your organization has domain-joined Windows 8 or 8.1 devices, you can install Microsoft Workplace Join for non-Windows 10 computers. [Download the package to register](https://www.microsoft.com/download/details.aspx?id=53554) the devices with Microsoft Entra ID.

### iOS devices

We recommend installing the [Microsoft Authenticator app](https://support.microsoft.com/account-billing/351498fc-850a-45da-b7b6-27e523b8702a) on user devices before deploying Conditional Access or MFA policies. At a minimum, the app should be installed when users are asked to register their device with Microsoft Entra ID by adding a work or school account, or when they install the Intune company portal app to enroll their device into management. This depends on the configured Conditional Access policy.

### Android devices

We recommend users install the [Intune Company Portal app](https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal&hl=en) and [Microsoft Authenticator app](https://support.microsoft.com/account-billing/351498fc-850a-45da-b7b6-27e523b8702a) before Conditional Access policies are deployed or when required during certain authentication attempts. After app installation, users may be asked to register with Microsoft Entra ID or enroll their device with Intune. This depends on the configured Conditional Access policy.

We also recommend that organization-owned devices are standardized on OEMs and versions that support Android for Work or Samsung Knox to allow mail accounts, be managed and protected by Intune MDM policy.

### Recommended email clients

The following email clients support modern authentication and Conditional Access.

|Platform|Client|Version/Notes|
|---|---|---|
|**Windows**|Outlook|2019, 2016<p>[Required updates](https://support.office.com/article/Outlook-Updates-472c2322-23a4-4014-8f02-bbc09ad62213)|
|**iOS**|Outlook for iOS|[Latest](https://itunes.apple.com/us/app/microsoft-outlook-email-and-calendar/id951937596?mt=8)|
|**Android**|Outlook for Android|[Latest](https://play.google.com/store/apps/details?id=com.microsoft.office.outlook&hl=en)|
|**macOS**|Outlook|2019 and 2016|
|**Linux**|Not supported||

### Recommended client platforms when securing documents

The following clients are recommended when a secure documents policy has been applied.

|Platform|Word/Excel/PowerPoint|OneNote|OneDrive App|SharePoint App|[OneDrive sync client](/onedrive/enable-conditional-access)|
|---|---|---|---|---|---|
|Windows 11 or Windows 10|Supported|Supported|N/A|N/A|Supported|
|Windows 8.1|Supported|Supported|N/A|N/A|Supported|
|Android|Supported|Supported|Supported|Supported|N/A|
|iOS|Supported|Supported|Supported|Supported|N/A|
|macOS|Supported|Supported|N/A|N/A|Not supported|
|Linux|Not supported|Not supported|Not supported|Not supported|Not supported|

### Microsoft 365 client support

For more information about client support in Microsoft 365, see the following articles:

- [Microsoft 365 Client App Support - Conditional Access](/microsoft-365/enterprise/microsoft-365-client-support-conditional-access)
- [Microsoft 365 Client App Support - multifactor authentication](/microsoft-365/enterprise/microsoft-365-client-support-multi-factor-authentication)

## Protecting administrator accounts

For Microsoft 365 E3 or E5 or with separate Microsoft Entra ID P1 or P2 licenses, you can require MFA for administrator accounts with a manually created Conditional Access policy. See [Conditional Access: Require MFA for administrators](/entra/identity/conditional-access/howto-conditional-access-policy-admin-mfa) for the details.

For editions of Microsoft 365 or Office 365 that do not support Conditional Access, you can enable [security defaults](/entra/fundamentals/security-defaults) to require MFA for all accounts.

Here are some additional recommendations:

- Use [Microsoft Entra Privileged Identity Management](/entra/id-governance/privileged-identity-management/pim-getting-started) to reduce the number of persistent administrative accounts.
- [Use privileged access management](/purview/privileged-access-management) to protect your organization from breaches that may use existing privileged admin accounts with standing access to sensitive data or access to critical configuration settings.
- Create and use separate accounts that are assigned [Microsoft 365 administrator roles](/microsoft-365/admin/add-users/about-admin-roles) *only for administration*. Admins should have their own user account for regular non-administrative use and only use an administrative account when necessary to complete a task associated with their role or job function.
- Follow [best practices](/entra/identity/role-based-access-control/best-practices) for securing privileged accounts in Microsoft Entra ID.

## Next step

[![Step 2: Configure the common Zero Trust identity and access Conditional Access policies.](../../media/microsoft-365-policies-configurations/identity-device-access-steps-next-step-2.png#lightbox)](zero-trust-identity-device-access-policies-common.md)

[Configure the common Zero Trust identity and device access policies](zero-trust-identity-device-access-policies-common.md)
