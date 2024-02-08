---
title: Review detected threats using the Microsoft Defender for Endpoint Antivirus and Intune integration 
description: Use the Microsoft Defender for Endpoint Antivirus and Intune integration to view and manage threat detections.
keywords: detect, threats, detected threats, devices, URL,
ms.service: defender-endpoint
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
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

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigatealerts-abovefoldlink)

**Platforms**

- Windows
- macOS
- Android

In the Microsoft Defender portal, you can view and manage threat detections using the following steps:

1. Visit [Microsoft XDR portal](https://security.microsoft.com/) and sign-in. 

    On the landing page, you'll see the **Devices with active malware** card with the following information: 

    - Display text: Applies to Intune-managed devices. Devices with multiple malware detections may be counted more than once.
    - Last updated date and time.
    - A bar with the Active and Malware remediated portions as per your scan. 

    You can select **View Details** for more information.

2. Once remediated, you'll see the following text being displayed:

    *Malware found on your devices have been remediated successfully*.

## Manage threat detections in Microsoft Intune

You can manage threat detections for any devices that are [enrolled in Microsoft Intune](/mem/intune/enrollment/windows-enrollment-methods) using the following steps:

1. Go to the Microsoft Intune admin center at [intune.microsoft.com](https://intune.microsoft.com) and sign-in.

2. In the navigation pane, select **Endpoint security**. 

3. Under **Manage**, select **Antivirus**. You'll see tabs for **Summary**, **Unhealthy endpoints**, and **Active malware**.

4. Review the information on the available tabs, and then take action as necessary.

    For example, when you can select a device that is listed under the **Active malware** tab, you can choose one action from the list of actions provided: 
     - Restart
     - Quick Scan
     - Full Scan
     - Sync
     - Update signatures

## FAQs

### In the Microsoft XDR portal > Devices with active malware > Devices with malware detections report, why does the Last update seem to be occurring today?

To see when the malware was detected, you can do the following:

1. Since this is an integration with Intune, visit [**Intune portal**](https://intune.microsoft.com) and select **Antivirus** and then select **Active malware** tab.
2. Select **Export**.  
3. On your device, go to Downloads, and extract the Active malware_YYYY_MM_DD_THH_MM_SS.0123Z.csv.zip.
4. Open the CSV and find the **LastStateChangeDateTime** column to see when malware was detected.

### In the devices with malware detections report, why can’t I see any information about which malware was detected on the device. 

To see the malware name, visit the [Intune portal](https://intune.microsoft.com) as this is an integration with Intune, select **Antivirus**,  and select **Active malware** tab and you'll see a column named **Malware name**.

### I see a different number for active malware in Devices with active malware report, when compared to numbers I see using Reports > Detected malware, and Intune > Antivirus > Active malware.

The **Devices with active malware** report is based on the devices that were active within the last 1 day (24 hours) and had malware detections within the last 15 days.

Use the following Advanced Hunting query: 

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

### I searched the computer name in the top search bar and got two devices with the same name. I don't know which one of those two devices the report is referring to?

Use the Advanced Hunting query that is mentioned [here](#i-see-a-different-number-for-active-malware-in-devices-with-active-malware-report-when-compared-to-numbers-i-see-using-reports--detected-malware-and-intune--antivirus--active-malware) for details such as unique DeviceID, Title, AlertID, and the remediation process. After identifying, work with your IT admin’s to make sure that the devices are uniquely named. If a device is retired, use [tags to decommission it.](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/how-to-use-tagging-effectively-part-1/ba-p/1964058)

### I see malware detection in Intune and on the Devices with active malware report, but I don’t see it in the MDE Alerts queue or in the Incidents queue.

It might be that the URL's [Cloud Protection](configure-network-connections-microsoft-defender-antivirus.md) is currently not being allowed through your firewall or proxy.

You need to ensure that when you run `%ProgramFiles%\Windows Defender\MpCmdRun.exe -ValidateMapsConnection` on your device, the reporting is Ok.

## Related articles

- [Alerts in Microsoft Defender for Endpoint](investigate-alerts.md)
- [Alerts queue in Microsoft Defender XDR](alerts-queue-endpoint-detection-response.md)
