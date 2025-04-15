---
title: "Create and manage alert rules in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: prpath
ms.date: 08/08/2024
audience: Admin
ms.topic: how-to
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

Alert rules allow you to configure high-priority alerts from the following services: Microsoft Defender for Business (MDB), Microsoft Defender Antivirus, and Microsoft Entra ID.

Lighthouse provides a default set of alert rules based on best practices and recommendations. You can use these alert rules as is or modify them according to your preferences and needs. You can also create custom alert rules for more control and flexibility. 

For example, you can create an alert rule in Lighthouse to alert you when an active threat is found on a device. Lighthouse checks the underlying Microsoft Defender for Business service for threats and, if an active threat is found, displays an alert on the **Alerts** page in Lighthouse. Lighthouse also sends an alert notification via email, if configured.

For more information about the different types of alerts you can create, see [Overview of the Alerts page in Microsoft 365 Lighthouse](m365-lighthouse-alerts-overview.md).

## Before you begin

You must hold the Administrator role in Lighthouse to create and manage alert rules.

## Create an alert rule

> [!NOTE]
> Alerts created in Lighthouse do not correlate to alerts created in the underlying service portals. For example, if you create a Microsoft Defender for Business alert in Lighthouse, the same alert is not created in the Microsoft Defender portal.

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Alerts**.
2. On the **Alerts** page, select the **Alert rules** tab.
3. Select **Create alert rule**.
4. On the **Set up the basics** page, provide the following information:
    - Name of the alert rule
    - Alert type
    - (Optional) Description of the alert rule
5. Select **Next**.
6. On the **Settings** page, configure the alert settings. The settings vary based on the alert type you selected on the first page.
7. Select **Next**.
8. On the **Tenants** page, select which tenants and tags to monitor.
9. On the **Recipients** page, select who should receive an email notification when the alert is triggered. You can send notifications to users, security groups, or ticketing systems.
10. Select **Next**.
11. Review the information, and then select **Save** to create the alert rule.

## Edit an existing alert rule

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Alerts**.
2. On the **Alerts** page, select the **Alert rules** tab.
3. From the list, select an alert rule to edit.
4. Select **Edit alert rule**.
5. Step through each page and edit any settings as needed.
6. Review your changes, and then select **Save**.

## Delete an alert rule

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Alerts**.
2. On the **Alerts** page, select the **Alert rules** tab.
3. From the list, select an alert rule to delete.
4. Select **Delete**.
5. In the confirmation window, select **Delete**.

## Related content

[Overview of the Alerts page in Microsoft 365 Lighthouse](m365-lighthouse-alerts-overview.md) (article)
