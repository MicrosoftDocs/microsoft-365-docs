---
title: "Choose between Basic Mobility and Security and Intune"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 11/11/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-basic-mobility-security
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- basic-mobility-security
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
- basic-mobility-security
description: "Basic Mobility and Security is part of the Microsoft 365 plans, while Microsoft Intune is a standalone product included with certain Microsoft 365 plans."
---

# Choose between Basic Mobility and Security or Intune

[Microsoft Intune](/mem/intune/) is a standalone product included with certain Microsoft 365 plans, while Basic Mobility and Security is part of the Microsoft 365 plans.

## Availability of Basic Mobility and Security and Intune

Both Basic Mobility and Security and Intune are included in various plans, described in the following table.

| Plan | Basic Mobility and Security | Microsoft Intune |
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
|Microsoft 365 Education A1 |Yes|Yes|
|Microsoft 365 Education A3 |Yes|Yes|
|Microsoft 365 Education A5 |Yes|Yes|
|Microsoft Intune |No|Yes|
|Enterprise Mobility & Security E3 |No|Yes|
|Enterprise Mobility & Security E5 |No|Yes|

> [!NOTE]
> You can't start using Basic Mobility and Security if you're already using Microsoft Intune.

 For details, see [Microsoft 365 and Office 365 platform service descriptions](/office365/servicedescriptions/office-365-platform-service-description/office-365-platform-service-description).

## Differences in capabilities

Microsoft Intune and built-in Basic Mobility and Security both give you the ability to manage mobile devices in your organization, but there are key differences in capability, described in the following table.

> [!NOTE]
> You can manage users and their mobile devices using both Intune and Basic Mobility and Security in the same Microsoft 365 Business Standard organization *by setting up Basic Mobility and Security first, and then adding Microsoft Intune*. This allows you to choose Basic Mobility and Security or the more feature-rich Intune solution. Assign an Intune license to enable the Intune features.

| Feature area | Feature highlights | Basic Mobility and Security | Microsoft Intune |
|:-----|:-----|:-----|:-----|
|Device types|Managing different OS platforms and major management mode variants. |Windows<br/>iOS<br/>Android<br/>Android Samsung KNOX<br/>|Windows<br/>iOS<br/>Android<br/>Android Samsung KNOX<br/>mac OS, iPad OS|
|Device compliance|Set and manage security policies, like device level PIN lock and jailbreak detection. |Limitations on Android devices. See [details](capabilities.md). |Yes|
|Conditional access based on device compliance |Prevent noncompliant devices from accessing corporate email and data from the cloud. |Not supported on Windows 10.<br/>Limited to controlling access to Exchange Online, SharePoint Online, and Outlook. |Yes |
|Device configuration  |Configure device settings (for example, disabling the camera)|Limited set of settings.|Yes|
|Email profiles  |Provision a native email profile on the device. |Yes|Yes|
|WiFi profiles |Provision a native WiFi profile on the device. |No|Yes|
|VPN profiles |Provision a native VPN profile on the device. |No|Yes|
|Mobile application management  |Deploy your internal line-of-business apps and from apps stores to users. |No|Yes|
|Mobile application protection  |Enable your users to securely access corporate information using the Microsoft 365 mobile app and line-of-business apps they know. This help ensure security of data by helping to restrict actions like copy, cut, paste, and save as, to only those apps managed approved for corporate data. Works even if the devices aren't enrolled to Basic Mobility and Security. See Protect app data using MAM policies. |No|Yes|
|Managed browser  |Enable more secure web browsing using the Edge app. |No|Yes|
|Zero touch enrollment programs (AutoPilot) |Enroll large numbers of corporate-owned devices, while simplifying user setup. |No|Yes|

In addition to features listed in the preceding table, Basic Mobility and Security and Intune both include a set of remote actions that send commands to devices over the internet. For example, you can:

- remove Microsoft 365 data from an employee’s device while leaving personal data in place (retire).
- remove Microsoft 365 productivity apps from an employee's device (wipe).
- reset a device to its factory settings (full wipe).

Basic Mobility and Security remote actions include retire, wipe, and full wipe. For more information on Basic Mobility and Security actions, see [capabilities of Basic Mobility and Security](capabilities.md).

With Intune, you have the following set of actions:

- [Autopilot reset](/mem/autopilot/windows-autopilot-reset) (Windows only)
- [Bitlocker key recovery](https://support.microsoft.com/windows/finding-your-bitlocker-recovery-key-in-windows-6b71ad27-0b89-ea08-f143-056f5ab347d6) (Windows only)
- [Use wipe, retire, or manually unenrolling the device](/mem/intune/remote-actions/devices-wipe#delete-devices-from-the-intune-portal)
- [Disable activation lock](/mem/intune/remote-actions/device-activation-lock-disable) (iOS only)
- [Fresh start](/mem/intune/remote-actions/device-fresh-start) (Windows only)
- [Full scan](/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus) (Windows 10 only)
- [Locate device](/mem/intune/remote-actions/device-locate) (iOS only)
- [Lost mode](/mem/intune/remote-actions/device-lost-mode) (iOS only)
- [Quick scan](/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus) (Windows 10 only)
- [Remote control for Android](/mem/intune/remote-actions/teamviewer-support)
- [Remote lock](/mem/intune/remote-actions/device-remote-lock)
- [Rename device](/mem/intune/remote-actions/device-rename)
- [Reset passcode](/mem/intune/remote-actions/device-passcode-reset) [Restart](/mem/intune/remote-actions/device-restart) (Windows only)
- [Update Windows Defender Security Intelligence](https://www.microsoft.com/en-us/wdsi/defenderupdates) (Windows only)
- [Windows 10 PIN reset](/windows/security/identity-protection/hello-for-business/hello-feature-pin-reset) (Windows only)
- [Send custom notifications](/mem/intune/remote-actions/custom-notifications#send-a-custom-notification-to-a-single-device) (Android, iOS, iPad OS)
- [Synchronize device](/mem/intune/remote-actions/device-sync)

For more information on Intune actions, see [Microsoft Intune documentation](/mem/intune/).
