---
title: Protect security settings with tamper protection
ms.reviewer: mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Use tamper protection to prevent malicious apps from changing important security settings.
keywords: malware, defender, antivirus, tamper protection
ms.pagetype: security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.date: 10/17/2022
audience: ITPro
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: 
- nextgen
- admindeeplinkDEFENDER
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Protect security settings with tamper protection

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows
- macOS

Tamper protection is available for devices that are running one of the following versions of Windows:

- Windows 11
- Windows 11 Enterprise multi-session 
- Windows 10
- Windows 10 Enterprise multi-session
- Windows Server 2022
- Windows Server 2019
- Windows Server, version 1803 or later
- Windows Server 2016
- Windows Server 2012 R2

> [!NOTE]
> Tamper protection in Windows Server 2012 R2 is available for devices onboarded using the modern unified solution package. For more information, see [Onboard Windows servers to the Microsoft Defender for Endpoint service](/microsoft-365/security/defender-endpoint/configure-server-endpoints).

Tamper protection is available for devices that are running one of the following versions of macOS:

- Monterey (12)
- Big Sur (11)
- Catalina (10.15+)

## Overview

During some kinds of cyber attacks, bad actors try to disable security features, such as antivirus protection, on your machines. Bad actors like to disable your security features to get easier access to your data, to install malware, or to otherwise exploit your data, identity, and devices. Tamper protection helps prevent these kinds of things from occurring. With tamper protection, malicious apps are prevented from taking actions such as:

- Disabling virus and threat protection
- Disabling real-time protection
- Turning off behavior monitoring
- Disabling antivirus protection, such as IOfficeAntivirus (IOAV)
- Disabling cloud-delivered protection
- Removing security intelligence updates
- Disabling automatic actions on detected threats
- Suppressing notifications in the Windows Security app
- Disabling scanning of archives and network files

> [!IMPORTANT]
> Built-in protection includes turning tamper protection on by default. To learn more about built-in protection, see:
> - [Built-in protection helps guard against ransomware](built-in-protection.md) (article)
> - [Tamper protection will be turned on for all enterprise customers](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/tamper-protection-will-be-turned-on-for-all-enterprise-customers/ba-p/3616478) (Tech Community blog post)

### How it works

Tamper protection essentially locks Microsoft Defender Antivirus to its secure, default values, and prevents your security settings from being changed through apps and methods such as:

- Configuring settings in Registry Editor on your Windows device
- Changing settings through PowerShell cmdlets
- Editing or removing security settings through Group Policy

Tamper protection doesn't prevent you from viewing your security settings. And, tamper protection doesn't affect how non-Microsoft antivirus apps register with the Windows Security app. If your organization is using Windows 10 Enterprise E5, individual users can't change the tamper protection setting; in those cases, tamper protection is managed by your security team.

### What do you want to do?

|To perform this task...|See this section...|
|---|---|
|Manage tamper protection across your tenant <p> Use the Microsoft 365 Defender portal to turn tamper protection on or off|[Manage tamper protection for your organization using Microsoft 365 Defender](manage-tamper-protection-microsoft-365-defender.md)|
|Fine-tune tamper protection settings in your organization <p> Use Intune (Microsoft Endpoint Manager) to turn tamper protection on or off. You can configure tamper protection for some or all users with this method.|[Manage tamper protection for your organization using Microsoft Endpoint Manager](manage-tamper-protection-microsoft-endpoint-manager.md)|
|Turn tamper protection on (or off) for your organization with Configuration Manager|[Manage tamper protection for your organization using tenant attach with Configuration Manager, version 2006](manage-tamper-protection-configuration-manager.md)|
|Turn tamper protection on (or off) for an individual device|[Manage tamper protection on an individual device](manage-tamper-protection-individual-device.md)|
|View details about tampering attempts on devices|[View information about tampering attempts](#view-information-about-tampering-attempts)|
|Review your security recommendations|[Review security recommendations](#review-your-security-recommendations)|
|Review the list of frequently asked questions (FAQs)|[Browse the FAQs](faqs-tamper-protection.md)|

## Potential dependency on cloud protection  
  
Depending on the method or management tool you use to enable tamper protection, there might be a dependency on [cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md). Cloud-delivered protection is also referred to as cloud protection, or Microsoft Advanced Protection Service (MAPS).

The following table provides details on the methods, tools, and dependencies.

| How tamper protection is enabled | Dependency on cloud protection |
|---|---|
|Microsoft Intune|No|
|Microsoft Endpoint Configuration Manager with Tenant Attach|No|
|Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com))|Yes|

## Are you using Windows Server 2012 R2, 2016, or Windows version 1709, 1803, or 1809?

If you're using Windows Server 2012 R2 using the modern unified solution, Windows Server 2016, Windows 10 version 1709, 1803, or [1809](/windows/release-health/status-windows-10-1809-and-windows-server-2019), you won't see **Tamper Protection** in the Windows Security app. Instead, you can use PowerShell to determine whether tamper protection is enabled.

On Windows Server 2016, the Settings app won't accurately reflect the status of real-time protection when tamper protection is enabled.

### Use PowerShell to determine whether tamper protection and real-time protection are turned on

1. Open the Windows PowerShell app.

2. Use the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus?preserve-view=true&view=win10-ps) PowerShell cmdlet.

3. In the list of results, look for `IsTamperProtected` or `RealTimeProtectionEnabled`. (A value of *true* means tamper protection is enabled.)

## View information about tampering attempts

Tampering attempts typically indicate bigger cyberattacks. Bad actors try to change security settings as a way to persist and stay undetected. If you're part of your organization's security team, you can view information about such attempts, and then take appropriate actions to mitigate threats.

When a tampering attempt is detected, an alert is raised in the [Microsoft 365 Defender portal](/microsoft-365/security/defender-endpoint/portal-overview) ([https://security.microsoft.com](https://security.microsoft.com)).

Using [endpoint detection and response](overview-endpoint-detection-response.md) and [advanced hunting](advanced-hunting-overview.md) capabilities in Microsoft Defender for Endpoint, your security operations team can investigate and address such attempts.

## Review your security recommendations

Tamper protection integrates with [Microsoft Defender Vulnerability Management](next-gen-threat-and-vuln-mgt.md) capabilities. [Security recommendations](tvm-security-recommendation.md) include making sure tamper protection is turned on. For example, you can search on *tamper*. In the results, you can select **Turn on Tamper Protection** to learn more and turn it on.

To learn more about Microsoft Defender Vulnerability Management, see [Dashboard insights - Defender Vulnerability Management](tvm-dashboard-insights.md#dashboard-insights---threat-and-vulnerability-management).


> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## See also

- [Help secure Windows PCs with Endpoint Protection for Microsoft Intune](/intune/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune)
- [Get an overview of Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint)
- [Better together: Microsoft Defender Antivirus and Microsoft Defender for Endpoint](why-use-microsoft-defender-antivirus.md)
- [Enable troubleshooting mode](enable-troubleshooting-mode.md)
- [Troubleshooting mode scenarios](troubleshooting-mode-scenarios.md)
