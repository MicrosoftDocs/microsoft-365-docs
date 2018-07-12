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
| **Block apps that don't support modern authentication**. [EDITORIAL NOTE: this is a policy we're recommending, so I'll move it out of this prereq table and into the common policies article] Apps that do not support modern authentication cannot be blocked by using conditional access rules. You can disable authentication for these legacy apps by using a setting in Azure AD conditional access rules: [Require approved client app](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-conditional-access-technical-reference#approved-client-app-requirement) (currently in preview). In the meantime, use one of the following methods to accomplish this. For AD FS environments, [setup AD FS claims rules](https://docs.microsoft.com/en-us/intune-classic/deploy-use/block-apps-with-no-modern-authentication). For SharePoint Online and OneDrive for Business, [use PowerShell](https://docs.microsoft.com/en-us/intune-classic/deploy-use/block-apps-with-no-modern-authentication). Or configure this in the SharePoint admin center on the "device access" page: "Control access from apps that don't use modern authentication." Choose Block.  | Yes | Yes | Yes |
| [Enable Azure Information Protection](https://docs.microsoft.com/information-protection/get-started/infoprotect-tutorial-step1) by activating Rights Management. Use Azure Information Protection with email to start with classification of emails. Follow the quick start tutorial to customize and publish policy. [EDITORIAL NOTE: this guidance doesn't include config of this, so I propose we remove this item] | Yes | Yes | Yes |


<!---Before implementing the policies described in the remainder of this document, there are several prerequisites that your organization must meet:
* [Configure Password Hash Sync](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnectsync-implement-password-synchronization). This must be enabled to detect leaked credentials and to act on them for risk based Conditional Access. **Note:** This is required, regardless of whether your organization use managed, like Pass Through Authentication (PTA), or federated authentication.
* [Configure named networks](https://docs.microsoft.com/azure/active-directory/active-directory-known-networks-azure-portal). Azure AD Identity Protection collects and analyzes all available session data to generate a risk score. We recommend that you specify your organization's public IP ranges for your network in the Azure AD named networks configuration. Traffic coming from these ranges is given a reduced risk score, so traffic from outside the corporate environment is treated as higher risk score.
* [Register all users with multi-factor authentication (MFA)](https://docs.microsoft.com/azure/multi-factor-authentication/multi-factor-authentication-manage-users-and-devices). Azure AD Identity Protection makes use of Azure MFA to perform additional security verification. We recommend that you require all users to register for Azure MFA ahead of time.
* [Enable automatic device registration of domain joined Windows computers](https://docs.microsoft.com/azure/active-directory/active-directory-conditional-access-automatic-device-registration-setup). Conditional access can ensure the device connecting to the service is a domain joined or compliant device. To support this on Windows computers, the device must be registered with Azure AD.  This article discusses how to configure automatic device registration.
* **Prepare your support team**. Have a plan in place for users that cannot complete MFA. This can be adding them to a policy exclusion group, or registering new MFA info for them. Before making either of these security sensitive changes, you need to ensure the actual user is making the request. Requiring users' managers to help with the approval is an effective step.
* [Configure password writeback to on-premises AD](https://docs.microsoft.com/azure/active-directory/active-directory-passwords-getting-started). Password Writeback allows Azure AD to require that users change their on-premises passwords when there has been a high risk of account compromise detected. You can enable this feature using Azure AD Connect in one of two ways. You can either enable Password Writeback in the optional features screen of the Azure AD Connect setup wizard, or you can enable it via Windows PowerShell.  
* [Enable modern authentication](https://support.office.com/article/Enable-or-disable-modern-authentication-in-Exchange-Online-58018196-f918-49cd-8238-56f57f38d662) and [protect legacy endpoints](https://docs.microsoft.com/azure/active-directory/active-directory-conditional-access-supported-apps).  Conditional access works both with mobile and desktop applications that use modern authentication. If the application uses legacy authentication protocols, it may gain access despite the conditions being applied. It is important to know which applications can use conditional access rules and the steps that you need to take to secure other application entry points.
* [Enable Azure Information Protection](https://docs.microsoft.com/information-protection/get-started/infoprotect-tutorial-step1) by activating Rights Management. Use Azure Information Protection with email to start with classification of emails. Follow the quick start tutorial to customize and publish policy.  --->


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


### Recommended email clients
[DOES THIS TABLE NEED TO BE UPDATED?]The following email clients support Modern Authentication and Conditional Access. Azure Information Protection is not yet available for all clients.

|Platform|Client|Version/Notes|Azure Information Protection|
|:-------|:-----|:------------|:--------------------|
|**Windows**|Outlook|2016, 2013 [Enable Modern Auth](https://support.office.com/article/Enable-Modern-Authentication-for-Office-2013-on-Windows-devices-7dc1c01a-090f-4971-9677-f1b192d6c910), [Required updates](https://support.office.com/article/Outlook-Updates-472c2322-23a4-4014-8f02-bbc09ad62213)|Yes|
|**iOS**|Outlook|[Latest](https://itunes.apple.com/us/app/microsoft-outlook-email-and-calendar/id951937596?mt=8)|No|
|**Android**|Outlook|[Latest](https://play.google.com/store/apps/details?id=com.microsoft.office.outlook&hl=en)|No|
|**macOS**|Outlook|2016|No|
|**Linux**|Not supported||No|

In order to access Azure Information Protection protected documents additional software may be required. Be sure that you are using [supported software and document formats](https://docs.microsoft.com/information-protection/get-started/requirements-applications) to create and view protected documents with Azure Information Protection.


### Recommended client platforms when securing documents
[THIS TABLE NEEDS TO BE UPDATED?] The following clients are recommended when a Secure Documents policy has been applied.

|Platform|Word/Excel/PowerPoint|OneNote|OneDrive App|SharePoint App|OneDrive Sync Client|
|:-------|:-----|:------------|:-------|:-------------|:-----|
|Windows 7|Supported|Supported|N/A|N/A|Preview<sup>*</sup>|
|Windows 8.1|Supported|Supported|N/A|N/A|Preview<sup>*</sup>|
|Windows 10|Supported|Supported|N/A|N/A|Preview<sup>*</sup>|
|Windows Phone 10|Not supported|Not supported|Supported|Supported|N/A|
|Android|Supported|Supported|Supported|Supported|N/A|
|iOS|Supported|Supported|Supported|Supported|N/A|
|macOS|Public Preview|Public Preview|N/A|N/A|Not supported|
|Linux|Not supported|Not supported|Not supported|Not supported|Not supported|

<sup>*</sup> Learn more about the [OneDrive Sync Client Preview](https://support.office.com/article/Azure-Active-Directory-conditional-access-with-the-OneDrive-sync-client-on-Windows-028d73d7-4b86-4ee0-8fb7-9a209434b04e).



## Protecting administrator accounts
We recommend creating security groups that contain all the users who have administrative accounts or are eligible to receive an administrative account privileges on a temporary basis. These security groups should then be used to define conditional access policies specific to Azure AD and Office 365 administrators.  

The provided policy recommendations consider the privileges associated with an account. [Office 365 administrator](https://support.office.com/article/About-Office-365-admin-roles-da585eea-f576-4f55-a1e0-87090b6aaa9d) roles have substantially more privileges to Office 365 services. Thus, our policy recommendations for these accounts are more stringent than for regular user accounts. All the policies that refer to Administrators indicate the recommended policy for Office 365 administrative accounts.

Use Azure AD Privileged Identity Management to reduce the number of persistent administrative accounts. In addition, we recommend that Office 365 administrators have a separate user account for regular non-administrative use and only use their administrative account when necessary to complete a task associated with their job function.

For more information on securing privileged accounts in Azure AD, refer to this [article](https://docs.microsoft.com/en-us/azure/active-directory/admin-roles-best-practices) on best practices and a roadmap to implement it.

## Next steps

[Learn about policy recommendations for securing email](secure-email-recommended-policies.md)
