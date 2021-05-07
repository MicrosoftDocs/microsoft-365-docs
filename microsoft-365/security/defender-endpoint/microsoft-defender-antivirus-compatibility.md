---
title: Microsoft Defender Antivirus compatibility with other security products
description: Learn about Microsoft Defender Antivirus with other security products and the operating systems.
keywords: windows defender, defender for endpoint, next-generation, antivirus, compatibility, passive mode
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: tewchen, pahuijbr
ms.topic: article
manager: dansimp
ms.technology: mde
ms.date: 05/06/2021
---

# Microsoft Defender Antivirus compatibility

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

## Summary

Microsoft Defender Antivirus is automatically enabled and installed on endpoints and devices that are running Windows 10. But what happens when another (non-Microsoft) antivirus/antimalware solution is used? It depends on whether you're using [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) together with your antivirus protection. This article describes what happens with antivirus/antimalware solutions when endpoints are onboarded to Microsoft Defender for Endpoint.

## Why Defender for Endpoint matters

Consider onboarding your endpoints to Defender for Endpoint, even if you are using a non-Microsoft antivirus/antimalware solution. In most cases, when you onboard your devices to Defender for Endpoint, you can use Microsoft Defender Antivirus alongside your non-Microsoft antivirus solution for added protection. For example, you can use [EDR in block mode](edr-in-block-mode.md), which blocks and remediates malicious artifacts that your primary antivirus solution might have missed. 

Here's how it works:

- If your organization's client devices are protected by a non-Microsoft antivirus/antimwalware solution, when those devices are onboarded to Defender for Endpoint, Microsoft Defender Antivirus goes into passive mode automatically. In this case, threat detections occur, but real-time protection and threats are not remediated by Microsoft Defender Antivirus. **NOTE**: This particular scenario does not apply to endpoints running Windows Server.

- If your organization's client devices are protected by a non-Microsoft antivirus/antimalware solution, and those devices are not onboarded to Microsoft Defender for Endpoint, then Microsoft Defender Antivirus goes into disabled mode automatically. In this case, threats are not detected or remediated by Microsoft Defender Antivirus. **NOTE**: This particular scenario does not apply to endpoints running Windows Server.

- If your organization's endpoints are running Windows Server and those endpoints are protected by a non-Microsoft antivirus/antimalware solution, when those endpoints are onboarded to Defender for Endpoint, Microsoft Defender Antivirus does not go into either passive mode or disabled mode automatically. In this particular scenario, you must configure your Windows Server endpoints appropriately. 

   - On Windows Server, version 1803 or newer, and Windows Server 2019, you can set Microsoft Defender Antivirus to run in passive mode. 
   - On Windows Server 2016, Microsoft Defender Antivirus must be disabled (passive mode is not supported on Windows Server 2016).

- If your organization's endpoints are protected by a non-Microsoft antivirus/antimalware solution, when those devices are onboarded to Defender for Endpoint with [EDR in block mode](/microsoft-365/security/defender-endpoint/edr-in-block-mode) enabled, then Defender for Endpoint blocks and remediates malicious artifacts. **NOTE**: This particular scenario does not apply to Windows Server 2016. EDR in block mode requires Microsoft Defender Antivirus to be enabled in either active mode or passive mode.

## Antivirus and Microsoft Defender for Endpoint

The following table summarizes what happens with Microsoft Defender Antivirus when non-Microsoft antivirus/antimalware solutions are used together or without Microsoft Defender for Endpoint. 

| Windows version   | Antivirus/antimalware solution  | Onboarded to <br/> Defender for Endpoint? | Microsoft Defender Antivirus state     |
|------|------|-------|-------|
| Windows 10  | Microsoft Defender Antivirus | Yes  | Active mode | 
| Windows 10  | Microsoft Defender Antivirus | No   | Active mode |
| Windows 10  | A non-Microsoft antivirus/antimalware solution | Yes  | Passive mode (automatically) |
| Windows 10  | A non-Microsoft antivirus/antimalware solution | No   | Disabled mode (automatically)    |
| Windows Server, version 1803 or newer <p> Windows Server 2019 | Microsoft Defender Antivirus  | Yes |         Active mode  |
| Windows Server, version 1803 or newer <p> Windows Server 2019 | Microsoft Defender Antivirus | No  | Active mode |
| Windows Server, version 1803 or newer <p> Windows Server 2019 | A non-Microsoft antivirus/antimalware solution | Yes  | Microsoft Defender Antivirus must be set to passive mode (manually) <sup>[[1](#fn1)]<sup>  | 
| Windows Server, version 1803 or newer <p> Windows Server 2019 | A non-Microsoft antivirus/antimalware solution | No  | Microsoft Defender Antivirus must be disabled (manually) <sup>[[2](#fn2)]<sup></sup>  |
| Windows Server 2016 | Microsoft Defender Antivirus | Yes | Active mode |
| Windows Server 2016 | Microsoft Defender Antivirus | No | Active mode |
| Windows Server 2016 | A non-Microsoft antivirus/antimalware solution | Yes | Microsoft Defender Antivirus must be disabled (manually) <sup>[[2](#fn2)]<sup> |
| Windows Server 2016 | A non-Microsoft antivirus/antimalware solution | No | Microsoft Defender Antivirus must be disabled (manually) <sup>[[2](#fn2)]<sup> |

(<a id="fn1">1</a>)  On Windows Server, version 1803 or newer, or Windows Server 2019, Microsoft Defender Antivirus does not enter passive mode automatically when you install a non-Microsoft antivirus product. In those cases, [set Microsoft Defender Antivirus to passive mode](microsoft-defender-antivirus-on-windows-server.md#need-to-set-microsoft-defender-antivirus-to-passive-mode) to prevent problems caused by having multiple antivirus products installed on a server. You can set Microsoft Defender Antivirus to passive mode using PowerShell, Group Policy, or a registry key.

If you are using Windows Server, version 1803 or newer, or Windows Server 2019, you can set Microsoft Defender Antivirus to passive mode by setting the following registry key:
- Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`
- Name: `ForceDefenderPassiveMode`
- Type: `REG_DWORD`
- Value: `1`

> [!NOTE]
> Passive mode is not supported on Windows Server 2016. The `ForcePassiveMode` registry key can be used on Windows Server, version 1803 or newer, or Windows Server 2019, but not Windows Server 2016. 

(<a id="fn2">2</a>) On Windows Server 2016, if you are using a non-Microsoft antivirus product, you cannot run Microsoft Defender Antivirus in either passive mode or active mode. In such cases, [disable/uninstall Microsoft Defender Antivirus manually](microsoft-defender-antivirus-on-windows-server.md#are-you-using-windows-server-2016) to prevent problems caused by having multiple antivirus products installed on a server.

See [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md) for key differences and management options for Windows Server installations.

> [!IMPORTANT]
> Microsoft Defender Antivirus is only available on devices running Windows 10, Windows Server 2016, Windows Server, version 1803 or later, and Windows Server 2019.
>
> In Windows 8.1 and Windows Server 2012, enterprise-level endpoint antivirus protection is offered as [System Center Endpoint Protection](/previous-versions/system-center/system-center-2012-R2/hh508760(v=technet.10)), which is managed through Microsoft Endpoint Configuration Manager.
>
> Windows Defender is also offered for [consumer devices on Windows 8.1 and Windows Server 2012](/previous-versions/windows/it-pro/windows-8.1-and-8/dn344918(v=ws.11)#BKMK_WindowsDefender), although it does not provide enterprise-level management (or an interface on Windows Server 2012 Server Core installations).

## Functionality and features available in each state

The table in this section summarizes the functionality and features that are available in each state. The table is designed to be informational only. It is intended to describe the features & capabilities that are actively working or not, according to whether Microsoft Defender Antivirus is in active mode, in passive mode, or is disabled/uninstalled. 

> [!IMPORTANT]
> Do not turn off capabilities, such as real-time protection, cloud-delivered protection, or limited periodic scanning, if you are using Microsoft Defender Antivirus in passive mode or you are using EDR in block mode. 

|Protection |Active mode |Passive mode |EDR in block mode |Disabled or uninstalled |
|:---|:---|:---|:---|:---|
| [Real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md) and [cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) | Yes | No <sup>[[3](#fn3)]<sup> | No | No |
| [Limited periodic scanning availability](limited-periodic-scanning-microsoft-defender-antivirus.md) | No | No | No | Yes |
| [File scanning and detection information](customize-run-review-remediate-scans-microsoft-defender-antivirus.md) | Yes | Yes | Yes | No |
|  [Threat remediation](configure-remediation-microsoft-defender-antivirus.md) | Yes | See note <sup>[[4](#fn4)]<sup> | Yes | No |
| [Security intelligence updates](manage-updates-baselines-microsoft-defender-antivirus.md) | Yes | Yes | Yes | No |

(<a id="fn3">3</a>) In general, when Microsoft Defender Antivirus is in passive mode, real-time protection does not provide any blocking or enforcement, even though it is enabled and in passive mode. 

(<a id="fn4">4</a>) When Microsoft Defender Antivirus is in passive mode, threat remediation features are active only during scheduled or on-demand scans.

> [!NOTE]
> [Microsoft 365 Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-learn-about) protection continues to operate normally when Microsoft Defender Antivirus is in active or passive mode.

## Keep the following points in mind

- In active mode, Microsoft Defender Antivirus is used as the antivirus app on the machine. All configuration made with Configuration Manager, Group Policy, Intune, or other management products will apply. Files are scanned and threats remediated, and detection information are reported in your configuration tool (such as Configuration Manager or the Microsoft Defender Antivirus app on the machine itself).

- In passive mode, Microsoft Defender Antivirus is not used as the antivirus app, and threats are not remediated by Microsoft Defender Antivirus. Files are scanned and reports are provided for threat detections that are shared with the Microsoft Defender for Endpoint service. You might see alerts in the [security center](microsoft-defender-security-center.md) showing Microsoft Defender Antivirus as a source, even when Microsoft Defender Antivirus is in passive mode.

- When [EDR in block mode](edr-in-block-mode.md) is turned on and Microsoft Defender Antivirus is not the primary antivirus solution, it will detect and remediate malicious items. EDR in block mode requires Microsoft Defender Antivirus to be enabled in either active mode or passive mode.

- When disabled, Microsoft Defender Antivirus is not used as the antivirus app. Files are not scanned and threats are not remediated. Disabling/uninstalling Microsoft Defender Antivirus is not recommended in general; if possible, keep Microsoft Defender Antivirus in passive mode if you are using a non-Microsoft antimalware/antivirus solution.

- If you are enrolled in Microsoft Defender for Endpoint and you are using a third-party antimalware product, then passive mode is enabled. The service requires common information sharing from Microsoft Defender Antivirus service in order to properly monitor your devices and network for intrusion attempts and attacks. To learn more, see [Microsoft Defender Antivirus compatibility with Microsoft Defender for Endpoint](defender-compatibility.md). 

- When Microsoft Defender Antivirus is in passive mode, you can still [manage updates for Microsoft Defender Antivirus](manage-updates-baselines-microsoft-defender-antivirus.md); however, you can't move Microsoft Defender Antivirus into active mode if your devices have an up-to-date, non-Microsoft antivirus product that is providing real-time protection from malware. For optimal security layered defense and detection efficacy, make sure to update the [Microsoft Defender Antivirus protection (Security intelligence update, Engine, and Platform)](manage-updates-baselines-microsoft-defender-antivirus.md) even if Microsoft Defender Antivirus is running in passive mode.

- When Microsoft Defender Antivirus is disabled automatically, it can be re-enabled automatically if the protection offered by a non-Microsoft antivirus product expires or otherwise stops providing real-time protection from viruses, malware, or other threats. Automatic re-enabling helps to ensure that antivirus protection is maintained on your devices. It also allows you to enable [limited periodic scanning](limited-periodic-scanning-microsoft-defender-antivirus.md), which uses the Microsoft Defender Antivirus engine to periodically check for threats in addition to your main antivirus app.

> [!WARNING]
> Do not disable, stop, or modify any of the associated services that are used by Microsoft Defender Antivirus, Microsoft Defender for Endpoint, or the Windows Security app. This recommendation includes the *wscsvc*, *SecurityHealthService*, *MsSense*, *Sense*, *WinDefend*, or *MsMpEng* services and processes. Manually modifying these services can cause severe instability on your devices and can make your network vulnerable. Disabling, stopping, or modifying those services can also cause problems when using non-Microsoft antivirus solutions and how their information is displayed in the [Windows Security app](microsoft-defender-security-center-antivirus.md).


## See also

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md)
- [EDR in block mode](edr-in-block-mode.md)
- [Configure Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-protection-configure)
- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
- [Learn about Microsoft 365 Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-learn-about)
