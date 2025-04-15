---
title: "Overview of the Device compliance page in Microsoft 365 Lighthouse"
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
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about the Device compliance page."
---

# Overview of the Device compliance page in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse lets you view insights and information related to Intune device compliance for all your customer tenants by selecting **Devices** > **Device compliance** in the left navigation pane to open the Device compliance page. From this page, you can get an overview of compliance status across tenants, view a list of devices for each tenant, and get status reports on compliance policies and settings.

> [!NOTE]
> This page provides the number of tenants for which data is unavailable because they do not have the required licenses.

## Overview tab  
  
On the Overview tab, you can view device compliance status across your tenants, see monthly device compliance trends, and track whether devices have compliance policies assigned to them. You can also see how many tenants don't have any device compliance requirement enforced using conditional access policies. You can select **View more** to see more details.

To get detailed device compliance information for a particular customer tenant, select a value under any of the status columns for that tenant. This will open the Devices tab so you can view device compliance details for the selected tenant.

To export device compliance data to an Excel comma-separated values (.csv) file, select **Export**.

:::image type="content" source="../media/m365-lighthouse-device-compliance-page-overview/device-overview-tab.png" alt-text="Screenshot of the Overview tab on the Device compliance page." lightbox="../media/m365-lighthouse-device-compliance-page-overview/device-overview-tab.png":::

## Devices tab

On the Devices tab, the colored count-annotation bar displays the total number of devices across all your customer tenants that have the following compliance statuses: Compliant, Not compliant, In grace period, and Not evaluated. For more information about the different compliance statuses, see [Monitor Intune Device compliance policies](/mem/intune/protect/compliance-policy-monitor).

To see which tenants have devices with a specific compliance status, select that status from the count-annotation bar to filter the list. To see device compliance statuses for one or more specific customer tenants, use the **Tenants** dropdown menu to filter the list.

Select any device name in the list to view more details about that device's current compliance state. You can sync or restart the device, or select **View device in Microsoft Endpoint Manager** if you need to troubleshoot or take further action.

> [!NOTE]
> When you restart a device, the device owner isn't automatically notified and may lose unsaved work. For this reason, you may want to notify the device owner before you restart a device.

The Devices tab also includes the following options:

- **Export:** Select to export device compliance data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current device compliance data.
- **Sync:** Select one or more devices from the list that have a status of Not compliant, In grace period, or Not evaluated, and then select this option to force those devices to check in with Intune and immediately receive any policies that have been assigned to them.
- **Restart:** Select one or more devices from the list that have a status of Not compliant, In grace period, or Not evaluated, and then select this option to restart those devices.
- **Search:** Enter keywords to quickly locate a specific device in the list.

:::image type="content" source="../media/m365-lighthouse-device-compliance-page-overview/devices-device-tab.png" alt-text="Screenshot of the Devices tab on the Device compliance page." lightbox="../media/m365-lighthouse-device-compliance-page-overview/devices-device-tab.png":::

## Policies tab

On the Policies tab, you can view device compliance policies across your tenants and compare two or three policies of the same platform type by using the **Compare** option.

To see policies for devices on a specific platform, use the **OS** dropdown menu to filter the list. To see policies for one or more specific customer tenants, use the **Tenants** dropdown menu to filter the list.

Select any policy name in the list to view more details about that policy. If you need to take action or see additional information, select **View this policy in Microsoft Endpoint Manager**.

The Policies tab also includes the following options:

- **Export:** Select to export device compliance policy data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current device compliance policy data.
- **Search:** Enter keywords to quickly locate a specific device compliance policy in the list.

:::image type="content" source="../media/m365-lighthouse-device-compliance-page-overview/devices-policies-tab.png" alt-text="Screenshot of the Policies tab on the Device compliance page." lightbox="../media/m365-lighthouse-device-compliance-page-overview/devices-policies-tab.png":::

## Settings tab

The Settings tab provides an aggregated report of non-compliant settings across tenant devices. 

To see non-compliant settings for devices on a specific platform, use the **Platform** dropdown menu to filter the list. To see non-compliant settings for one or more specific customer tenants, use the **Tenants** dropdown menu to filter the list.

Select any non-compliant setting name in the list to open a pane where you can view a list of tenants that have devices with that specific non-compliant setting. From here, you can further drill down by selecting any tenant from the list to view information about the devices within that tenant that have the specific non-compliant setting. You can also sync or restart the device, or select **View device in Microsoft Endpoint Manager** if you need to troubleshoot or take further action.

The Settings tab also includes the following options:

- **Export:** Select to export non-compliant settings data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current non-compliant settings data.
- **Search:** Enter keywords to quickly locate a specific non-compliant setting in the list.

:::image type="content" source="../media/m365-lighthouse-device-compliance-page-overview/device-settings-tab.png" alt-text="Screenshot of the Settings tab on the Device compliance page." lightbox="../media/m365-lighthouse-device-compliance-page-overview/device-settings-tab.png":::

## Related content

[Compare device compliance policy settings in Microsoft 365 Lighthouse](m365-lighthouse-compare-compliance-policies.md) (article)\
[Overview of the Device health page in Microsoft 365 Lighthouse](m365-lighthouse-device-health-overview.md) (article)\
[Overview of the Windows 365 (Cloud PCs) page in Microsoft 365 Lighthouse](m365-lighthouse-win365-page-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
