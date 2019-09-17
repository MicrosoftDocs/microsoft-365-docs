---
title: "Enable domain-joined Windows 10 devices to be managed by Microsoft 365 Business"
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
search.appverid:
- BCS160
- MET150
ms.assetid: 9b4de218-f1ad-41fa-a61b-e9e8ac0cf993
description: "Learn how to enable Microsoft 365 to protect local AD joined Windows 10 devices."
---

# Enable domain-joined Windows 10 devices to be managed by Microsoft 365 Business

If your organization uses Windows Server Active Directory on-premises, you can set up Microsoft 365 Business to protect your Windows 10 devices, while still maintaining access to on-premises resources that require local authentication. You can set this up by first synchronizing your Active Directory with Azure Active Directory, followed by registering the Windows 10 devices with Azure AD and enrolling them for mobile device management by Microsoft 365 Business.
  
## Set up domain-joined devices to be managed by Microsoft 365 Business

To set up your organization's domain-joined devices to benefit from the capabilities provided by Azure Active Directory in addition to on-premises Active Directory, you can implement **Hybrid Azure AD joined devices**. These are devices that are joined both to your on-premises Active Directory and your Azure Active Directory. Hybrid Azure AD joined devices can be protected and managed by Microsoft 365 Business. 
  
Complete the steps below to make your Windows 10 devices Hybrid Azure AD joined and managed by Microsoft 365 Business.
  
1. **Prepare for Directory Synchronization**: Before you synchronize your users and computers from the local Active Directory Domain, review [Prepare for directory synchronization to Office 365](https://docs.microsoft.com/office365/enterprise/prepare-for-directory-synchronization). In particular:

   - Ensure that no duplicates exist among your directory for the following attributes: **mail**, **proxyAddresses**, and **userPrincipalName**. These values should be unique and any duplicates should be removed as necessary.
   
   - It is recommended that the **userPrincipalName** (UPN) attribute for each local user account be configured to match the primary email address that corresponds to the licensed Microsoft 365 user. For example **mary.shelley@contoso.com** rather than **mary@contoso.local**
   
   - If the Active Directory domain ends in a non-routable suffix like **.local** or **.lan**, instead of an internet routable suffix such as **.com** or **.org**, you will need to adjust the UPN suffix of the local user accounts first as described in [Prepare a non-routable domain for directory synchronization](https://docs.microsoft.com/office365/enterprise/prepare-a-non-routable-domain-for-directory-synchronization). 

2. **Install and configure Azure AD Connect**: To synchronize your users, groups, and contacts from the local Active Directory into Azure Active Directory, run the Directory synchronization wizard from Azure Active Directory Connect. See [Set up directory synchronization for Office 365](https://support.office.com/article/1b3b5318-6977-42ed-b5c7-96fa74b08846) to learn more.
    
    > [!NOTE]
    > The steps are exactly the same for Microsoft 365 Business. 
    
As you configure your options for Azure AD Connect, we recommend enabling **Password Synchronization** and **Seamless Single Sign-On**, as well as the **Password writeback** feature, which is also supported in Microsoft 365 Business.

> [!NOTE]
    > Password writeback has some additional steps to complete beyond the checkmark box in Azure AD Connect. Refer to [How-to: configure password writeback](https://docs.microsoft.com/azure/active-directory/authentication/howto-sspr-writeback). 
     
3. **Configure Hybrid Azure AD Join**: Before you proceed to enable Windows 10 devices to become Hybrid Azure AD joined, you need to make sure that you meet the following prerequisites:

   - You are running the latest version of Azure AD connect.

   - Azure AD connect has synchronized all the computer objects of the devices you want to be hybrid Azure AD joined. If the computer objects belong to specific organizational units (OU), then make sure these OUs are set for synchronization in Azure AD connect as well.

Then, to register existing domain-joined Windows 10 devices as Hybrid Azure AD Joined, follow the step by step instructions in the [Tutorial: Configure hybrid Azure Active Directory join for managed domains](https://docs.microsoft.com/azure/active-directory/devices/hybrid-azuread-join-managed-domains#configure-hybrid-azure-ad-join). This will hybrid-enable your existing on-premises Active Directory joined Windows 10 computers and make them cloud ready.
    
4. **Enable automatic enrollment for Windows 10**: To automatically enroll Windows 10 devices for mobile device management in Intune, see [Enroll a Windows 10 device automatically using Group Policy](https://docs.microsoft.com/windows/client-management/mdm/enroll-a-windows-10-device-automatically-using-group-policy) for instructions. You can set the Group Policy at a local computer level, or for bulk operations, you can create this group policy setting on your Domain Controller using the Group Policy Management Console and ADMX templates.

5. **Configure Seamless SSO**: Seamless Single Sign-On will automatically sign in users to their Microsoft 365 cloud resources when they are on their corporate desktops. Simply deploy one of the two Group Policy options described in [Azure Active Directory Seamless Single Sign-On: Quick start](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-sso-quick-start#step-2-enable-the-feature). The "Group policy" option does not allow users to change their settings, while the "Group policy preference" option sets the values but also leaves them user-configurable.

6. **Setup Windows Hello for Business**: Windows Hello for Business replaces passwords with strong two-factor authentication (2FA) for signing into a local computer. One factor is an asymmetric key pair, and the other is a PIN or other local gesture such as fingerprint or facial recognition if your device supports it. It is recommended to replace passwords with 2FA and Windows Hello for Business where possible.

To configure Hybrid Windows Hello for Business, review the [Hybrid Key trust Windows Hello for Business Prerequisites](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-key-trust-prereqs) and subsequently follow the instructions described in [Configure Hybrid Windows Hello for Business key trust settings](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-key-whfb-settings). 
