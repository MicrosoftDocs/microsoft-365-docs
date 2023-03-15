---
title: Deploy, manage, and report on Microsoft Defender Antivirus
description: You can deploy and manage Microsoft Defender Antivirus with Intune, Microsoft Configuration Manager, Group Policy, PowerShell, or WMI
keywords: deploy, manage, update, protection, Microsoft Defender Antivirus
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.date: 09/02/2022
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

You can deploy, manage, and report on Microsoft Defender Antivirus in many ways.

Because the Microsoft Defender Antivirus client is installed as a core part of Windows 10 and Windows 11, traditional deployment of a client to your endpoints doesn't apply.

However, in most cases you'll still need to enable the protection service on your endpoints with Microsoft Intune, Microsoft Configuration Manager, Microsoft Defender for Cloud, or Group Policy Objects, which is described in the following table.

You'll also see other links for:

- Managing Microsoft Defender Antivirus protection, including managing product and protection updates
- Reporting on Microsoft Defender Antivirus protection

> [!IMPORTANT]
> In most cases, Windows 10 or Windows 11 will disable Microsoft Defender Antivirus if it finds another antivirus product that is running and up-to-date. You must disable or uninstall third-party antivirus products before Microsoft Defender Antivirus will function. If you re-enable or install third-party antivirus products, then Windows 10 or Windows 11 automatically disables Microsoft Defender Antivirus.

| Tool|Deployment options (<a href="#fn2" id="ref2">2</a>)|Management options (network-wide configuration and policy or baseline deployment) ([3](#fn3))|Reporting options |
---|---|---|---
| Microsoft Intune|[Add endpoint protection settings in Intune](/intune/endpoint-protection-configure)|[Configure device restriction settings in Intune](/intune/device-restrictions-configure)| [Use the Intune console to manage devices](/intune/device-management)
Microsoft Configuration Manager ([1](#fn1))|Use the [Endpoint Protection point site system role](/mem/configmgr/protect/deploy-use/endpoint-protection-site-role) and [enable Endpoint Protection with custom client settings](/mem/configmgr/protect/deploy-use/endpoint-protection-configure-client).|With [default and customized antimalware policies](/microsoft-365/security/office-365-security/anti-malware-policies-configure) and client management.|With the default [Configuration Manager Monitoring workspace](/mem/configmgr/apps/deploy-use/monitor-applications-from-the-console) and email alerts. |
| Group Policy and Active Directory (domain-joined)|Use a Group Policy Object to deploy configuration changes and ensure Microsoft Defender Antivirus is enabled.|Use Group Policy Objects (GPOs) to [configure update options for Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/manage-protection-update-schedule-microsoft-defender-antivirus) and [configure Windows Defender features](/microsoft-365/security/defender-endpoint/configure-microsoft-defender-antivirus-features).|Endpoint reporting isn't available with Group Policy. You can generate a list of Group Policies to determine if any settings or policies aren't applied. |
| PowerShell|Deploy with Group Policy, Microsoft Configuration Manager, or manually on individual endpoints.|Use the [Set-MpPreference](/powershell/module/defender/set-mppreference) and [Update-MpSignature](/powershell/module/defender/update-mpsignature) cmdlets available in the Defender module.|Use the appropriate [Get- cmdlets available in the Defender module](/powershell/module/defender). |
| Windows Management Instrumentation|Deploy with Group Policy, Microsoft Configuration Manager, or manually on individual endpoints.|Use the [Set method of the MSFT_MpPreference class](/previous-versions/windows/desktop/defender/set-msft-mppreference) and the [Update method of the MSFT_MpSignature class](/previous-versions/windows/desktop/defender/update-msft-mpsignature).|Use the [MSFT_MpComputerStatus](/previous-versions/windows/desktop/defender/msft-mpcomputerstatus) class and the get method of associated classes in the [Windows Defender WMIv2 Provider](/windows/win32/wmisdk/wmi-providers). |
| Microsoft Azure|Deploy Microsoft Antimalware for Azure in the [Azure portal, by using Visual Studio virtual machine configuration, or using Azure PowerShell cmdlets](/azure/security/azure-security-antimalware#antimalware-deployment-scenarios). You can also [Install Endpoint protection in Microsoft Defender for Cloud](/azure/defender-for-cloud/endpoint-protection-recommendations-technical).|Configure [Microsoft Antimalware for Virtual Machines and Cloud Services with Azure PowerShell cmdlets](/azure/security/azure-security-antimalware#enable-and-configure-antimalware-using-powershell-cmdlets) or [use code samples](https://gallery.technet.microsoft.com/Antimalware-For-Azure-5ce70efe).|Use [Microsoft Antimalware for Virtual Machines and Cloud Services with Azure PowerShell cmdlets](/azure/security/azure-security-antimalware#enable-and-configure-antimalware-using-powershell-cmdlets) to enable monitoring. You can also review usage reports in Azure Active Directory to determine suspicious activity, including the Possibly infected devices report, and configure an SIEM tool to report on [event logs and error codes in Microsoft Defender Antivirus](troubleshoot-microsoft-defender-antivirus.md) and add that tool as an app in Azure AD. |

1. <span id="fn1" />The availability of some functions and features, especially related to cloud-delivered protection, differ between Microsoft Configuration Manager (Current Branch) and System Center 2012 Configuration Manager. In this library, we've focused on Windows 10, Windows 11, Windows Server 2016, and Microsoft Configuration Manager (Current Branch). See [Use Microsoft cloud-provided protection in Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md) for a table that describes the major differences. [(Return to table)](#ref2)

2. <span id="fn2" />In Windows 10 and Windows 11, Microsoft Defender Antivirus is a component available without installation or deployment of another client or service. It will automatically be enabled when third-party antivirus products are either uninstalled or out of date (except on Windows Server 2016). Traditional deployment, therefore, isn't required. Deployment here refers to ensuring the Microsoft Defender Antivirus component is available and enabled on endpoints or servers. [(Return to table)](#ref2)

3. <span id="fn3" />Configuration of features and protection, including configuring product and protection updates, are further described in the [Configure Microsoft Defender Antivirus features](configure-notifications-microsoft-defender-antivirus.md) section in this library. [(Return to table)](#ref2)

## In this section

Article | Description
---|---
[Deploy and enable Microsoft Defender Antivirus protection](deploy-microsoft-defender-antivirus.md) | While the client is installed as a core part of Windows 10 or Windows 11, and traditional deployment doesn't apply, you'll still need to enable the client on your endpoints with Microsoft Configuration Manager, Microsoft Intune, or Group Policy Objects.
[Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md) | There are two parts to updating Microsoft Defender Antivirus: updating the client on endpoints (product updates), and updating Security intelligence (protection updates). You can update Security intelligence in many ways, using Microsoft Configuration Manager, Group Policy, PowerShell, and WMI.
[Monitor and report on Microsoft Defender Antivirus protection](report-monitor-microsoft-defender-antivirus.md) | You can use Microsoft Intune, Microsoft Configuration Manager, the Update Compliance add-in for Microsoft Operations Management Suite, or a third-party SIEM product (by consuming Windows event logs) to monitor protection status and create reports about endpoint protection.

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

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
