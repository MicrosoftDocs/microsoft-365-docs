---
title: "Automatic Service Health Incident Creation"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 03/01/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_TOC
ms.custom: AdminSurgePortfolio
ROBOTS: NOINDEX, NOFOLLOW
search.appverid:
- MET150
description: "A feature that creates new ServiceNow incidents when a Microsoft Service Health Incident is published for your Microsoft 365 tenant."
---

# Automatic ServiceNow Incident Creation

The Microsoft 365 support integration app enables you to create ServiceNow incidents when a Microsoft Service Health Incident is published for your tenant. To use this feature, you must use version 2.1.0 or later. This feature helps IT teams by automatically creating incidents in ServiceNow when Microsoft publishes new service health incidents.

:::image type="content" source="../../media/servicenowincident1.png" alt-text="image of m365 servicehealth dashboard":::

> [!NOTE]
> This article was partially generated using Azure OpenAI Service. Before publishing, an author reviewed and revised the content as needed. See [Our principles for using AI-generated content in Microsoft Learn](https://aka.ms/ai-content-principles).

When a Microsoft Service Health Incident is updated, the app posts the same updates to the ServiceNow incident. You can choose to have the app automatically close the ServiceNow incident when the Microsoft service health incident is resolved, or you can close it manually.

The properties on the Microsoft service health incident map to properties on the ServiceNow incident.

| Microsoft Service Health | ServiceNow Incident |
| --- | --- |
| Title | Short Description |
| Issue type | Impact |
| Status | Urgency |
| All other fields | Description |

## Configuration

To enable automatic creation of ServiceNow incidents, navigate to **Microsoft 365 Support** > **Service Health** in your ServiceNow instance.

Select **Enable the Microsoft 365 support integration app to create ServiceNow incidents for each Microsoft 365 service health incident**.

:::image type="content" source="../../media/servicenowincident2.png" alt-text="image of servicenow copied incident from service health dashboard":::

To automatically close ServiceNow incidents, select **Automatically resolve ServiceNow incident when the Microsoft service health is resolved**.

If the ServiceNow incident is manually closed and this setting is enabled, the app stops posting updates to that incident.

If the ServiceNow incident is automatically resolved, the app stops posting updates to that incident. The ServiceNow incident is resolved with the following settings:

- Resolution code: **Closed/Resolved by Caller**
- Resolution note: **The Microsoft service health incident was resolved on <date_time>. Please refer to the incident details in the Microsoft 365 Support tab for more information.**

To automatically create ServiceNow incidents, configure the **Assignment group** and **Category** for the app. The **Assigned to** and **Subcategory** aren't required. Setting those values improves routing and reporting.
