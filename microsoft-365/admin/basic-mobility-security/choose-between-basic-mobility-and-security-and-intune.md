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
description: "Basic Mobility and Security is part of the Microsoft 365 plans."
---

# Choose between Basic Mobility and Security and Intune

Microsoft Intune is a standalone product included with certain Microsoft 365 plans, while Basic Mobility & Security is part of the Microsoft 365 plans. Both are included in a variety of plans, described in the following table.

|**Plan**|**Basic Mobility and Security**|**Microsoft Intune**|
|:-----|:-----|:-----|
|Microsoft 365 Apps|Yes|No|
|Microsoft 365 Business Basic|Yes|No|
|Microsoft 365 Business Standard|Yes|No|
|Office 365 E1 |Yes|No|
|Office 365 E3 |Yes|No|
|Office 365 E5 |Yes|No|
|Microsoft 365 Business Premium |Yes|Yes|
|Microsoft 365 Firstline 3 |Yes|Yes|
|Microsoft 365 Enterprise E3 |Yes|Yes|
|Microsoft 365 Enterprise E5 |Yes|Yes|
|Microsoft 365 Eductation A1 |Yes|Yes|
|Microsoft 365 Education A3 |Yes|Yes|
|Microsoft 365 Education A5 |Yes|Yes|
|Microsoft Intune |No|Yes|
|Enterprise Mobility & Security E3 |No|Yes|
|Enterprise Mobility & Security E5 |No|Yes|

>[!NOTE]
>You can't start using Basic Mobility and Security if you're already using Microsoft Intune.

## Differences in capabilities

Microsoft Intune and built-in Basic Mobility and Security both give you the ability to manage mobile devices in your organization, but there are key differences in capability, described in the following table.

>[!NOTE]
>You can manage users and their mobile devices using both Intune and Basic Mobility and Security in the same Microsoft 365 Business Standard organization by setting up Basic Mobility and Security first, and then adding Microsoft Intune. This allows you to choose whether you manage a user’s devices with Basic Mobility and Security or the more feature-rich Intune solution. In the mode, the license assignment determines which service the device is enrolled with. Assign an Intune license to enable the Intune-only features.

|**Feature area**|**Feature highlights**|**Basic Mobility and Security**|**Microsoft Intune**|
|:-----|:-----|:-----|:-----|
|Device types|Different OS platforms and major management mode variants. |Windows<br/>iOS<br/>Android<br/>Android Samsung KNOX<br/>|Windows<br/>iOS<br/>Android<br/>Android Samsung KNOX<br/>mac OS<br/>iPad OS|
|Device compliance|Set and manage security policies, like device level PIN lock and jailbreak detection. |Limitations on Android 9 and later devices. For details, see [Capabilities of Basic Mobility and Security](capabilities-of-basic-mobility-and-secruity.md).|Yes|
|Conditional access based on device compliance |Prevent noncompliant devices from accessing corporate email and data from the cloud. |- Not supported on Windows 10.<br/>- Limited to controlling access to Exchange Online, Sharepoint Online, and Outlook services. |No|
|Device configuration  |Configure device settings (e.g. disabling the camera). |Limited set of settings. For details, see [Capabilities of Basic Mobility and Security](capabilities-of-basic-mobility-and-secruity.md). |Yes|
|Remote actions  |Send commands to devices over the internet. For example, remove Office data from an employee’s device while leaving personal data in place (Retire). |Retire<br/>Wipe<br/>Delete|-   Autopilot reset (Windows only)<br/>- [Bitlocker key rotation](https://docs.microsoft.com/mem/intune/protect/encrypt-devices#rotate-bitlocker-recovery-keys) (Windows only)<br/>- [Delete](https://docs.microsoft.com/mem/intune/remote-actions/devices-wipe#delete-devices-from-the-intune-portal)<br/>- [Disable activation loc](https://docs.microsoft.com/mem/intune/remote-actions/device-activation-lock-disable) (iOS only)<br/>- [Fresh start](https://docs.microsoft.com/mem/intune/remote-actions/device-fresh-start) (Windows only)<br/>- [Full scan](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus) (Windows 10 only)<br/>- [Locate device](https://docs.microsoft.com/mem/intune/remote-actions/device-locate) (iOS only)<br/>- [Lost mode](https://docs.microsoft.com/mem/intune/remote-actions/device-lost-mode) (iOS only)<br/>- [Quick scan](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus)(Windows 10 only)<br/>- [Remote control for Android](https://docs.microsoft.com/mem/intune/remote-actions/teamviewer-support)<br/>- [Remote lock](https://docs.microsoft.com/mem/intune/remote-actions/device-remote-lock)<br/>- [Rename device](https://docs.microsoft.com/mem/intune/remote-actions/device-rename)<br/>- [Reset passcode](https://docs.microsoft.com/mem/intune/remote-actions/device-passcode-reset)<br/>- [Restart](https://docs.microsoft.com/mem/intune/remote-actions/device-restart) (Windows only)<br/>- [Retire](https://docs.microsoft.com/mem/intune/remote-actions/devices-wipe#retire)<br/>- Update Windows Defender Security Intelligence (Windows only)<br/>- Windows 10 PIN reset (Windows only)<br/>- [Wipe](https://docs.microsoft.com/mem/intune/remote-actions/devices-wipe#wipe)<br/>- [Send custom notifications](https://docs.microsoft.com/mem/intune/remote-actions/custom-notifications#send-a-custom-notification-to-a-single-device) (Android, iOS, iPad OS)<br/>- [Synchronize device](https://docs.microsoft.com/mem/intune/remote-actions/device-sync)|
|Email profiles  |Provision a native email profile on the device. |Yes|Yes|
|WIFI profiles |Provision a native WIFI profile on the device. |No|Yes|
|VPN profiles |Provision a native VPN profile on the device. |No|Yes|
|MDM application management  |Deploy your internal line-of-business apps and from apps stores to users. |No|Yes|
|Mobile application protection  |Enable your users to securely access corporate information using the Office mobile and line-of-business apps they know, while ensuring security of data by helping to restrict actions like copy, cut, paste, and save as, to only those apps managed approved for corporate data. Works even if the devices are not enrolled to MDM. See Protect app data using MAM policies. |No|Yes|
|Managed browser  |Enable more secure web browsing using the Edge app. |No|Yes|
|Zero touch enrollment programs |Enroll large numbers of corporate-owned devices, while simplifying user set up. |No|Yes|
