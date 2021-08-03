---
title: Microsoft Defender Antivirus compatibility with other security products
description: Learn about Microsoft Defender Antivirus with other security products and the operating systems.
keywords: windows defender, defender for endpoint, next-generation, antivirus, compatibility, passive mode
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
localization_priority: normal
ms.topic: article
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: mkaminska, pahuijbr
manager: dansimp
ms.technology: mde
ms.date: 08/03/2021
---

# Microsoft Defender Antivirus compatibility

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender Antivirus
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)


Microsoft Defender Antivirus is automatically enabled and installed on endpoints and devices that are running Windows 10. But what happens when another (non-Microsoft) antivirus/antimalware solution is used? Can you run Microsoft Defender Antivirus alongside another antivirus product? The answers depend on several factors, such as your operating system and whether you're using [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) (Defender for Endpoint) together with your antivirus protection. 

This article describes what happens between Microsoft Defender Antivirus, non-Microsoft antivirus/antimalware solutions, and Defender for Endpoint, and includes the following sections: <br/><br/>


|Section  | Description  |
|---------|---------|
| [Microsoft Defender Antivirus and non-Microsoft antivirus/antimalware solutions](#microsoft-defender-antivirus-and-non-microsoft-antivirusantimalware-solutions)      | Describes what happens with Microsoft Defender Antivirus if a non-Microsoft antivirus solution is installed on the device. <br/><br/>**NOTE** This section focuses only on antivirus solutions and does not cover what happens when endpoints are onboarded to Defender for Endpoint.        |
| [Important points about Microsoft Defender Antivirus](#important-points-about-microsoft-defender-antivirus) | Lists the versions of Windows that include Microsoft Defender Antivirus and describes active mode, passive mode, and disabled mode.  | 
| [Defender for Endpoint together with antivirus solutions](#defender-for-endpoint-together-with-antivirus-solutions)     |  Describes what happens with Microsoft Defender Antivirus when a non-Microsoft antivirus solution is installed on devices that are onboarded to Defender for Endpoint.  |
| [How Microsoft Defender Antivirus affects Defender for Endpoint functionality](#how-microsoft-defender-antivirus-affects-defender-for-endpoint-functionality)  | Summarizes Defender for Endpoint features and capabilities that are actively working or not, according to whether Microsoft Defender Antivirus is in active mode, passive mode, or disabled/uninstalled.   |
| [Best practices regarding Defender for Endpoint and Microsoft Defender Antivirus](#best-practices-regarding-defender-for-endpoint-and-microsoft-defender-antivirus)  | Lists several important things to do (or not do) regarding Defender for Endpoint and your antivirus solution.   |
| [How Defender for Endpoint extends antivirus/antimalware protection](#how-defender-for-endpoint-extends-your-antivirusantimalware-protection)   | Lists several scenarios showing how Defender for Endpoint extends your antivirus/antimwalware protection across your endpoints.   |

## Microsoft Defender Antivirus and non-Microsoft antivirus/antimalware solutions

The operating system, antivirus product, and Defender for Endpoint affect whether Microsoft Defender Antivirus is in active mode, passive mode, or disabled. The following table summarizes what happens when Microsoft Defender Antivirus is used alongside a non-Microsoft antivirus/antimalware solution.

> [!NOTE]
> This section pertains only to antivirus/antimalware solutions installed on endpoints. If your organization is using Defender for Endpoint, make sure to review the section, [Defender for Endpoint together with antivirus solutions](#defender-for-endpoint-together-with-antivirus-solutions). 

| Windows version   | Primary antivirus/antimalware solution  | Microsoft Defender Antivirus state    |
|------|------|-------|-------|
| Windows 10  | Microsoft Defender Antivirus  | Active mode |
| Windows 10  | A non-Microsoft antivirus/antimalware solution | Disabled mode (happens automatically)    |
| Windows Server, version 1803 or newer <p> Windows Server 2019 | Microsoft Defender Antivirus  | Active mode |
| Windows Server, version 1803 or newer <p> Windows Server 2019 | A non-Microsoft antivirus/antimalware solution | Disabled (must be done manually) <sup>[[1](#fn1)]<sup></sup>  |
| Windows Server 2016 | Microsoft Defender Antivirus | Active mode |
| Windows Server 2016 | A non-Microsoft antivirus/antimalware solution | Disabled (must be done manually) or uninstalled (not recommended) <sup>[[2](#fn2)]<sup> |

(<a id="fn1">1</a>)  On Windows Server, version 1803 or newer, or Windows Server 2019, when you install a non-Microsoft antivirus product, set Microsoft Defender Antivirus to passive mode to prevent problems caused by having multiple antivirus products installed on a server. You can use PowerShell, Group Policy, or a registry key to perform this task. See [Microsoft Defender Antivirus on Windows Server: Need to set Microsoft Defender Antivirus to passive mode?](microsoft-defender-antivirus-on-windows-server.md#need-to-set-microsoft-defender-antivirus-to-passive-mode).

(<a id="fn2">2</a>) On endpoints running Windows Server 2016, if you are using a non-Microsoft antivirus product, you cannot run Microsoft Defender Antivirus alongside in either passive mode or active mode. In such cases, [disable/uninstall Microsoft Defender Antivirus manually](microsoft-defender-antivirus-on-windows-server.md#are-you-using-windows-server-2016) to prevent problems caused by having multiple antivirus products installed on a server.

> [!TIP]
> See [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md) for key differences and management options for Windows Server installations.

## Important points about Microsoft Defender Antivirus

- Microsoft Defender Antivirus is only available on devices running Windows 10, Windows Server 2016, Windows Server, version 1803 or later, and Windows Server 2019.

   - In Windows 8.1 and Windows Server 2012, enterprise-level endpoint antivirus protection is offered as [System Center Endpoint Protection](/previous-versions/system-center/system-center-2012-R2/hh508760(v=technet.10)), which is managed through Microsoft Endpoint Configuration Manager.

   - Windows Defender is also offered for [consumer devices on Windows 8.1 and Windows Server 2012](/previous-versions/windows/it-pro/windows-8.1-and-8/dn344918(v=ws.11)#BKMK_WindowsDefender), although it does not provide enterprise-level management (or an interface on Windows Server 2012 Server Core installations).

- In active mode, Microsoft Defender Antivirus is used as the antivirus app on the machine. Settings configured by using Configuration Manager, Group Policy, Microsoft Intune, or other management products will apply. Files are scanned, threats are remediated, and detection information is reported in your configuration tool (such as Configuration Manager or the Microsoft Defender Antivirus app on the endpoint itself).

- In passive mode, Microsoft Defender Antivirus is not used as the antivirus app, and threats are *not* remediated by Microsoft Defender Antivirus. Files are scanned and reports are provided for threat detections that are shared with the Defender for Endpoint service. You might see alerts in the [security center](microsoft-defender-security-center.md) showing Microsoft Defender Antivirus as a source, even when Microsoft Defender Antivirus is in passive mode.

- When disabled, Microsoft Defender Antivirus is not used as the antivirus app. Files are not scanned and threats are not remediated. Disabling or uninstalling Microsoft Defender Antivirus is not recommended in general; if possible, keep Microsoft Defender Antivirus in passive mode if you are using a non-Microsoft antimalware/antivirus solution.

- When Microsoft Defender Antivirus is in passive mode, you can still [manage updates for Microsoft Defender Antivirus](manage-updates-baselines-microsoft-defender-antivirus.md); however, you can't move Microsoft Defender Antivirus into active mode if your devices have a non-Microsoft antivirus product that is providing real-time protection from malware. For optimal security layered defense and detection efficacy, make sure to get your antivirus and antimwalware updates, even if Microsoft Defender Antivirus is running in passive mode. See [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).

- When Microsoft Defender Antivirus is disabled automatically, it can be re-enabled automatically if the non-Microsoft antivirus/antimalware product expires or otherwise stops providing real-time protection from viruses, malware, or other threats. The automatic re-enabling of Microsoft Defender Antivirus helps to ensure that antivirus protection is maintained on your endpoints. You can also enable [limited periodic scanning](limited-periodic-scanning-microsoft-defender-antivirus.md), which uses the Microsoft Defender Antivirus engine to periodically check for threats if you are using a non-Microsoft antivirus app.

## Defender for Endpoint together with antivirus solutions

Defender for Endpoint includes endpoint protection capabilities that further extend the antivirus protection that is installed on your device. When endpoints are onboarded to Defender for Endpoint, in most cases, Microsoft Defender Antivirus can run in passive mode alongside a non-Microsoft antivirus/antimalware solution. The following table summarizes what to expect: <br/><br/>

| Windows version   | Antivirus/antimalware solution  | Microsoft Defender Antivirus state <br/>(when endpoints are onboarded to Defender for Endpoint)    |
|------|------|-------|-------|
| Windows 10  | Microsoft Defender Antivirus | Active mode | 
| Windows 10  | A non-Microsoft antivirus/antimalware solution | Passive mode (automatically) |
| Windows Server, version 1803 or newer <p> Windows Server 2019 | Microsoft Defender Antivirus  | Active mode  |
| Windows Server, version 1803 or newer <p> Windows Server 2019 | A non-Microsoft antivirus/antimalware solution | Microsoft Defender Antivirus must be set to passive mode (manually) <sup>[[3](#fn3)]<sup>  | 
| Windows Server 2016 | Microsoft Defender Antivirus | Active mode |
| Windows Server 2016 | A non-Microsoft antivirus/antimalware solution | Microsoft Defender Antivirus must be disabled (manually) <sup>[[4](#fn4)]<sup> |

(<a id="fn3">3</a>)  On Windows Server, version 1803 or newer, or Windows Server 2019, when you install a non-Microsoft antivirus product, set Microsoft Defender Antivirus to passive mode to prevent problems caused by having multiple antivirus products installed on a server. You can use PowerShell, Group Policy, or a registry key to perform this task. See [Microsoft Defender Antivirus on Windows Server: Need to set Microsoft Defender Antivirus to passive mode?](microsoft-defender-antivirus-on-windows-server.md#need-to-set-microsoft-defender-antivirus-to-passive-mode).

(<a id="fn4">4</a>) On endpoints running Windows Server 2016, if you are using a non-Microsoft antivirus product, you cannot run Microsoft Defender Antivirus alongside in either passive mode or active mode. In such cases, [disable/uninstall Microsoft Defender Antivirus manually](microsoft-defender-antivirus-on-windows-server.md#are-you-using-windows-server-2016) to prevent problems caused by having multiple antivirus products installed on a server.

> [!TIP]
> See [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md) for key differences and management options for Windows Server installations.

## How Microsoft Defender Antivirus affects Defender for Endpoint functionality

When devices are onboarded to Defender for Endpoint, in most cases, Microsoft Defender Antivirus can run in either active mode as the primary antivirus solution, or in passive mode (alongside a non-Microsoft antivirus solution). Certain capabilities in Defender for Endpoint are affected by the state of Microsoft Defender Antivirus. For example, real-time protection works when Microsoft Defender Antivirus is in active or passive mode, but not when Microsoft Defender Antivirus is disabled or uninstalled. 

The table in this section summarizes the features and capabilities that are actively working or not, according to whether Microsoft Defender Antivirus is in active mode, passive mode, or disabled/uninstalled. 

> [!IMPORTANT]
> The following table is designed to be informational only. **Do not turn off capabilities**, such as real-time protection, cloud-delivered protection, or limited periodic scanning if you are using Microsoft Defender Antivirus in passive mode, or if you are using [Endpoint detection and response](edr-in-block-mode.md) (EDR in block mode), which works behind the scenes to detect and remediate malicious artifacts that were detected post-breach. 
<br/><br/>

| Protection | Microsoft Defender Antivirus <br/> Active mode | Microsoft Defender Antivirus <br/> Passive mode |  Microsoft Defender Antivirus <br/> Disabled or uninstalled | [EDR in block mode](edr-in-block-mode.md) |
|:---|:---|:---|:---|:---|
| [Real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md) and [cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) | Yes | No <sup>[[5](#fn5)]<sup> | No | No |
| [Limited periodic scanning availability](limited-periodic-scanning-microsoft-defender-antivirus.md) | No | No | Yes | No |
| [File scanning and detection information](review-scan-results-microsoft-defender-antivirus.md) | Yes | Yes | No | Yes |
|  [Threat remediation](configure-remediation-microsoft-defender-antivirus.md) | Yes | See note <sup>[[6](#fn6)]<sup> | No | Yes |
| [Security intelligence updates](manage-updates-baselines-microsoft-defender-antivirus.md) | Yes | Yes | No | Yes |

(<a id="fn5">5</a>) In general, when Microsoft Defender Antivirus is in passive mode, real-time protection does not provide any blocking or enforcement, even though it is enabled and in passive mode. 

(<a id="fn6">6</a>) When Microsoft Defender Antivirus is in passive mode, threat remediation features are active only during scheduled or on-demand scans.

> [!NOTE]
> [Microsoft 365 Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-learn-about) protection continues to operate normally when Microsoft Defender Antivirus is in active or passive mode.

## Best practices regarding Defender for Endpoint and Microsoft Defender Antivirus

- Do not disable, stop, or modify any of the associated services that are used by Microsoft Defender Antivirus, Defender for Endpoint, or the Windows Security app. This recommendation includes the *wscsvc*, *SecurityHealthService*, *MsSense*, *Sense*, *WinDefend*, or *MsMpEng* services and processes. Manually modifying these services can cause severe instability on your devices and can make your network vulnerable. Disabling, stopping, or modifying those services can also cause problems when using non-Microsoft antivirus solutions and how their information is displayed in the [Windows Security app](microsoft-defender-security-center-antivirus.md).

- In Defender for Endpoint, turn EDR in block mode on, even if Microsoft Defender Antivirus is not your primary antivirus solution. EDR in block mode detects and remediate malicious items that are found on the device (post breach). EDR in block mode requires Microsoft Defender Antivirus to be enabled in either active mode or passive mode. To learn more, see [EDR in block mode](edr-in-block-mode.md).

- If you are enrolled in Defender for Endpoint and you are using a non-Microsoft antivirus/antimalware product, then Microsoft Defender Antivirus is enabled in passive mode. In passive mode, Microsoft Defender Antivirus continues to work with Defender for Endpoint. In fact, Defender for Endpoint requires common information sharing from Microsoft Defender Antivirus in order to properly monitor your devices and network for intrusion attempts and attacks. To learn more, see [Microsoft Defender Antivirus compatibility with Defender for Endpoint](defender-compatibility.md). 

## How Defender for Endpoint extends your antivirus/antimalware protection

Consider onboarding your endpoints to Defender for Endpoint, even if you are using a non-Microsoft antivirus/antimalware solution. In most cases, when you onboard your devices to Defender for Endpoint, you can use Microsoft Defender Antivirus alongside your non-Microsoft antivirus solution for added protection. You also get additional antivirus/antimalware protection with Defender for Endpoint capabilities. For example, you can use [EDR in block mode](edr-in-block-mode.md), which blocks and remediates malicious artifacts that your primary antivirus solution might have missed. 

The following table summarizes how it works:<br/><br/>

| Scenario  | What happens  |
|---------|---------|
| Your organization's client devices are protected by a non-Microsoft antivirus/antimwalware solution, and your organization is using Defender for Endpoint.     | When those devices are onboarded to Defender for Endpoint, Microsoft Defender Antivirus goes into passive mode automatically. In this case, threat detections occur, but real-time protection and threats are not remediated by Microsoft Defender Antivirus.  <br/><br/>**NOTE**: This scenario does not apply to endpoints running Windows Server.       |
| Your organization's client devices are protected by a non-Microsoft antivirus/antimalware solution, and your organization is not using Defender for Endpoint. | When the non-Microsoft antivirus/antimalware solution is installed, on the endpoints, Microsoft Defender Antivirus goes into disabled mode automatically. In this case, threats are not detected or remediated by Microsoft Defender Antivirus. <br/><br/>**NOTE**: This scenario does not apply to endpoints running Windows Server. |
| Your organization's endpoints are running Windows Server, and those endpoints are protected by a non-Microsoft antivirus/antimalware solution. Your organization is using Defender for Endpoint. | When Windows Server endpoints are onboarded to Defender for Endpoint, you must set Microsoft Defender Antivirus to either passive mode or disabled mode. <br/><br/>On Windows Server, version 1803 or newer, and Windows Server 2019, set Microsoft Defender Antivirus to run in passive mode. <br/> <br/>On Windows Server 2016, disable (or uninstall) Microsoft Defender Antivirus. (Passive mode for Microsoft Defender Antivirus is not supported on Windows Server 2016). <br/><br/>For more information, see [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md). |
| Your organization's endpoints are protected by a non-Microsoft antivirus/antimalware solution, and your organization is using Defender for Endpoint, with [EDR in block mode](/microsoft-365/security/defender-endpoint/edr-in-block-mode) enabled. | When the endpoints are onboarded to Defender for Endpoint, and Microsoft Defender Antivirus is set to passive mode, EDR in block mode detects and remediates any malicious artifacts that were detected. Such artifacts might have been missed by your primary antivirus solution. <br/><br/>**NOTE**: This scenario does not apply to Windows Server 2016. EDR in block mode requires Microsoft Defender Antivirus to be enabled in either active mode or passive mode. |


## See also

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md)
- [EDR in block mode](edr-in-block-mode.md)
- [Configure Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-protection-configure)
- [Address false positives/negatives in Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
- [Learn about Microsoft 365 Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-learn-about)
