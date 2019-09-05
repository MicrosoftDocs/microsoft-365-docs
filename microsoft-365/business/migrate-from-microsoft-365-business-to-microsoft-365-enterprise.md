---
title: "Migrate from Microsoft 365 Business to Microsoft 365 Enterprise"
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
search.appverid:
- BCS160
- MET150
ms.assetid: 5b4ba843-24b8-4526-8e1f-f9b9eab89d06
description: "Learn how to move your business from Microsoft 365 Business to Microsoft 365 Enterprise E3."
---

# Migrate from Microsoft 365 Business to Microsoft 365 Enterprise E3

Microsoft 365 Business has everything you need for your small business, combining the best-in-class cloud-based productivity apps with simple device management and security that enable your employees to do their best work. In some cases, however, you may need to migrate your Microsoft 365 Business subscription to Microsoft 365 Enterprise. 

For example, your business has grown and needs more than 300 licenses (congratulations, by the way).

Or, your business needs enterprise features, such as Office 365 ProPlus, Windows 10 Enterprise E3, or Enterprise Client Access Licenses (CALs).

Migrating is easy: Just switch licenses. All your data and configuration in your current subscription is maintained. There is nothing for you to do to prepare for the migration and nothing to do afterward, except take advantage of the new features. 

## Differences between Microsoft 365 Business and Microsoft 365 Enterprise

This table shows the differences between Microsoft 365 Business and Microsoft 365 Enterprise E3.


||||
|:-------|:-----|:-----|
| Feature	| Support in Microsoft 365 Business	| Support in Microsoft 365 Enterprise E3 | 
| **On-premises**		| | | 
| Windows 10 licenses	| | 	Windows 10 Enterprise E3| 
| Office apps	| Business apps*	| ProPlus apps | 
| **Cloud productivity apps**		| | | 
| Exchange Online and Outlook	| 50 GB storage limit per user	| Unlimited | 
| Teams	| ![](./media/check-mark.png)	| ![](./media/check-mark.png) | 
| OneDrive for Business	| 1 TB storage limit per user	| Unlimited | 
| Yammer, SharePoint Online, Planner, Stream	| ![](./media/check-mark.png)	| ![](./media/check-mark.png) | 
| StaffHub	| ![](./media/check-mark.png)	| ![](./media/check-mark.png) | 
| Outlook Customer Manager, MileIQ	| ![](./media/check-mark.png)	| | 
| **Threat Protection**		| | | 
| Microsoft Advanced Threat Analytics, Device Guard, Credential Guard, App Locker, Enterprise Data Protection	| 	| ![](./media/check-mark.png) | 
| Office 365 Advanced Threat Protection (ATP)	| ![](./media/check-mark.png)	| Not included, but can be added on | 
| **Identity management**		| | | 
| Self-service password reset for hybrid Azure Active Directory (Azure AD) accounts, Azure multi factor authentication (MFA), conditional access| 	![](./media/check-mark.png)	| ![](./media/check-mark.png) | 
| Cloud App Discovery, Azure AD Connect Health, Single Sign-On (SSO) for more than 10 Apps	| 	| ![](./media/check-mark.png) | 
| **Device and app management**		| | | 
| Microsoft Intune, Windows Autopilot| 	![](./media/check-mark.png)	| ![](./media/check-mark.png) | 
| Microsoft Desktop Optimization Package, Virtual Desktop Access (VDA)	| | 	![](./media/check-mark.png) | 
| **Information protection**		| | | 
| Office 365 Data Loss Prevention, Azure Information Protection Plan 1	| ![](./media/check-mark.png)	| ![](./media/check-mark.png) | 
| **Client Access License (CAL rights)**	| | | 	
| Enterprise CAL Suite (Exchange, SharePoint, Skype, Windows, System Center Configuration Manager, Windows Rights Management)| | 		![](./media/check-mark.png) | 
| **Compliance**		| | | 
| Unlimited email archiving	| ![](./media/check-mark.png)	| ![](./media/check-mark.png) | 
||||

\* The Microsoft 365 Business version of the Office apps do not include volume activation through Group Policy, app telemetry, update controls, spreadsheet compare and inquire, and business Intelligence.

## Migration

To migrate, work with your partner to move your Microsoft 365 Business subscription and licenses to suitable a Microsoft 365 Enterprise E3 subscription with its licenses.

The following sections describe what changes you need to make, if any, and what you can do after the migration.

### Microsoft 365 subscription configuration and data

You don’t need to do any changes to your current subscription or data prior to migrating, which includes:

- Subscription configuration, such as DNS domain names.
- User and group accounts and authentication settings, such as multi factor authentication or conditional access policies.
- Productivity service configurations and their data, such as Teams, Exchange Online mailboxes, SharePoint Online sites, OneDrive for Business folders, and OneNote notebooks.

Your users can now enjoy unlimited storage in the Exchange Online mailboxes and OneDrive for Business folders.

You can begin using Cloud App Discovery, Azure AD Connect Health, and SSO for more than 10 apps.

>[!Note]
>After migrating to Microsoft 365 Enterprise E3, you no longer Outlook Customer Manager and MileIQ.
>

### Threat protection

You can now use Microsoft Advanced Threat Analytics, Device Guard, Credential Guard, App Locker, and Enterprise Data Protection for additional threat protection.

>[!Note]
>After migrating to Microsoft 365 Enterprise E3, you no longer have Office 365 ATP. You can purchase additional Office 365 ATP licenses for your Microsoft 365 Enterprise E3 subscription and assign them to your user accounts.
>

### Device management with Intune

You don’t need to do any changes to your current Intune configuration prior to migrating, which includes enrolled devices and device and app settings.

You can begin using Microsoft Desktop Optimization Package and VDA.

### Windows 10

Microsoft 365 Business does not include any Windows 10 licenses. When you migrate to Microsoft 365 Enterprise E3, each user license includes Windows 10 Enterprise E3, which you can install with Windows Autopilot.

### Office client 

Your Office client installed on your devices will automatically begin to use the features of Office 365 ProPlus. After migration, you can now use volume activation through Group Policy, app telemetry, update controls, spreadsheet compare and inquire, and business Intelligence.

<!--
<<Need to confirm that a reinstallation is NOT required
Is there a shared computer activation issue? Different users on same machine having different capabilities depending on their licenses>>
--> 

## FAQ

**Q:** Can I use a Microsoft 365 Business subscription for up to 300 seats and then get a Microsoft 365 Enterprise E3 subscription for more than 300 seats?

**A:** Yes, you can mix and match the subscriptions. However, Office 365 ATP is not included with Microsoft 365 Enterprise E3. You should add additional Office 365 ATP licenses for the users in your Microsoft 365 Enterprise E3 subscription.
