---
title: "Migrate to Microsoft 365 Business from Office 365 Enterprise E3"
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
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
- OKR_SMB_M365
search.appverid:
- BCS160
- MET150
description: "Learn how to move your business to Microsoft 365 Business from Office 365 Enterprise E3."
---

# Migrating from Office 365 Enterprise E3 to Microsoft 365 Business 

Microsoft 365 Business has everything you need for your small business, combining the best-in-class cloud-based productivity apps with simple device management and security.  If you currently have an Office 365 E3 subscription, but don’t have more than 300 employees, consider switching to Microsoft 365 Business for added security features.

Migrating is easy: First you switch licenses and all your data and user information in your current subscription is maintained. After the migration you will need to set up the features that are added in Microsoft 365 Business.

## Differences between Office 365 Enterprise and Microsoft 365 Business

This table shows the differences between Microsoft 365 Business and Office 365 Enterprise E3.

| Feature	| Support in Microsoft 365 Business	| Support in Office 365 Enterprise E3 | 
|:-------|:-----|:-----|
| **On-premises**		| | | 
| Office apps*	| [Office 365 Business](#office-365-business)	| Office 365 ProPlus | 
| **Cloud productivity apps**		| | | 
| Exchange Online and Outlook	| 50 GB storage limit per mailbox and unlimited Exchange Online archiving	| 100 GB storage limit per mailbox and unlimited Exchange Online archiving | 
| Teams	| ![Included with Microsoft 365 Business](./media/check-mark.png)	| ![Included with Microsoft 365 Enterprise E3](./media/check-mark.png) | 
| OneDrive for Business	| 1 TB storage limit per user	| Unlimited | 
| Yammer, SharePoint Online, Planner, Stream	| ![Included with Microsoft 365 Business](./media/check-mark.png)	| ![Included with Office 365 Enterprise E3](./media/check-mark.png) | 
| StaffHub	| ![Included with Microsoft 365 Business](./media/check-mark.png)	| ![Included with Office 365 Enterprise E3](./media/check-mark.png) | 
| Outlook Customer Manager, MileIQ	| ![Included with Microsoft 365 Business](./media/check-mark.png)	| | 
| **Threat Protection**		| | | 
| Office 365 Advanced Threat Protection (ATP) Plan 1 | ![Included with Microsoft 365 Business](./media/check-mark.png)	| Not included, but can be added on | 
| **Identity management**		| | | 
| Self-service password reset for hybrid Azure Active Directory (Azure AD) accounts, Azure multi-factor authentication (MFA), Conditional Access, password writeback for on-premises identities| 	![Included with Microsoft 365 Business](./media/check-mark.png)	|  | 
| **Device and app management**		| | |
| Microsoft Intune, Windows AutoPilot| 	![Included with Microsoft 365 Business](./media/check-mark.png)	|  |
| Shared computer activation| 	![Included with Microsoft 365 Business](./media/check-mark.png)	| ![Included with Office 365 Enterprise E3](./media/check-mark.png)| 
| Upgrade rights to Windows 10 Pro from Win 7/8.1 Pro licenses| 	![Included with Microsoft 365 Business](./media/check-mark.png)	|| 
| **Information protection**		| | |
|Office 365 Data Loss Prevention|	![Included with Microsoft 365 Business](./media/check-mark.png)|![Included with Office 365 Enterprise E3](./media/check-mark.png)|
|Azure Information Protection Plan 1, Bitlocker enforcement|![Included with Microsoft 365 Business](./media/check-mark.png)||
|Azure Information Protection Plan 1, Sensitivity labels|![Included with Microsoft 365 Business](./media/check-mark.png)||
|**Client Access License (CAL rights)**|||
|Enterprise CAL Suite (Exchange, SharePoint, Skype)||![Included with Office 365 Enterprise E3](./media/check-mark.png)|

## Migration

To migrate your subscription, see [switch to a different plan](https://docs.microsoft.com/office365/admin/subscriptions-and-billing/switch-to-a-different-plan) for instructions, or, you can work with partner to move your E3 subscription and licenses to a Microsoft 365 Business subscription.
The following sections describe what changes you need to make, if any, and what you can do after the migration.

### Office 365 E3 subscription configuration and data
You don’t need to do any changes to your current subscription or data prior to migrating, which includes:

- Subscription configuration, such as DNS records and domain names.
- User and group accounts and authentication settings, such as multi factor authentication or conditional access policies.
- Productivity service configurations and their data, such as Teams, Exchange Online mailboxes, SharePoint Online sites, OneDrive for Business folders, and OneNote notebooks.
