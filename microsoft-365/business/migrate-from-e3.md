---
title: "Migrate to Microsoft 365 Business from Office 365 E3"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
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
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
description: "Learn how to move your business to Microsoft 365 Business Premium from Office 365 E3."
---

# Migrating from Office 365 E3 to Microsoft 365 Business Premium

Microsoft 365 Business Premium has everything you need for your small business, combining the best-in-class cloud-based productivity apps with simple device management and security. If you currently have an Office 365 E3 subscription, but don't have more than 300 employees, consider switching to Microsoft 365 Business Premium for added security features.

Migrating is easy: First you switch licenses and all your data and user information in your current subscription is maintained. After the migration, you'll need to set up the features that are added in Microsoft 365 Business Premium.

## Differences between Office 365 E3 and Microsoft 365 Business Premium

This table shows the differences between Microsoft 365 Business Premium and Office 365 E3.

| Feature    | Support in Microsoft 365 Business Premium    | Support in Office 365 E3 |
|:-------|:-----|:-----|
| **On-premises**        | | |
| Office apps<sup>1</sup>    | Microsoft 365 Apps for business    | Microsoft 365 Apps for enterprise |
| **Cloud productivity apps**        | | |
| Exchange Online and Outlook    | 50 GB storage limit per mailbox and unlimited Exchange Online Archiving    | 100 GB storage limit per mailbox and unlimited Exchange Online Archiving |
| Teams    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Office 365 E3](../media/check-mark.png) | 
| OneDrive for Business    | 1 TB storage limit per user    | Unlimited | 
| Yammer, SharePoint Online, Planner, Stream    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Office 365 E3](../media/check-mark.png) | 
| StaffHub    | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Office 365 E3](../media/check-mark.png) |
| **Threat Protection**        | | |
| Defender for Office 365 Plan 1 | ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | Not included, but can be added on |
| **Identity management**        | | |
| Self-service password reset for hybrid Azure Active Directory (Azure AD) accounts, Azure AD multi-factor authentication (MFA), Conditional Access, password writeback for on-premises identities|     ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    |  |
| **Device and app management**        | | |
| Microsoft Intune, Windows AutoPilot|     ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    |  |
| Shared computer activation|     ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    | ![Included with Office 365 E3](../media/check-mark.png)| 
| Upgrade rights to Windows 10 Pro from Win 7/8.1 Pro licenses|     ![Included with Microsoft 365 Business Premium](../media/check-mark.png)    ||
| **Information protection**        | | |
|Office 365 Data Loss Prevention|    ![Included with Microsoft 365 Business Premium](../media/check-mark.png)|![Included with Office 365 E3](../media/check-mark.png)|
|Azure Information Protection Plan 1, BitLocker enforcement|![Included with Microsoft 365 Business Premium](../media/check-mark.png)||
|Azure Information Protection Plan 1, Sensitivity labels|![Included with Microsoft 365 Business Premium](../media/check-mark.png)||
|**Client Access License (CAL rights)**|||
|Enterprise CAL Suite (Exchange, SharePoint, Skype)||![Included with Office 365 E3](../media/check-mark.png)|

<sup>1</sup> The Microsoft 365 Business Premium version of the Office apps doesn't include volume activation through Group Policy, app telemetry, update controls, spreadsheet compare and inquire, or business Intelligence.

## Migration

To migrate your subscription, see [Change plans manually](../commerce/subscriptions/change-plans-manually.md) for instructions if you want to move just a few people to Microsoft 365 Business Premium. You can also [upgrade everyone automatically](../commerce/subscriptions/upgrade-to-different-plan.md), or work with a partner to move your E3 subscription and licenses to a Microsoft 365 Business Premium subscription.
The following sections describe the changes you need to make, if any, and what you can do after the migration.

### Office 365 E3 subscription configuration and data
You don't need to do any changes to your current subscription or data before migrating, which includes:

- Subscription configuration, such as DNS records and domain names.
- User and group accounts and authentication settings, such as multi factor authentication or conditional access policies.
- Productivity service configurations and their data, such as Teams, Exchange Online mailboxes, SharePoint Online sites, OneDrive for Business folders, and OneNote notebooks.
- Office applications will scale automatically. Office 365 modern licensing will check the user’s license assignment every 72 hours and will convert Office applications to the version that matches the user subscription.

### Windows 10

If your Windows aren't already on Windows Pro Creator update, [upgrade them to Windows Pro Creators Update](upgrade-to-windows-pro-creators-update.md).

### Set up policies to protect user devices and files

> [!NOTE]
> If you set up Office 365 MDM policies and devices, those devices will be listed on the **Devices** page in the Microsoft 365 admin center. Any policies you set up will show up in the list of classic policies in the [Intune portal](https://portal.azure.com/#blade/Microsoft_Intune_DeviceSettings/ExtensionLandingBlade/overview).

After you have assigned licenses to Microsoft 365 Business Premium, you can start protecting the users' devices and files.

If you upgraded everyone in your organization to Microsoft 365 Business Premium, you'll see the setup wizard on the Home page, and can follow the [Set up Microsoft 365 Business Premium in the setup wizard](set-up.md) steps to protect files and mobile devices.

You can also complete these steps on the Devices page:
  
1. In the admin center, in the left nav, go to **Devices** \> **Policies**.

2. On the **Device policies** page, choose **Add**.

3. In the **Add policy** pane give the policy a name, and then choose a **Policy type** from the drop-down.

     You can set up application policies for protecting files on Android and iPhone devices, as well as Windows 10, and you can set up device configuration policies for company owned Windows 10 devices. See the following links for details:

  - [Set app protection settings for Android or iOS devices](app-protection-settings-for-android-and-ios.md)

  - [Set application protection settings for Windows 10 devices](protection-settings-for-windows-10-devices.md)

  - [Set device protection settings for Windows 10 PCs](protection-settings-for-windows-10-pcs.md)
  
4. Once you set up policies, you and your employees can set up devices:

  - See [Set up Windows devices for Microsoft 365 Business Premium users](set-up-windows-devices.md) for steps for Windows devices. 

  - See [Set up mobile devices for Microsoft 365 Business Premium users](set-up-mobile-devices.md) for steps for Android phones and iPhones. 
  
### Mailbox Size

Microsoft 365 Business Premium has a 50 GB storage limit as it uses Exchange Online Plan 1. While migrating to Microsoft 365 Business Premium, if any of your users exceed 50 GB of mailbox storage, it is recommended that you assign this user an Exchange Online Plan 2 and remove the Exchange Online Plan 1 as it's not feasible to assign both.

### Threat protection

After migrating to Microsoft 365 Business Premium, you have Defender for Office 365. See [Microsoft Defender for Office 365](../security/office-365-security/defender-for-office-365.md) for an overview. To set up, see [set up Safe Links](https://support.microsoft.com/office/61492713-53c2-47da-a6e7-fa97479e97fa), [set up Safe Attachments](https://support.microsoft.com/office/e7e68934-23dc-4b9c-b714-e82e27a8f8a5), and [set up Anti-phishing in Defender for Office 365](https://support.microsoft.com/office/86c425e1-1686-430a-9151-f7176cce4f2c).

### Sensitivity labels

To start using sensitivity labels, see [Overview of sensitivity labels](../compliance/sensitivity-labels.md) and [create and manage sensitivity labels](../business-video/create-sensitivity-labels.md) video.
