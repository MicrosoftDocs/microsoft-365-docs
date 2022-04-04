---
title: "Set up Windows devices for Microsoft 365 Business Premium users"
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management
- M365-identity-device-management 
- Adm_TOC
ms.custom:
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- OKR_SMB_M365
- TRN_M365B
- OKR_SMB_Videos
- seo-marvel-mar
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- adminvideo
search.appverid:
- BCS160
- MET150
ms.assetid: 2d7ff45e-0da0-4caa-89a9-48cabf41f193
description: "Set up Windows devices running Windows 10 Pro for Microsoft 365 Business Premium users, enabling centralized management and security controls."
---

# Set up Windows devices for Microsoft 365 Business Premium users

## Before you begin

Before you can set up Windows devices for Microsoft 365 Business Premium users, make sure all the Windows devices are running Windows 10 Pro, version 1703 (Creators Update) or Windows 11 Pro. 

Windows 10 Pro (or Windows 11 Pro) is a prerequisite for deploying Windows 10 Business, which is a set of cloud services and device management capabilities that complement Windows 10 Pro and Windows 11 Pro, and enable the centralized management and security controls of Microsoft 365 Business Premium.

[Learn more about requirements for Microsoft 365 Business Premium](https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium?activetab=pivot:techspecstab).

## Windows 10 Pro and Windows 11 Pro

If you have Windows devices running previous versions of Windows, such as Windows 7 Pro, Windows 8 Pro, or Windows 8.1 Pro, your Microsoft 365 Business Premium subscription entitles you to upgrade those devices to Windows 10 Pro or Windows 11 Pro.
  
For more information on how to upgrade Windows devices, see the following articles:

- [Upgrade Windows Home to Windows Pro](https://support.microsoft.com/windows/upgrade-windows-home-to-windows-pro-ef34d520-e73f-3198-c525-d1a218cc2818)
- [Upgrade to Windows 10 Pro](https://support.microsoft.com/windows/upgrade-to-windows-10-pro-71ecc746-0f81-a4c0-bd4b-0db8559e0796)
  
After you have upgraded, see [Verify the device is connected to Azure AD](#verify-the-device-is-connected-to-azure-ad) to verify you have the upgrade, or to make sure the upgrade worked.

## Join Windows devices to your organization's Azure AD

When all your company's Windows devices are running Windows 10 Pro or Windows 11 Pro, you can join these devices to your organization's Azure Active Directory (Azure AD). 

1. On a Windows device, select the Windows logo, and then the Settings icon.
  
2. In **Settings**, go to **Accounts** > **Access work or school** \> **Connect**.
  
3. Type your email address, and then choose **Next**.

4. Follow the prompts to complete the process.

## Verify the device is connected to Azure AD

To verify your sync status, on the **Access work or school** page in **Settings**, select the **Connected to** _ \<organization name\> _ area to expose the buttons **Info** and **Disconnect**. Choose **Info** to get your synchronization status. 
  
On the **Sync status** page, choose **Sync** to get the latest mobile device management policies onto the PC.  
  
## Next steps

To set up your mobile devices, see [Set up mobile devices for Microsoft 365 Business Premium users](set-up-mobile-devices.md), 

To increase protection, see [Top 10 ways to secure Microsoft 365 for business plans](../security-and-compliance/secure-your-business-data.md).
  
