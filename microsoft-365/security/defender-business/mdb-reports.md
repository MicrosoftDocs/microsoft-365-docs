---
title: Reports in Microsoft Defender for Business
description: Get an overview of security reports in Defender for Business. Reports will show detected threats, alerts, vulnerabilities, and device status.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 09/14/2022
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Reports in Microsoft Defender for Business

Several reports are available in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). This article describes these reports, how you can use them, and how to find them.

## Reports in Defender for Business

|Report  |Description  |
|---------|---------|
| **Security report**  | The security report provides information about your company's identities, devices, and apps. To access this report, in the navigation pane, choose **Reports** > **General** > **Security report**. <br/><br/>You can view similar information on the home page of your Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). |
| **Threat protection**  | The threat protection report provides information about alerts and alert trends. Use the **Alert trends** column to view information about alerts that were triggered over the last 30 days. Use the **Alert status** column to view current snapshot information about alerts, such as categories of unresolved alerts and their classification. To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Threat protection**. <br/><br/>You can also use the **Incidents** list to view information about alerts. In the navigation pane, choose **Incidents** to view and manage current incidents. To learn more, see [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md). |
| **Device health and compliance** | The device health and compliance report provides information about device health and trends. You can use this report to determine whether Defender for Business sensors are working correctly on devices and the current status of Microsoft Defender Antivirus. To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Device health and compliance**. <br/><br/>You can use the **Devices** list to view information about your company's devices. In the navigation pane, go to **Assets** > **Devices**. To learn more, see [Manage devices in Defender for Business](mdb-manage-devices.md). |
| **Vulnerable devices** | The vulnerable devices report provides information about devices and trends. Use the **Trends** column to view information about devices that had alerts over the last 30 days. Use the **Status** column to view current snapshot information about devices that have alerts. To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Vulnerable devices**.<br/><br/>**TIP**: You can use the **Devices** list to view information about your company's devices. In the navigation pane, go to **Assets** > **Devices**. To learn more, see [Manage devices in Defender for Business](mdb-manage-devices.md). |
| **Web protection** | The web protection report shows attempts to access phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, and sites that are explicitly blocked. Categories of blocked sites include adult content, leisure sites, legal liability sites, and more. To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Web protection**.<br/><br/>If you haven't yet configured web protection for your company, choose the **Settings** button in a report view. Then, under **Rules**, choose **Web content filtering**. To learn more about web content filtering, see [Web content filtering](../defender-endpoint/web-content-filtering.md). |
| **Firewall** | The firewall report shows blocked inbound, outbound, and app connections. This report also shows remote IPs connected by multiple devices, and remote IPs with the most connection attempts. <br/><br/>If you haven't yet configured your firewall protection, in the navigation pane, choose **Endpoints** > **Configuration management** > **Device configuration**. To learn more, see [Firewall in Defender for Business](mdb-firewall.md). |
| **Device control** | The device control report shows information about media usage, such as the use of removable storage devices in your organization. |


## See also

- [Get started using Defender for Business](mdb-get-started.md)
- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
- [Manage devices in Defender for Business](mdb-manage-devices.md)
