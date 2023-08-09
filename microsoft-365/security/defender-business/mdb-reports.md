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
ms.date: 03/23/2023
ms.reviewer: efratka, nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
---

# Reports in Microsoft Defender for Business

Several reports are available in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). These reports enable your security team to view information about detected threats, device status, and more.

This article describes these reports, how you can use them, and how to find them.

## Monthly security summary (preview) 

:::image type="content" source="media/mdb-monthly-security-summary-report.png" alt-text="Screenshot of monthly security summary report currently in preview." lightbox="media/mdb-monthly-security-summary-report.png":::

The monthly security summary report (currently in preview) shows:

- Threats that were detected and prevented by Defender for Business, so you can see how the service is working for you.
- Your current status from [Microsoft Secure Score](../defender/microsoft-secure-score.md), which gives you an indication of your organization's security posture. 
- Recommended actions you can take to improve your score and your security posture.

To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Monthly Security Summary**. 

## License report

:::image type="content" source="media/mdb-licenses.png" alt-text="Screenshot of licenses report in Defender for Business." lightbox="media/mdb-licenses.png":::

The license report provides information about licenses your organization has purchased and is using. 

To access this report, in the navigation pane, choose **Settings** > **Endpoints** > **Licenses**. 

## Security report

:::image type="content" source="media/mdb-security-report.png" alt-text="Screenshot of the security report in Defender for Business." lightbox="media/mdb-security-report.png":::

The security report provides information about your company's identities, devices, and apps. 

To access this report, in the navigation pane, choose **Reports** > **General** > **Security report**. 

> [!TIP]
> You can view similar information on the home page of your Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). 

## Threat protection report

:::image type="content" source="media/mdb-threat-protection-report.png" alt-text="Screenshot of the threat protection report in Defender for Business." lightbox="media/mdb-threat-protection-report.png":::

The threat protection report provides information about alerts and alert trends. 

- Use the **Alert trends** column to view information about alerts that were triggered over the last 30 days. 
- Use the **Alert status** column to view current snapshot information about alerts, such as categories of unresolved alerts and their classification. 

To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Threat protection**. 

## Incidents view

:::image type="content" source="media/mdb-incidents.png" alt-text="Screenshot of the incidents view in Defender for Business." lightbox="media/mdb-incidents.png":::

You can use the **Incidents** list to view information about alerts. To learn more, see [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md). 

To access this report, in the navigation pane, choose **Incidents** to view and manage current incidents. 

## Device health report

:::image type="content" source="media/mdb-device-health.png" alt-text="Screenshot of the device health report in Defender for Business." lightbox="media/mdb-device-health.png":::

The device health report provides information about device health and trends. You can use this report to determine whether Defender for Business sensors are working correctly on devices and the current status of Microsoft Defender Antivirus. 

To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Device health**. 

## Device inventory list

:::image type="content" source="media/mdb-device-inventory.png" alt-text="Screenshot of the device inventory report in Defender for Business." lightbox="../../media/defender-business/mdb-device-inventory.png":::

You can use the **Devices** list to view information about your company's devices. To learn more, see [Manage devices in Defender for Business](mdb-manage-devices.md). 

To access this report, in the navigation pane, go to **Assets** > **Devices**. 

## Vulnerable devices report

:::image type="content" source="media/mdb-vulnerable-devices.png" alt-text="Screenshot of the vulnerable devices report in Defender for Business." lightbox="media/mdb-vulnerable-devices.png":::

The vulnerable devices report provides information about devices and trends. 

- Use the **Trends** column to view information about devices that had alerts over the last 30 days. 
- Use the **Status** column to view current snapshot information about devices that have alerts. 

To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Vulnerable devices**.

## Web protection report

:::image type="content" source="media/mdb-web-protection-report.png" alt-text="Screenshot of the web protection report in Defender for Business." lightbox="media/mdb-web-protection-report.png":::

The web protection report shows attempts to access phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, and sites that are explicitly blocked. Categories of blocked sites include adult content, leisure sites, legal liability sites, and more. 

To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Web protection**.

> [!NOTE]
> If you haven't yet configured web protection for your company, choose the **Settings** button in a report view. Then, under **Rules**, choose **Web content filtering**. To learn more about web content filtering, see [Web content filtering](../defender-endpoint/web-content-filtering.md). 

## Firewall report

:::image type="content" source="media/mdb-firewall-report.png" alt-text="Screenshot of the firewall report in Defender for Business." lightbox="media/mdb-firewall-report.png":::

When firewall protection is configured, the firewall report shows blocked inbound, outbound, and app connections. This report also shows remote IPs connected by multiple devices, and remote IPs with the most connection attempts. 

To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Firewall**.

> [!NOTE]
> If your firewall report has no data, it might be because you haven't configured your firewall protection yet. In the navigation pane, choose **Endpoints** > **Configuration management** > **Device configuration**. To learn more, see [Firewall in Defender for Business](mdb-firewall.md). 

## Device control report

:::image type="content" source="media/mdb-device-control.png" alt-text="Screenshot of the device control report in Defender for Business." lightbox="media/mdb-device-control.png":::

The device control report shows information about media usage, such as the use of removable storage devices in your organization. 

To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Device control**. 

## Attack surface reduction rules report

:::image type="content" source="media/mdb-asr-report.png" alt-text="Screenshot of the attack surface reduction rules report in Defender for Business." lightbox="media/mdb-asr-report.png":::

The attack surface reduction rules report has three tabs: 

- **Detections** to show blocked or audited detections;
- **Configuration** enabling you to filter on standard protection rules or additional attack surface reduction rules; and 
- **Add exclusions** enabling you to define exclusions, if needed. 

To learn more, see [Attack surface reduction capabilities in Microsoft Defender for Business](mdb-asr.md). 

To access this report, in the navigation pane, choose **Reports** > **Endpoints** > **Attack surface reduction rules**. 

## See also

- [Get started using Defender for Business](mdb-get-started.md)
- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
- [Manage devices in Defender for Business](mdb-manage-devices.md)
