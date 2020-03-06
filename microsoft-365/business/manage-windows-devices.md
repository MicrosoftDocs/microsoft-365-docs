---
title: "Enable domain-joined Windows 10 devices to be managed by Microsoft 365 Business"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management 
- M365-identity-device-management
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- OKR_SMB_M365
- MARVEL_SEO_MAR
search.appverid:
- BCS160
- MET150
ms.assetid: 9b4de218-f1ad-41fa-a61b-e9e8ac0cf993
description: "Learn how to enable Microsoft 365 to protect local Active-Directory-joined Windows 10 devices in just a few steps."
---

# Enable domain-joined Windows 10 devices to be managed by Microsoft 365 Business

If your organization uses Windows Server Active Directory on-premises, you can set up Microsoft 365 Business to protect your Windows 10 devices, while still maintaining access to on-premises resources that require local authentication.
To set up this protection, you can implement **Hybrid Azure AD joined devices**. These devices are joined to both your on-premises Active Directory and your Azure Active Directory.

This video describes the steps for how to set this up for the most common scenario, which is also detailed in the steps that follow.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE3C9hO]
  

## 1. Prepare for Directory Synchronization 

Before you synchronize your users and computers from the local Active Directory Domain, review [Prepare for directory synchronization to Office 365](https://docs.microsoft.com/office365/enterprise/prepare-for-directory-synchronization). In particular:

   - Make sure that no duplicates exist in your directory for the following attributes: **mail**, **proxyAddresses**, and **userPrincipalName**. These values must be unique and any duplicates must be removed.
   
   - We recommend that you configure the **userPrincipalName** (UPN) attribute for each local user account to match the primary email address that corresponds to the licensed Microsoft 365 user. For example: *mary.shelley@contoso.com* rather than *mary@contoso.local*
   
   - If the Active Directory domain ends in a non-routable suffix like *.local* or *.lan*, instead of an internet routable suffix such as *.com* or *.org*, adjust the UPN suffix of the local user accounts first as described in [Prepare a non-routable domain for directory synchronization](https://docs.microsoft.com/office365/enterprise/prepare-a-non-routable-domain-for-directory-synchronization). 

## 2. Install and configure Azure AD Connect

To synchronize your users, groups, and contacts from the local Active Directory into Azure Active Directory, install Azure Active Directory Connect and set up directory synchronization. See [Set up directory synchronization for Office 365](https://support.office.com/article/1b3b5318-6977-42ed-b5c7-96fa74b08846) to learn more.

> [!NOTE]
> The steps are exactly the same for Microsoft 365 Business. 

As you configure your options for Azure AD Connect, we recommend that you enable **Password Synchronization**, **Seamless Single Sign-On**, and the **password writeback** feature, which is also supported in Microsoft 365 Business.

> [!NOTE]
> There are some additional steps for password writeback beyond the check box in Azure AD Connect. For more information, see [How-to: configure password writeback](https://docs.microsoft.com/azure/active-directory/authentication/howto-sspr-writeback). 

## 3. Configure Hybrid Azure AD Join

Before you enable Windows 10 devices to be Hybrid Azure AD joined, make sure that you meet the following prerequisites:

   - You're running the latest version of Azure AD Connect.

   - Azure AD connect has synchronized all the computer objects of the devices you want to be hybrid Azure AD joined. If the computer objects belong to specific organizational units (OU), then make sure these OUs are set for synchronization in Azure AD connect as well.

To register existing domain-joined Windows 10 devices as Hybrid Azure AD joined, follow the steps in the [Tutorial: Configure hybrid Azure Active Directory join for managed domains](https://docs.microsoft.com/azure/active-directory/devices/hybrid-azuread-join-managed-domains#configure-hybrid-azure-ad-join). This hybrid-enables your existing on-premises Active Directory joined Windows 10 computers and make them cloud ready.
    
## 4. Enable automatic enrollment for Windows 10

 To automatically enroll Windows 10 devices for mobile device management in Intune, see [Enroll a Windows 10 device automatically using Group Policy](https://docs.microsoft.com/windows/client-management/mdm/enroll-a-windows-10-device-automatically-using-group-policy). You can set the Group Policy at a local computer level, or for bulk operations, you can use the Group Policy Management Console and ADMX templates to create this Group Policy setting on your Domain Controller.

## 5. Configure Seamless Single Sign-On

  Seamless SSO automatically signs users into their Microsoft 365 cloud resources when they use corporate computers. Simply deploy one of the two Group Policy options described in [Azure Active Directory Seamless Single Sign-On: Quick start](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-sso-quick-start#step-2-enable-the-feature). The **Group Policy** option doesn't allow users to change their settings, while the **Group Policy Preference** option sets the values but also leaves them user-configurable.

## 6. Set up Windows Hello for Business

 Windows Hello for Business replaces passwords with strong two-factor authentication (2FA) for signing into a local computer. One factor is an asymmetric key pair, and the other is a PIN or other local gesture such as fingerprint or facial recognition if your device supports it. We recommend that you replace passwords with 2FA and Windows Hello for Business where possible.

To configure Hybrid Windows Hello for Business, review the [Hybrid Key trust Windows Hello for Business Prerequisites](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-key-trust-prereqs). Then follow the instructions in [Configure Hybrid Windows Hello for Business key trust settings](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-key-whfb-settings). 
