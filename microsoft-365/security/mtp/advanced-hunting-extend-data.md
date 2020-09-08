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

[Advanced hunting](advanced-hunting-overview.md) relies on data coming from various sources, including your devices, your Office 365 workspaces, Azure AD, and Azure ATP. To get the most comprehensive data possible, ensure that you have the correct settings in the corresponding data sources.

## Advanced security auditing on Windows devices
Turn on these advanced auditing settings to ensure you get data about activities on your devices, including local account management, local security group management, and service creation.

| Data | Description | Schema table | How to configure |
| --- | --- | --- | --- |
| Account management | Events captured as various `ActionType` values indicating local account creation, deletion, and other account-related activities | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit User Account Management](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-user-account-management)<br> - [Learn about advanced security audit policies](https://docs.microsoft.com/windows/security/threat-protection/auditing/advanced-security-auditing) |
| Security group management | Events captured as various `ActionType` values indicating local security group creation and other local group management activities | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit Security Group Management](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-security-group-management)<br> - [Learn about advanced security audit policies](https://docs.microsoft.com/windows/security/threat-protection/auditing/advanced-security-auditing) |
| Service installation | Events captured with the `ActionType` value `ServiceInstalled`, indicating that a service has been created | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit Security System Extension](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-security-system-extension)<br> - [Learn about advanced security audit policies](https://docs.microsoft.com/windows/security/threat-protection/auditing/advanced-security-auditing) |

## Azure ATP sensor on the domain controller
If you're running Active Directory on premises, you need to install the Azure ATP sensor on the domain controller to get data for Azure ATP. When installed and properly configured, this data also feeds into advanced hunting through Azure ATP and provides a more holistic picture of identity information and events in your network. This data also enhances the ability of Azure ATP to generate relevant alerts that are also covered by advanced hunting. 

| Data | Description | Schema table | How to configure |
| --- | --- | --- | --- |
| Domain controller | Data from on-premises Active Directory sent to Azure ATP, enriching identity-related information, such as account details, logon activity, and Active Directory queries | Multiple tables, including [IdentityInfo](advanced-hunting-identityinfo-table.md), [IdentityLogonEvents](advanced-hunting-identitylogonevents-table.md), and [IdentityQueryEvents](advanced-hunting-identityqueryevents-table.md)  | - [Install the Azure ATP sensor](https://docs.microsoft.com/azure-advanced-threat-protection/install-atp-step4)<br>- [Turn on relevant Windows Events](https://docs.microsoft.com/azure-advanced-threat-protection/configure-event-collection) |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Understand the schema](advanced-hunting-schema-tables.md)