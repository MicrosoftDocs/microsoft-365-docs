---
title: Device control policies and entries in Microsoft Defender for Endpoint            
description: Learn about device control policies and entries in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/23/2024
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

When device control is enabled, it's enabled for all device types by default. The default enforcement can also be changed from *Allow* to *Deny*. Your security team can also configure the types of devices that device control protects. The following table below illustrates how various combinations of settings change the access control decision. 

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

| Management tool    | Operating system | How rules and groups are managed |
|---|---|---|
| Intune – Device control policy |  Windows | Device and printer groups can be managed as reusable settings and included in rules. Not all features are available in the device control policy (See LINK NEEDED Managing Device Control in Intune (Windows) for details) |
| Intune – Custom    | Windows | Each group/rule is stored as an XML string in custom configuration policy. The OMA-URI contains the GUID of the group/rule.  The GUID needs to be generated. |
| Group Policy | Windows | The groups and rules are defined in separate XML settings in the GPO – Define device control policy groups, and Define device control policy rules. |
| Intune | Mac | The rules and policies are combined into a single JSON and included in the mobileconfig file that is deployed via Intune |
| JAMF | Mac | The rules and policies are combined into a single JSON and configured via JAMF as the Device Control Policy |

Rules and groups are identified by Global Unique ID (GUIDs).  If device control policies are deployed using a management tool other than the Intune – Device Control Policy, the GUIDs must be generated. This can be done easily via [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid).

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

The ordering of the rules isn't honored by Intune. The rules can be evaluated in any order, so make sure to explicitly exclude groups of devices that aren't in scope for the rule.

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
| `PolicyRule Id`  | GUID, a unique ID, represents the policy and is used in reporting and troubleshooting. | You can generate the ID through [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid). |
| `Name` | String, the name of the policy and displays on the toast based on the policy setting. | |
| `IncludedIdList` | The group(s) that the policy applies to. If multiple groups are added, the media must be a member of each group in the list to be included. | The Group ID/GUID must be used at this instance. <br/><br/>The following example shows the usage of GroupID: `<IncludedIdList> <GroupId> {EAA4CCE5-F6C9-4760-8BAD-FDCC76A2ACA1}</GroupId> </IncludedIdList>` |
| `ExcludedIDList` | The group(s) that the policy doesn't apply to. If multiple groups are added, the media must be a member of a group in the list to be excluded. | The Group ID/GUID must be used at this instance. |
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
      "includedGroups":[
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
| `id` | GUID, a unique ID, represents the rule and is used in the policy. | `New-Guid (Microsoft.PowerShell.Utility) - PowerShell<br/>uuidgen` |
| `name` | String, the name of the policy and will display on the toast based on the policy setting. |  |
| `includeGroups` | The group(s) that the policy is applied to. If multiple groups are specified, the policy applies to any media in all those groups. If not specified, the rule applies to all devices. | The ID value inside the group must be used in this instance. If multiple groups are in the includeGroups, it's `AND`. <br/> `"includeGroups": ["3f082cd3-f701-4c21-9a6a-ed115c28e217"]` |
| `excludeGroups` | The group(s) that the policy doesn't apply to. | The `id` value inside the group must be used in this instance. If multiple groups are in the excludeGroups, it's `OR`. |
| `entries` | One rule can have multiple entries; each entry with a unique GUID tells Device Control one restriction. | See entry properties table later in this article to get the details. |

---

## Entries

Device control policies define access (called an entry) for a set of devices. Entries define the action and notification options for devices that match the policy and the conditions defined in the entry.  

| Entry setting | Options |
|---|---|
| Action | Allow <br/> Deny <br/> AuditAllow <br/> AuditDeny |
| Notification | None (default) <br/> An event is generated <br/> The user receives notification <br/> File evidence is captured |

If device control is configured, and a user attempts to use a device that's not allowed, the user gets a notification that contains the name of the device control policy and the name of the device. The notification appears once every hour after initial access is denied.

An entry supports the following optional conditions:

- Access Condition: Applies the action only to the access defined in the access mask
- User Condition: Applies the action only to the user/group identified by the SID
- Machine Condition:  Applies the action only to the machine/group identified by the SID
- Parameters Condition:  Applies the action only if the parameters match (See Advanced Conditions)

Entries can be further scoped to specific users and devices.  For example, allow read access to these USBs for this user only on this device.

| Policy | Included Device Groups | Excluded Device Groups | Entry(ies) |
|---|---|---|---|
| Read only access for USBs | All Removable storage devices | Writeable USBs | Read Only Access |
| Write access for USBs | Writeable USBs |  | Write Access for User 1<br/><br/>Write Access for User 2 on Device Group A |

All of the conditions in the entry must be true for the action to be applied.

### Determine the Security ID of a User, Group, or Device

Entries can include user, group, or device restrictions based on Security ID (SID).  The SID of the user who's signed in can be retrieved by running the PowerShell command `whoami /user`.

You can configure entries using Intune, an XML file in Windows, or a JSON file on Mac. Select each tab for more details.

### [**Intune**](#tab/Removable)

The following screenshot shows how you can manage entries in Intune. The **Access mask** field has options, such as **Read** (Disk Level Read = 1), **Write** (Disk Level Write = 2), **Execute** (Disk Level Execute = 4) and **Print** (Print = 64). Not all features are shown in the Intune user interface. For more information, see LINK NEEDED Managing Device Control in Intune (Windows).

### [**XML (Windows)**](#tab/XML)

The following code snippet shows the syntax for a device control entry in XML:

```xml

  <Entry Id="{e3837e60-5e56-43ce-8095-043ccd793eac}">
    <Type>Allow</Type>
    <Options>0</Options>
    <AccessMask>1</AccessMask>
  </Entry>

```

The following table provides more context for the XML code snippet:

| Property Name | Description | Options |
|---|---|---|
| Entry Id | GUID, a unique ID, represents the entry and is used in reporting and troubleshooting. | You can generate the GUID by using PowerShell. |
| Type | Defines the action for the removable storage groups in `IncludedIDList`. <br/>- Allow <br/>- Deny <br/>- AuditAllowed: Defines notification and event when access is allowed <br/>- AuditDenied: Defines notification and event when access is denied; works together with a Deny entry. <br/><br/>When there are conflict types for the same media, the system applies the first one in the policy. An example of a conflict type is Allow and Deny. | - Allow <br/>- Deny <br/>- AuditAllowed <br/>- AuditDenied |
| Option | If type is `Allow` | - 0: nothing <br/>- 4: disable AuditAllowed and AuditDenied for this entry. If Allow occurs and the AuditAllowed setting is configured, events aren't generated.<br/>- 8: create a copy of the file as evidence, and generate a `RemovableStorageFileEvent` event. This setting must be used together with the **Set location for a copy of the file** setting in Intune or Group Policy. <br/> For more information, see LINK NEEDED Feature evidence. |
| Option | If type is `Deny` | If type is Deny | - 0: nothing <br/>- 4: disable AuditDenied for this Entry. If Block occurs and the AuditDenied is setting configured, the system doesn't show notifications. |
| Option | If type is `AuditAllowed` | - 0: nothing<br/>- 1: nothing <br/>- 2: send event |
| Option | If type is `AuditDenied` | - 0: nothing <br/>- 1: show notification <br/>- 2: send event <br/>- 3: show notification and send event |
| AccessMask | Defines the access | See the following section [Understand mask access](#understand-mask-access-windows) |
| `Sid` | Local user SID or user SID group or the SID of the Microsoft Entra object or the Object ID. It defines whether to apply this policy over a specific user or user group. One entry can have a maximum of one SID and an entry without any SID means to apply the policy over the device. | SID | 
| `ComputerSid` | Local computer SID or computer SID group or the SID of the Microsoft Entra object or the Object Id. It defines whether to apply this policy over a specific machine or machine group. One entry can have a maximum of one ComputerSID and an entry without any ComputerSID means to apply the policy over the device. If you want to apply an Entry to a specific user and specific device, add both SID and ComputerSID into the same Entry. | SID | 
| Parameters | Condition for an entry, such as network condition. | Can add groups (non Devices type) or even put Parameters into Parameters. See LINK NEEDED Advanced Conditions  |


#### Understand mask access (Windows)

Device control applies an access mask to determine if the request matches the entry.  The following actions are available on CdRomDevices,RemovableMediaDevices and WpdDevices: 

| Access | Mask |
|--|--|
| Disk level read | 1 |
| Disk level write | 2 |
| Disk level execute | 4 |
| File system read | 8 |
| File system write | 16 |
| File system execute | 32 |

The following actions are available on PrinterDevices:

- Access: Print
- Mask: 64

You can have multiple access settings by performing a binary OR operation. Here's an example: 

- The AccessMask for Read and Write and Execute is 7
- The AccessMask for Read and Write is 3


### [**JSON (Mac)**](#tab/JSON)

The following code snippet shows the syntax for a device control entry in JSON for macOS:

```json

{
          "$type": "generic",
          "id": "e3837e60-5e56-43ce-8095-043ccd793eac",
          "enforcement": {
            "$type": "allow"
          },
          "access": [
            "generic_read"
          ]
}

```

The following table provides more context for the JSON code snippet:

| Property name | Description | Options |
|---|---|---|
| `id` | GUID, a unique ID, represents the entry and is used in reporting and troubleshooting. | You can generate the ID by using PowerShell. |
| `enforcement $type`  | Defines the action for the removable storage groups in `includedGroups`. <br/>- `allow` <br/>- `deny` <br/>- `auditAllow`: Defines notification and event when access is allowed <br/>- `AuditDeny`: Defines notification and event when access is denied; has to work together with the Deny entry. <br/><br/>When there are conflict types for the same media, the system applies the first one in the policy. An example of a conflict type is Allow and Deny. | The `enforcement $type` attribute can be one of the following values:<br/>- `allow`<br/>- `deny`<br/>- `auditAllow`<br/>- `auditDeny` | 
| `enforcement $options` | If enforcement $type is allow | `disable_audit_allow`: If Allow occurs and the auditAllow is setting configured, the system doesn't send events. |
| `enforcement $options` | If enforcement $type is deny | `disable_audit_deny`: If Block happens and the auditDeny is setting configured, the system doesn't show notifications or send events. |
| `enforcement $options` | If enforcement $type is auditAllow | `send_event`: Sends telemetry |
| `enforcement $options` | If enforcement $type is auditDeny | <br/>- `send_event`: Sends telemetry <br/>- `show_notification`: Displays block message to user |
| `$type` | The type of entry.  The type determines the operations that can be protected by device control | The `$type` attributes can be any of the following values:<br/>- `removableMedia`<br/>- `appleDevice`<br/>- `PortableDevice`<br/>- `bluetoothDevice` | 
| `access` | A list of operations that this entry grants | See LINK NEEDED Understand access on Mac | 

#### Understand access (Mac)

There are two kinds of access for an entry:  generic and device type specific. 

- Generic access options include generic_read, generic_write, and generic_execute.
- Device type specific access provides a finer granularity of control, because the device type specific access values are included in the generic access types.

The following table describes the device type specific access and how they map to the generic access types.

| Device Type ($type) | Device Type Specific Access | Description | Read | Write | Execute |
|---|---|---|---|---|---|
| `appleDevice` | `backup_device` |  | X |  |  |      
| `appleDevice` | `update_device` |  |  | X |   |   
| `appleDevice` | `download_photos_from_device` | download photo(s) from the specific iOS device to local machine | X  |  |  |         
| `appleDevice` | `download_files_from_device` | download file(s) from the specific iOS device to local machine | X  |  |  |        
| `appleDevice` | `sync_content_to_device` | sync content from local machine to specific iOS device |  | X |  |
| `portableDevice` | `download_files_from_device` | X  |  |  |        
| `portableDevice` | `send_files_to_device`  |  |  | X |  |     
| `portableDevice` | `download_photos_from_device` |  | X |  |  |        
| `portableDevice` | `debug` | ADB tool control |  |  | X |
| `removableMedia` | `read` |  | X |  |  |        
| `removableMedia` | `write` |  |  | X  |  |    
| `removableMedia` | `execute` |  |  |  | X |
| `bluetoothDevice` | `download_files_from_device` |  | X  |  |  |
| `bluetoothDevice` | `send_files_to_device` |  |  | X |  |    

---

## Groups

Groups define criteria for filtering objects by their properties. The object is assigned to the group if its properties match the properties defined for the group.   

For example:

- Allowed USBs are all the devices that match any of these manufacturers
- Lost USBs are all the devices that match any of these serial numbers
- Allowed printers are all the devices that match any of these VID/PID 

The properties can be matched in four ways:  `MatchAll`, `MatchAny`, `MatchExcludeAll`, and `MatchExcludeAny`

- `MatchAll`: The properties are an "And" relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, the system checks to see whether the USB meets both values.
- `MatchAny`: The properties are an "Or" relationship; for example, if administrator puts DeviceID and `InstancePathID`, for every connected USB, the system enforces as long as the USB has either an identical `DeviceID` or `InstanceID` value.
- `MatchExcludeAll`: The properties are an "And" relationship, any items that do NOT meet are covered. For example, if administrator puts `DeviceID` and `InstancePathID` and uses `MatchExcludeAll`, for every connected USB, system enforces as long as the USB doesn't have both identical `DeviceID` and `InstanceID` value.
- `MatchExcludeAny`: The properties are an "Or" relationship, any items that do NOT meet are covered. For example, if administrator puts `DeviceID` and `InstancePathID` and uses `MatchExcludeAny`, for every connected USB, system enforces as long as the USB doesn't have either an identical `DeviceID` or `InstanceID` value.

Groups are used two way:  to select devices for inclusion/exclusion in rules, and to filter access for advanced conditions.  This table summarizes the group types and how they are used.

| Type | Description | O/S | Include/Exclude Rules | Advanced conditions |
|---|---|---|---|---|
| Device (default) | Filter devices and printers | Windows/Mac | X |  |    
| Network | Filter network conditions | Windows |  | X |
| VPN Connection | Filter VPN conditions | Windows |  | X |
| File | Filter file properties | Windows |  | X |
| Print Job | Filter properties of the file being printed | Windows |  | X |

The devices that are in scope for the policy determined by a list of included groups and a list of excluded groups.  A rule applies if the device is in all of the included groups and none of the excluded groups.  Groups can be composed from the properties of devices.  The following properties can be used:

| Property | Description | Windows devices | Mac devices | Printers |
|---|---|---|---|---|
| `FriendlyNameId`  | The friendly name in Windows Device Manager | Y | N | Y |
| `PrimaryId` | The type of the device | Y | Y | Y |
| `VID_PID` | Vendor ID is the four-digit vendor code that the USB committee assigns to the vendor. Product ID is the four-digit product code that the vendor assigns to the device. Wildcards are supported. For example, `0751_55E0` | Y | N | Y |
`PrinterConnectionId` | The type of printer connection: <br/>- USB<br/>- Corporate<br/>- Network<br/>- Universal<br/>- File<br/>- Custom<br/>- Local | N | N | Y |
| `BusId` | Information about the device (for more information, see the sections that follow this table) | Y | N | N |
| `DeviceId` | Information about the device (for more information, see the sections that follow this table) | Y | N | N |
| `HardwareId` | Information about the device (for more information, see the sections that follow this table) | Y | N | N |
| `InstancePathId` | Information about the device (for more information, see the sections that follow this table) | Y | N | N |
| `SerialNumberId` | Information about the device (for more information, see the sections that follow this table) | Y | Y | N |
| `PID` | Product ID is the four-digit product code that the vendor assigns to the device | Y | Y | N |
| `VID` | Vendor ID is the four-digit vendor code that the USB committee assigns to the vendor. | Y | Y | N |
| `APFS Encrypted` | If the device is APFS encrypted | N | Y | N |


### Using Windows Device Manager to determine device properties

For Windows devices, you can use Device Manager to understand the properties of devices. 

1. Open Device Manager, locate the device, right-click on **Properties**, and then select the **Details** tab.

   :::image type="content" source="media/device-control-groups-windowsproperties.png" alt-text="Screenshot of device properties using Device Manager in Windows.":::

2. In the Property list, select **Device instance path**. 

   :::image type="content" source="media/device-control-groups-windows-deviceinstancepath.png" alt-text="Screenshot showing the device instance path in Device Manager on a Windows device.":::

The value shown for device instance path is the InstancePathId, but it also contains other properties.

- `USB\VID_090C&PID_1000\FBH1111183300721`
- `{BusId}\{DeviceId}\{SerialNumberId}`

The properties in the device manager map to device control as shown in the following table:

| Device Manager | Device Control |
|---|---|
| Hardware Ids | `HardwareId` |
| Friendly name | `FriendlyNameId` |
| Parent | `VID_PID` |
| DeviceInstancePath | `InstancePathId` |


### Using reports and advanced hunting to determine properties of devices

Device properties have slightly different labels in adavcned hunting. The table below maps the labels in the portal to the `propertyId` in a device control policy.

| Microsoft Defender Portal property | Device control property Id |
|---|---|
| Media name | `FriendlyNameId` |
| Vendor Id | `HardwareId` |
| DeviceId | `InstancePathId` |
| Serial Number | `SerialNumberId` |


> [!NOTE]
> Make sure that the object selected has the correct Media Class for the policy. In general, for removable storage, use `Class Name == USB`.

 
### Groups used for Rules in Intune

Reusable settings in Intune map to device groups. You can configure reusable settings in Intune.

:::image type="content" source="media/device-control-groups-reusablesettings.png" alt-text="Screenshot of configuring reusable settings in Intune." lightbox="media/device-control-groups-reusablesettings.png":::

There are two types of groups: Printer Device and Removable Storage.  Reusable settings support matching properties by either matching any or matching all or the settings. A removable storage setting has the following properties: 

- `BusId`
- `DeviceId`
- `FriendlyNameId`
- `HardwareId`
- `InstancePathId`
- `PID`
- `PrimaryId`
- `SerialNumberId`
- `VID`
- `VID_PID`

A printer device setting has the following properties: 

- `FriendlyNameId`
- `PrimaryId`
- `PrinterConnectionId`
- `VID_PID`

### Groups used for rules in XML (Windows)

The following XML snippet shows the syntax for matching groups:



MORE TO COME

