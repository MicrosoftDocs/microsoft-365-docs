---
title: "Access on-premises resources from an Azure AD-joined device in Microsoft 365 Business"
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
search.appverid:
- BCS160
- MET150
ms.assetid: b0f4d010-9fd1-44d0-9d20-fabad2cdbab5
description: "Learn how to get access to on-premises resources like Line Of Business apps, file shares, and printers from an Azure Active Directory joined Windows 10 device."
---

# Access on-premises resources from an Azure AD-joined device in Microsoft 365 Business

Any Windows 10 device that is Azure Active Directory joined will have access to all cloud-based resources such as your Office 365 apps and can be protected by Microsoft 365 Business. To also allow access to on-premises resources like Line Of Business (LOB) apps, file shares, and printers, you must synchronize your on-premises Active Directory with Azure Active Directory by using [Azure AD Connect](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect). 

See [Introduction to device management in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/device-management-introduction) to learn more.
The steps are also summarized in the following sections.

## Run Azure AD Connect

Complete the following steps to enable your organization's Azure AD joined devices to access on-premises resources.
  
1. To synchronize your users, groups and contacts from local Active Directory into Azure Active Directory, run the Directory synchronization wizard and Azure AD Connect as described in [Set up directory synchronization for Office 365](https://support.office.com/article/1b3b5318-6977-42ed-b5c7-96fa74b08846).
    
2. After the directory synchronization has completed, make sure your organization's Windows 10 devices are Azure AD joined. This step is done individually on each Windows 10 device. See [Set up Windows devices for Microsoft 365 Business users](set-up-windows-devices.md) for details. 
    
3. Once the Windows 10 devices are Azure AD joined, each user should reboot their devices and login with their Microsoft 365 Business credentials. All devices will now have access to on-premises resources as well.
    
No additional steps are required to get access to on-premises resources for Azure AD joined devices. This is built-in functionality available in Windows 10. 
  
If your organization is not ready to deploy in the Azure AD Joined Device Configuration described above, consider setting up [Hybrid Azure AD Joined device configuration](manage-windows-devices.md).
  
### Considerations when joining your Windows devices to Azure AD

If you are Azure AD joining a Windows device that has previously been domain-joined or in a workgroup, you need to consider the following limitations:
  
- When a device Azure AD joins, it creates a new user without referencing an existing profile. To fix this, profiles need to be manually migrated. A user profile contains information like favorites, local files, browser settings, Start menu settings, etc. A best approach is to find a third-party tool to map existing files and settings to the new profile

- If the device is using Group Policy Objects (GPO), some GPOs may not have a comparable [Configuration Service Provider](https://docs.microsoft.com/windows/configuration/provisioning-packages/how-it-pros-can-use-configuration-service-providers) (CSP) in Intune. Run the [MMAT tool](https://www.microsoft.com/download/details.aspx?id=45520) to find comparable CSPs for existing GPOs.

- Users will not be able to authenticate to applications that depend on Active Directory authentication. To deal with this evaluate using a legacy app and consider updating to an app that uses modern Auth if possible.

- Active Directory printer discovery will not work. To fix this, provide direct printer paths for all users or leverage [Hybrid Cloud Print](https://docs.microsoft.com/windows-server/administration/hybrid-cloud-print/hybrid-cloud-print-deploy).
