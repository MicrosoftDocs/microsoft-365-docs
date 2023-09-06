---
title: Microsoft 365 Defender multi-tenant view
description: Overview of the Microsoft 365 Defender view for multi-tenant organizations 
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

# Overview of the Microsoft 365 Defender multi-tenant view

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft 365 Defender multi-tenant view

[!include[Prerelease information](../../includes/prerelease.md)]

Managing multi-tenant environments can add an additional layer of complexity when it comes to keeping up with the ever-evolving security threats facing your enterprise. Navigating across multiple tenants can be time consuming and reduce the overall efficiency of security operation center (SOC)teams.

Microsoft 365 Defender multi-tenant view was designed to provide security operation teams with a single, unified view of all the tenants they manage. This view enables teams to quickly investigate incidents and perform advanced hunting across data from multiple tenants, improving their security operations.

>[!Tip]
>To learn more about multi-tenant organizations, see [Multi-tenant organizations documentation](/azure/active-directory/multi-tenant-organizations/).

Some of the key benefits you'll get with Microsoft 365 Defender multi-tenant view include:

- **A centralized place to manage incidents across tenants**: A unified view provides SOC analysts with all the information they need for incident investigation across multiple tenants, eliminating the need to log in and out of each one.

- **Streamlined threat hunting**: Multi-tenancy support enables SOC teams use Microsoft 365 Defender advanced hunting capabilities to create KQL queries that will proactively hunt for threats across multiple tenants.

- **Multi-customer management for partners**: Managed Security Service Provider (MSSP) partners can now gain visibility into security incidents, alerts, and threat hunting across multiple customers through a single pane of glass.

## What's included in Microsoft 365 Defender multi-tenant view

The following key capabilities are available for each tenant you have access to in the Microsoft 365 Defender multi-tenant view:

| Capability | Description |
| ------ | ------ |
|**Incidents & alerts** > **Incidents** | Manage incidents originating from multiple tenants.|
|**Incidents & alerts** > **Alerts** | Manage alerts originating from multiple tenants. |
|**Hunting** > **Advanced hunting**| Proactively hunt for intrusion attempts and breach activity across multiple tenants at the same time.|
|**Hunting** > **Custom detection rules**|View and manage custom detection rules across multiple tenants.|
|**Assets** > **Devices** > **Tenants**| For all tenants and at a tenant-specific level, explore the device counts across different values such as device type, device value, onboarding status, and risk status.|
|**Endpoints** >**Vulnerability Management** > **Dashboard** |The Microsoft Defender Vulnerability Management dashboard provides both security administrators and security operations teams with aggregated vulnerability management information across multiple tenants. |
|**Endpoints** > **Vulnerability management** > **Tenants** |For all tenants and at a tenant-specific level explore vulnerability management information across different values such as exposed devices, security recommendations, weaknesses, and critical CVEs. |
|**Configuration** > **Settings**|Lists the tenants you have access to. Use this page to view and manage your tenants.|

## Next steps

- [Set up Microsoft 365 Defender multi-tenant](mto-requirements.md)
