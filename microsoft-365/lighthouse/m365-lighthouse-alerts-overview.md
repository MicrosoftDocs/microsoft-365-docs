---
title: "Overview of the Alerts page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: algreer
ms.date: 06/30/2023
audience: Admin
ms.topic: article
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view alerts in Lighthouse."
---

# Overview of the Alerts page in Microsoft 365 Lighthouse

As an MSP provider, you need to monitor and respond to the security issues of your customers efficiently and effectively. Microsoft 365 Lighthouse introduces alerts, a powerful tool that gives you a consolidated view of all the high priority detections and alerts across your customers. You can see a prioritized list of the most urgent issues that require your attention and take immediate action to resolve them. You can also enable push alerts to your existing support systems and flows, so you never miss a critical alert that needs your intervention.

To help you get started, Lighthouse provides a default set of alerting rules based on best practices and recommendations. You can use these rules as they are or modify them according to your preferences and needs. You can also create rules from scratch for more control and flexibility.

## Alerts tab

The **Alerts** tab provides a consolidated view of potential security issues across all your customers. The tab contains two sections:

- **Alert resolution rate** – a graph that displays historical information about alerts and their status over time.

- **Alert report** – a table of current alerts that can be filtered by alert type, severity, status, and assigned to.

From the table, you can select any alert to see more detailed information, including:

- Alert description
- Affected tenant(s)
- Rule that triggered the alert
- Alert type
- Time stamp (First detected, last updated)
- Impacted entity

You can update the severity and status of the alert and assign the alert to a specific user to resolve. From the **Comments and history** tab, you have a complete history of the alert. You can also add additional comments to the alert as needed.

### Alert Types

Lighthouse defines six alert types.

- Non-compliant
- Device without antivirus protection
- Variance detection
- Risky user
- Security incident
- Active threat on device

The **Alerts** tab also includes the following options:

- **Export:** Select to export alert data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current alert data.
- **Search:** Enter keywords to locate a specific alert in the list.

:::image type="content" source="../media/m365-lighthouse-alerts-overview/m365-lighthouse-alerts-tab.png" alt-text="Screenshot of the Alerts tab in Lighthouse." lightbox="../media/m365-lighthouse-alerts-overview/m365-lighthouse-alerts-tab.png":::

## Alert rules tab

The **Alert rules** tab lets you create and edit alert rules. Lighthouse provides six default alert rules that are automatically applied to all customers. You can edit existing rules or create your own custom rules. Select **Create alert rule**, and Lighthouse will guide you step by step in creating your first alert rule.

The Alert rules tab also includes the following options:

- **Create alert rule:** Select to create a new alert.
- **Edit alert rule:** Select to edit an existing alert rule.
- **Delete:** Select to delete an alert rule from the list.
- **Search:** Enter keywords to locate a specific alert rule in the list.

:::image type="content" source="../media/m365-lighthouse-alerts-overview/m365-lighthouse-alerts-rules-tab.png" alt-text="Screenshot of alerts rules tab." lightbox="../media/m365-lighthouse-alerts-overview/m365-lighthouse-alerts-rules-tab.png":::

## Related content

[Create and manage alert rules](m365-lighthouse-create-manage-alert-rules.md) (article)\
[Overview of the Threat management page in Microsoft 365 Lighthouse](m365-lighthouse-threat-management-page-overview.md) (article)\
[Mitigate threats in Microsoft 365 Lighthouse with Microsoft Defender Antivirus](m365-lighthouse-mitigate-threats.md) (article)\
[Overview of the Device security page in Microsoft 365 Lighthouse](m365-lighthouse-device-security-overview.md) (article)\
[Overview of the Vulnerability management page in Microsoft 365 Lighthouse](m365-lighthouse-vulnerability-management-page-overview.md) (article)
