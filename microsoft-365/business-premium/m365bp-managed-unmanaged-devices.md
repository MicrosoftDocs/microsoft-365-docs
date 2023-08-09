---
title: Secure managed and unmanaged devices            
description: Identify personal, unmanaged devices and company-owned devices, and learn how to secure them.            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 05/08/2023
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

- **Managed devices** are typically company-owned devices that are usually set up and configured by your company's IT or security team. 
- **Unmanaged devices**, also referred to as bring-your-own devices, or *BYOD*, tend to be personally owned devices that employees set up and use. Unmanaged devices can be onboarded and protected just like managed devices. Or, if you prefer, users can take steps to protect their BYOD devices themselves. 

##  [**Managed devices**](#tab/Managed)
 
To protect managed devices, your organization's IT or security team can: 

- **Use Windows Autopilot to get a user's Windows device ready for first use**. With Autopilot you can install business critical apps, apply policies, and enable features like BitLocker before the device is given to a user. You can also use Autopilot to reset reset, repurpose, and recover Windows devices. To learn more, see [Windows Autopilot](/mem/autopilot/windows-autopilot).
- **Upgrade Windows devices from previous versions of Windows to Windows 10 Pro or Windows 11 Pro**. Before onboarding, Windows client devices should be running Windows 10 Pro or Enterprise, or Windows 11 Pro or Enterprise. If your organization has Windows devices running Windows 7 Pro, Windows 8 Pro, or Windows 8.1 Pro, your Microsoft 365 Business Premium subscription entitles you to upgrade those devices at no additional cost. To learn more, see [Upgrade Windows devices to Windows 10 or 11 Pro](m365bp-upgrade-windows-pro.md).  
- **Onboard devices and protect them with [mobile threat defense](../security/defender-business/mdb-mtd.md) capabilities**. Microsoft Defender for Business is included with Microsoft 365 Business Premium. It includes advanced protection from ransomware, malware, phishing, and other threats. If you prefer to use [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) instead, you can use Intune to enroll and manage devices. To learn more, see [Onboard devices to Microsoft Defender for Business](m365bp-onboard-devices-mdb.md).
- **View and monitor device health in the Microsoft 365 Defender portal** ([https://security.microsoft.com](https://security.microsoft.com)). You can view details, such as health state and exposure level for all onboarded devices. You can also take actions, such as running an antivirus scan or starting an automated investigation on a device that has detected threats or vulnerabilities. To learn more, see [Monitor onboarded devices](m365bp-device-states.md) and [Review detected threats](m365bp-review-threats-take-action.md). 

For their part in protecting managed devices, users can:

- **Use the Microsoft Authenticator app to sign in**. The Microsoft Authenticator app works with all accounts that use multi-factor authentication (MFA). To learn more, see [Download and install the Microsoft Authenticator app](https://support.microsoft.com/en-us/account-billing/download-and-install-the-microsoft-authenticator-app-351498fc-850a-45da-b7b6-27e523b8702a).
- **Join their devices to your organization's network**. Users can follow a process to register their device, set up MFA, and complete the sign-in process using their account. To learn more, see [Join your work device to your work or school network](https://support.microsoft.com/en-us/account-billing/join-your-work-device-to-your-work-or-school-network-ef4d6adb-5095-4e51-829e-5457430f3973).
- **Make sure antivirus/antimalware software is installed and up to date on all devices**. Once devices are onboarded, antivirus, antimalware, and other threat protection capabilities are configured for those devices. Users are prompted to install updates as they come in. To learn more, see See [Keep your PC up to date](https://support.microsoft.com/en-us/windows/keep-your-pc-up-to-date-de79813c-7919-5fed-080f-0871c7bd9bde).

To learn more about protecting managed devices, see [Set up and secure managed devices](m365bp-protect-managed-devices.md).

##  [**Unmanaged devices**](#tab/Unmanaged)

To protect unmanaged devices, such as BYOD devices, your organization's IT or security team can:

- **Encourage users to keep their antivirus protection turned on and up to date**. Devices should have the latest technology and features needed to protect against new malware and attack techniques. Microsoft regularly releases security intelligence updates and product updates. To learn more, see [Microsoft Defender Antivirus security intelligence and product updates](../security/defender-endpoint/microsoft-defender-antivirus-updates.md).
- **Consider onboarding unmanaged devices and protecting them with [mobile threat defense](../security/defender-business/mdb-mtd.md) capabilities**. Or, if you prefer to use [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), you can use Intune to enroll and manage devices. To learn more, see [Onboard devices to Microsoft Defender for Business](m365bp-onboard-devices-mdb.md).
- **View and monitor device health in the Microsoft 365 Defender portal** ([https://security.microsoft.com](https://security.microsoft.com)). After devices are onboarded to Defender for Business (or Intune), you can view details, such as health state and exposure level for onboarded devices. You can also take actions, such as running an antivirus scan or starting an automated investigation on a device that has detected threats or vulnerabilities. To learn more, see [Monitor onboarded devices](m365bp-device-states.md) and [Review detected threats](m365bp-review-threats-take-action.md). 

For their part in protecting unmanaged devices, users can:

- **Turn on encryption and firewall protection**. Disk encryption protects data when devices are lost or stolen. Firewall protection helps protect devices from unwanted contact initiated by other computers when you're connected to the Internet or a network. To learn more, see [Protect unmanaged Windows PCs and Macs in Microsoft 365 Business Premium](m365bp-protect-pcs-macs.md).
- **Make sure antivirus/antimalware software is installed and up to date on all devices**. To learn more, see  [Stay protected with Windows Security](https://support.microsoft.com/en-us/windows/stay-protected-with-windows-security-2ae0363d-0ada-c064-8b56-6a39afb6a963).
- **Keep their devices up to date with operating system and application updates**. To learn more, see [Keep your PC up to date](https://support.microsoft.com/en-us/windows/keep-your-pc-up-to-date-de79813c-7919-5fed-080f-0871c7bd9bde).
- **Consider allowing their devices to be managed by your security team**. Microsoft 365 Business Premium includes advanced protection from ransomware, malware, phishing, and other threats. To learn more, select the **Managed devices** tab (in this article).

To learn more about protecting unmanaged devices, see [Set up unmanaged (BYOD) devices](m365bp-set-up-unmanaged-devices.md).

---

## Next steps

- [Set up information protection capabilities](m365bp-set-up-compliance.md)
- [Set up BYOD devices](m365bp-set-up-unmanaged-devices.md) or [Set up and secure managed devices](m365bp-protect-managed-devices.md)
- [Use email securely](m365bp-use-email-securely.md)
- [Collaborate and share securely](m365bp-collaborate-share-securely.md)