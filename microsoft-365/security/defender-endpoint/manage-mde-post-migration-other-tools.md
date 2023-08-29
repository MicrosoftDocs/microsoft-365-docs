---
title: Manage Microsoft Defender for Endpoint using PowerShell, WMI, and MPCmdRun.exe
description: Learn how to manage Microsoft Defender for Endpoint with PowerShell, WMI, and MPCmdRun.exe
keywords: post-migration, manage, operations, maintenance, utilization, PowerShell, WMI, MPCmdRun.exe, Microsoft Defender for Endpoint, edr
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
- ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.reviewer: chventou
search.appverid: met150
ms.date: 10/22/2021
---

# Manage Microsoft Defender for Endpoint with PowerShell, WMI, and MPCmdRun.exe

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

We recommend using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) or [Microsoft Endpoint Configuration Manager](/mem/configmgr/core/understand/introduction) to manage Defender for Endpoint settings. However, you can use other tools to manage some settings, such as Microsoft Defender Antivirus, exploit protection, and customized attack surface reduction rules with:

- [PowerShell](#configure-microsoft-defender-for-endpoint-with-powershell);
- [Windows Management Instrumentation](#configure-microsoft-defender-for-endpoint-with-windows-management-instrumentation-wmi) (WMI); and
- The [Microsoft Malware Protection Command Line Utility](#configure-microsoft-defender-for-endpoint-with-microsoft-malware-protection-command-line-utility-mpcmdrunexe) (MPCmdRun.exe). 

> [!IMPORTANT]
> Threat protection features that you configure by using PowerShell, WMI, or MCPmdRun.exe can be overwritten by configuration settings that are deployed with Intune or Configuration Manager.

## Configure Microsoft Defender for Endpoint with PowerShell

You can use PowerShell to manage Microsoft Defender Antivirus, exploit protection, and your attack surface reduction rules.

|Task|Resources to learn more|
|---|---|
|**Manage Microsoft Defender Antivirus** <br/><br/> View status of antimalware protection, configure preferences for antivirus scans & updates, and make other changes to your antivirus protection.*|[Use PowerShell cmdlets to configure and manage Microsoft Defender Antivirus](/windows/security/threat-protection/microsoft-defender-antivirus/use-powershell-cmdlets-microsoft-defender-antivirus) <br/><br/> [Use PowerShell cmdlets to enable cloud-delivered protection](/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus#use-powershell-cmdlets-to-enable-cloud-delivered-protection)|
|**Configure exploit protection** to mitigate threats on your organization's devices <br/><br/> *We recommend using exploit protection in [audit mode](/microsoft-365/security/defender-endpoint/evaluate-exploit-protection#powershell) at first. That way, you can see how exploit protection affects apps your organization is using.*|[Customize exploit protection](/microsoft-365/security/defender-endpoint/customize-exploit-protection) <br/><br/> [PowerShell cmdlets for exploit protection](/microsoft-365/security/defender-endpoint/customize-exploit-protection#powershell-reference)|
|**Configure attack surface reduction rules** with PowerShell <br/><br/> *You can use PowerShell to exclude files and folders from attack surface reduction rules.*|[Customize attack surface reduction rules: Use PowerShell to exclude files & folders](/microsoft-365/security/defender-endpoint/enable-attack-surface-reduction) <br/><br/> Also, see [António Vasconcelo's graphical user interface tool for setting attack surface reduction rules with PowerShell](https://github.com/anvascon/MDATP_PoSh_Scripts/tree/master/ASR%20GUI).|
|**Enable Network Protection** with PowerShell <br/><br/> *You can use PowerShell to enable Network Protection.*|[Turn on Network Protection with PowerShell](/microsoft-365/security/defender-endpoint/enable-network-protection#powershell)|
|**Configure controlled folder access** to protect against ransomware <br/><br/> *[Controlled folder access](/microsoft-365/security/defender-endpoint/controlled-folders) is also referred to as antiransomware protection.*|[Enable controlled folder access with PowerShell](/microsoft-365/security/defender-endpoint/enable-controlled-folders#powershell)|
|**Configure Microsoft Defender Firewall** to block unauthorized network traffic flowing into or out of your organization's devices|[Microsoft Defender Firewall with Advanced Security Administration using Windows PowerShell](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security-administration-with-windows-powershell)|
|**Configure encryption and BitLocker** to protect information on your organization's devices running Windows|[BitLocker PowerShell reference guide](/powershell/module/bitlocker/)|

## Configure Microsoft Defender for Endpoint with Windows Management Instrumentation (WMI)

WMI is a scripting interface that allows you to retrieve, modify, and update settings. To learn more, see [Using WMI](/windows/win32/wmisdk/using-wmi).

|Task|Resources to learn more|
|---|---|
|**Enable cloud-delivered protection** on a device|[Use Windows Management Instruction (WMI) to enable cloud-delivered protection](/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus#use-windows-management-instruction-wmi-to-enable-cloud-delivered-protection)|
|**Retrieve, modify, and update settings** for Microsoft Defender Antivirus|[Use WMI to configure and manage Microsoft Defender Antivirus](/windows/security/threat-protection/microsoft-defender-antivirus/use-wmi-microsoft-defender-antivirus <br/><br/> [Review the list of available WMI classes and example scripts](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal) <br/><br/> Also see the archived [Windows Defender WMIv2 Provider reference information](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal?redirectedfrom=MSDN)|

## Configure Microsoft Defender for Endpoint with Microsoft Malware Protection Command-Line Utility (MPCmdRun.exe)

On an individual device, you can run a scan, start diagnostic tracing, check for security intelligence updates, and more using the mpcmdrun.exe command-line tool. You can find the utility in `%ProgramFiles%\Windows Defender\MpCmdRun.exe`. Run it from a command prompt.

To learn more, see [Configure and manage Microsoft Defender Antivirus with mpcmdrun.exe](/windows/security/threat-protection/microsoft-defender-antivirus/command-line-arguments-microsoft-defender-antivirus).

## Configure your Microsoft 365 Defender portal

If you haven't already done so, configure your <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> to view alerts, configure threat protection features, and view detailed information about your organization's overall security posture.

You can also configure whether and what features end users can see.

- [Endpoint protection: Microsoft Defender Security Center](/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-security-center)

## Next steps

- [Get an overview of Defender Vulnerability Management](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
