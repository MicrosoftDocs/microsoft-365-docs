---
title: "Automatic ServiceNow Incident Creation"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
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

Starting with version 2.1.0, the Microsoft 365 support integration app introduces a new feature that allows creating ServiceNow incidents when a Microsoft Service Health Incident is published for your tenant. This feature seeks to empower IT teams, taking care of creating incidents in ServiceNow when Microsoft publishes new service health incidents.

:::image type="content" source="../../media/servicenowincident1.png" alt-text="image of m365 servicehealth dashboard":::

Whenever there is an update to the Microsoft Service Health Incident, the app will post the same updates to the ServiceNow incident created for it. Additionally, you can choose to have the app automatically close out the created ServiceNow incident when the Microsoft service health incident is resolved, or you can opt to manually close them out.

Here are how the properties on the Microsoft service health incident will map to the properties on the ServiceNow incident.

| Microsoft Service Health | ServiceNow Incident |
| --- | --- |
| Title | Short Description |
| Issue type | Impact |
| Status | Urgency |
| All other fields | Description |

## Configuration

- To enable the Microsoft 365 support integration app to automatically create ServiceNow incidents, navigate to **Microsoft 365 Support** > **Service Health** in your ServiceNow instance and select the option **Enable the Microsoft 365 support integration app to create ServiceNow incidents for each Microsoft 365 service health incident**.
:::image type="content" source="../../media/servicenowincident2.png" alt-text="image of servicenow copied incident from service health dashboard":::
- To have the app automatically close out the ServiceNow incidents, select the option **Automatically resolve ServiceNow incident when the Microsoft service health is resolved**.
    - If the ServiceNow incident is manually resolved/closed by a user and this setting is enabled, then the app will discontinue to post updates to that incident.
    - If the ServiceNow incident is resolved automatically, then the app will discontinue to post updates to that incident.
        - The ServiceNow incident will be resolved with the following settings:

| Resolution code | Closed/Resolved by Caller |
| --- | --- |
| Resolution note | The Microsoft service health incident was resolved on <date_time>. Please refer to the incident details in the Microsoft 365 Support tab for more information. |

- To have the app automatically create ServiceNow incidents, you will need to configure the **Assignment group** and **Category** The **Assigned to** and **Subcategory** are not required but can be configured for improved routing and reporting.

*This documentation was made with AI assistance.*
