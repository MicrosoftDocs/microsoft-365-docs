---
title: Getting started with Microsoft Defender for Endpoint Plan 1 (preview)
description: Get started using Defender for Endpoint Plan 1. Learn how to use the security center, manage alerts and devices, and view reports. 
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 06/17/2021
ms.prod: m365-security
ms.technology: mde
localization_priority: Normal
ms.reviewer: 
f1.keywords: NOCSH
---

# Getting started with Defender for Endpoint Plan 1 (preview)

After Defender for Endpoint Plan 1 (currently in preview) is set up and configured, and your organization’s devices are onboarded, your next step is to visit the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). There, you can view information about detected threats, manage your alerts and incidents, take any needed action on detected threats, and manage devices. The following sections describe how to get started using Defender for Endpoint:

- The Microsoft 365 Defender portal
- Viewing and managing incidents & alerts
- Managing devices
- Viewing reports

## The Microsoft 365 Defender portal

The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) is where you'll view alerts, manage devices, and view reports. When you sign into the Microsoft 365 Defender portal, you’ll start with the Home page, as shown in the following image:

:::image type="content" source="../../media/mde-p1/m365-security-center.png" alt-text="Microsoft 365 Defender portal":::

The Home page provides your security team with a snapshot aggregate view of alerts, device status, and threats detected. The security center is set up so that your security operations team can find the information they are looking for quickly and easily.

> [!NOTE]
> Our examples shown in this article might differ from your Microsoft 365 Defender portal. What you see in your Microsoft 365 Defender portal depends on your licenses and permissions. In addition, your security team can customize your page by adding, removing, and rearranging cards.

### Navigation bar

The navigation bar on the left side of the screen enables you to move easily between Incidents, Alerts, the Action center, Reports, and Settings. 

To learn more, see the [Microsoft 365 Defender portal overview](../defender/microsoft-365-security-center-mde.md).

The following table describes the navigation bar.

| Navigation bar item | Description |
|:---|:---|
| **Home** | Navigates to the Home page of the [Microsoft 365 Defender portal](../defender/microsoft-365-security-center-mde.md). |
| **Incidents & alerts** | Expands to show **Incidents** and **Alerts**. |
| **Incidents** | Navigates to the **Incidents** list. Incidents are created when alerts are triggered and/or threats are detected. By default, the **Incidents** list displays data for the last 30 days, with the most recent incident listed first. To learn more, see [Incidents](view-incidents-queue.md). |
| **Alerts** | Navigates to the **Alerts** list (also referred to as the **Alerts queue**). Alerts are triggered when a suspicious or malicious file, process, or behavior is detected. By default, the **Alerts** list displays data for the last 30 days, with the most recent alert listed first. To learn more, see [Alerts](alerts-queue.md). |
| **Action center** | Navigates to the Action center, which tracks remediation and manual response actions. The Action center tracks activities like these: <br/>- Microsoft Defender Antivirus encounters a malicious file and then blocks/removes that file. <br/>- Your security team isolates a device.<br/>- Defender for Endpoint detects and quarantines a file. <p>To learn more, see [Action center](auto-investigation-action-center.md). |
| **Device inventory** | Navigates to your list of devices that are onboarded to Defender for Endpoint. Provides information about devices, such as their exposure and risk levels. To learn more, see [Device inventory](machines-view-overview.md). |
| **Reports** | Navigates to your reports, such as your [Threat protection report](threat-protection-reports.md), [Device health and compliance report](machine-reports.md), and your [Web protection report](web-protection-overview.md). |
| **Settings** | Navigates to general settings for your Microsoft 365 Defender portal and Defender for Endpoint. To learn more, see [Settings](../defender/overview-security-center.md). |
| **More resources** | Displays a list of additional portals and centers, such as Azure Active Directory and the Microsoft 365 compliance center. To learn more, see [Microsoft security portals and admin centers](../defender/portals.md). |

## Viewing and managing incidents & alerts

When you sign into the Microsoft 365 Defender portal, make sure to view and manage your incidents and alerts. Start with your **Incidents** list. The following image shows a list of incidents, including one with high severity, and another with medium severity. 

:::image type="content" source="../../media/mde-p1/incidents-list.png" alt-text="Incidents list":::
 
Select an incident to view details about it, such as what alerts were triggered, how many devices and users were affected, and other details. The following image shows an example of incident details.

:::image type="content" source="../../media/mde-p1/single-incident-view.png" alt-text="Incident details":::
 
> [!NOTE]
> Your incident view might not have all the tabs shown in our example.

Use the **Alerts**, **Devices**, and **Users** tabs to view more information, such as the alerts that were triggered, devices that were affected, and user accounts that were affected. From there, you can take manual response actions, such as isolating a device, stopping and quarantining a file, and so on. 

To learn more about using the **Incident** view, see [Manage incidents](manage-incidents.md).

## Managing devices

To view and manage your organization’s devices, in the navigation bar, under **Endpoints**, select **Device inventory**. You’ll see a list of devices as shown in the following image:

:::image type="content" source="../../media/mde-p1/deviceinventory.PNG" alt-text="Device inventory"::: 

The list includes devices for which alerts were generated. By default, the data shown is for the past 30 days, with the most recent items listed first.

 
Figure 7. Example list of devices with alerts
Select a device to view more information about it. A flyout pane opens, as shown in figure 8. The flyout pane displays details, such as any active alerts for the device, and includes links to take action, such as isolating a device. 

 
Figure 8. Flyout pane that opens when a device is selected

If there are active alerts on the device, you can view them in the flyout pane. Select an individual alert to view more details about it. Or, take an action, such as Isolate device, so you can investigate the device further while minimizing the risk of infecting other devices. 
To learn more, see Investigate devices in the Defender for Endpoint devices list.

Viewing reports

In Defender for Endpoint Plan 1, several reports are available in the Microsoft 365 Defender portal. To access your reports, in the Microsoft 365 Defender portal, choose Reports. Then select a report in the list. For more information, see Threat protection reports. 
The main reports you’ll see and use include the following:
•	Threat protection report
•	Device health report
•	Web protection report

Threat protection report
To access your Threat protection report, in the Microsoft 365 Defender portal, choose Reports, and then choose Threat protection. The Threat Protection report shows alert trends, status, categories, and more. Views are arranged in two columns: Alert trends and Alert status, as shown in figure 9.
 
Figure 9. Threat protection report

Scroll down to see all the views in each list. By default, the views in the Alert trends column display data for the past 30 days, but you can set a view to display data for the last three months, last six months, or a custom time range (up to 180 days). The views in the Alert status column are a snapshot for the previous business day. 
To learn more, see Threat protection report in Defender for Endpoint.
Device health report
To access your Device health report, in the Microsoft 365 Defender portal, choose Reports, and then choose Device health. The Device health report shows health state and antivirus across devices in your organization. Similar to the Threat protection report, views are arranged in two columns: Device trends and Device summary, as shown in figure 10.
 
Figure 10. Device health report

Scroll down to see all the views in each list. By default, the views in the Device trends column display data for the past 30 days, but you can change a view to display data for the last three months, last six months, or a custom time range (up to 180 days). The Device summary views are snapshots for the previous business day.
To learn more, see Device health.

Web protection report
To access your Device health report, in the Microsoft 365 Defender portal, choose Reports, and then choose Web protection. The Web protection report shows detections over time, such as malicious URLs and attempts to access blocked URLs, as shown in Figure 11. 
 
Figure 11. Web protection report

Scroll down to see all the views in the Web protection report. Some views include links that enable you to view more details, configure your threat protection features, and even manage indicators that serve as exceptions in Defender for Endpoint.
To learn more, see Web protection.

 
