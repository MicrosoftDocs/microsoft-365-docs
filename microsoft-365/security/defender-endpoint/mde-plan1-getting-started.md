---
title: Get started with Microsoft Defender for Endpoint Plan 1
description: Get started using Defender for Endpoint Plan 1. Learn how to use the Defender for Cloud, manage alerts and devices, and view reports. 
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 01/27/2022
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.reviewer: shlomiakirav
f1.keywords: NOCSH
ms.collection: 
- m365-security
- tier1
ms.custom: intro-get-started
---

# Get started with Microsoft Defender for Endpoint Plan 1

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) enables you to view information about detected threats, manage your alerts and incidents, take any needed action on detected threats, and manage devices. The Microsoft 365 Defender portal is where you can get started interacting with the threat protection capabilities you get with Defender for Endpoint Plan 1. The following sections describe how to get started:

- [The Microsoft 365 Defender portal](#the-microsoft-365-defender-portal)
- [Viewing and managing incidents & alerts](#view-and-manage-incidents--alerts)
- [Managing devices](#manage-devices)
- [Viewing reports](#view-reports)

## The Microsoft 365 Defender portal

The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) is where you'll view alerts, manage devices, and view reports. When you sign into the Microsoft 365 Defender portal, you'll start with the Home page, as shown in the following image:

:::image type="content" source="../../media/mde-p1/m365-defender-portal.png" alt-text="The portal of Microsoft 365 Defender" lightbox="../../media/mde-p1/m365-defender-portal.png":::

The Home page provides your security team with a snapshot aggregate view of alerts, device status, and threats detected. The Defender for Cloud is set up so that your security operations team can find the information they are looking for quickly and easily.

> [!NOTE]
> Our examples shown in this article might differ from what you see in your Microsoft 365 Defender portal. What you see in your portal depends on your licenses and permissions. In addition, your security team can customize your organization's portal by adding, removing, and rearranging cards.

### Cards highlight key information and include recommendations

The Home page includes cards, such as the Active incidents card shown in the following image:

:::image type="content" source="../../media/mde-p1/active-incidents-card.png" alt-text="The Active incidents card" lightbox="../../media/mde-p1/active-incidents-card.png":::

The card provides you with information at a glance, along with a link or button that you can select to view more detailed information. Referring to our example Active incidents card, we can select **View all incidents** to navigate to our list of incidents.

:::image type="content" source="../../media/mde-p1/incidents.png" alt-text="The list of Incidents" lightbox="../../media/mde-p1/incidents.png":::

### Navigation bar makes it easy to find alerts, the Action center, and more

The navigation bar on the left side of the screen enables you to move easily between incidents, alerts, the Action center, reports, and settings. The following table describes the navigation bar.<br/><br/>

| Navigation bar item | Description |
|:---|:---|
| **Home** | Navigates to the Home page of the [Microsoft 365 Defender portal](../defender/microsoft-365-security-center-mde.md). |
| **Incidents & alerts** | Expands to show **Incidents** and **Alerts**. |
| **Incidents & alerts** > **Incidents** | Navigates to the **Incidents** list. Incidents are created when alerts are triggered and/or threats are detected. By default, the **Incidents** list displays data for the last 30 days, with the most recent incident listed first. <br/><br/> To learn more, see [Incidents](view-incidents-queue.md). |
| **Incidents & alerts** > **Alerts** | Navigates to the **Alerts** list (also referred to as the **Alerts queue**). Alerts are triggered when a suspicious or malicious file, process, or behavior is detected. By default, the **Alerts** list displays data for the last 30 days, with the most recent alert listed first. <br/><br/> To learn more, see [Alerts](alerts-queue.md). |
| **Action center** | Navigates to the Action center, which tracks remediation and manual response actions. The Action center tracks activities like these: <br/>- Microsoft Defender Antivirus encounters a malicious file and then blocks/removes that file. <br/>- Your security team isolates a device.<br/>- Defender for Endpoint detects and quarantines a file. <br/><br/> To learn more, see [Action center](auto-investigation-action-center.md). |
| **Secure score** | Displays a representation of your organization's security posture along with a list of recommended actions and metrics. <br/><br/> To learn more, see [Microsoft Secure Score](../defender/microsoft-secure-score.md). |
| **Learning hub** | Navigates to a list of learning paths that you can access to learn more about Microsoft 365 security capabilities.  |
| **Endpoints** > **Search** | Navigates to a page where you can search for specific devices by device name. In the list of results, you can see details, such as risk level and health state, at a glance. |
|  **Endpoints** > **Device inventory** | Navigates to your list of devices that are onboarded to Defender for Endpoint. Provides information about devices, such as their exposure and risk levels. <br/><br/> To learn more, see [Device inventory](machines-view-overview.md). |
|  **Endpoints** > **Configuration & baselines** | Expands to show **Security baselines** and **Configuration management**. |
|  **Endpoints** > **Configuration & baselines** > **Security baselines** | Security baselines are pre-configured policies and groups of settings that can help you apply recommended security settings efficiently and effectively. Baselines include settings that are based on industry best practices. You can keep the default settings, or customize your baselines to suit your organization's needs. <br/><br/> To learn more, see [Use security baselines to configure Windows 10 devices in Intune](/mem/intune/protect/security-baselines). |
|  **Endpoints** > **Configuration & baselines** > **Configuration management** | Navigates to the **Device configuration management** page, where you can view information about onboarded devices, and take steps to onboard more devices. |
| **Reports** | Navigates to your reports, such as your [Threat protection report](threat-protection-reports.md), [Device health and compliance report](device-health-reports.md) and your [Web protection report](web-protection-overview.md). |
| **Health** | Includes links to the **Service health** and **Message center**.  |
| **Health** > **Service health** | Navigates to the Service health page in the Microsoft 365 admin center. This page enables you to view health status across all the services available with your organization's subscriptions.   |
| **Health** > **Message center** | Navigates to the Message center in the Microsoft 365 admin center. The Message center provides information about planned changes. Each message describes what's coming, how it might affect users, and how to manage changes. |  
| **Permissions & roles** | Enables you to grant permissions to use the Microsoft 365 Defender portal. Permissions are granted through roles in Azure Active Directory (Azure AD). Select a role, and a flyout pane appears. The flyout contains a link to Azure AD where you can add or remove members in a role group. <br/><br/> To learn more, see [Manage portal access using role-based access control](rbac.md).  |
| **Settings** | Navigates to general settings for your Microsoft 365 Defender portal (listed as **Security center**) and Defender for Endpoint (listed as **Endpoints**). <br/><br/> To learn more, see [Settings](../defender/microsoft-365-defender-portal.md). |
| **More resources** | Displays a list of more portals and centers, such as Azure Active Directory and the Microsoft Purview compliance portal. <br/><br/> To learn more, see [Microsoft security portals and admin centers](../defender/portals.md). |

> [!TIP]
> To learn more, see the [Microsoft 365 Defender portal overview](../defender/microsoft-365-security-center-mde.md).

## View and manage incidents & alerts

When you sign into the Microsoft 365 Defender portal, make sure to view and manage your incidents and alerts. Start with your **Incidents** list. The following image shows a list of incidents, including one with high severity, and another with medium severity.

:::image type="content" source="../../media/mde-p1/incidents.png" alt-text="Incidents list":::

Select an incident to view details about the incident. Details include what alerts were triggered, how many devices and users were affected, and other details. The following image shows an example of incident details.

:::image type="content" source="../../media/mde-p1/single-incident.png" alt-text="The details of an incident" lightbox="../../media/mde-p1/single-incident.png":::

Use the **Alerts**, **Devices**, and **Users** tabs to view more information, such as the alerts that were triggered, devices that were affected, and user accounts that were affected. From there, you can take manual response actions, such as isolating a device, stopping and quarantining a file, and so on.

> [!TIP]
> To learn more about using the **Incident** view, see [Manage incidents](manage-incidents.md).

## Manage devices

To view and manage your organization's devices, in the navigation bar, under **Endpoints**, select **Device inventory**. You'll see a list of devices as shown in the following image:

:::image type="content" source="../../media/mde-p1/device-inventory.png" alt-text="Device inventory" lightbox="../../media/mde-p1/device-inventory.png":::

The list includes devices for which alerts were generated. By default, the data shown is for the past 30 days, with the most recent items listed first. Select a device to view more information about it. A flyout pane opens, as shown in the following image:

:::image type="content" source="../../media/mde-p1/device-inventory-selecteddevice.png" alt-text="Selected device details" lightbox="../../media/mde-p1/device-inventory-selecteddevice.png":::

The flyout pane displays details, such as any active alerts for the device, and includes links to take action, such as isolating a device.

If there are active alerts on the device, you can view them in the flyout pane. Select an individual alert to view more details about it. Or, take an action, such as **Isolate device**, so you can investigate the device further while minimizing the risk of infecting other devices.

> [!TIP]
> To learn more, see [Investigate devices in the Defender for Endpoint devices list](investigate-machines.md).

## View reports

In Defender for Endpoint Plan 1, several reports are available in the Microsoft 365 Defender portal. To access your reports, follow these steps:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation bar, choose **Reports**.

3. Select a report in the list. You'll see the following three reports:

   - Threat protection report
   - Device health report
   - Web protection report

> [!TIP]
> For more information, see [Threat protection reports](threat-protection-reports.md).

### Threat protection report

To access your Threat protection report, in the Microsoft 365 Defender portal, choose **Reports**, and then choose **Threat protection**. The Threat Protection report shows alert trends, status, categories, and more. Views are arranged in two columns: **Alert trends** and **Alert status**, as shown in the following image:

:::image type="content" source="../../media/mde-p1/threat-protection-report.png" alt-text="Threat protection report" lightbox="../../media/mde-p1/threat-protection-report.png":::

Scroll down to see all the views in each list.

- By default, the views in the **Alert trends** column display data for the past 30 days, but you can set a view to display data for the last three months, last six months, or a custom time range (up to 180 days).
- The views in the **Alert status** column are a snapshot for the previous business day.

> [!TIP]
> To learn more, see [Threat protection report in Defender for Endpoint](threat-protection-reports.md).

### Device health report

To access your Device health report, in the Microsoft 365 Defender portal, choose **Reports**, and then choose **Device health**. The Device health report shows health state and antivirus across devices in your organization. Similar to the [Threat protection report](#threat-protection-report), views are arranged in two columns: **Device trends** and **Device summary**, as shown in the following image:

:::image type="content" source="../../media/mde-p1/device-health-report.png" alt-text="Device health report" lightbox="../../media/mde-p1/device-health-report.png":::

Scroll down to see all the views in each list. By default, the views in the **Device trends** column display data for the past 30 days, but you can change a view to display data for the last three months, last six months, or a custom time range (up to 180 days). The **Device summary** views are snapshots for the previous business day.

> [!TIP]
> To learn more, see [Device health](device-health-reports.md).

### Web protection report

To access your Device health report, in the Microsoft 365 Defender portal, choose **Reports**, and then choose **Web protection**. The Web protection report shows detections over time, such as malicious URLs and attempts to access blocked URLs, as shown in the following image:

:::image type="content" source="../../media/mde-p1/web-protection-report.png" alt-text="Web protection report" lightbox="../../media/mde-p1/web-protection-report.png":::

Scroll down to see all the views in the Web protection report. Some views include links that enable you to view more details, configure your threat protection features, and even manage indicators that serve as exceptions in Defender for Endpoint.

> [!TIP]
> To learn more, see [Web protection](web-protection-overview.md).

## Next steps

- [Manage Microsoft Defender for Endpoint Plan 1](manage-mde-post-migration.md)
- [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
