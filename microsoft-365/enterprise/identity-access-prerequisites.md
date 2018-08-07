---
title: Prerequisite work for implementing identity and device access policies - Microsoft 365 Enterprise | Microsoft Docs
description: Describes the policies for Microsoft recommendations about how to apply identity and device access policies and configurations.
author: BrendaCarter
manager: Laurawi
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 
ms.author: bcarter
ms.reviewer: martincoetzer
ms.custom: it-pro
---

# Prerequisite work for implementing identity and device access policies

This article describes prerequisites that are necessary to implement before you can deploy the recommended identity and device access policies. This article also discusses the default platform client configurations we recommend to provide the best SSO experience to your users, as well as the technical pre-requisites for conditional access.


## Prerequisites

Before implementing the recommended identity and device access policies, there are several prerequisites that your organization must meet. See the following table for the prerequisites that apply to your environment. 


| Configuration | Cloud only | Active Directory with password hash sync |  Federation with AD FS |
| :------------- | :-----------: | :--------------: | :------------: |
|  [Configure Password Hash Sync](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnectsync-implement-password-synchronization). This must be enabled to detect leaked credentials and to act on them for risk based Conditional Access. **Note:** This is required, regardless of whether your organization use managed, like Pass Through Authentication (PTA), or federated authentication. |    | Yes | Yes |
| [Enable seamless single sign-on](https://docs.microsoft.com/en-us/azure/active-directory/connect/active-directory-aadconnect-sso) to automatically sign users in when they are on their corporate devices connected to your corporate network. |  | Yes |  |
| [Configure named networks](https://docs.microsoft.com/azure/active-directory/active-directory-known-networks-azure-portal). Azure AD Identity Protection collects and analyzes all available session data to generate a risk score. We recommend that you specify your organization's public IP ranges for your network in the Azure AD named networks configuration. Traffic coming from these ranges is given a reduced risk score, so traffic from outside the corporate environment is treated as higher risk score. | Yes  | Yes | Yes |
| [Register all users with multi-factor authentication (MFA)](https://docs.microsoft.com/azure/multi-factor-authentication/multi-factor-authentication-manage-users-and-devices). Azure AD Identity Protection makes use of Azure MFA to perform additional security verification. We recommend that you require all users to register for Azure MFA ahead of time. | Yes | Yes | Yes |
| [Enable automatic device registration of domain joined Windows computers](https://docs.microsoft.com/azure/active-directory/active-directory-conditional-access-automatic-device-registration-setup). Conditional access can ensure the device connecting to the service is a domain joined or compliant device. To support this on Windows computers, the device must be registered with Azure AD.  This article discusses how to configure automatic device registration. |   | Yes |  Yes |
| **Prepare your support team**. Have a plan in place for users that cannot complete MFA. This can be adding them to a policy exclusion group, or registering new MFA info for them. Before making either of these security sensitive changes, you need to ensure the actual user is making the request. Requiring users' managers to help with the approval is an effective step. | Yes | Yes | Yes |
| [Configure password writeback to on-premises AD](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-getting-started). Password Writeback allows Azure AD to require that users change their on-premises passwords when there has been a high risk of account compromise detected. You can enable this feature using Azure AD Connect in one of two ways. You can either enable Password Writeback in the optional features screen of the Azure AD Connect setup wizard, or you can enable it via Windows PowerShell. |   | Yes | Yes |
| **Enable modern authentication** for [Exchange Online](https://support.office.com/article/Enable-or-disable-modern-authentication-in-Exchange-Online-58018196-f918-49cd-8238-56f57f38d662) and for [Skype for Business Online](https://social.technet.microsoft.com/wiki/contents/articles/34339.skype-for-business-online-enable-your-tenant-for-modern-authentication.aspx). Modern authentication is a prerequisite for using multi-factor authentication (MFA). Modern authentication is enabled by default for Office 2016 clients, SharePoint Online, and OneDrive for Business. | Yes | Yes | Yes |
|||||



## Recommended client configurations
This section describes the default platform client configurations we recommend to provide the best SSO experience to your users, as well as the technical pre-requisites for conditional access.

### Windows devices
We recommend the Windows 10 (version 1703 or later), as Azure is designed to provide the smoothest SSO experience possible for both on-premises and Azure AD. Work or school issued devices should be configured to join Azure AD directly or if the organization uses on-premises AD domain join, those devices should be [configured to automatically and silently register with Azure AD](https://docs.microsoft.com/azure/active-directory/active-directory-conditional-access-automatic-device-registration-setup).

For BYOD Windows devices, users can use "Add work or school account". Note that Chrome browser users on Windows 10 need to [install an extension](https://chrome.google.com/webstore/detail/windows-10-accounts/ppnbnpeolgkicgegkbkbjmhlideopiji?utm_source=chrome-app-launcher-info-dialog) so those users can get the same smooth sign-in experience as Edge/IE. Also, if your organization has domain joined Windows 7 devices, you can install Microsoft Workplace Join for non-Windows 10 computers [package to register](https://www.microsoft.com/download/details.aspx?id=53554) the devices with Azure AD.

### iOS devices
We recommend installing the [Microsoft Authenticator app](https://docs.microsoft.com/azure/multi-factor-authentication/end-user/microsoft-authenticator-app-how-to) on user devices before deploying conditional access or MFA policies. At a minimum, the app should be installed when users are asked to register their device  with Azure AD by adding a work or school account or when they install the Intune company portal app to enroll their device into management. This depends on the configured conditional access policy.

### Android devices
We recommend users install the [Intune Company Portal app](https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal&hl=en
) and [Microsoft Authenticator app](https://docs.microsoft.com/azure/multi-factor-authentication/end-user/microsoft-authenticator-app-how-to) before conditional access policies are deployed or when required during certain authentication attempts. After app installation, users may be asked to register with Azure AD or enroll their device with Intune. This depends on the configured conditional access policy.

We also recommend that corporate-owned devices (COD) are standardized on OEMs and versions that support Android for Work or Samsung Knox to allow mail accounts to be managed and protected by Intune MDM policy.


### Recommended email clients
The following email clients support Modern Authentication and Conditional Access. 

|Platform|Client|Version/Notes|
|:-------|:-----|:------------|
|**Windows**|Outlook|2016, 2013 [Enable Modern Auth](https://support.office.com/article/Enable-Modern-Authentication-for-Office-2013-on-Windows-devices-7dc1c01a-090f-4971-9677-f1b192d6c910), [Required updates](https://support.office.com/article/Outlook-Updates-472c2322-23a4-4014-8f02-bbc09ad62213)|
|**iOS**|Outlook for iOS|[Latest](https://itunes.apple.com/us/app/microsoft-outlook-email-and-calendar/id951937596?mt=8)|
|**Android**|Outlook for Android|[Latest](https://play.google.com/store/apps/details?id=com.microsoft.office.outlook&hl=en)|
|**macOS**|Outlook|2016|
|**Linux**|Not supported||
|||


### Recommended client platforms when securing documents
The following clients are recommended when a Secure Documents policy has been applied.

|Platform|Word/Excel/PowerPoint|OneNote|OneDrive App|SharePoint App|OneDrive Sync Client|
|:-------|:-----|:------------|:-------|:-------------|:-----|
|Windows 7|Supported|Supported|N/A|N/A|Preview<sup>*</sup>|
|Windows 8.1|Supported|Supported|N/A|N/A|Preview<sup>*</sup>|
|Windows 10|Supported|Supported|N/A|N/A|Preview<sup>*</sup>|
|Windows Phone 10|Not supported|Not supported|Not Supported|Not Supported|Not Supported|
|Android|Supported|Supported|Supported|Supported|N/A|
|iOS|Supported|Supported|Supported|Supported|N/A|
|macOS|Public Preview|Public Preview|N/A|N/A|Not supported|
|Linux|Not supported|Not supported|Not supported|Not supported|Not supported|

<sup>*</sup> Learn more about using conditional access with the [OneDrive Sync Client](https://support.office.com/article/Azure-Active-Directory-conditional-access-with-the-OneDrive-sync-client-on-Windows-028d73d7-4b86-4ee0-8fb7-9a209434b04e).



## Protecting administrator accounts
Azure Active Directory provides a simple way for you to begin protecting administrator access with a pre-configured conditional access policy. Within Azure AD, go to the Conditional access blade and look for this policy — **Baseline policy: Require MFA for admins**. Click on this policy and select **Use policy immediately**. 

This policy requires MFA for the following roles:
- Global administrators
- SharePoint administrators
- Exchange administrators
- Conditional access administrators
- Security administrators

For more information, see [Baseline security policy for Azure AD admin accounts](https://cloudblogs.microsoft.com/enterprisemobility/2018/06/22/baseline-security-policy-for-azure-ad-admin-accounts-in-public-preview/).

Additional recommendations include the following:
- Use Azure AD Privileged Identity Management to reduce the number of persistent administrative accounts.
- Use Office 365 administrator accounts only for administration. Admins should have a separate user account for regular non-administrative use and only use their administrative account when necessary to complete a task associated with their job function. [Office 365 administrator](https://support.office.com/article/About-Office-365-admin-roles-da585eea-f576-4f55-a1e0-87090b6aaa9d) roles have substantially more privileges to Office 365 services.
- Follow best practices for securing privileged accounts in Azure AD as described in this [article](https://docs.microsoft.com/en-us/azure/active-directory/admin-roles-best-practices).

## Next steps

[Configure the common identity and device access policies](identity-access-policies.md)

