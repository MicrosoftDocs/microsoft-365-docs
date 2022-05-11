---
title: Microsoft Defender for Office 365 data retention
f1.keywords:
- NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: article
ms.prod: m365-security
ms.technology: mdo
ms.localizationpriority: medium
search.appverid:
ms.collection:
- M365-security-compliance
ms.custom: 
description: Microsoft Defender for Office 365 data retention informationThreat Explorer/ Real-Time detections 
---

# Data retention information for Microsoft Defender for Office 365

By default, data across different features is retained for a maximum of 30 days. However, for some of the features, you can specify the retention period based on policy. See the following table for the different retention periods for each feature.

## Defender for Office 365 Plan 1

|Feature|Retention period|
|---|---|
|Alert metadata details (Microsoft Defender for Office alerts) | 90 days |
|Entity metadata details (Emails) | 30 days |
|Activity alert details (audit logs) | 7 days |
|Email entity page | 30 days |
|Quarantine | 30 days (configurable up to 30 days maximum) |
|Reports | 90 days (for all aggregated data) <br>30 days (for all detailed information except below**) <br> 10 days (for Threat protection status report detail and spoof mail report details)** <br> 7 days (for URL protection report details)** <br>
|Submissions | 30 days |
|Threat Explorer/ Real-Time detections | 30 days |

## Defender for Office 365 Plan 2

|Feature|Retention period|
|---|---|
|Action Center | 180 days, 30 days (Office Action center)   |
|Advanced Hunting | 30 days |
|AIR (Automated Investigation and Response) | 60 days (for investigations meta data)<br> 30 days (for email meta data)  |
|Attack Simulation Data | 18 months |
|Campaigns | 30 days |
|Incidents | 30 days|
|Remediation | 30 days |
|Threat Analytics | 30 days |
|Threat Trackers | 30 days |
