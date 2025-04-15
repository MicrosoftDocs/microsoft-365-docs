---
title: "Overview of the Device health page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: prpath
ms.date: 10/27/2023
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-manage
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view device health insights."
---

# Overview of the Device health page in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse brings the features of Microsoft Endpoint analytics for devices into a simplified multi-tenant management view. Performance issues and other problems can go undetected by a tenant for an extended period, impacting end-user experience and increasing support costs. The Device health page brings these problems to the surface faster and across multiple tenants to save time and end-user pain by allowing you to gain insights and remedy problems.

The Device health page provides a subset of device analytics offered through Endpoint analytics, specifically device performance and startup processes. Example data includes device health status, total restarts, total blue screens, top processes, and hardware specifications. The data only reflects fully managed Windows devices. Data on Bring Your Own Devices isn't supported.

> [!NOTE]
> This page provides the number of tenants for which data is unavailable because they do not have the required licenses.

## Requirements

Devices must be enrolled in Microsoft Intune. For more information on enrollment, see [What is Endpoint analytics?](/mem/analytics/overview) Once a device is enrolled, the Device health page automatically populates with data. It may take up to 48 hours to see updates.

> [!NOTE]
> If data doesn't show up for a specific tenant, verify that the policy is enabled. From the tenant's deployment plan, under **Set up device enrollment**, verify that **Device health monitoring policy** is compliant. If not compliant, deploy the policy.

## Overview tab

The Overview tab provides a multi-tenant view of device health, including the total number of restarts and blue screens. Select a tenant from the list to see device-specific details.

The Overview tab also includes the following options:

- **Tenants filter:** Filter by tenant or tag.

- **Date filter:** Filter by date range.

- **Export**: Select to export device data to an Excel comma-separated values (.csv) file.

:::image type="content" source="../media/m365-lighthouse-device-health/device-health-overview-tab.png" alt-text="Screenshot of Device health overview tab." lightbox="../media/m365-lighthouse-device-health/device-health-overview-tab.png":::

## Devices tab

The Device tab provides device health insights for all managed Windows devices, including,

- Health status (Needs attention, Meeting goals, Insufficient data)

- Start up performance score – To learn more, see [Scores, baselines, and insights in Endpoint analytics](/mem/analytics/scores).

- Total restarts

- Total blue screens

- Startup processes

- Hardware model, manufacturer, OS version, and disk type

Select a device from the list for more detailed device information, including a comprehensive list of startup processes on that device. A shortcut is provided to view the device in Microsoft Endpoint Manager, where you can see more insights and recommendations.

The Devices tab also includes the following options:

- **Tenants filter:** Filter by tenant or tag.

- **Date filter:** Filter by date range.

- **Export**: Select to export device data to an Excel comma-separated values (.csv) file.

- **Search**: Enter keywords to quickly locate a specific device in the list.

- **Choose Columns**: Select which columns to show.

:::image type="content" source="../media/m365-lighthouse-device-health/device-health-devices-tab.png" alt-text="Screenshot of Device health tab" lightbox="../media/m365-lighthouse-device-health/device-health-devices-tab.png":::

## Related content

[What is Endpoint analytics?](/mem/analytics/overview) (article)\
[Scores, baselines, and insights in Endpoint analytics](/mem/analytics/scores) (article)\
[Overview of the Apps page in Microsoft 365 Lighthouse](m365-lighthouse-apps-page-overview.md) (article)
