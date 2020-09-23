---
title: "Choose between Basic Mobility and Security and Intune"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
search.appverid:
- MET150
description: "Choose an app and device management method."
---

# Decide on a method to secure your devices and app data

You can choose to use Intune, Intune together with an Azure Information Protection Premium plan, or Basic Mobility and Security to secure your devices and app data.  If your plan includes both Intune and Azure Information Protection Premium P1, or Azure Information Protection Premium P2 you get higher functionality for both mobile device management (MDM) and mobile app management (MAM) and you should not use Basic Mobility and Security. 

 Microsoft 365 Business Premium includes both Intune and Azure Information Protection Premium P1 but also includes a set of base-line security and device policy settings that are easier to set up and manage in the Microsoft 365 admin center.
>[!NOTE]
>You can't begin using Basic Mobility and Security if you're already using Microsoft Intune.

Microsoft Intune and C and Azure Information Protection Premium P2 are standalone products included with some Microsoft 365 plans. Basic Mobility and Security is included in all of the Microsoft 365 plans. See the following table for details. 

|**Plan**|**Basic Mobility and Security**|**Microsoft Intune**|**Azure Information Protection Premium P1**|
|:-----|:-----|:-----|:-----|
|Microsoft 365 Apps|Yes|No|No|
|Microsoft 365 Business Basic|Yes|No|No|
|Microsoft 365 Business Standard|Yes|No|No|
|Office 365 E1 |Yes|No|No|
|Office 365 E3 |Yes|No|Yes|
|Office 365 E5 |Yes|No|Yes|
|Microsoft 365 Business Premium |Yes|Yes|Yes|
|Microsoft 365 Firstline 3 |Yes|Yes|No|
|Microsoft 365 Enterprise E3 |Yes|Yes|No|
|Microsoft 365 Enterprise E5 |Yes|Yes|Yes|
|Microsoft 365 Education A1 |Yes|Yes|No|
|Microsoft 365 Education A3 |Yes|Yes|No|
|Microsoft 365 Education A5 |Yes|Yes|No, but includes the higher functionality Azure Information Protection Premium P2|
|Microsoft Intune |No|Yes|No|
|Enterprise Mobility & Security E3 |No|Yes|Yes|
|Enterprise Mobility & Security E5 |No|Yes||

 For details, see [Microsoft 365 and Office 365 platform service descriptions](https://docs.microsoft.com/office365/servicedescriptions/office-365-platform-service-description/office-365-platform-service-description). 
## Differences in capabilities

Microsoft Intune and built-in Basic Mobility and Security both give you the ability to manage mobile devices in your organization, but there are key differences in capability, described in the following table.

>[!NOTE]
>You can manage users and their mobile devices using both Intune and Basic Mobility and Security in the same Microsoft 365 Business Standard organization *by setting up Basic Mobility and Security first, and then adding Microsoft Intune*. This allows you to choose Basic Mobility and Security or the more feature-rich Intune solution. Assign an Intune license to enable the Intune-only features.

|**Feature area**|**Feature highlights**|**Basic Mobility and Security**|**Microsoft Intune**|
|:-----|:-----|:-----|:-----|
|Device types|Managing different OS platforms and major management mode variants. |Windows<br/>iOS<br/>Android<br/>Android Samsung KNOX<br/>|Windows<br/>iOS<br/>Android<br/>Android Samsung KNOX<br/>mac OS, iPad OS|
|Device compliance|Set and manage security policies, like device level PIN lock and jailbreak detection. |Limitations on Android 9 and later devices. |Yes|
|Conditional access based on device compliance |Prevent noncompliant devices from accessing corporate email and data from the cloud. |Not supported on Windows 10.<br/>Limited to controlling access to Exchange Online, SharePoint Online, and Outlook. |No <br/> Yes with Azure Information Protection Premium plan |
|Device configuration  |Configure device settings (e.g. disabling the camera). |Limited set of settings. |Yes|
|Email profiles  |Provision a native email profile on the device. |Yes|Yes|
|WiFi profiles |Provision a native WiFi profile on the device. |No|Yes|
|VPN profiles |Provision a native VPN profile on the device. |No|Yes|
|MDM |Deploy your internal line-of-business apps and from apps stores to users. |No|Yes|
|MAM |Ensure your users can securely access corporate information using the Office mobile and line-of-business apps, by helping to restrict actions like copy, cut, paste, and save as, to only those apps approved for corporate data. |No|Yes|
|Managed browser  |Enable more secure web browsing using the Edge app. |No|Yes|
|Zero touch enrollment programs Autopilot) |Enroll large numbers of corporate-owned devices, while simplifying user set up. |No|Yes|
|||

Additionally to features listed in the preceding table above, Basic Mobility and Security and Intune both include a set remote actions that send commands to devices over the internet. For example, you can remove Office data from an employee’s device while leaving personal data in place (Retire). For more information on all of the Basic Mobility and Security, see [capabilities of Basic Mobility and Security](capabilities.md).

For Basic Mobility and Security remote actions include Retire, Wipe, and Delete.

With Intune you have the following set of actions:

-   Autopilot reset (Windows only
-  [Bitlocker key rotation](https://docs.microsoft.com/mem/intune/protect/encrypt-devices#rotate-bitlocker-recovery-keys) (Windows only)
-  [Delete](https://docs.microsoft.com/mem/intune/remote-actions/devices-wipe#delete-devices-from-the-intune-portal)
-  [Disable activation loc](https://docs.microsoft.com/mem/intune/remote-actions/device-activation-lock-disable) (iOS only)
-  [Fresh start](https://docs.microsoft.com/mem/intune/remote-actions/device-fresh-start) (Windows only)
- [Full scan](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus) (Windows 10 only)
- [Locate device](https://docs.microsoft.com/mem/intune/remote-actions/device-locate) (iOS only)
- [Lost mode](https://docs.microsoft.com/mem/intune/remote-actions/device-lost-mode) (iOS only)- [Quick scan](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus)(Windows 10 only)
- [Remote control for Android](https://docs.microsoft.com/mem/intune/remote-actions/teamviewer-support)
- [Remote lock](https://docs.microsoft.com/mem/intune/remote-actions/device-remote-lock)
- [Rename device](https://docs.microsoft.com/mem/intune/remote-actions/device-rename)
-  [Reset passcode](https://docs.microsoft.com/mem/intune/remote-actions/device-passcode-reset) [Restart](https://docs.microsoft.com/mem/intune/remote-actions/device-restart) (Windows only)
- [Retire](https://docs.microsoft.com/mem/intune/remote-actions/devices-wipe#retire)
-  Update Windows Defender Security Intelligence (Windows only)
-  Windows 10 PIN reset (Windows only)
-  [Wipe](https://docs.microsoft.com/mem/intune/remote-actions/devices-wipe#wipe)
-  [Send custom notifications](https://docs.microsoft.com/mem/intune/remote-actions/custom-notifications#send-a-custom-notification-to-a-single-device) (Android, iOS, iPad OS)
-  [Synchronize device](https://docs.microsoft.com/mem/intune/remote-actions/device-sync)