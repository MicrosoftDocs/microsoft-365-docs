---
title: Extend advanced hunting coverage with the right settings
description: Check auditing settings on Windows devices and other settings to help ensure that you get the most comprehensive data in advanced hunting
search.appverid: met150
ms.service: defender-xdr
ms.subservice: adv-hunting
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.date: 02/16/2024
---

# Extend advanced hunting coverage with the right settings

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR

[Advanced hunting](advanced-hunting-overview.md) relies on data coming from various sources, including your devices, your Office 365 workspaces, Microsoft Entra ID, and Microsoft Defender for Identity. To get the most comprehensive data possible, ensure that you have the correct settings in the corresponding data sources.

## Advanced security auditing on Windows devices
Turn on these advanced auditing settings to ensure you get data about activities on your devices, including local account management, local security group management, and service creation.

| Data | Description | Schema table | How to configure |
| --- | --- | --- | --- |
| Account management | Events captured as various `ActionType` values indicating local account creation, deletion, and other account-related activities | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit User Account Management](/windows/security/threat-protection/auditing/audit-user-account-management)<br> - [Learn about advanced security audit policies](/windows/security/threat-protection/auditing/advanced-security-auditing) |
| Security group management | Events captured as various `ActionType` values indicating local security group creation and other local group management activities | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit Security Group Management](/windows/security/threat-protection/auditing/audit-security-group-management)<br> - [Learn about advanced security audit policies](/windows/security/threat-protection/auditing/advanced-security-auditing) |
| Service installation | Events captured with the `ActionType` value `ServiceInstalled`, indicating that a service has been created | [DeviceEvents](advanced-hunting-deviceevents-table.md) | - Deploy an advanced security audit policy: [Audit Security System Extension](/windows/security/threat-protection/auditing/audit-security-system-extension)<br> - [Learn about advanced security audit policies](/windows/security/threat-protection/auditing/advanced-security-auditing) |

## Microsoft Defender for Identity sensor on the domain controller
If you're running Active Directory on premises, you need to install the Microsoft Defender for Identity sensor on the domain controller to get data for Microsoft Defender for Identity. When installed and properly configured, this data also feeds into advanced hunting through Microsoft Defender for Identity and provides a more holistic picture of identity information and events in your network. This data also enhances the ability of Microsoft Defender for Identity to generate relevant alerts that are also covered by advanced hunting. 

| Data | Description | Schema table | How to configure |
| --- | --- | --- | --- |
| Domain controller | Data from on-premises Active Directory sent to Microsoft Defender for Identity, enriching identity-related information, such as account details, logon activity, and Active Directory queries | Multiple tables, including [IdentityInfo](advanced-hunting-identityinfo-table.md), [IdentityLogonEvents](advanced-hunting-identitylogonevents-table.md), and [IdentityQueryEvents](advanced-hunting-identityqueryevents-table.md)  | - [Install the Microsoft Defender for Identity sensor](/azure-advanced-threat-protection/install-atp-step4)<br>- [Turn on relevant Windows Events](/azure-advanced-threat-protection/configure-event-collection) |

> [!NOTE]
> Some tables in this article might not be available in Microsoft Defender for Endpoint. [Turn on Microsoft Defender XDR](m365d-enable.md) to hunt for threats using more data sources. You can move your advanced hunting workflows from Microsoft Defender for Endpoint to Microsoft Defender XDR by following the steps in [Migrate advanced hunting queries from Microsoft Defender for Endpoint](advanced-hunting-migrate-from-mde.md).

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
