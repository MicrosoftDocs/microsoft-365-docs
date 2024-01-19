---
title: Device control policies and entries in Microsoft Defender for Endpoint            
description: Learn about device control policies and entries in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/19/2024
ms.topic: overview
ms.service: defender-endpoint
ms.subservice: asr
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-asr
ms.custom:     # Useful for querying on a specific set of articles.
ms.reviewer: joshbregman
search.appverid: MET150
f1.keywords: NOCSH 
audience: ITPro
---

# Device control policies and entries in Microsoft Defender for Endpoint

This article describes device control policies, rules, entries, groups, and advanced conditions. Essentially, device control policies define access for a set of devices. The devices that are in scope are determined by a list of included device groups and a list of excluded device groups. A policy applies if the device is in all of the included device groups and none of the excluded device groups. If no policies apply, then the default enforcement is applied. 

By default device control is disabled, so access to all types of devices is allowed. To learn more about device control, see [Device control in Microsoft Defender for Endpoint](device-control-overview.md).

## Controlling default behavior

When device control is enabled, it is enabled for all device types by default. The default enforcement can also be changed from *Allow* to *Deny*. Your security team can also configure the types of devices that device control protects. The following table below illustrates how various combinations of settings change the access control decision. 

| Is device control enabled? | Default behavior | Device types |
|---|---|---|
| No | Access is allowed | - CD/DVD drives <br/>- Printers <br/>- Removable media devices <br/>- Windows portable devices |
| Yes | (Not specified) <br/>Access is allowed | - CD/DVD drives <br/>- Printers <br/>- Removable media devices <br/>- Windows portable devices |
| Yes | Deny | - CD/DVD drives <br/>- Printers <br/>- Removable media devices <br/>- Windows portable devices |
| Yes | Deny removable media devices and printers | - Printers and removable media devices (blocked) <br/>- CD/DVD drives and Windows portable devices (allowed) | 

When device types are configured, device control in Defender for Endpoint ignores requests to other device families.

- See LINK NEEDED Defining Settings with OMA-URI for information on changing default behavior using Intune
- See LINK NEEDED Deploy Using Device GPO (Windows) for information on changing default behavior using Group Policy

## Policies

To further refine access to devices, device control uses policies.  A policy is a set of rules and groups. How rules and groups are defined varies slightly among management experiences and operating systems, as described in the following table.

| Management tool	| Operating system | How rules and groups are managed |
|---|---|---|
| Intune – Device Control Policy |	Windows | Device and printer groups can be managed as re-usable settings and included in rules.   NOTE:  Not all features are available in the Device Control Policy (See Managing Device Control in Intune (Windows) for details) |
| Intune – Custom	| Windows | Each group/rule is stored as an XML string in custom configuration policy. The OMA-URI contains the GUID of the group/rule.  The GUID needs to be generated. |
| Group Policy | Windows | The groups and rules are defined in separate XML settings in the GPO – Define device control policy groups, and Define device control policy rules. |
| Intune | Mac | The rules and policies are combined into a single JSON and included in the mobileconfig file that is deployed via Intune |
| JAMF | Mac | The rules and policies are combined into a single JSON and configured via JAMF as the Device Control Policy |

Rules and groups are identified by Global Unique ID (GUIDs).  If device control policies are deployed using a management tool other than the Intune – Device Control Policy, the GUIDs will need to be generated. This can be done easily via [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid).
