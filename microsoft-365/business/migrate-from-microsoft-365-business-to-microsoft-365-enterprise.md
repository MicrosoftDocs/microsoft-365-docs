---
title: "Migrate from Microsoft 365 Business to Microsoft 365 E3"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management 
ms.custom:
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
ms.assetid: 5b4ba843-24b8-4526-8e1f-f9b9eab89d06
description: "Learn how to move your business from Microsoft 365 Business Premium to Microsoft 365 E3."
---

# Migrate from Microsoft 365 Business Premium to Microsoft 365 E3

Microsoft 365 Business Premium has everything you need for your small business, combining the best-in-class cloud-based productivity apps with simple device management and security that enable your employees to do their best work. In some cases, however, you may need to migrate your Microsoft 365 Business Premium subscription to Microsoft 365 E3. 

For example, your business has grown and needs more than 300 licenses (congratulations, by the way).

Or, your business needs enterprise features, such as Microsoft 365 Apps for enterprise, Windows 10 Enterprise E3, or Enterprise Client Access Licenses (CALs).

Upgrading is easy: you can start the upgrade [from the Admin center](../commerce/subscriptions/upgrade-to-different-plan.md). All your data and configuration in your current subscription is maintained. There's nothing for you to do to prepare for the migration and nothing to do afterward, except take advantage of the new features.

>[!Note]
>You can also use a Microsoft 365 Business Premium subscription for up to 300 seats and get a Microsoft 365 E3 subscription for more than 300 seats. However, Microsoft Defender for Office 365 is not included with Microsoft 365 E3. For continued threat protection, you should add additional Defender for Office 365 licenses so that all of the users in scope of your Defender for Office 365 polices are licensed.
>

## Differences between Microsoft 365 Business Premium and Microsoft 365 Enterprise

This table shows the differences between Microsoft 365 Business Premium and Microsoft 365 E3.

| Feature    | Support in Microsoft 365 Business Premium    | Support in Microsoft 365 E3 | 
|:-------|:-----|:-----|
| **On-premises**        | | | 
| Windows 10    | Windows 10 Business  |     Windows 10 Enterprise E3| 
| Office apps*    | [Microsoft 365 Apps for business](#office-365-business)    | Microsoft 365 Apps for enterprise | 
| **Cloud productivity apps**        | | | 
| Exchange Online and Outlook    | 50 GB storage limit per mailbox and unlimited Exchange Online archiving    | 100 GB storage limit per mailbox and unlimited Exchange Online archiving | 
| Teams    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| OneDrive for Business    | 1 TB storage limit per user    | Unlimited | 
| Yammer, SharePoint Online, Planner, Stream    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| **Threat Protection**        | | | 
| Attack surface reduction capabilities    | [See this list](#threat-protection) | Enterprise management of hardware-based isolation for Microsoft Edge | 
| Defender for Office 365 Plan 1 | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | Not included, but can be added on | 
| **Identity management**        | | | 
| Self-service password reset for hybrid Azure Active Directory (Azure AD) accounts, Azure AD multi-factor authentication (MFA), Conditional Access, password writeback for on-premises identities|     ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| Cloud App Discovery, Azure AD Connect Health    |     | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| Azure AD Office 365 apps Single Sign-On (SSO): 10 apps per user (Gallery SaaS apps such as Salesforce)* | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| Azure AD Premium 1 SSO: no limit (On-premises apps through Azure AD Application Proxy and non-gallery apps using Self-Service App Integration templates)    |     | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| **Device and app management**        | | | 
| Microsoft Intune, Windows Autopilot|     ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
|Virtual Desktop Access (VDA)    |  |     ![Included with Microsoft 365 E3](../media/check-mark.png) | 
|Windows Virtual Desktop (WVD)    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png) |     ![Included with Microsoft 365 E3](../media/check-mark.png) | 
|Shared Computer Activation (SCA)    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png) |     ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| Microsoft Desktop Optimization Package    | |     ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| **Information protection**        | | | 
| Office 365 Data Loss Prevention, Azure Information Protection Plan 1    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| Window Information Protection for endpoint DLP    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| **Client Access License (CAL rights)**    | | |     
| Enterprise CAL Suite (Exchange, SharePoint, Skype, Windows, Microsoft Endpoint Configuration Manager, Windows Rights Management)| |         ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| **Compliance**        | | | 
| Unlimited email archiving    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| Compliance Manager    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| eDiscovery    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| In-place hold and litigation hold    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
| Messaging Records Management (MRM) retention tags and retention policies    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Microsoft 365 E3](../media/check-mark.png) | 
||||

\* Users who have been assigned access to SaaS apps can get SSO access to up to 10 apps. Admins can configure SSO and change user access to different SaaS apps, but SSO access is only allowed for 10 apps per user at a time. All Office 365 apps are counted as a single app.

## Migration

To migrate, work with your partner to move your Microsoft 365 Business Premium subscription and licenses to a suitable Microsoft 365 E3 subscription with its licenses.

The following sections describe what changes you need to make, if any, and what you can do after the migration.

### Microsoft 365 subscription configuration and data

You don't need to make any changes to your current subscription or data before migrating, which includes:

- Subscription configuration, such as DNS domain names.
- User and group accounts and authentication settings, such as multi factor authentication or conditional access policies.
- Productivity service configurations and their data, such as Teams, Exchange Online mailboxes, SharePoint Online sites, OneDrive for Business folders, and OneNote notebooks.

Your users can now enjoy unlimited storage in the Exchange Online mailboxes and OneDrive for Business folders.

You can begin using Cloud App Discovery, Azure AD Connect Health, and SSO for more than 10 apps.

<a name="threat-protection"></a>
### Threat protection

Windows 10 Business includes these protections:

- Integrity enforcement of operating system boot up process
- Integrity enforcement of sensitive operating components
- Advanced vulnerability and zero-day exploit mitigations
- Reputation-based network protection for Microsoft Edge, Internet Explorer, and Chrome
- Host-based firewall
- Ransomware mitigations
- Hardware-based isolation for Microsoft Edge
- Application control powered by the Intelligent Security Graph
- Device control (USB)
- Network protection for web-based threats
- Host intrusion prevention rules

Windows 10 Enterprise E3 also includes enterprise management of hardware-based isolation for Microsoft Edge.

>[!Note]
>Users migrated to Microsoft 365 E3 will each require a Microsoft Defender for Office 365 license for continued threat protection. Be sure to purchase additional Defender for Office 365 licenses so that all of the users in scope of your Defender for Office 365 polices are licensed. 
>

### Device management with Intune

You don't need to make any changes to your current Intune configuration before migrating, which includes enrolled devices and device and app settings.

### Windows 10

Microsoft 365 Business Premium includes Windows 10 Business, which you can install with Windows AutoPilot. When you migrate to Microsoft 365 E3, each user license includes Windows 10 Enterprise E3, which you can also install with Windows Autopilot.

<a name="office-365-business"></a>
###  Microsoft 365 Apps for business

Your Microsoft 365 Apps for business client installed on your devices will automatically begin to use the features of Microsoft 365 Apps for enterprise. After migration, you can now use:

 - Group Policy support
 - Spreadsheet compare and inquire
 - Business intelligence

