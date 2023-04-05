---
title: Block potentially unwanted applications with Microsoft Defender Antivirus
description: Enable the potentially unwanted application (PUA) antivirus feature to block unwanted software such as adware.
keywords: pua, enable, unwanted software, unwanted apps, adware, browser toolbar, detect, block, Microsoft Defender Antivirus
ms.service: microsoft-365-security
ms.mktglfcycl: detect
ms.sitesec: library
ms.localizationpriority: high
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
audience: ITPro
ms.reviewer: mimilone, julih
manager: dansimp
ms.subservice: mde
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 04/08/2021
---

# Detect and block potentially unwanted applications

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Edge](/microsoft-edge/deploy/microsoft-edge)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Potentially unwanted applications (PUA) are a category of software that can cause your machine to run slowly, display unexpected ads, or at worst, install other software that might be unexpected or unwanted. PUA is not considered a virus, malware, or other type of threat, but it might perform actions on endpoints that adversely affect endpoint performance or use. The term *PUA* can also refer to an application that has a poor reputation, as assessed by Microsoft Defender for Endpoint, due to certain kinds of undesirable behavior.

Here are some examples:

- **Advertising software** that displays advertisements or promotions, including software that inserts advertisements to webpages.
- **Bundling software** that offers to install other software that is not digitally signed by the same entity. Also, software that offers to install other software that qualifies as PUA.
- **Evasion software** that actively tries to evade detection by security products, including software that behaves differently in the presence of security products.

> [!TIP]
> For more examples and a discussion of the criteria we use to label applications for special attention from security features, see [How Microsoft identifies malware and potentially unwanted applications](/windows/security/threat-protection/intelligence/criteria).

Potentially unwanted applications can increase the risk of your network being infected with actual malware, make malware infections harder to identify, or cost your IT and security teams time and effort to clean them up. PUA protection is supported on Windows 11, Windows 10, Windows Server 2022, Windows Server 2019, and Windows Server 2016. If your organization's subscription includes [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md), Microsoft Defender Antivirus blocks apps that are considered to be PUA by default on Windows devices. 

[Learn more about Windows Enterprise subscriptions](https://www.microsoft.com/microsoft-365/windows/windows-11-enterprise).

## Microsoft Edge

The [new Microsoft Edge](https://support.microsoft.com/microsoft-edge/get-to-know-microsoft-edge-3f4bb0ff-58de-2188-55c0-f560b7e20bea), which is Chromium-based, blocks potentially unwanted application downloads and associated resource URLs. This feature is provided via [Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview).

### Enable PUA protection in Chromium-based Microsoft Edge

Although potentially unwanted application protection in Microsoft Edge (Chromium-based, version 80.0.361.50) is turned off by default, it can easily be turned on from within the browser.

1. In your Edge browser, select the ellipses, and then choose **Settings**.

2. Select **Privacy, search, and services**.

3. Under the **Security** section, turn on **Block potentially unwanted apps**.

> [!TIP]
> If you are running Microsoft Edge (Chromium-based), you can safely explore the URL-blocking feature of PUA protection by testing it out on one of our [Microsoft Defender SmartScreen demo pages](https://demo.smartscreen.msft.net/).

### Block URLs with Microsoft Defender SmartScreen

In Chromium-based Edge with PUA protection turned on, Microsoft Defender SmartScreen protects you from PUA-associated URLs.

Security admins can [configure](/DeployEdge/configure-microsoft-edge) how Microsoft Edge and Microsoft Defender SmartScreen work together to protect groups of users from PUA-associated URLs. There are several [group policy settings](/DeployEdge/microsoft-edge-policies#smartscreen-settings) explicitly for Microsoft Defender SmartScreen available, including [one for blocking PUA](/DeployEdge/microsoft-edge-policies#smartscreenpuaenabled). In addition, admins can [configure Microsoft Defender SmartScreen](/microsoft-edge/deploy/available-policies?source=docs#configure-windows-defender-smartscreen) as a whole, using group policy settings to turn Microsoft Defender SmartScreen on or off.

Although Microsoft Defender for Endpoint has its own blocklist based upon a data set managed by Microsoft, you can customize this list based on your own threat intelligence. If you [create and manage indicators](manage-indicators.md) in the Microsoft Defender for Endpoint portal, Microsoft Defender SmartScreen respects the new settings.

## Microsoft Defender Antivirus and PUA protection

The potentially unwanted application (PUA) protection feature in Microsoft Defender Antivirus can detect and block PUA on endpoints in your network.

> [!NOTE]
> This feature is available in Windows 11, Windows 10, Windows Server 2022, Windows Server 2019, and Windows Server 2016.

Microsoft Defender Antivirus blocks detected PUA files and any attempts to download, move, run, or install them. Blocked PUA files are then moved to quarantine. When a PUA file is detected on an endpoint, Microsoft Defender Antivirus sends a notification to the user ([unless notifications have been disabled](configure-notifications-microsoft-defender-antivirus.md) in the same format as other threat detections. The notification is prefaced with `PUA:` to indicate its content.

The notification appears in the usual [quarantine list within the Windows Security app](microsoft-defender-security-center-antivirus.md).

## Configure PUA protection in Microsoft Defender Antivirus

You can enable PUA protection with [Microsoft Intune](/mem/intune/protect/device-protect), [Microsoft Configuration Manager](/mem/configmgr/protect/deploy-use/endpoint-protection), [Group Policy](/azure/active-directory-domain-services/manage-group-policy), or via [PowerShell cmdlets](/powershell/module/defender/?preserve-view=true&view=win10-ps).

You can also use PUA protection in audit mode to detect potentially unwanted applications without blocking them. The detections are captured in the Windows event log. PUA protection in audit mode is useful if your company is conducting an internal software security compliance check and you'd like to avoid any false positives.

### Use Intune to configure PUA protection

See [Configure device restriction settings in Microsoft Intune](/intune/device-restrictions-configure) and [Microsoft Defender Antivirus device restriction settings for Windows 10 in Intune](/intune/device-restrictions-windows-10#microsoft-defender-antivirus) for more details.

### Use Configuration Manager to configure PUA protection

PUA protection is enabled by default in the Microsoft Configuration Manager (Current Branch).

See [How to create and deploy antimalware policies: Scheduled scans settings](/configmgr/protect/deploy-use/endpoint-antimalware-policies#real-time-protection-settings) for details on configuring Microsoft Configuration Manager (Current Branch).

For System Center 2012 Configuration Manager, see [How to Deploy Potentially Unwanted Application Protection Policy for Endpoint Protection in Configuration Manager](/previous-versions/system-center/system-center-2012-R2/hh508770(v=technet.10)#BKMK_PUA).

> [!NOTE]
> PUA events blocked by Microsoft Defender Antivirus are reported in the Windows Event Viewer and not in Microsoft Configuration Manager.

### Use Group Policy to configure PUA protection

1. Download and install [Administrative Templates (.admx) for Windows 11 October 2021 Update (21H2)](https://www.microsoft.com/download/details.aspx?id=103507)

2. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)).

3. Select the Group Policy Object you want to configure, and then choose **Edit**.

4. In the **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.

5. Expand the tree to **Windows Components** \> **Microsoft Defender Antivirus**.

6. Double-click **Configure detection for potentially unwanted applications**.

7. Select **Enabled** to enable PUA protection.

8. In **Options**, select **Block** to block potentially unwanted applications, or select **Audit Mode** to test how the setting works in your environment. Select **OK**.

9. Deploy your Group Policy object as you usually do.

### Use PowerShell cmdlets to configure PUA protection

#### To enable PUA protection

```PowerShell
Set-MpPreference -PUAProtection Enabled
```

Setting the value for this cmdlet to `Enabled` turns on the feature if it has been disabled.

#### To set PUA protection to audit mode

```PowerShell
Set-MpPreference -PUAProtection AuditMode
```

Setting `AuditMode` detects PUAs without blocking them.

#### To disable PUA protection

We recommend keeping PUA protection turned on. However, you can turn it off by using the following cmdlet:

```PowerShell
Set-MpPreference -PUAProtection Disabled
```

Setting the value for this cmdlet to `Disabled` turns off the feature if it has been enabled.

For more information, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender Antivirus cmdlets](/powershell/module/defender/index).

## View PUA events using PowerShell

PUA events are reported in the Windows Event Viewer, but not in Microsoft Configuration Manager or in Intune. You can also use the `Get-MpThreat` cmdlet to view threats that Microsoft Defender Antivirus handled. Here's an example:

```console
CategoryID       : 27
DidThreatExecute : False
IsActive         : False
Resources        : {webfile:_q:\Builds\Dalton_Download_Manager_3223905758.exe|http://d18yzm5yb8map8.cloudfront.net/
                    fo4yue@kxqdw/Dalton_Download_Manager.exe|pid:14196,ProcessStart:132378130057195714}
RollupStatus     : 33
SchemaVersion    : 1.0.0.0
SeverityID       : 1
ThreatID         : 213927
ThreatName       : PUA:Win32/InstallCore
TypeID           : 0
PSComputerName   :
```

## Get email notifications about PUA detections

You can turn on email notifications to receive mail about PUA detections.

See [Troubleshoot event IDs](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus/) for details on viewing Microsoft Defender Antivirus events. PUA events are recorded under event ID **1160**.

## View PUA events using advanced hunting

If you're using [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md), you can use an advanced hunting query to view PUA events. Here's an example query:

```console
DeviceEvents
| where ActionType == "AntivirusDetection"
| extend x = parse_json(AdditionalFields)
| project Timestamp, DeviceName, FolderPath, FileName, SHA256, ThreatName = tostring(x.ThreatName), WasExecutingWhileDetected = tostring(x.WasExecutingWhileDetected), WasRemediated = tostring(x.WasRemediated)
| where ThreatName startswith_cs 'PUA:'
```

To learn more about advanced hunting, see [Proactively hunt for threats with advanced hunting](advanced-hunting-overview.md).

## Exclude files from PUA protection

Sometimes a file is erroneously blocked by PUA protection, or a feature of a PUA is required to complete a task. In these cases, a file can be added to an exclusion list.

For more information, see [Configure and validate exclusions based on file extension and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md).

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

- [Next-generation protection](microsoft-defender-antivirus-in-windows-10.md)
- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-microsoft-defender-antivirus.md)
