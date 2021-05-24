---
title: "Overview of setup"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
f1_keywords:
- 'O365E_M365SetupBanner'
- 'BCS365_M365SetupBanner'
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MSB365
- OKR_SMB_M365
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
ms.assetid: 6e7a2dfd-8ec4-4eb7-8390-3ee103e5fece
description: "Learn the setup steps for Microsoft 365 Business Premium, from subscribing, to adding a domain and users, to setting up security policies, and more."
---

# Overview of setup

Watch a short video about Microsoft 365 Business Premium setup.<br><br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4jZwg] 

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](../business-video/index.yml).

Most of the setup steps can be done in the guided setup, but the other options are also listed.

## Step 1: Add your domain and users

   - **[Add your domain](set-up.md#add-your-domain-to-personalize-sign-in)** (if you bought your domain during [sign up](sign-up.md), this step is already done.)

   - **Add users**. You can add users in any of the three ways:
        - In the [guided setup](set-up.md#add-users-in-the-wizard).
        - Use directory synchronization to [add users by using Azure AD Connect](../enterprise/set-up-directory-synchronization.md) if you have an on-premises Active directory.
        - You can also [add users later](../admin/add-users/add-users.md) in the admin center.
## Step 2: Set up security policies and configure devices 

  - Use the [guided setup](set-up.md#protect-your-organization) to configure device policies. 
  - You can also add more or edit them later in the [admin center](view-policies-and-devices.md) and in the [Intune portal](/intune/tutorial-walkthrough-intune-portal).
  - The setup wizard will also set up basic threat protection and data loss prevention settings.
  
  In addition to the security settings in the setup wizard, you can increase your security by adding the following settings:

- **Email malware protection**
- **Anti-phishing in Defender for Office 365**
- **Exchange Online Archiving**
- **Azure Information Protection (Plan1**)

To get started, see [increase threat protection](increase-threat-protection.md) and [set up compliance features](set-up-compliance.md).

See also [top 10 ways to secure your Microsoft 365 Business Premium](/office365/admin/security-and-compliance/secure-your-business-data) for a road-map of best security practices.

## Step 3: Set up and manage Windows 10 devices

After you complete the guided setup, you will want to protect all the Windows 10 computers in your organization.
  
- Windows 10 Pro is a [prerequisite](pre-requisites-for-data-protection.md) for Microsoft 365 Business Premium, but if you have Windows 7 Pro, Windows 8 Pro, or Windows 8.1 Pro, your subscription entitles you to an [upgrade to  Windows 10 Pro](./upgrade-to-windows-pro-creators-update.md).
- Follow the steps in [secure Windows 10 PCs](secure-win-10-pcs.md) to set up policies for Windows 10 devices.

When you join a Windows 10 device to Azure AD, the policies you set for Windows 10 computers get applied to it. For more information, see [Set up Windows devices for Microsoft 365 users](set-up-windows-devices.md).

## Step 4: Install Microsoft 365 Apps for business
- You can automatically install Office in the Windows devices by using the [setup wizard](set-up.md#deploy-office-365-client-apps).
- Let users [install Office apps](/office365/admin/setup/install-applications) for Windows and devices.
     
## Advanced
- **Use Autopilot to set up new devices**
            
     You can use [Windows Autopilot](add-autopilot-devices-and-profile.md) to automatically pre-configure **new** Windows 10 devices for a user, but it might be easier to get a [partner](https://www.microsoft.com/solution-providers/search) who can do this for you. You can also go to [Microsoft Store](https://go.microsoft.com/fwlink/?linkid=874598), and ask a cloud technology expert to set up new devices that you purchase.

- **Access on-premises resources**

     - If your organization uses Windows Server Active Directory on-premises, you can set up Microsoft 365 Business Premium to protect your Windows 10 devices, while still maintaining access to on-premises resources that require local authentication. Follow the steps in [Enable domain-joined Windows 10 devices to be managed by Microsoft 365 Business Premium](manage-windows-devices.md) to set this up. This is the preferred method, and devices in this state are called Hybrid Azure AD joined devices.

    - If your business has a local Active Directory that contains some on-premises resources (such as file shares and printers), you can give your Azure AD-joined devices access to these resources by following the steps here: [Access on-premises resources from an Azure AD-joined device in Microsoft 365 Business Premium](access-resources.md).

## Related content

[Microsoft 365 for business training videos](../business-video/index.yml) (link page)