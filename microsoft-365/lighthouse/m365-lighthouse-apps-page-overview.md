---
title: "Overview of the Apps page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: prpath
ms.date: 06/21/2023
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view application performance insights."
---

# Overview of the Apps page in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse brings the features of Microsoft Endpoint analytics for applications into a simplified management view. The Apps page provides insight into potential issues for desktop applications on managed devices. You can quickly identify the top applications impacting end-user productivity along with app failure metrics for these applications.

The data only reflects fully managed Windows devices. Data on Bring Your Own Devices isn't supported.

## Requirements

Devices must be enrolled in Microsoft Intune. For more information on enrollment, see [What is Endpoint analytics?](/mem/analytics/overview) Once a device is enrolled, the Apps page automatically populates with data. It may take up to 48 hours to see updates.

> [!NOTE]
> If data doesn't show up for a specific application, verify that the policy is enabled. From the tenant's deployment plan, under **Set up device enrollment**, verify that **Device health monitoring policy** is compliant. If not compliant, deploy the policy.


## App performance tab

The Apps performance tab provides application insight from the past 14 days. For each application, Lighthouse provides the following information,

- **Name**: The app identifier in the file manifest provided by your client devices. The app name is typically in executable (or .exe) format.

- **Publisher**: The publisher of the executable reported in the file manifest.

- **Total** **Active devices (14 days)**: The total number of enrolled devices that have launched this app at least once in the past 14 days.

- **Total crashes (14 days):** The total number of application crash events reported across all enrolled devices over the past 14 days.

- **Total app hangs:** The total number of application hangs reported across all enrolled devices over the past 14 days.

Select an application from the list for more detailed application information, including which devices are having issues. A shortcut is provided to view the device in Microsoft Endpoint Manager, where you can see more insights and recommendations.

The App performance tab also includes the following options:

- **Export**: Select to export app performance data to an Excel comma-separated values (.csv) file.

- **Search**: Enter keywords to quickly locate a specific name or publisher in the list.

:::image type="content" source="../media/m365-lighthouse-apps-page/apps-performance-page.png" alt-text="Screenshot of apps performance tab." lightbox="../media/m365-lighthouse-apps-page/apps-performance-page.png":::


## Related content
[What is Endpoint analytics?](/mem/analytics/overview) (article)\
[Application reliability in Endpoint analytics](/mem/analytics/app-reliability) (article)\
[Overview of the Device health page in Microsoft 365 Lighthouse](m365-lighthouse-device-health-overview.md) (article)
