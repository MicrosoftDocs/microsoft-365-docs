---
title: "Protect unmanaged Windows 10 PCs and Macs"
f1.keywords:
- NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management 
- M365-identity-device-management
- M365-Campaigns
- m365solution-smb
ms.custom:
- Adm_O365
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
- MOE150
description: "Protect unmanaged or bring-your-own devices (BYOD) with Microsoft 365."
---

# Protect unmanaged Windows 10 PCs and Macs

You can manage Windows 10 PCs and Macs by enrolling them in Microsoft Intune, which allows you to ensure they're healthy and secure before accessing data in your environment. However, many campaigns and small businesses include staff who bring their own devices (BYOD), which will not be managed by the organization. For these unmanaged PCs and Macs, use this article to ensure that minimum security capabilities are configured.

<!--A Windows 10 PC is considered managed after you have completed the following two steps:

1. You (or the admin) set up device and data protection policies in the [setup  wizard](../business/set-up.md).

2. You have [connected your computer to Azure Active Directory](../business/set-up-windows-devices.md) and use your Microsoft 365 username and password to sign in.
3. --> 

## Protect a computer running Windows 10 or a Mac

<!--If you have a PC that is running Windows 10 that is not connected to Microsoft 365, or a Mac, the Microsoft 365 protections do not apply to it, but here are some things you can do to keep your data secure on these devices as well:
-->
If your Windows 10 PC or Mac is not managed by your organization, be sure to configure these security capabilities.

## [Windows 10](#tab/Windows10)

**Turn on device encryption**<p>

Device encryption is available on a wide range of Windows devices and helps protect your data by encrypting it. If you turn on device encryption, only authorized individuals will be able to access your device and data. See [turn on device encryption](https://support.microsoft.com/help/4028713/windows-10-turn-on-device-encryption) for instructions.

 If device encryption isn't available on your device, you can turn on standard [BitLocker encryption](https://support.microsoft.com/help/4028713/windows-10-turn-on-device-encryption) instead. (BitLocker isn't available on Windows 10 Home edition.) 

**Protect your device with Windows Security**<p>
If you have Windows 10, you'll get the latest antivirus protection with Windows Security. When you start up Windows 10 for the first time, Windows Security is on and actively helping to protect your PC by scanning for malware (malicious software), viruses, and security threats. Windows Security uses real-time protection to scan everything you download or run on your PC.

Windows Update downloads updates for Windows Security automatically to help keep your PC safe and protect it from threats.

If you have an earlier version of Windows and are using Microsoft Security Essentials, it's a good idea to move to Windows Security. For more information, see [help protect my device with Windows Security](https://support.microsoft.com/help/17464/windows-10-help-protect-my-device-with-windows-security).

**Turn on Windows Firewall**<p>
You should always run Windows Firewall even if you have another firewall turned on. Turning off Windows Firewall might make your device (and your network, if you have one) more vulnerable to unauthorized access. See [Turn Windows Firewall on or off](https://support.microsoft.com/help/4028544/windows-10-turn-windows-defender-firewall-on-or-off) for instructions.

## [Mac](#tab/Mac)

**Use FileVault to encrypt your Mac disk**<p>
Disk encryption protects data when devices are lost or stolen. FileVault full-disk encryption helps prevent unauthorized access to the information on your startup disk. See [use FileVault to encrypt the startup disk on your Mac](https://support.apple.com/HT204837) for instructions.

**Protect your mac from malware**<p>
Microsoft recommends that you install and use reliable antivirus software on your Mac. See the following article for a list of choices: [Best Mac antivirus 2019 ](https://www.macworld.co.uk/feature/mac-software/mac-antivirus-3672182/).

You can also reduce the risk of malware by using software only from reliable sources. The settings in Security & Privacy preferences allow you to specify the sources of software installed on your Mac. For more information, see [protect your Mac from malware](https://support.apple.com/kb/PH25087).

**Turn on firewall protection**<p>
Use firewall settings to protect your Mac from unwanted contact initiated by other computers when you're connected to the Internet or a network. Without this protection, your Mac might be more vulnerable to unauthorized access. See [about the application firewall](https://support.apple.com/HT201642) for instructions.
