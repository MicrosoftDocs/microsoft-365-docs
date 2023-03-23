---
title: Deploy, manage, and report on Microsoft Defender Antivirus
description: You can deploy and manage Microsoft Defender Antivirus with Intune, Microsoft Configuration Manager, Group Policy, PowerShell, or WMI
keywords: deploy, manage, update, protection, Microsoft Defender Antivirus
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.date: 03/23/2023
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer:
manager: dansimp
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Deploy, manage, and report on Microsoft Defender Antivirus

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus 

**Platforms**

- Windows

Microsoft Defender Antivirus is installed as a core part of Windows 10 and 11, and is included in Windows Server 2016 and later (Windows Server 2012 requires Microsoft Defender for Endpoint). You can manage and report on Microsoft Defender Antivirus using one of several tools, such as:

- Microsoft Intune
- Configuration Manager
- PowerShell
- Group Policy and Azure Active Directory
- Windows Management Instrumentation

This article describes these options for deployment, management, and reporting.

> [!TIP]
> If you're using Azure Cloud Services and virtual machines, you can use [Microsoft Antimalware for Azure](/azure/security/fundamentals/antimalware).

## Microsoft Intune

With Intune, you can manage device security through policies, such as a policy to configure Microsoft Defender Antivirus and other security capabilities in Defender for Endpoint. To learn more, see [Use policies to manage device security](/mem/intune/protect/endpoint-security#use-policies-to-manage-device-security).

For reporting, you can choose from several options:

- [Use the Microsoft 365 Defender portal](../defender/microsoft-365-defender-portal.md), which includes a [device inventory list](/microsoft-365/security/defender-endpoint/machines-view-overview). To access the device inventory, in the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)), go to **Assets** > **Devices**. The device inventory list displays onboarded devices along with their health state and risk level.

- [Manage devices with Intune](/mem/intune/remote-actions/device-management), which includes the ability to view detailed information about devices and take action. [Available actions](/mem/intune/remote-actions/device-management#available-device-actions) include starting an antivirus scan, restarting a device, locating a device, wiping a device, and more. 

## Configuration Manager

Use the [Endpoint Protection point site system role](/mem/configmgr/protect/deploy-use/endpoint-protection-site-role) and [enable Endpoint Protection with custom client settings](/mem/configmgr/protect/deploy-use/endpoint-protection-configure-client).

With [default and customized antimalware policies](/microsoft-365/security/office-365-security/anti-malware-policies-configure) and client management.

With the default [Configuration Manager Monitoring workspace](/mem/configmgr/apps/deploy-use/monitor-applications-from-the-console) and email alerts.

## PowerShell

PowerShell|Deploy with Group Policy, Microsoft Configuration Manager, or manually on individual endpoints.|Use the [Set-MpPreference](/powershell/module/defender/set-mppreference) and [Update-MpSignature](/powershell/module/defender/update-mpsignature) cmdlets available in the Defender module.|Use the appropriate [Get- cmdlets available in the Defender module](/powershell/module/defender).

## Group Policy and Azure Active Directory

Use a Group Policy Object to deploy configuration changes and ensure Microsoft Defender Antivirus is enabled.

Use Group Policy Objects (GPOs) to [configure update options for Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/manage-protection-update-schedule-microsoft-defender-antivirus) and [configure Windows Defender features](/microsoft-365/security/defender-endpoint/configure-microsoft-defender-antivirus-features).

Endpoint reporting isn't available with Group Policy. You can generate a list of Group Policies to determine if any settings or policies aren't applied. 

## Windows Management Instrumentation

Windows Management Instrumentation|Deploy with Group Policy, Microsoft Configuration Manager, or manually on individual endpoints.

Use the [Set method of the MSFT_MpPreference class](/previous-versions/windows/desktop/defender/set-msft-mppreference) and the [Update method of the MSFT_MpSignature class](/previous-versions/windows/desktop/defender/update-msft-mpsignature).

Use the [MSFT_MpComputerStatus](/previous-versions/windows/desktop/defender/msft-mpcomputerstatus) class and the get method of associated classes in the [Windows Defender WMIv2 Provider](/windows/win32/wmisdk/wmi-providers).

> [!TIP]
> **Performance tip** Due to a variety of factors (examples listed below) Microsoft Defender Antivirus, like other antivirus software, can cause performance issues on endpoint devices. In some cases, you might need to tune the performance of Microsoft Defender Antivirus to alleviate those performance issues. Microsoft's **Performance analyzer** is a PowerShell command-line tool that helps determine which files, file paths, processes, and file extensions might be causing performance issues; some examples are: 
>
> - Top paths that impact scan time
> - Top files that impact scan time
> - Top processes that impact scan time
> - Top file extensions that impact scan time
> - Combinations – for example:
>   - top files per extension
>   - top paths per extension
>   - top processes per path
>   - top scans per file
>   - top scans per file per process
>
> You can use the information gathered using Performance analyzer to better assess performance issues and apply remediation actions. 
> See: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).
>

## See also

- [Microsoft Defender Antivirus compatibility with other security products](microsoft-defender-antivirus-compatibility.md)
- [Deploy and enable Microsoft Defender Antivirus protection](deploy-microsoft-defender-antivirus.md)
- [Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md)
- [Monitor and report on Microsoft Defender Antivirus protection](report-monitor-microsoft-defender-antivirus.md)
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Configure Defender for Endpoint on Android features](android-configure.md)
- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)


