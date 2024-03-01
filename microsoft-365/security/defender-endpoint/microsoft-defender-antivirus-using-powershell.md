---
title: Evaluate Microsoft Defender Antivirus using PowerShell.
description: Businesses of all sizes can use this guide to evaluate and test the protection offered by Microsoft Defender Antivirus in Windows using PowerShell.
ms.service: defender-endpoint
ms.localizationpriority: medium
ms.topic: conceptual
author: siosulli
ms.author: siosulli
ms.custom: nextgen
ms.date: 10/18/2018
ms.reviewer:
manager: deniseb
ms.subservice: ngp
ms.collection: 
- m365-security
- tier2
- mde-ngp
search.appverid: met150
---

# Evaluate Microsoft Defender Antivirus using Powershell

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender Antivirus
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

In Windows 10 or newer and Windows Server 2016 or newer you can use next-generation protection features offered by Microsoft Defender Antivirus(MDAV) and Microsoft Defender Exploit Guard (Microsoft Defender EG).

This topic explains how to enable and test the key protection features in Microsoft Defender AV and Microsoft Defender EG, and provides you with guidance and links to more information.

We recommend you use [this evaluation PowerShell script](https://aka.ms/wdeppscript) to configure these features, but you can individually enable each feature with the cmdlets described in the rest of this document.

See the following product documentation libraries for more information about our EPP products:

- [Microsoft Defender Antivirus](https://aka.ms/wdavdocs)
- [Microsoft Defender Exploit Guard](https://aka.ms/wdegdocs)

This article describes configuration options in Windows 10 or newer and Windows Server 2016 or newer.

If you have any questions about a detection that Microsoft Defender AV makes, or you discover a missed detection, you can submit a file to us at [our sample submission help site.](https://www.microsoft.com/security/portal/mmpc/help/submission-help.aspx)

## Use PowerShell to enable the features

This guide provides the [Microsoft Defender Antivirus cmdlets](https://learn.microsoft.com/powershell/module/defender/?view=windowsserver2022-ps) that configure the features you should use to evaluate our protection.

To use these cmdlets:

> 1\. Open an elevated instance of PowerShell (choose to Run as administrator).
>
> 2\. Enter the command listed in this guide and press Enter.

You can check the status of all settings before you begin, or during your evaluation, by using the [Get-MpPreference PowerShell cmdlet](https://learn.microsoft.com/powershell/module/defender/get-mppreference?view=windowsserver2022-ps).

Microsoft Defender AV indicates a detection through [standard Windows notifications](https://learn.microsoft.com/microsoft-365/security/defender-endpoint/configure-notifications-microsoft-defender-antivirus). You can also [review detections in the Microsoft Defender AV app](https://learn.microsoft.com/microsoft-365/security/defender-endpoint/review-scan-results-microsoft-defender-antivirus).

The Windows event log also records detection and engine events. [See the Microsoft Defender Antivirus events article for a list of event IDs](https://learn.microsoft.com/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus) and their corresponding actions.

## Cloud protection features

Standard definition updates can take hours to prepare and deliver; our cloud-delivered protection service can deliver this protection in seconds.

More details are available in [Use next-gen technologies in Microsoft Defender Antivirus through cloud-delivered protection](/windows/threat-protection/windows-defender-antivirus/utilize-microsoft-cloud-protection-windows-defender-antivirus).

| Description | PowerShell Command |
|---|---|
|Enable the Microsoft Defender Cloud for near-instant protection and increased protection|Set-MpPreference -MAPSReporting Advanced|
|Automatically submit samples to increase group protection|Set-MpPreference -SubmitSamplesConsent Always|
|Always Use the cloud to block new malware within seconds|Set-MpPreference -DisableBlockAtFirstSeen 0|
|Scan all downloaded files and attachments|Set-MpPreference -DisableIOAVProtection 0|
|Set cloud block level to 'High'|Set-MpPreference -CloudBlockLevel High|
|High Set cloud block timeout to 1 minute|Set-MpPreference -CloudExtendedTimeout 50|

## Always-on protection (real-time scanning)

Microsoft Defender AV scans files as soon as they're seen by Windows, and will monitor running processes for known or suspected malicious behaviors. If the antivirus engine discovers malicious modification, it will immediately block the process or file from running.

See [Configure behavioral, heuristic, and real-time protection](https://learn.microsoft.com/microsoft-365/security/defender-endpoint/configure-protection-features-microsoft-defender-antivirus) for more details on these options.

| Description | PowerShell Command |
|---|---|
|Constantly monitor files and processes for known malware modifications | Set-MpPreference -DisableRealtimeMonitoring 0 |
|Constantly monitor for known malware behaviors – even in ‘clean’ files and running programs | Set-MpPreference -DisableBehaviorMonitoring 0 |
|Scan scripts as soon as they are seen or run | Set-MpPreference -DisableScriptScanning 0 |
|Scan removable drives as soon as they are inserted or mounted | Set-MpPreference -DisableRemovableDriveScanning 0 |

## Potentially Unwanted Application protection

[Potentially unwanted applications](https://learn.microsoft.com/microsoft-365/security/defender-endpoint/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus) are files and apps that are not traditionally classified as malicious. These include third-party installers for common software, ad-injection, and certain types of toolbars in your browser.

| Description | PowerShell Command |
|---|---|
|Prevent grayware, adware, and other potentially unwanted apps from installing|Set-MpPreference -PUAProtection Enabled|

## Email and archive scanning

You can set Microsoft Defender Antivirus to automatically scan certain types of email files and archive files (such as .zip files) when they are seen by Windows. More information about this feature can be found under the [Manage email scans in Microsoft Defender](https://learn.microsoft.com/microsoft-365/security/defender-endpoint/configure-advanced-scan-types-microsoft-defender-antivirus) article.

|Scan email files and archives|Set-MpPreference -DisableArchiveScanning 0 </br> Set-MpPreference -DisableEmailScanning 0|

## Manage product and protection updates

Typically, you receive Microsoft Defender AV updates from Windows update once per day. However, you can increase the frequency of those updates by setting the following options, and [ensuring that your updates are managed either in System Center Configuration Manager, with Group Policy, or in Intune](https://learn.microsoft.com/microsoft-365/security/defender-endpoint/deploy-manage-report-microsoft-defender-antivirus).

| Description | PowerShell Command |
|---|---|
|Update signatures every day|Set-MpPreference -SignatureUpdateInterval|
|Check to update signatures before running a scheduled scan|Set-MpPreference -CheckForSignaturesBeforeRunningScan 1|

## Advanced threat and exploit mitigation and prevention Controlled folder access

Microsoft Defender Exploit Guard provides features that help protect devices from known malicious behaviors and attacks on vulnerable technologies.

| Description | PowerShell Command |
|---|---|
|Prevent malicious and suspicious apps (such as ransomware) from making changes to protected folders with Controlled folder access|Set-MpPreference -EnableControlledFolderAccess Enabled|
|Block connections to known bad IP addresses and other network connections with [Network protection](https://learn.microsoft.com/microsoft-365/security/defender-endpoint/network-protection)|Set-MpPreference -EnableNetworkProtection Enabled|
|Apply a standard set of mitigations with [Exploit protection](https://learn.microsoft.com/microsoft-365/security/defender-endpoint/exploit-protection?view=o365-worldwide&ocid=cx-twidsw-docswdeg)|Invoke-WebRequest </br> https://demo.wd.microsoft.com/Content/ProcessMitigation.xml -OutFile ProcessMitigation.xml </br >Set-ProcessMitigation -PolicyFilePath ProcessMitigation.xml|

Some rules may block behavior you find acceptable in your organization. In these cases, change the rule from Enabled to Audit to prevent unwanted blocks. For more information about audit mode, see [Use audit mode to evaluate Microsoft Defender Exploit Guard features.](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/audit-windows-defender-exploit-guard)

## One-click Microsoft Defender Offline Scan

Microsoft Defender Offline Scan is a specialized tool that comes with Windows 10 or newer, and allows you to boot a machine into a dedicated environment outside of the normal operating system. It’s especially useful for potent malware, such as rootkits.

See [Microsoft Defender Offline](https://learn.microsoft.com/microsoft-365/security/defender-endpoint/microsoft-defender-offline) for more information on how this feature works.

| Description | PowerShell Command |
|---|---|
|Ensure notifications allow you to boot the PC into a specialized malware removal environment|Set-MpPreference -UILockdown 0|

## Resources

This section lists many resources that can assist you with evaluating Microsoft Defender Antivirus.

- [Microsoft Defender in Windows 10 library](microsoft-defender-antivirus-windows.md)
- [Microsoft Defender for Windows Server 2016 library](/windows-server/security/windows-defender/windows-defender-overview-windows-server)
- [Windows 10 security library](https://learn.microsoft.com/windows/resources/)
- [Windows 10 security overview](https://learn.microsoft.com/windows/security/threat-protection/overview-of-threat-mitigations-in-windows-10)
- [Microsoft Defender Security Intelligence (Microsoft Malware Protection Center (MMPC)) website – threat research and response](https://www.microsoft.com/wdsi)
- [Microsoft Security website](https://www.microsoft.com/security)
- [Microsoft Security blog](https://www.microsoft.com/security/blog)
