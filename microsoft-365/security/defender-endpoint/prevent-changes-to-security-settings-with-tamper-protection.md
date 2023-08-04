---
title: Protect security settings with tamper protection
ms.reviewer: joshbregman, mattcall, pahuijbr, hayhov
manager: dansimp
description: Use tamper protection to prevent malicious apps from changing important security settings.
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.date: 06/23/2023
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
- [Microsoft Defender Antivirus](microsoft-defender-antivirus-windows.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)
- [Microsoft 365 Business Premium](../../business-premium/index.md)

**Platforms**
- Windows
- [macOS](tamperprotection-macos.md)

## What is tamper protection?

Tamper protection is a capability in Microsoft Defender for Endpoint that helps protect certain security settings, such as virus and threat protection, from being disabled or changed. During some kinds of cyber attacks, bad actors try to disable security features on devices. Disabling security features provides bad actors with easier access to your data, the ability to install malware, and the ability to exploit your data, identity, and devices. Tamper protection helps guard against these types of activities. 

Tamper protection is part of anti-tampering capabilities that include [standard protection attack surface reduction rules](attack-surface-reduction-rules-reference.md). Tamper protection is an important part of [built-in protection](built-in-protection.md).

## What happens when tamper protection is turned on?

When tamper protection is turned on, these tamper-protected settings can't be changed:

- Virus and threat protection remains enabled.
- Real-time protection remains turned on.
- Behavior monitoring remains turned on.
- Antivirus protection, including IOfficeAntivirus (IOAV) remains enabled.
- Cloud protection remains enabled.
- Security intelligence updates occur.
- Automatic actions are taken on detected threats.
- Notifications are visible in the Windows Security app on Windows devices.
- Archived files are scanned. 

*As of signature release `1.383.1159.0`, due to confusion around the default value for "Allow Scanning Network Files", tamper protection no longer locks this setting to its default value. In managed environments, the default value is enabled.*

> [!IMPORTANT]
> When tamper protection is turned on, tamper-protected settings cannot be changed. To avoid breaking management experiences, including [Intune](manage-tamper-protection-intune.md) and [Configuration Manager](manage-tamper-protection-configuration-manager.md), keep in mind that changes made to tamper-protected settings might appear to succeed but are actually blocked by tamper protection. Depending on your particular scenario, you have several options available: 
> - If you must make changes to a device and those changes are blocked by tamper protection, you can use [troubleshooting mode](/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode) to temporarily disable tamper protection on the device.
> - You can use Intune or Configuration Manager to exclude devices from tamper protection. 

Tamper protection doesn't prevent you from viewing your security settings. And, tamper protection doesn't affect how non-Microsoft antivirus apps register with the Windows Security app. If your organization is using Defender for Endpoint, individual users can't change the tamper protection setting; in those cases, tamper protection is managed by your security team. For more information, see [How do I configure or manage tamper protection](#how-do-i-configure-or-manage-tamper-protection)?

## On what devices can tamper protection be enabled?

Tamper protection is available for devices that are running one of the following versions of Windows:

- Windows 10 and 11 (including Enterprise multi-session)
- Windows Server 2022, Windows Server 2019, and Windows Server, version 1803 or later
- Windows Server 2016 and Windows Server 2012 R2 (using the modern, unified solution)

Tamper protection is also available for Mac, although it works a little differently than on Windows. For more information, see [Protect macOS security settings with tamper protection](tamperprotection-macos.md).

> [!TIP]
> [Built-in protection](built-in-protection.md) includes turning tamper protection on by default. For more information, see:
> - [Built-in protection helps guard against ransomware](built-in-protection.md) (article)
> - [Tamper protection will be turned on for all enterprise customers](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/tamper-protection-will-be-turned-on-for-all-enterprise-customers/ba-p/3616478) (Tech Community blog post)

### Tamper protection on Windows Server 2012 R2, 2016, or Windows version 1709, 1803, or 1809

If you're using Windows Server 2012 R2 using the modern unified solution, Windows Server 2016, Windows 10 version 1709, 1803, or [1809](/windows/release-health/status-windows-10-1809-and-windows-server-2019), you won't see **Tamper Protection** in the Windows Security app. Instead, you can use PowerShell to determine whether tamper protection is enabled.

> [!IMPORTANT]
> On Windows Server 2016, the Settings app won't accurately reflect the status of real-time protection when tamper protection is enabled.

### Use PowerShell to determine whether tamper protection and real-time protection are turned on

1. Open the Windows PowerShell app.

2. Use the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus?preserve-view=true&view=win10-ps) PowerShell cmdlet.

3. In the list of results, look for `IsTamperProtected` or `RealTimeProtectionEnabled`. (A value of *true* means tamper protection is enabled.)

## How do I configure or manage tamper protection?

You can use Microsoft Intune and other methods to configure or manage tamper protection, as listed in the following table:

| Method | What you can do |
|:---|:---|
| Use the [Microsoft 365 Defender portal](https://security.microsoft.com). | Turn tamper protection on (or off), tenant wide. See [Manage tamper protection for your organization using Microsoft 365 Defender](manage-tamper-protection-microsoft-365-defender.md). <br/><br/>*This method won't override settings that are managed in Microsoft Intune or Configuration Manager with tenant attach.* |
| Use the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431). | Turn tamper protection on (or off), tenant wide, or apply tamper protection to some users/devices. You can exclude certain devices from tamper protection. See [Manage tamper protection for your organization using Intune](manage-tamper-protection-intune.md).<br/><br/>Protect Microsoft Defender Antivirus exclusions from tampering. See [Tamper protection for antivirus exclusions](manage-tamper-protection-intune.md#tamper-protection-for-antivirus-exclusions).  |
| Use [Configuration Manager with tenant attach](manage-tamper-protection-configuration-manager.md). | Turn tamper protection on (or off), tenant wide, or apply tamper protection to some users/devices. You can exclude certain devices from tamper protection. See [Manage tamper protection for your organization using tenant attach with Configuration Manager, version 2006](manage-tamper-protection-configuration-manager.md). |
| Use the [Windows Security app](manage-tamper-protection-individual-device.md). | Turn tamper protection on (or off) on an individual device that isn't managed by a security team (such as devices for home use). See [Manage tamper protection on an individual device](manage-tamper-protection-individual-device.md).<br/><br/>*This method won't override tamper protection settings that are managed by the Microsoft 365 Defender portal, Intune, or Configuration Manager, and it isn't intended to be used by organizations.* |

> [!TIP]
> If you're using Group Policy to manage Microsoft Defender Antivirus settings, keep in mind that any changes made to tamper-protected settings are ignored. If you must make changes to a device and those changes are blocked by tamper protection, use [troubleshooting mode](/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode) to temporarily disable tamper protection on the device. After troubleshooting mode ends, any changes made to tamper-protected settings are reverted to their configured state.

## Protect Microsoft Defender Antivirus exclusions

Under certain conditions, tamper protection can protect exclusions that are defined for Microsoft Defender Antivirus. For more information, see [Tamper protection for exclusions](manage-tamper-protection-intune.md#tamper-protection-for-antivirus-exclusions).

## View information about tampering attempts

Tampering attempts typically indicate that a larger cyberattack has taken place. Bad actors try to change security settings as a way to persist and stay undetected. If you're part of your organization's security team, you can view information about such attempts, and then take appropriate actions to mitigate threats.

Whenever a tampering attempt is detected, an alert is raised in the [Microsoft 365 Defender portal](/microsoft-365/security/defender-endpoint/portal-overview) ([https://security.microsoft.com](https://security.microsoft.com)).

Using [endpoint detection and response](overview-endpoint-detection-response.md) and [advanced hunting](advanced-hunting-overview.md) capabilities in Microsoft Defender for Endpoint, your security operations team can investigate and address such attempts.

## Review your security recommendations

Tamper protection integrates with [Microsoft Defender Vulnerability Management](next-gen-threat-and-vuln-mgt.md) capabilities. [Security recommendations](tvm-security-recommendation.md) include making sure tamper protection is turned on. For example, in your [Vulnerability Management dashboard](/microsoft-365/security/defender-vulnerability-management/tvm-dashboard-insights#vulnerability-management-dashboard), you can search on *tamper*. In the results, you can select **Turn on Tamper Protection** to learn more and turn it on.

To learn more about Microsoft Defender Vulnerability Management, see [Dashboard insights - Defender Vulnerability Management](tvm-dashboard-insights.md#dashboard-insights---threat-and-vulnerability-management).


## See also

- [Protect macOS security settings with tamper protection](tamperprotection-macos.md)
- [Built-in protection helps guard against ransomware](built-in-protection.md)
- [Frequently asked questions on tamper protection](faqs-on-tamper-protection.yml)
- [Troubleshoot problems with tamper protection](troubleshoot-problems-with-tamper-protection.yml)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]

