---
title: "Create and manage alert rules in Microsoft 365 Lighthouse"
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to create alert rules."
---

# Create and manage alert rules in Microsoft 365 Lighthouse

Alert rules allow you to configure high priority alerts from various data sources, such as Risky Users, Microsoft Defender for Business, Microsoft Defender Antivirus, Device Compliance, and more. Lighthouse supports the creation of six alert types:

- Non-compliant
- Device without antivirus protection
- Variance detection
- Risky user
- Security incident
- Active threat on device

## Before you begin

You must be a Global Administrator to create and manage alert rules.

## Create a new alert rule

1. In the left navigation pane in Lighthouse, select **Alerts**.
2. On the **Alerts** page, select **Alerts rules** tab.
3. Select **Create alert rule**. The alert rules wizard opens.
4. From the **Set up the basics** page, configure the following basic information:
    1. Name of the alert
    2. Alert type
    3. Description of the alert
5. Select **Next**.
6. From the **Settings** page, configure alert settings. The number of settings vary based on the alert type you choose.
7. Select **Next**.
8. From the **Tenants** page, select which tenants to monitor.
9. From the **Recipients** page, select who should receive email notification when this alert is triggered. You can send notifications to users, security groups, or ticketing system.
10. Review the information and then select **Create alert rule**.

## Edit an existing alert rule

1. In the left navigation pane in Lighthouse, select **Alerts**.
2. On the **Alerts** page, select **Alerts rules** tab.
3. From the list, select an alert rule you want to edit.
4. Select **Edit alert rule**. The alert rules wizard opens.
5. Step through each page and edit any settings as needed.
6. Review your changes and then select **Edit alert rule**.

## Delete an alert rule

1. In the left navigation pane in Lighthouse, select **Alerts**.
2. On the **Alerts** page, select **Alerts rules** tab.
3. From the list, select an alert rule you want to delete.
4. Select **Delete**.
5. In the confirmation window, select **Delete**.

## Related content

[Overview of the Alerts page in Microsoft 365 Lighthouse](m365-lighthouse-alerts-overview.md) (article)
