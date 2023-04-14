---
title: Plan for managed and unmanaged devices            
description: Identify and plan for personal, unmanaged devices and company-owned devices. Learn how to secure them.            
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

# Plan for managed and unmanaged devices

An important part of your security strategy is protecting the devices your employees use to access company data. Such devices include computers, tablets, and phones. Whether these devices are managed or unmanaged, there are steps that can be taken to protect devices and data.

## Managed devices

Managed devices are usually set up, configured, and monitored by your company's IT or security team. 

To protect managed devices, your organization's IT or security team can: 

- Use [Windows Autopilot](/mem/autopilot/windows-autopilot) to get a user's Windows device ready for use. With Autopilot you can install business critical apps, apply policies, and enable features like BitLocker. 
- Upgrade [Windows devices to Windows 10 or 11 Pro](m365bp-upgrade-windows-10-pro.md) (certain requirements apply).  
- [Onboard devices to Microsoft Defender for Business](m365bp-onboard-devices-mdb.md) to and protect them with mobile threat defense capabilities. Or, enroll devices in [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and use Mobile Device Management capabilities.
- [Monitor onboarded devices](m365bp-device-states.md) for threat detections and take appropriate response actions. 
- [Take actions](m365bp-review-threats-take-action.md), such as requiring or starting antivirus scans and requiring updates to be installed.

To learn more about protecting managed devices, see [Set up and secure managed devices](m365bp-protect-devices.md).

## Unmanaged devices

Unmanaged devices, often referred to as bring-your-own devices, or *BYOD*, tend to be personally owned devices that employees set up and use. 

To protect unmanaged devices, your organization's IT or security team can:

- 

users can:

- Make sure antivirus/antimalware software is installed and up to date on all devices. (See [Stay protected with Windows Security](https://support.microsoft.com/en-us/windows/stay-protected-with-windows-security-2ae0363d-0ada-c064-8b56-6a39afb6a963).)
- [Keep devices up to date](https://support.microsoft.com/en-us/windows/keep-your-pc-up-to-date-de79813c-7919-5fed-080f-0871c7bd9bde), with current updates for operating systems, applications, and antivirus software.
- [Turn on device encryption](https://support.microsoft.com/en-us/windows/device-encryption-in-windows-ad5dcf4b-dbe0-2331-228f-7925c2a3012d) to help prevent unauthorized users from accessing data. 

To learn more about protecting unmanaged devices, see [Set up unmanaged (BYOD) devices](m365bp-devices-overview.md).

