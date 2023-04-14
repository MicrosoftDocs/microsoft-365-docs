---
title: Secure managed and unmanaged devices            
description: Identify personal, unmanaged devices and company-owned devices, and learn how to secure them.            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 04/13/2023
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.localizationpriority: medium 
ms.collection: 
- M365-Campaigns
- m365solution-smb
- highpri
- m365-security
- tier1
ms.reviewer: efratka
search.appverid: MET150
f1.keywords: NOCSH 
audience: Admin
---

# Secure managed and unmanaged devices

An important part of your security strategy is protecting the devices your employees use to access company data. Such devices include computers, tablets, and phones. Your organization's IT or security team, along with device users, can take steps to protect data and managed or unmanaged devices. 

## Managed devices

Managed devices are typically company-owned devices, usually set up and configured by your company's IT or security team.

To protect managed devices, your organization's IT or security team can: 

- **Use Windows Autopilot to get a user's Windows device ready for first use**. With Autopilot you can install business critical apps, apply policies, and enable features like BitLocker before the device is given to a user. To learn more, see [Windows Autopilot](/mem/autopilot/windows-autopilot).
- **Upgrade Windows devices from previous versions of Windows to Windows 10 Pro or Windows 11 Pro**. Windows client devices should be running Windows 10 Pro or Enterprise, or Windows 11 Pro or Enterprise. If you have Windows devices running Windows 7 Pro, Windows 8 Pro, or Windows 8.1 Pro, your Microsoft 365 Business Premium subscription entitles you to upgrade those devices at no additional cost. To learn more, see [Upgrade Windows devices to Windows 10 or 11 Pro](m365bp-upgrade-windows-10-pro.md).  
- **Onboard devices and protect them with [mobile threat defense](../security/defender-business/mdb-mtd.md) capabilities**. Or, if you prefer to use [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), you can use Intune to enroll and manage devices. To learn more, see [Onboard devices to Microsoft Defender for Business](m365bp-onboard-devices-mdb.md).
- **View and monitor device health in the Microsoft 365 Defender portal** ([https://security.microsoft.com](https://security.microsoft.com)). You can view details, such as health state and exposure level for onboarded devices. You can also take actions, such as running an antivirus scan or starting an automated investigation on a device that has detected threats or vulnerabilities. To learn more, see [Monitor onboarded devices](m365bp-device-states.md) and [Review detected threats](m365bp-review-threats-take-action.md). 

For their part in protecting managed devices, users can:

- Join their devices to your network. Users can register their device to access company data. They're prompted to set up multi-factor authentication (MFA) and complete a sign-in process using their account. To learn more, see [Join your work device to your work or school network](https://support.microsoft.com/en-us/account-billing/join-your-work-device-to-your-work-or-school-network-ef4d6adb-5095-4e51-829e-5457430f3973).
- Make sure antivirus/antimalware software is installed and up to date on all devices. See [Stay protected with Windows Security](https://support.microsoft.com/en-us/windows/stay-protected-with-windows-security-2ae0363d-0ada-c064-8b56-6a39afb6a963).
- [Keep devices up to date](https://support.microsoft.com/en-us/windows/keep-your-pc-up-to-date-de79813c-7919-5fed-080f-0871c7bd9bde), with current updates for operating systems, applications, and antivirus software.
- [Turn on device encryption](https://support.microsoft.com/en-us/windows/device-encryption-in-windows-ad5dcf4b-dbe0-2331-228f-7925c2a3012d) to help prevent unauthorized users from accessing data. 



To learn more about protecting managed devices, see [Set up and secure managed devices](m365bp-protect-devices.md).

## Unmanaged devices

Unmanaged devices, often referred to as bring-your-own devices, or *BYOD*, tend to be personally owned devices that employees set up and use. Unmanaged devices can be protected by security 

To protect unmanaged devices, your organization's IT or security team can:

- 

users can:

- Make sure antivirus/antimalware software is installed and up to date on all devices. (See [Stay protected with Windows Security](https://support.microsoft.com/en-us/windows/stay-protected-with-windows-security-2ae0363d-0ada-c064-8b56-6a39afb6a963).)
- [Keep devices up to date](https://support.microsoft.com/en-us/windows/keep-your-pc-up-to-date-de79813c-7919-5fed-080f-0871c7bd9bde), with current updates for operating systems, applications, and antivirus software.
- [Turn on device encryption](https://support.microsoft.com/en-us/windows/device-encryption-in-windows-ad5dcf4b-dbe0-2331-228f-7925c2a3012d) to help prevent unauthorized users from accessing data. 

To learn more about protecting unmanaged devices, see [Set up unmanaged (BYOD) devices](m365bp-devices-overview.md).

