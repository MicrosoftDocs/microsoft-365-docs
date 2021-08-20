---
title: Downloadable readiness assessment checker
description:  Checks device and network settings, including required endpoints
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
audience: Admin
---


# Downloadable readiness assessment checker

To work well with Microsoft Managed Desktop, devices must meet certain requirements for hardware and settings. Also, each device must be able to reach key endpoints. Download and run this tool to obtain an HTML report, view results, and then take action. You will need to download the tool and supporting files, and then run it manually on each device you want to enroll in Microsoft Managed Desktop.

For each check, the tool will report one of three possible results:


|Result  |Meaning  |
|---------|---------|
|Ready     | No action is required before you complete enrollment.        |
|Advisory    | Follow the steps in the tool for the best experience with enrollment and for users. You *can* complete enrollment, but you must fix these issues before you deploy your first device.        |
|Not ready | *Enrollment will fail* if you don't fix these issues. Follow the steps in the tool to resolve them.        |

## Obtain the checker

Download the .zip file from https://aka.ms/mmddratoolv0.

> [!NOTE]
> The user running the tool must have local Administrator rights on the device where they're running it.

 Then run the tool by following these steps:

1. Copy the downloaded .zip file to each device you want to check.
2. Extract all files in the compressed download.
3. Run **Microsoft.MMD.DeviceReadinessAssessmentTool.exe**.
4. When the User Access Control prompt appears, select **Yes**. The tool runs and opens a report in your default browser.

You could also download and extract the .zip archive to a shared location, access **Microsoft.MMD.DeviceReadinessAssessmentTool.exe** from each device, and then run it locally.


## Checks

The downloadable tool checks these device- and network-related items:

### Hardware

Devices must meet specific hardware requirements to work with Microsoft Managed Desktop. Currently, only specific [approved devices](../service-description/device-list.md) are allowed to enroll. 

If your device fails any of the checks, it's not compatible with Microsoft Managed Desktop.

### Network endpoints

Devices much be able to reach several [key endpoints](network.md) to work with Microsoft Managed Desktop.

If the tool reports a **Not ready** result, see the detailed report to find out which endpoints weren't reachable. Then adjust your firewall or other network settings to ensure those endpoints can be reached.

### Other settings

#### Enterprise wi-fi profiles

An **Advisory** result means that you are using some wi-fi profiles that need certificates and profiles to work properly. For more information, see [Deploy certificates and Wi-Fi/VPN profile](certs-wifi-lan.md#deploy-certificates-and-wi-fivpn-profile).

#### LAN profiles

An **Advisory** result means that you have LANs that need certificates and profiles to work properly. For more information, see [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md).

#### VPN profiles

An **Advisory** result means that you're using a virtual private network (VPN). Create a VPN profile that deploys certificates integrated with Microsoft Intune. For more information, see [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md).

#### Mapped drives

An **Advisory** result means that you have some mapped drives, which aren't recommended. For more information, see [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md).

#### Print queues

An **Advisory** result means that you have some outstanding print queues, which aren't recommended. One solution is to use cloud printing. For more information, see [Prepare printing resources for Microsoft Managed Desktop](printing.md).

#### Proxies

An **Advisory** result means that you have a proxy server in use. For more information, see [Network configuration for Microsoft Managed Desktop](network.md).

