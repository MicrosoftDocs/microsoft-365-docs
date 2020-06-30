---
title: Extend advanced hunting coverage with the right settings 
description: Check auditing settings on Windows devices and other settings to help ensure that you get the most comprehensive data in advanced hunting  
keywords: advanced hunting, incident, pivot, entity, audit settings, user account management, security group management, threat hunting, cyber threat hunting, search, query, telemetry, Microsoft 365, Microsoft Threat Protection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Extend advanced hunting coverage with the right settings

**Applies to:**
- Microsoft Threat Protection

[Advanced hunting](advanced-hunting-overview.md) relies on data coming from various sources, including your devices, your Office 365 workspaces, and Azure AD. To get the most comprehensive data possible, ensure that you have the correct settings in the corresponding data sources.

## Advanced security auditing on Windows devices
Turn on these advanced auditing settings to ensure you get data about activities around account creation and management as well as activities around security groups.

| Data | Description | Schema table | How to configure |
| --- | --- | --- | --- |
| Account management | Provides additional events captured as various `ActionType` values indicating account creation, deletion, and other account-related activities | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit User Account Management](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-user-account-management)<br> - [Learn about advanced security audit policies](https://docs.microsoft.com/windows/security/threat-protection/auditing/advanced-security-auditing) |
| Security group management | Provides additional events captured as various `ActionType` values indicating security group creation and other management activities | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit Security Group Management](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-user-account-management)<br> - [Learn about advanced security audit policies](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-security-group-management) |


## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Understand the schema](advanced-hunting-schema-tables.md)