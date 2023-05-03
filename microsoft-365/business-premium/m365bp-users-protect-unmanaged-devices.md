---
title: "Protect unmanaged computers with Microsoft 365 Business Premium"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.date: 05/02/2023
ms.localizationpriority: medium
ms.collection: 
- M365-Campaigns
- m365solution-smb
- highpri
- tier1
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
- MOE150
description: "Protect unmanaged computers from cyberattacks with Microsoft 365 Business Premium. How to set up cybersecurity for Windows PCs and Macs."
---

# Protect unmanaged computers with Microsoft 365 Business Premium

This objective is focused on protecting unmanaged computers, such as Windows 10 or 11 computers and Mac computers that are neither enrolled in Microsoft Intune nor onboarded to Microsoft Defender for Business. If your business or campaign has staff who bring their own devices, such as personally owned phones, tablets, and PCs, ask users to take certain steps to protect business information that might be on their devices.

> [!NOTE]
> This article applies primarily to unmanaged (or BYOD) devices. Guidance for protecting managed devices is available here: [Set up and secure managed devices](m365bp-protect-managed-devices.md).
> 
> [Learn more about managed and unmanaged devices](m365bp-managed-unmanaged-devices.md).

It's critical that you ensure users follow these guidelines so that minimum security capabilities are configured on all the bring-your-own devices (also referred to as BYOD devices).

## [Windows 10 or 11](#tab/Windows10-11)

## Windows 10 or 11

### Turn on device encryption

Device encryption is available on a wide range of Windows devices and helps protect your data by encrypting it. If you turn on device encryption, only authorized individuals will be able to access your device and data. See [turn on device encryption](https://support.microsoft.com/help/4028713/windows-10-turn-on-device-encryption) for instructions.

 If device encryption isn't available on your device, you can turn on standard [BitLocker encryption](https://support.microsoft.com/help/4028713/windows-10-turn-on-device-encryption) instead. (BitLocker isn't available on Windows 10 Home edition.) 

### Protect your device with Windows Security

If you have Windows 10 or 11, you'll get the latest antivirus protection with Windows Security. When you start up Windows 10 for the first time, Windows Security is on and actively helping to protect your PC by scanning for malware (malicious software), viruses, and security threats. Windows Security uses real-time protection to scan everything you download or run on your PC.

Windows Update downloads updates for Windows Security automatically to help keep your PC safe and protect it from threats.

If you have an earlier version of Windows and are using Microsoft Security Essentials, it's a good idea to move to Windows Security. For more information, see [help protect my device with Windows Security](https://support.microsoft.com/help/17464/windows-10-help-protect-my-device-with-windows-security).

### Turn on Windows Defender Firewall

You should always run Windows Defender Firewall even if you have another firewall turned on. Turning off Windows Defender Firewall might make your device (and your network, if you have one) more vulnerable to unauthorized access. See [Turn Windows Firewall on or off](https://support.microsoft.com/help/4028544/windows-10-turn-windows-defender-firewall-on-or-off) for instructions.

## Next mission

Okay, mission complete! Now, let's work on [securing the email system](m365bp-use-email-securely.md) against phishing and other attacks.

## [Mac](#tab/Mac)

## Mac

### Use FileVault to encrypt your Mac disk

Disk encryption protects data when devices are lost or stolen. FileVault full-disk encryption helps prevent unauthorized access to the information on your startup disk. See [use FileVault to encrypt the startup disk on your Mac](https://support.apple.com/HT204837) for instructions.

### Protect your Mac from malware

Microsoft recommends that you install and use reliable antivirus software on your Mac. See the following article for a list of choices: [Best Mac antivirus 2019](https://www.macworld.co.uk/feature/mac-software/mac-antivirus-3672182/).

You can also reduce the risk of malware by using software only from reliable sources. The settings in Security & Privacy preferences allow you to specify the sources of software installed on your Mac. For more information, see [protect your Mac from malware](https://support.apple.com/kb/PH25087).

### Turn on firewall protection

Use firewall settings to protect your Mac from unwanted contact initiated by other computers when you're connected to the Internet or a network. Without this protection, your Mac might be more vulnerable to unauthorized access. See [about the application firewall](https://support.apple.com/HT201642) for instructions.

## Next mission

Okay, mission complete! Now, let's work on [securing email usage](m365bp-use-email-securely.md) against phishing and other attacks.