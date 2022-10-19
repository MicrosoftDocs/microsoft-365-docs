---
title: Microsoft Defender for Office 365 data retention
f1.keywords:
- NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 09/14/2022
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: mdo
ms.localizationpriority: medium
ms.collection:
- m365-security
ms.custom: 
description: Microsoft Defender for Office 365 data retention informationThreat Explorer/ Real-Time detections 
search.appverid: met150
---

# Data retention information for Microsoft Defender for Office 365

By default, data across different features is retained for a maximum of 30 days. However, for some of the features, you can specify the retention period based on policy. See the following table for the different retention periods for each feature.

> [!NOTE]
> Microsoft Defender for Office 365 comes in two different Plan types. You can tell if you have **Plan 1** if you have 'Real-time Detections', and **Plan 2**, if you have Threat Explorer. The Plan you have influences the tools you will see, so be certain that you're aware of your Plan as you learn.

## Defender for Office 365 Plan 1

|Feature|Retention period|
|---|---|
|Alert metadata details (Microsoft Defender for Office alerts) | 90 days |
|Entity metadata details (Emails) | 30 days |
|Activity alert details (audit logs) | 7 days |
|Email entity page | 30 days |
|Quarantine | 30 days (configurable up to 30 days maximum) |
|Reports | 90 days (for all aggregated data) <br>30 days (for all detailed information except below) <br> 10 days (for Threat protection status report detail and spoof mail report details) <br> 7 days (for URL protection report details) <br>
|Submissions | 30 days |
|Threat Explorer/ Real-Time detections | 30 days |

## Defender for Office 365 Plan 2

Defender for Office 365 Plan 1 capabilities, plus:

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
