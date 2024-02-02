---
title: Review detected threats using the Microsoft Defender for Endpoint Antivirus and Intune integration 
description: Use the Microsoft Defender for Endpoint Antivirus and Intune integration to view and manage threat detections.
keywords: detect, threats, detected threats, \devices, device, alerts queue, dashboard, IP address, file, submit, submissions, deep analysis, timeline, search, domain, URL, IP
ms.service: defender-endpoint
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
- mde-edr
ms.topic: conceptual
ms.date: 02/02/2024
ms.subservice: edr
search.appverid: met150
---

# Microsoft Defender for Endpoint Antivirus and Intune integration

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigatealerts-abovefoldlink)

**Platforms**

- Windows
- macOS, iOS 
- Android

In the Microsoft Defender portal, you can view and manage threat detections by following these steps:

1. Go to the [Microsoft XDR portal](https://security.microsoft.com/) and sign-in. 

    On the landing page, you'll see the **Devices with active malware** card with the following information: 

    - Display text: Applies to Intune-managed devices. Devices with multiple malware detections may be counted more than once.
    - Time stamp: Last updated date and time.
    - A visual bar showing the Active and Malware remediated portions as per your scan. 

    You can select **View Details** for more information.

2. Once remediated, you should see the following text displayed:

    Malware found on your devices have been remediated successfully.”

## Manage threat detections in Microsoft Intune

You can manage threat detections for any devices that are [enrolled in Microsoft Intune](/mem/intune/enrollment/windows-enrollment-methods).

1. Go to the Microsoft Intune admin center at [intune.microsoft.com](https://intune.microsoft.com) and sign-in.

2. In the navigation pane, select **Endpoint security**. 

3. Under Manage, select **Antivirus**. You'll see tabs for Summary, Unhealthy endpoints, and Active malware.

4. Review the information on the available tabs, and then take action as necessary.
    For example, when you can select a device that is listed under the Active malware tab, you can select one from the list of actions provided: 
     - Restart
     - Quick Scan
     - Full Scan
     - Sync
     - Update signatures

## Frequently Asked Questions (FAQ) 

### In the Microsoft XDR portal (https://security.microsoft.com/) > Devices with active malware > Devices with malware detections report you'll see the Last update, which seems to be occurring today.

Since this is an integration with Intune, if you go to the Intune portal (Intune.microsoft.com) > Antivirus > Active malware tab > select **Export**. 

On your device, go to Downloads, and extract the Active malware_YYYY_MM_DD_THH_MM_SS.0123Z.csv.zip.

Once you open the CSV, you'll see the following columns: 

DeviceName, _ManagedBy, _ManagedBy_loc, State,State_loc,DetectionCount, MalwareCategory, MalwareCategory_loc, MalwareName, Severity, Severity_loc, LastStateChangeDateTime, ExecutionState, ExecutionState_loc, UserName, UPN, UserEmail, MalwareId, InitialDetectionDateTime 

The LastStateChangeDateTime column shows when malware was detected.

### In the Devices with malware detections report, we don’t see any information about which malware was detected on the device. 

Since this is an integration with Intune, if you go to the Intune portal (intune.microsoft.com) > Antivirus > Active malware, you'll see a column named **Malware name**. 

### I see a different number for active malware using this method: Devices with active malware vs Reports > Detected malware vs Intune > Antivirus > Active malware 

The Devices with active malware report is based on devices that were active within the last 1 day (24 hours) and had malware detections within the last 15 days. 

The following Advanced Hunting query (Kusto Query Language) will assist: 

```kusto
DeviceInfo 
| where Timestamp > startofday(datetime(2024-01-29 00:00:00)) 
| where OnboardingStatus == "Onboarded" 
| where SensorHealthState == "Active" 
| distinct DeviceId, DeviceName 
| join kind=innerunique ( 
AlertEvidence  
| where Timestamp > ago(15d) 
| where ServiceSource == "Microsoft Defender for Endpoint" 
| where DetectionSource == "Antivirus" 
DeviceName 
| distinct DeviceName, DeviceId, Title, AlertId, Timestamp 
```

### I searched the computer name in the top search bar but got two devices with the same name. We don't know which one of the two devices the Devices with active malware report is referring to. 

Use the Advanced Hunting query that is mentioned above for details such as unique DeviceID, Title and AlertID, and the remediation process. After identifying, work with your IT admin’s to make sure that the devices are uniquely named. If a device is retired, use [tags to decommission it.](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/how-to-use-tagging-effectively-part-1/ba-p/1964058)

### I see a malware detection in Intune and on the Devices with active malware, but I don’t see it in the MDE Alerts queue or in the Incidents queue. 

A: It’s more likely that the URL's [Cloud Protection](configure-network-connections-microsoft-defender-antivirus.md) is currently not allowed through your firewall or proxy.

You'll want to make sure that by running the following n your device:
`%ProgramFiles%\Windows Defender\MpCmdRun.exe` -ValidateMapsConnection is reporting Ok. 
