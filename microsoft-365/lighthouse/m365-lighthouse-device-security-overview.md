---
title: "Overview of the Device security page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: prpath
ms.date: 10/27/2023
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view security risks."
---

# Overview of the Device security page in Microsoft 365 Lighthouse

Microsoft Defender for Endpoint provides endpoint security to secure your customers' devices from ransomware, malware, phishing, and other threats. Microsoft 365 Lighthouse allows you to view endpoint security insights and information for all your managed tenants.

You can access the Device security page in Microsoft 365 Lighthouse from the **Security incidents** card on the Home page or from the left navigation pane by selecting **Devices** > **Device security**. You'll see any security incidents and alerts in your tenants that need attention, and devices that have been onboarded to Microsoft Defender for Endpoint.

> [!NOTE]
> This page provides the number of tenants for which data is unavailable because they do not have the required licenses.

## Incidents and alerts tab

The Incidents and alerts tab provides a multi-tenant view of incidents and alerts that were flagged from devices in your customers' network. By default, the tab displays any active incidents seen in the last 30 days. You can select any incident or alert to open the details pane to view more information. From the details pane, you can also resolve the incident or alert, or assign it to yourself.

:::image type="content" source="../media/m365-lighthouse-device-security-overview/device-security-incidents-and-alerts-tab.png" alt-text="Screenshot of the Incidents and alerts tab on the Device security page." lightbox="../media/m365-lighthouse-device-security-overview/device-security-incidents-and-alerts-tab.png":::

## Devices tab

The Devices tab lists all of the devices in your managed tenants that have been onboarded to Microsoft Defender for Endpoint. This list includes devices that are managed by Microsoft Intune and Microsoft Defender for Endpoint.

The Devices tab also includes the following options:

- **Export**: Select to export device compliance data to an Excel comma-separated values (.csv) file.
- **Search**: Enter keywords to quickly locate a specific device in the list.

:::image type="content" source="../media/m365-lighthouse-device-security-overview/device-security-devices-tab.png" alt-text="Screenshot of the Devices tab on the Device security page." lightbox="../media/m365-lighthouse-device-security-overview/device-security-devices-tab.png":::

## Related content

[Manage Microsoft Defender for Endpoint incidents](../security/defender-endpoint/manage-incidents.md) (article)\
[Investigate incidents in Microsoft Defender for Endpoint](../security/defender-endpoint/investigate-incidents.md) (article)
