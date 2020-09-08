---
title: "Access on-premises resources from an Azure AD-joined device in Microsoft 365 Business"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.collection: M365-subscription-management
localization_priority: Normal
ms.custom:
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- OKR_SMB_M365
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
ms.assetid: b0f4d010-9fd1-44d0-9d20-fabad2cdbab5
description: "Learn how to get access to on-premises resources like line of business apps, file shares, and printers from an Azure Active Directory joined Windows 10 device."
---

# Access on-premises resources from an Azure AD-joined device in Microsoft 365 Business Premium

This article applies to Microsoft 365 Business Premium.

Any Windows 10 device that is Azure Active Directory joined has access to all cloud-based resources, such as your Microsoft 365 apps, and can be protected by Microsoft 365 Business Premium. You can also allow access to on-premises resources like line of business (LOB) apps, file shares, and printers. To allow access, use [Azure AD Connect](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect) to synchronize your on-premises Active Directory with Azure Active Directory. 

To learn more, see [Introduction to device management in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/device-management-introduction).
The steps are also summarized in the following sections.

> [!IMPORTANT]
> This procedure is only applicable to OAuth and NTLM. Kerberos is not supported.
 
## Run Azure AD Connect

Complete the following steps to enable your organization's Azure AD joined devices to access on-premises resources.
  
1. To synchronize your users, groups, and contacts from local Active Directory into Azure Active Directory, run the Directory synchronization wizard and Azure AD Connect as described in [Set up directory synchronization for Office 365](https://docs.microsoft.com/microsoft-365/enterprise/set-up-directory-synchronization).
    
2. After the directory synchronization is complete, make sure your organization's Windows 10 devices are Azure AD joined. This step is done individually on each Windows 10 device. See [Set up Windows devices for Microsoft 365 Business Premium users](set-up-windows-devices.md) for details. 
    
3. Once the Windows 10 devices are Azure AD joined, each user must reboot their devices and sign in with their Microsoft 365 Business Premium credentials. All devices now have access to on-premises resources as well.
    
No additional steps are required to get access to on-premises resources for Azure AD joined devices. This functionality is built into Windows 10. 

If you have plans to login to the AADJ device other than password method Like PIN/Bio-metric via WHFB credential login and then access on-premise resources (shares,printers..etc), please follow https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-hybrid-aadj-sso-base
  
If your organization isn't ready to deploy in the Azure AD joined device configuration described above, consider setting up [Hybrid Azure AD Joined device configuration](manage-windows-devices.md).
  
### Considerations when you join Windows devices to Azure AD

If the Windows device that you Azure-AD joined was previously domain-joined or in a workgroup, consider the following limitations:
  
- When a device Azure AD joins, it creates a new user without referencing an existing profile. Profiles must be manually migrated. A user profile contains information like favorites, local files, browser settings, and Start menu settings. A best approach is to find a third-party tool to map existing files and settings to the new profile.

- If the device is using Group Policy Objects (GPO), some GPOs may not have a comparable [Configuration Service Provider](https://docs.microsoft.com/windows/configuration/provisioning-packages/how-it-pros-can-use-configuration-service-providers) (CSP) in Intune. Run the [MMAT tool](https://www.microsoft.com/download/details.aspx?id=45520) to find comparable CSPs for existing GPOs.

- Users won't be able to authenticate to applications that depend on Active Directory authentication. Evaluate the legacy app and consider updating to an app that uses modern Auth, if possible.

- Active Directory printer discovery won't work. You can provide direct printer paths for all users or use [Hybrid Cloud Print](https://docs.microsoft.com/windows-server/administration/hybrid-cloud-print/hybrid-cloud-print-deploy).
