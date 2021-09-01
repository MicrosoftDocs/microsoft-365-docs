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
ms.date: 08/11/2021
---

# Microsoft Defender Antivirus compatibility with other security products

**Applies to:**

- Microsoft Defender Antivirus
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)


Microsoft Defender Antivirus is automatically installed on endpoints running the following versions of Windows:

- Windows 10 or later
- Windows Server 2016
- Windows Server, version 1803, or later
- Windows Server 2019

What happens when another non-Microsoft antivirus/antimalware solution is used? Can you run Microsoft Defender Antivirus alongside another antivirus product? The answers depend on several factors, such as your operating system and whether you're using [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) (Defender for Endpoint) together with your antivirus protection.

This article describes what happens with Microsoft Defender Antivirus and a non-Microsoft antivirus/antimalware solution, with or without Defender for Endpoint.

## Antivirus protection without Defender for Endpoint

This section describes what happens with Microsoft Defender Antivirus and non-Microsoft antivirus/antimalware products on endpoints that are not onboarded to Defender for Endpoint. The following table summarizes what to expect:

<br>

****

|Windows version|Primary antivirus/antimalware solution|Microsoft Defender Antivirus state|
|---|---|---|---|
|Windows 10|Microsoft Defender Antivirus|Active mode|
|Windows 10|A non-Microsoft antivirus/antimalware solution|Disabled mode (happens automatically)|
|Windows Server 2016 <p> Windows Server, version 1803, or newer <p> Windows Server 2019|Microsoft Defender Antivirus|Active mode|
|Windows Server 2016 <p> Windows Server, version 1803, or newer <p> Windows Server 2019|A non-Microsoft antivirus/antimalware solution|Disabled (set manually) <sup>[[1](#fn1)]<sup></sup>|

(<a id="fn1">1</a>) On Windows Server, if you are running a non-Microsoft antivirus product, you can disable Microsoft Defender Antivirus by using Group Policy to turn off Microsoft Defender Antivirus, or by using the [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) registry key. To use the registry key, navigate to `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender`, and set or create a DWORD entry called `DisableAntiSpyware`. Set its value to `1` (which sets the registry key's value to *true*), and select **Hexadecimal** for its base.

> [!TIP]
> See [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md) for key differences and management options for Windows Server installations. On Windows Server 2016, you might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus*.

## Antivirus protection with Defender for Endpoint

If your organization is using a non-Microsoft antivirus/antimalware solution together with Defender for Endpoint, Microsoft Defender Antivirus can, depending on your operating system, run in passive mode.

<br>

****

|Windows version|Primary antivirus/antimalware solution|Microsoft Defender Antivirus state|
|---|---|---|---|
|Windows 10 or later|Microsoft Defender Antivirus|Active mode|
|Windows 10 or later|A non-Microsoft antivirus/antimalware solution|Passive mode (happens automatically)|
|Windows Server 2016 <p> Windows Server, version 1803, or newer <p> Windows Server 2019|Microsoft Defender Antivirus|Active mode|
|Windows Server, version 1803, or newer <p> Windows Server 2019|A non-Microsoft antivirus/antimalware solution|Passive mode (set manually) <sup>[[2](#fn2)]<sup></sup>|
|Windows Server 2016|A non-Microsoft antivirus/antimalware solution|Disabled (set manually) <sup>[[3](#fn3)]<sup>|

(<a id="fn2">2</a>)  On Windows Server, version 1803, or newer, or Windows Server 2019, when you install a non-Microsoft antivirus product, set Microsoft Defender Antivirus to passive mode manually. You can use the **ForceDefenderPassiveMode** registry key to perform this task. To use the registry key, navigate to `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`, and set or create a DWORD entry called `ForceDefenderPassiveMode`. Set its value to `1` (which sets the registry key's value to *true*), and select **Hexadecimal** for its base. For more information, see [Passive mode and Windows Server](microsoft-defender-antivirus-on-windows-server.md#passive-mode-and-windows-server).

(<a id="fn3">3</a>)  On Windows Server 2016, you can disable Microsoft Defender Antivirus by using Group Policy to turn off Windows Defender Antivirus, or by using the [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) registry key. To use the registry key, navigate to `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender`, and set or create a DWORD entry called `DisableAntiSpyware`. Set its value to `1` (which sets the registry key's value to *true*), and select **Hexadecimal** for its base.

> [!TIP]
> See [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md) for key differences and management options for Windows Server installations. On Windows Server 2016, you might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus*.

### Why run Microsoft Defender Antivirus in passive mode?

Defender for Endpoint includes capabilities that further extend the antivirus protection that is installed on your endpoint. You can benefit from running Microsoft Defender Antivirus alongside another antivirus solution.

For example, [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md) provides added protection from malicious artifacts even if Microsoft Defender Antivirus is not the primary antivirus product. Such capabilities require Microsoft Defender Antivirus to be installed and running in passive mode or active mode.

### Requirements for Microsoft Defender Antivirus to run in passive mode

In order for Microsoft Defender Antivirus to run in passive mode, endpoints must meet the following requirements:

- Operating system: Windows 10 or later; Windows Server, version 1803, or newer; or Windows Server 2019
- Microsoft Defender Antivirus must be installed
- Another non-Microsoft antivirus/antimalware product must be installed and used as the primary antivirus solution
- Endpoints must be onboarded to Defender for Endpoint

## How Microsoft Defender Antivirus affects Defender for Endpoint functionality

Defender for Endpoint affects whether Microsoft Defender Antivirus can run in passive mode. Microsoft Defender Antivirus can affect certain capabilities in Defender for Endpoint, too. For example, real-time protection works when Microsoft Defender Antivirus is in active or passive mode, but not when Microsoft Defender Antivirus is disabled or uninstalled.

The table in this section summarizes the features and capabilities that are actively working or not, according to whether Microsoft Defender Antivirus is in active mode, passive mode, or disabled/uninstalled.

> [!IMPORTANT]
> The following table is designed to be informational only. **Do not turn off capabilities**, such as real-time protection, cloud-delivered protection, or limited periodic scanning if you are using Microsoft Defender Antivirus in passive mode, or if you are using [EDR in block mode](edr-in-block-mode.md), which works behind the scenes to detect and remediate malicious artifacts that were detected post-breach.

<br>

****

|Protection|Microsoft Defender Antivirus <p> Active mode|Microsoft Defender Antivirus <p> Passive mode|Microsoft Defender Antivirus <p> Disabled or uninstalled|[EDR in block mode](edr-in-block-mode.md)|
|---|---|---|---|---|
|[Real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md) and [cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)|Yes|No <sup>[[5](#fn5)]<sup>|No|No|
|[Limited periodic scanning availability](limited-periodic-scanning-microsoft-defender-antivirus.md)|No|No|Yes|No|
|[File scanning and detection information](review-scan-results-microsoft-defender-antivirus.md)|Yes|Yes|No|Yes|
|[Threat remediation](configure-remediation-microsoft-defender-antivirus.md)|Yes|See note <sup>[[6](#fn6)]<sup>|No|Yes|
|[Security intelligence updates](manage-updates-baselines-microsoft-defender-antivirus.md)|Yes|Yes|No|Yes|
||||||

(<a id="fn5">5</a>) In general, when Microsoft Defender Antivirus is in passive mode, real-time protection does not provide any blocking or enforcement, even though it is enabled and in passive mode.

(<a id="fn6">6</a>) When Microsoft Defender Antivirus is in passive mode, threat remediation features are active only during scheduled or on-demand scans.

> [!NOTE]
> [Microsoft 365 Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-learn-about) protection continues to operate normally when Microsoft Defender Antivirus is in either active or passive mode.

## Important notes

- Do not disable, stop, or modify any of the associated services that are used by Microsoft Defender Antivirus, Defender for Endpoint, or the Windows Security app. This recommendation includes the *wscsvc*, *SecurityHealthService*, *MsSense*, *Sense*, *WinDefend*, or *MsMpEng* services and processes. Manually modifying these services can cause severe instability on your devices and can make your network vulnerable. Disabling, stopping, or modifying those services can also cause problems when using non-Microsoft antivirus solutions and how their information is displayed in the [Windows Security app](microsoft-defender-security-center-antivirus.md).

- In Defender for Endpoint, turn EDR in block mode on, even if Microsoft Defender Antivirus is not your primary antivirus solution. EDR in block mode detects and remediate malicious items that are found on the device (post breach). To learn more, see [EDR in block mode](edr-in-block-mode.md).

## How to confirm the state of Microsoft Defender Antivirus

You can use one of several methods to confirm the state of Microsoft Defender Antivirus, as described in the following table:

<br>

****

|Method|Procedure|
|---|---|
|Windows Security app|<ol><li>On a Windows device, open the Windows Security app.</li><li>Select **Virus & threat protection**.</li><li>Under **Who's protecting me?** select **Manage providers**.</li><li>On the **Security providers** page, under **Antivirus**, you should see **Microsoft Defender Antivirus is turned on**.</li></ol>|
|Task Manager|<ol><li>On a Windows device, open the Task Manager app.</li><li>Select the **Details** tab.</li><li>Look for **MsMpEng.exe** in the list.</li></ol>|
|Windows PowerShell <p> (To confirm that Microsoft Defender Antivirus is running)|<ol><li>On a Windows device, open Windows PowerShell</li><li>Run the following PowerShell cmdlet: `Get-Process`.</li><li>Review the results. You should see **MsMpEng.exe** if Microsoft Defender Antivirus is enabled.</li></ol>|
|Windows PowerShell <p> (To confirm that antivirus protection is in place)|You can use the [Get-MpComputerStatus PowerShell cmdlet](/powershell/module/defender/get-mpcomputerstatus). <ol><li>On a Windows device, open Windows PowerShell.</li><li>Run following PowerShell cmdlet: `Get-MpComputerStatus|select AMRunningMode`.</li><li>Review the results. You should see either **Normal** or **Passive** if Microsoft Defender Antivirus is enabled on the endpoint.</li></ol>|
|Command Prompt|<ol><li>On a Windows device, open Command Prompt.</li><li>Type `sc query windefend`, and then press Enter.</li><li>Review the results to confirm that Microsoft Defender Antivirus is running in passive mode.</li></ol>|
|||

## More details about Microsoft Defender Antivirus states

The table in this section describes various states you might see with Microsoft Defender Antivirus.

<br>

****

|Microsoft Defender Antivirus state|What happens|
|---|---|
|Active mode|In active mode, Microsoft Defender Antivirus is used as the antivirus app on the machine. Settings that are configured by using Configuration Manager, Group Policy, Microsoft Intune, or other management products will apply. Files are scanned, threats are remediated, and detection information is reported in your configuration tool (such as Configuration Manager or the Microsoft Defender Antivirus app on the endpoint itself).|
|Passive mode|In passive mode, Microsoft Defender Antivirus is not used as the antivirus app, and threats are *not* remediated by Microsoft Defender Antivirus. Threats can be remediated by [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md), however. <p> Files are scanned, and reports are provided for threat detections that are shared with the Defender for Endpoint service. You might see alerts in the [security center](microsoft-defender-security-center.md) showing Microsoft Defender Antivirus as a source, even when Microsoft Defender Antivirus is in passive mode. <p> When Microsoft Defender Antivirus is in passive mode, you can still [manage updates for Microsoft Defender Antivirus](manage-updates-baselines-microsoft-defender-antivirus.md); however, you can't move Microsoft Defender Antivirus into active mode if your devices have a non-Microsoft antivirus product that is providing real-time protection from malware. <p> For optimal security layered defense and detection efficacy, make sure to get your antivirus and antimwalware updates, even if Microsoft Defender Antivirus is running in passive mode. See [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md). <p> **NOTE**: Passive mode is not supported on Windows Server 2016.|
|Disabled <p> or <p> Uninstalled|When disabled or uninstalled, Microsoft Defender Antivirus is not used as the antivirus app. Files are not scanned and threats are not remediated. <p> Disabling or uninstalling Microsoft Defender Antivirus is not recommended in general; if possible, keep Microsoft Defender Antivirus in passive mode if you are using a non-Microsoft antimalware/antivirus solution. <p> In cases where Microsoft Defender Antivirus is disabled automatically, it can be re-enabled automatically if the non-Microsoft antivirus/antimalware product expires or otherwise stops providing real-time protection from viruses, malware, or other threats. The automatic re-enabling of Microsoft Defender Antivirus helps to ensure that antivirus protection is maintained on your endpoints. <p> You might also use [limited periodic scanning](limited-periodic-scanning-microsoft-defender-antivirus.md), which works with the Microsoft Defender Antivirus engine to periodically check for threats if you are using a non-Microsoft antivirus app.|
|||

## See also

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md)
- [EDR in block mode](edr-in-block-mode.md)
- [Learn about Microsoft 365 Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-learn-about)
