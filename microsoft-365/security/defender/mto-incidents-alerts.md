---
title: View and manage incidents and alerts in the Microsoft 365 Defender multi-tenant view
description: Learn about incidents and alerts in the Microsoft 365 Defender multi-tenant view
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 09/01/2023
---

# View and manage incidents and alerts

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft 365 Defender multi-tenant view

[!include[Prerelease information](../../includes/prerelease.md)]

Microsoft 365 Defender multi-tenant view enables security operation center (SOC) analysts to access and analyze data from multiple tenants in one place, allowing them to quickly identify and respond to threats.

You can manage incidents & alerts originating from multiple tenants under **Incidents & alerts**

## View and investigate incidents

1. To View or investigate an incident, go to the [Incidents page](https://mto.security.microsoft.com/incidents) in the Microsoft 365 Defender multi-tenant view. The **Tenant Name** column shows which tenant the incident originates from:

   :::image type="content" source="../../media/defender/mto-incidents.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant incidents page" lightbox="../../media/defender/mto-incidents.png":::

2. Select the incident you want to view. A flyout panel will open with the incident details page:

   :::image type="content" source="../../media/defender/mto-incident-details.png" alt-text="Screenshot of the Microsoft 365 Defender incidents details page" lightbox="../../media/defender/mto-incident-details.png":::

3. From the incident details page you can:

- Select **Open incident page** to view this incident in a new tab for the specific tenant in the [Microsoft 365 Defender portal](https://security.microsoft.com) 
- Select **Manage incident** to assign the incident, set incident tags, set the incident status, and classify the incident.

To learn more, see [Investigate incidents](../defender-endpoint/investigate-incidents.md). 


## Manage multiple incidents

To manage incidents across multiple tenants:

1. Go to the [Incidents page](https://mto.security.microsoft.com/incidents) in the Microsoft 365 Defender multi-tenant view
2. Choose the incidents you want to manage from the incidents list and select **Manage incidents**

   :::image type="content" source="../../media/defender/mto-manage-incidents.png" alt-text="Screenshot of the Microsoft 365 Defender incidents page" lightbox="../../media/defender/mto-manage-incidents.png":::

On the incidents fly-out you can assign incidents, assign incidents tags, set the incident status, and classify multiple incidents for multiple tenants simultaneously.

To learn more, see [Manage incidents](../defender-endpoint/manage-incidents.md).

## View and investigate alerts

1. To view or investigate an alert, go to the [Alerts](https://mto.security.microsoft.com/alerts) in the Microsoft 365 Defender multi-tenant view and select the incident you want to view. A flyout panel will open with the alert details page:

   :::image type="content" source="../../media/defender/mto-alerts-details.png" alt-text="Screenshot of the Microsoft 365 Defender alert details page" lightbox="../../media/defender/mto-alerts-details.png":::

2. From the alert details page you can:

- Select actions such as **Open alerts page**, **See in time**, and **Tune alert** to view this alert in a new tab for the specific tenant in the [Microsoft 365 Defender portal](https://security.microsoft.com).
- Select **Manage alert** to assign the alert, set the alert status, and classify the alert.

To learn more, see [Investigate alerts](../defender-endpoint/investigate-alerts.md).

## Manage multiple alerts

To manage alerts across multiple tenants:

1. Go to the [Alerts page](https://mto.security.microsoft.com/alerts) in the Microsoft 365 Defender multi-tenant view.
2. Choose the alerts you want to manage from the alerts list and select **Manage alerts**.

   :::image type="content" source="../../media/defender/mto-manage-alerts.png" alt-text="Screenshot of the Microsoft 365 Defender alerts page" lightbox="../../media/defender/mto-manage-alerts.png":::

On the alert fly-out you can assign alerts, set the alert status, and classify the alerts for multiple tenants simultaneously.

To learn more, see [Manage alerts](../defender-endpoint/manage-alerts.md).
