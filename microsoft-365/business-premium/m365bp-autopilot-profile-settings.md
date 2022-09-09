---
title: "About Autopilot Profile settings"
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: conceptual
f1.keywords:
- 'ZTDProfileSettings'
- 'O365E_ZTDProfileSettings'
- 'BCS365_ZTDProfileSettings'
ms.service: microsoft-365-business
ms.subservice: business-premium
ms.localizationpriority: high
ms.date: 07/19/2022
ms.collection: 
ms.custom:
- MiniMaven
- OKR_SMB_M365
search.appverid:
- BCS160
- MET150
- MOE150
description: "Autopilot profiles help you control how Windows gets installed on user devices. The profiles contain default and optional settings like skip Cortana installation."
---

# About Autopilot Profile settings

## Autopilot profile settings

You can use Autopilot profiles to control how Windows is installed on user devices. The profiles contain the following settings.
  
## Autopilot default features (required) that are set automatically
  
| Setting | Description |
|:-----|:-----|
|Skip Cortana, OneDrive, and OEM registration  |Skips the installation of consumer apps like Cortana and personal OneDrive. The device user can install these later as long as the user is a local admin on the device. The original manufacturer registration is skipped because the device will be managed by Microsoft 365 Business Premium.  |
|Sign in experience with your company brand  |If your company has a [Add your company branding to Microsoft 365 Sign In page](../admin/setup/customize-sign-in-page.md), the device user will get that experience when signing in.  |
|MDM auto-enrollment with configured AAD accounts.  |The user identity will be managed by Azure Active Directory, and users will sign in to Windows and Microsoft 365 with their Microsoft 365 Business Premium credentials.  |

## Optional settings
  
| Setting | Description |
|:-----|:-----|
|Skip privacy settings (Off by default)  |If this option is set to **On**, the device user will not see the license agreement for the device and Windows when he or she first signs in.  |
|Don't allow the user to become the local admin  |If this option is set to **On**, the device user will not be able to install any personal apps, such as Cortana.|

## See also

[Best practices for securing Microsoft 365 for business plans](../admin/security-and-compliance/secure-your-business-data.md)