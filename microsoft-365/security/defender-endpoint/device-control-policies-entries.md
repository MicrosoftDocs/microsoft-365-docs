---
title: Device control policies and entries in Microsoft Defender for Endpoint            
description: Learn about device control policies and entries in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/22/2024
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

For schema details, see [JSON schema for Mac](https://github.com/microsoft/mdatp-devicecontrol/blob/main/macOS/policy/device_control_policy_schema.json).

## Rules

A rule defines the list of included groups and a list of excluded groups. For the rule to apply, the device must be in all of the included groups and none of the excluded groups.  If the device matches the rule, then the entries for that rule are evaluated.  An entry defines the action and notification options applied, if the request matches the conditions. If no rules apply or no entries match the request then the default enforcement is applied. 

For example, to allow write access for some USB devices, and read access for all other USB devices, use the following policies, groups, and entries with default enforcement set to deny.

| Group | Description |
|---|---|
| All Removable Storage Devices | Removable Storage Devices |
| Writeable USBs | List of USBs where write access is permitted |

|Rule | Included Device Groups | Excluded Device Groups | Entry |
|---|---|---|---|
| Read only access for USBs | All Removable storage devices | Writeable USBs | Read Only Access |
| Write access for USBs |  Writeable USBs |  | Write Access |

The name of the rule appears in the portal for reporting and in the toast notification to users, so make sure to give the rules descriptive names.

You can configure rules by editing policies in Intune, using an XML file in Windows, or using a JSON file on Mac. Select each tab for more details.

### [**Intune**](#tab/Removable)

The following image depicts configuration settings for a device control policy in Intune:

:::image type="content" source="media/device-control-rule-intune.png" alt-text="Screenshot of device control configuration in Intune." lightbox="media/device-control-rule-intune.png":::

In the screenshot, the Included ID and Excluded ID are the references to included and excluded reusable settings groups. A policy can have multiple rules.

The ordering of the rules is not honored by Intune. The rules can be evaluated in any order, so make sure to explicitly exclude groups of devices that are not in scope for the rule.

### [**XML (Windows)**](#tab/XML)

The following code snippet shows the syntax for a device control policy rule in XML:

```xml

<PolicyRule Id="{75a4e33a-5268-4552-bef2-e34dd0c39cb1}">
  <Name>Read Only Access for USBs</Name>
  <IncludedIdList>
      <GroupId>{3f5253e4-0e73-4587-bb9e-bb29a2171694}</GroupId>
  </IncludedIdList>
  <ExcludedIdList>
      <GroupId>{3f5253e4-0e73-4587-bb9e-bb29a2171695}</GroupId>
  <ExcludedIdList>
  <Entry Id="{e3837e60-5e56-43ce-8095-043ccd793eac}">
   …
  </Entry>
  <Entry Id="{34413b98-8198-4e16-accf-c95c3c775ba3}">
    …
  </Entry>
</PolicyRule>

```

The following table provides more context for the XML code snippet:

| Property Name | Description | Options |
|---------|---------|---------|
| `PolicyRule Id`  | GUID, a unique ID, represents the policy and will be used in the reporting and troubleshooting. | You can generate the ID through [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid). |
| `Name` | String, the name of the policy and will display on the toast based on the policy setting. | |
| `IncludedIdList` | The group(s) that the policy will be applied to. If multiple groups are added, the media must be a member of each group in the list to be included. | The Group ID/GUID must be used at this instance. <br/><br/>The following example shows the usage of GroupID: `<IncludedIdList> <GroupId> {EAA4CCE5-F6C9-4760-8BAD-FDCC76A2ACA1}</GroupId> </IncludedIdList>` |
| `ExcludedIDList` | The group(s) that the policy won't be applied to. If multiple groups are added, the media must be a member of a group in the list to be excluded. | The Group ID/GUID must be used at this instance. |
| `Entry` | One PolicyRule can have multiple entries; each entry with a unique GUID tells device control one restriction. | See Entry properties table below to get details. |

### [**JSON (Mac)**](#tab/JSON)

The following code snippet shows the syntax for a device control policy rule in JSON for macOS:

```json
{
      "id": "75a4e33a-5268-4552-bef2-e34dd0c39cb1",
      "name": "Read Only Access for USBs",
      "includeGroups": [
        "3f5253e4-0e73-4587-bb9e-bb29a2171694"
      ],
      “includedGroups”:[
         "3f5253e4-0e73-4587-bb9e-bb29a2171695"
      ]
      "entries": [
        …
      ]
    }

```

The following table provides more context for the XML code snippet:

| Property name | Description | Options |
|---|---|---|
| `id` | GUID, a unique ID, represents the rule and will be used in the policy. | `New-Guid (Microsoft.PowerShell.Utility) - PowerShell<br/>uuidgen` |
| `name` | String, the name of the policy and will display on the toast based on the policy setting. |  |
| `includeGroups` | The group(s) that the policy will be applied to. If multiple groups are specified, the policy applies to any media in all those groups. If not specified, the rule applies to all devices. | The id value inside the group must be used in this instance. If multiple groups are in the includeGroups, it's `AND`. <br/> `"includeGroups": ["3f082cd3-f701-4c21-9a6a-ed115c28e217"]` |
| `excludeGroups` | The group(s) that the policy doesn't apply to. | The `id` value inside the group must be used in this instance. If multiple groups are in the excludeGroups, it's `OR`. |
| `entries` | One rule can have multiple entries; each entry with a unique GUID tells Device Control one restriction. | See entry properties table later in this article to get the details. |

---

## Entries

Device control policies define access (called an entry) for a set of devices. Entries define the action and notification options for devices that match the policy and the conditions defined in the entry.  

- Actions include: Allow, Deny, AuditAllow, AuditDeny
- Notification options include:   
   - No notification (default setting), but an event is generated
   - The user receives a notification and file evidence can be captured

If device control is configured, and a user attempts to use a device that's not allowed, the user gets a notification that contains the name of the device control policy and the name of the device. The notification appears once every hour after initial access is denied.

An entry supports the following optional conditions:

- Access Condition: Applies the action only to the access defined in the access mask
- User Condition : Applies the action only to the user/group identified by the SID
- Machine Condition:  Applies the action only to the machine/group identified by the SID
- Parameters Condition:  Applies the action only if the parameters match (See Advanced Conditions)

Entries can be further scoped to specific users and machines.  For example, allow read access to these USBs for this user only on this device.

| Policy | Included Device Groups | Excluded Device Groups | Entry(ies) |
|---|---|---|---|
| Read only access for USBs | All Removable storage devices | Writeable USBs | Read Only Access |
| Write access for USBs | Writeable USBs |  | Write Access for User 1<br/><br/>Write Access for User 2 on Machine Group A |

All of the conditions in the entry must be true for the action to be applied.

