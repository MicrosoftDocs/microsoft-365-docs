---
title: "Microsoft 365 Teams monitoring"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/25/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
ms.custom: admindeeplinkMAC
f1.keywords:
- NOCSH
description: "Use Teams monitoring for information about incidents or advisories related to Microsoft 365 Teams."
---

# Microsoft 365 Teams monitoring

Microsoft Teams monitoring supports the following organizational scenarios with near real-time information:

![Organization-level scenarios for Teams Monitoring.](../media/microsoft-365-exchange-monitoring/TeamsMonitoring1.png)

- **App Launch**. The number of times users opened the Teams client without errors. Data is sampled and retrieved every 30 minutes.

- **Chat**. The number of chat messages sent and delivered in Teams. Data is sampled and retrieved every 30 minutes.

- **Join Meeting**. The number of times users joined Teams meetings without errors. Data is sampled and retrieved every 30 minutes.

- **Quality of Experience**. The percentage of audio streams for which Quality of Experience (QoE) telemetry was received by the Teams service. Data can be received up to 3 days after call completion. If the rate drops, investigate your network configuration to ensure that the Microsoft Teams telemetry URLs are not being blocked.

- **UDP Stream Establishment**. The percentage of audio streams established over UDP (User Datagram Protocol). Real-time media established over UDP is more efficient and provides better call quality. If the rate drops, investigate your network configuration to ensure that the ports and protocols required by Microsoft Teams are not being blocked.

Admins can use the information to correlate any Microsoft-reported issues with the usage data to confirm any actual impact to their organization. Also, admins can view any usage from the last two weeks of usage data to identify any  anomalies.

![Example of Teams Monitoring.](../media/microsoft-365-exchange-monitoring/TeamsMonitoring2.png)
