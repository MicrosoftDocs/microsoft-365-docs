---
title: Device control policies in Microsoft Defender for Endpoint
description: Learn about Device control policies in Defender for Endpoint
author: siosulli
ms.author: siosulli
manager: deniseb
ms.date: 04/09/2024
ms.topic: overview
ms.service: defender-endpoint
ms.subservice: asr
audience: ITPro
ms.collection:
- m365-security
- tier2
- mde-asr
ms.custom:
- partner-contribution
ms.reviewer: joshbregman, ksarens
search.appverid: MET150
f1.keywords: NOCSH
---

# Device control policies in Microsoft Defender for Endpoint

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](/microsoft-365/security/defender-business)

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

For more information, see the following articles:

- [Deploy and manage device control with Intune](device-control-deploy-manage-intune.md)
- [Deploy and manage device control with Group Policy](device-control-deploy-manage-gpo.md)

## Policies

To further refine access to devices, device control uses policies.  A policy is a set of rules and groups. How rules and groups are defined varies slightly among management experiences and operating systems, as described in the following table.

| Management tool    | Operating system | How rules and groups are managed |
|---|---|---|
| Intune – Device control policy |  Windows | Device and printer groups can be managed as reusable settings and included in rules. Not all features are available in the device control policy (see [Deploy and manage device control with Microsoft Intune](device-control-deploy-manage-intune.md)) |
| Intune – Custom    | Windows | Each group/rule is stored as an XML string in custom configuration policy. The OMA-URI contains the GUID of the group/rule. The GUID must be generated. |
| Group Policy | Windows | The groups and rules are defined in separate XML settings in the Group Policy Object (see [Deploy and manage device control with Group Policy](device-control-deploy-manage-gpo.md)). |
| Intune | Mac | The rules and policies are combined into a single JSON and included in the `mobileconfig` file that is deployed by using Intune |
| JAMF | Mac | The rules and policies are combined into a single JSON and configured by using JAMF as the device control policy (see [Device Control for macOS](mac-device-control-overview.md)) |

Rules and groups are identified by Global Unique ID (GUIDs). If device control policies are deployed using a management tool other than Intune, the GUIDs must be generated. You can generate the GUIDs by using [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid).

For schema details, see [JSON schema for Mac](https://github.com/microsoft/mdatp-devicecontrol/blob/main/macOS/policy/device_control_policy_schema.json).

## Users

Device control policies can be applied to users and/or user groups.

> [!NOTE]
> In the articles related to device control, groups of users are referred to as <i>user groups</i>.  The term <i>groups</i> refer to [groups](#groups) defined in the device control policy.

 Using Intune, on either Mac and Windows, device control policies can be targeted to user groups defined in Entra Id.

On Windows, a user or user group can be a condition on an [entry](#entries) in a policy.

Entries with user or user groups can reference objects from either Entra Id or a local Active Directory.

### Best practices for using device control with users and user groups

- To create a rule for an individual user on Windows, create an entry with a  `Sid` condition foreach user in a [rule](#rules)

- To create a rule for a user group on Windows and Intune, **either** create an entry with a `Sid` condition for each user group in a [rule] and target the policy to a machine group in Intune **or** create a rule without conditions and target the policy with Intune to the user group.

- On Mac, use Intune and target the policy to a user group in Entra Id.

> [!WARNING]
> Do not use both user/user group conditions in rules and user group targeting in Intune.

> [!NOTE]
> If network connectivity is an issue, use Intune user group targeting **or** a local Active Directory groups.  User/user group conditions that reference Entra Id should **only** be used in environments that have a reliable connection to Entra Id.

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

Intune doesn't honor the ordering of the rules. The rules can be evaluated in any order, so make sure to explicitly exclude groups of devices that aren't in scope for the rule.

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
   ...
  </Entry>
  <Entry Id="{34413b98-8198-4e16-accf-c95c3c775ba3}">
    ...
  </Entry>
</PolicyRule>

```

The following table provides more context for the XML code snippet:

| Property Name | Description | Options |
|---------|---------|---------|
| `PolicyRule Id`  | GUID, a unique ID, represents the policy and is used in reporting and troubleshooting. | You can generate the ID through [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid). |
| `Name` | String, the name of the policy and displays on the toast based on the policy setting. | |
| `IncludedIdList` | The groups that the policy applies to. If multiple groups are added, the media must be a member of each group in the list to be included. | The Group ID/GUID must be used at this instance. <br/><br/>The following example shows the usage of GroupID: `<IncludedIdList> <GroupId> {EAA4CCE5-F6C9-4760-8BAD-FDCC76A2ACA1}</GroupId> </IncludedIdList>` |
| `ExcludedIDList` | The groups that the policy doesn't apply to. If multiple groups are added, the media must be a member of a group in the list to be excluded. | The Group ID/GUID must be used at this instance. |
| `Entry` | One PolicyRule can have multiple entries; each entry with a unique GUID tells device control one restriction. | See  Entry properties table below to get details. |

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
        ...
      ]
    }

```

The following table provides more context for the XML code snippet:

| Property name | Description | Options |
|---|---|---|
| `id` | GUID, a unique ID, represents the rule and is used in the policy. | `New-Guid (Microsoft.PowerShell.Utility) - PowerShell<br/>uuidgen` |
| `name` | String, name of the policy and displays on the toast based on the policy setting. |  |
| `includeGroups` | The groups that the policy is applied to. If multiple groups are specified, the policy applies to any media in all those groups. If not specified, the rule applies to all devices. | The ID value inside the group must be used in this instance. If multiple groups are in the includeGroups, it's `AND`. <br/> `"includeGroups": ["3f082cd3-f701-4c21-9a6a-ed115c28e217"]` |
| `excludeGroups` | The group that the policy doesn't apply to. | The `id` value inside the group must be used in this instance. If multiple groups are in the excludeGroups, it's `OR`. |
| `entries` | One rule can have multiple entries; each entry with a unique GUID tells Device Control one restriction. | See entry properties table later in this article to get the details. |

---

## Entries

Device control policies define access (called an entry) for a set of devices. Entries define the action and notification options for devices that match the policy and the conditions defined in the entry.

| Entry setting | Options |
|---|---|
| AccessMask | Applies the action only if the access operations match the access mask -  The access mask is the bit-wise OR of the access values:<br><br>  1 - Device Read<br>2 - Device Write<br>4 - Device Execute<br>8 - File Read<br>16 - File Write<br>32 - File Execute<br>64 - Print<br><br>For example:<br>Device Read, Write, and Execute = 7 (1+2+4)<br>Device Read, Disk Read = 9 (1+8)<br>
| Action | Allow <br/> Deny <br/> AuditAllow <br/> AuditDeny |
| Notification | None (default) <br/> An event is generated <br/> The user receives notification <br/> File evidence is captured |

> [!WARNING]
> The [February 2024](microsoft-defender-antivirus-updates.md#february-2024-engine-11240209--platform-418240207) release causes inconsistent results for device control customers who are using removable media policies with disk/device-level access only (masks that are less than or equal to 7). Enforcement might not work as expected. To mitigate this issue, rolling back to the previous version is recommended.

If device control is configured, and a user attempts to use a device that's not allowed, the user gets a notification that contains the name of the device control policy and the name of the device. The notification appears once every hour after initial access is denied.

An entry supports the following optional conditions:

- User/User Group Condition: Applies the action only to the user/user group identified by the SID

> [!NOTE]
> For user groups and users that are stored in Microsoft Entra Id, use the object id in the condition.  For user groups and users that are stored localy, use the Security Identifier (SID)

> [!NOTE]
> On Windows, The SID of the user who's signed in can be retrieved by running the PowerShell command `whoami /user`.

- Machine Condition:  Applies the action only to the device/group identified by the SID
- Parameters Condition:  Applies the action only if the parameters match (See Advanced Conditions)

Entries can be further scoped to specific users and devices.  For example, allow read access to these USBs for this user only on this device.

| Policy | Included Device Groups | Excluded Device Groups | Entry(ies) |
|---|---|---|---|
| Read only access for USBs | All Removable storage devices | Writeable USBs | Read Only Access |
| Write access for USBs | Writeable USBs |  | Write Access for User 1<br/><br/>Write Access for User 2 on Device Group A |

All of the conditions in the entry must be true for the action to be applied.

You can configure entries using Intune, an XML file in Windows, or a JSON file on Mac. Select each tab for more details.

### [**Intune**](#tab/Removable)

In Intune, the **Access mask** field has options, such as:

- **Read** (Disk Level Read = 1)
- **Write** (Disk Level Write = 2)
- **Execute** (Disk Level Execute = 4)
- **Print** (Print = 64).

Not all features are shown in the Intune user interface. For more information, see [Deploy and manage device control with Intune](device-control-deploy-manage-intune.md).

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

| Property name | Description | Option |
|---|---|---|
| `Entry Id` | GUID, a unique ID, represents the entry and is used in reporting and troubleshooting. | You can generate the GUID by using PowerShell. |
| `Type` | Defines the action for the removable storage groups in `IncludedIDList`. <br/>- `Allow` <br/>- `Deny` <br/>- `AuditAllowed`: Defines notification and event when access is allowed <br/>- `AuditDenied`: Defines notification and event when access is denied; works together with a `Deny` entry. <br/><br/>When there are conflict types for the same media, the system applies the first one in the policy. An example of a conflict type is `Allow` and `Deny`. | - `Allow` <br/>- `Deny` <br/>- `AuditAllowed` <br/>- `AuditDenied` |
| `Option` | If type is `Allow` | - `0`: nothing <br/>- `4`: disable `AuditAllowed` and `AuditDenied` for this entry. If `Allow` occurs and the `AuditAllowed` setting is configured, events aren't generated.<br/>- `8`: create a copy of the file as evidence, and generate a `RemovableStorageFileEvent` event. This setting must be used together with the **Set location for a copy of the file** setting in [Intune](device-control-deploy-manage-intune.md) or [Group Policy](device-control-deploy-manage-gpo.md). |
| `Option` | If type is `Deny` | - `0`: nothing <br/>- `4`: disable `AuditDenied` for this Entry. If Block occurs and the `AuditDenied` is setting configured, the system doesn't show notifications. |
| `Option` | If type is `AuditAllowed` | - `0`: nothing<br/>- `1`: nothing <br/>- `2`: send event |
| `Option` | If type is `AuditDenied` | - `0`: nothing <br/>- `1`: show notification <br/>- `2`: send event <br/>- `3`: show notification and send event |
| `AccessMask` | Defines the access | See the following section [Understand mask access](#understand-mask-access-windows) |
| `Sid` | Local user SID or user SID group, or the SID of the Microsoft Entra object or the Object ID. It defines whether to apply this policy over a specific user or user group. One entry can have a maximum of one SID and an entry without any SID means to apply the policy over the device. | SID |
| `ComputerSid` | Local computer SID or computer SID group, or the SID of the Microsoft Entra object or the Object Id. It defines whether to apply this policy over a specific device or device group. One entry can have a maximum of one ComputerSID and an entry without any ComputerSID means to apply the policy over the device. If you want to apply an Entry to a specific user and specific device, add both SID and ComputerSID into the same Entry. | SID |
| `Parameters` | Condition for an entry, such as network condition. | Can add groups (non-device types) or even put parameters into parameters. For more information, see the [advanced conditions](#advanced-conditions) section (in this article).  |

#### Understand mask access (Windows)

Device control applies an access mask to determine if the request matches the entry.  The following actions are available on `CdRomDevices`, `RemovableMediaDevices`, and `WpdDevices`:

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
| `access` | A list of operations that this entry grants | See the next section, "Understand access on Mac" |

#### Understand access (Mac)

There are two kinds of access for an entry:  generic and device type specific.

- Generic access options include `generic_read`, `generic_write`, and `generic_execute`.
- Device type specific access provides a finer granularity of control, because the device type specific access values are included in the generic access types.

The following table describes the device type specific access and how they map to the generic access types.

| Device Type ($type) | Device Type Specific Access | Description | Read | Write | Execute |
|---|---|---|---|---|---|
| `appleDevice` | `backup_device` |  | X |  |  |
| `appleDevice` | `update_device` |  |  | X |   |
| `appleDevice` | `download_photos_from_device` | download photo(s) from the specific iOS device to local device | X  |  |  |
| `appleDevice` | `download_files_from_device` | download file(s) from the specific iOS device to local device | X  |  |  |
| `appleDevice` | `sync_content_to_device` | sync content from local device to specific iOS device |  | X |  |
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

> [!NOTE]
> Groups in this section **do not** refer to [user groups](#users).

For example:

- Allowed USBs are all the devices that match any of these manufacturers
- Lost USBs are all the devices that match any of these serial numbers
- Allowed printers are all the devices that match any of these VID/PID

The properties can be matched in four ways:  `MatchAll`, `MatchAny`, `MatchExcludeAll`, and `MatchExcludeAny`

- `MatchAll`: The properties are an "And" relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, the system checks to see whether the USB meets both values.
- `MatchAny`: The properties are an "Or" relationship; for example, if administrator puts DeviceID and `InstancePathID`, for every connected USB, the system enforces as long as the USB has either an identical `DeviceID` or `InstanceID` value.
- `MatchExcludeAll`: The properties are an "And" relationship, any items that do NOT meet are covered. For example, if administrator puts `DeviceID` and `InstancePathID` and uses `MatchExcludeAll`, for every connected USB, system enforces as long as the USB doesn't have both identical `DeviceID` and `InstanceID` value.
- `MatchExcludeAny`: The properties are an "Or" relationship, any items that do NOT meet are covered. For example, if administrator puts `DeviceID` and `InstancePathID` and uses `MatchExcludeAny`, for every connected USB, system enforces as long as the USB doesn't have either an identical `DeviceID` or `InstanceID` value.

Groups are used two ways:  to select devices for inclusion/exclusion in rules, and to filter access for advanced conditions.  This table summarizes the group types and how they're used.

| Type | Description | O/S | Include/Exclude Rules | Advanced conditions |
|---|---|---|---|---|
| Device (default) | Filter devices and printers | Windows/Mac | X |  |
| Network | Filter network conditions | Windows |  | X |
| VPN Connection | Filter VPN conditions | Windows |  | X |
| File | Filter file properties | Windows |  | X |
| Print Job | Filter properties of the file being printed | Windows |  | X |

The devices that are in scope for the policy determined by a list of included groups and a list of excluded groups. A rule applies if the device is in all of the included groups and none of the excluded groups.  Groups can be composed from the properties of devices. The following properties can be used:

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

2. In the Property list, select **Device instance path**.

   The value shown for device instance path is the `InstancePathId`, but it also contains other properties:

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

Device properties have slightly different labels in advanced hunting. The table below maps the labels in the portal to the `propertyId` in a device control policy.

| Microsoft Defender Portal property | Device control property Id |
|---|---|
| Media name | `FriendlyNameId` |
| Vendor Id | `HardwareId` |
| DeviceId | `InstancePathId` |
| Serial Number | `SerialNumberId` |

> [!NOTE]
> Make sure that the object selected has the correct Media Class for the policy. In general, for removable storage, use `Class Name == USB`.

### Configure groups in Intune, XML in Windows, or JSON on Mac

You can configure groups in Intune, by using an XML file for Windows, or by using a JSON file on Mac. Select each tab for more details.

> [!NOTE]
> The `Group Id` in XML and `id` in JSON is used to identify the group within device control.  Its not a reference to any other such as a [user group](#users) in Entra Id.

### [**Intune**](#tab/Removable)

Reusable settings in Intune map to device groups. You can configure reusable settings in Intune.

:::image type="content" source="media/device-control-groups-reusablesettings.png" alt-text="Screenshot of configuring reusable settings in Intune." lightbox="media/device-control-groups-reusablesettings.png":::

There are two types of groups: Printer Device and Removable Storage. The following table lists the properties for these groups.

| Group type | Properties |
|---|---|
| Printer device | - `FriendlyNameId`<br/>- `PrimaryId`<br/>- `PrinterConnectionId`<br/>- `VID_PID` |
| Removable storage | - `BusId` <br/>- `DeviceId`<br/>- `FriendlyNameId`<br/>- `HardwareId`<br/>- `InstancePathId`<br/>- `PID`<br/>- `PrimaryId`<br/>- `SerialNumberId`<br/>- `VID`<br/>- `VID_PID` |

### [**XML (Windows)**](#tab/XML)

The following XML snippet shows the syntax for matching groups:

```xml

<Group Id="{3f5253e4-0e73-4587-bb9e-bb29a2171694}">
  <MatchType>MatchAny</MatchType>
  <DescriptorIdList>
   ...
  </DescriptorIdList>
</Group>

```

The following table describes properties for groups.

| Property Name | Description | Options |
|---|---|---|
| `Group Id` | GUID, a unique ID, represents the group and to be used in the policy. | You can generate the ID through PowerShell. |
| `Type` | The type of the group | Device (Default) <br/><br/>The other types of groups (`File`, `VPNConnection`, `PrintJob`, `Network`) can be used for advanced conditions. The type for groups used with rules is `Device`, which is the default. |
| `MatchType` | The matching algorithm used | - `MatchAny`<br/>- `MatchAll`<br/>- `MatchExcludeAll`<br/>- `MatchExcludeAny` |
| `DescriptionIdList` | The list of properties evaluated for inclusion in the group | See [DescriptionIdList properties](#descriptionidlist-properties) (section after this table)  |

#### DescriptionIdList properties

The properties described in the following table can be included in the `DescriptionIdList`:

| Property | Description |
|---|---|
| `PrimaryId` | Includes `RemovableMediaDevices`, `CdRomDevices`, `WpdDevices`, and `PrinterDevices`.|
| `InstancePathId` | String that uniquely identifies the device in the system, for example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611&0`. It corresponds to the device instance path in Device Manager in Windows. The number at the end (for example `&0`) represents the available slot and might change from device to device. For best results, use a wildcard at the end. For example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611*`. |
| `DeviceId` | To transform Device instance path to Device ID format, use Standard USB Identifiers, such as this example: `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07` |
| `HardwareId` | String that identifies the device in the system, like `USBSTOR\DiskGeneric_Flash_Disk___8.07`. It corresponds to the hardware ID in Device Manager in Windows. Keep in mind that `HardwareId` isn't unique; different devices might share the same value. |
| `FriendlyNameId` | String attached to the device, like `Generic Flash Disk USB Device`. It corresponds to the friendly name in Device Manager in Windows.  |
| `BusId` | For example, `USB`, `SCSI` |
| `SerialNumberId` | You can find `SerialNumberId` from Device instance path in Device Manager in Windows. For example, `03003324080520232521` is `SerialNumberId` in `USBSTOR\DISK&VEN__USB&PROD__SANDISK_3.2GEN1&REV_1.00\03003324080520232521&0` |
| `VID_PID` | - Vendor ID is the four-digit vendor code that the USB committee assigns to the vendor. <br/>- Product ID is the four-digit product code that the vendor assigns to the device. It supports wildcards.<br/>- To transform Device instance path to Vendor ID and Product ID format, use Standard USB Identifiers. Here are some examples: <br/>`0751_55E0`: match this exact VID/PID pair <br/>`_55E0`: match any media with `PID=55E0` <br/>`0751_`: match any media with `VID=0751` |

Here are some examples of device group definitions in the device control samples repository:

- [Group of devices by Instance Path Id](https://github.com/microsoft/mdatp-devicecontrol/blob/c43f0ee80702f0a24f48b1d0f8302dd30a230586/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Approved%20USBs%20Group.xml#L2)
- [Group of devices by VID_PID](https://github.com/microsoft/mdatp-devicecontrol/blob/c43f0ee80702f0a24f48b1d0f8302dd30a230586/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Unapproved%20USBs%20Group.xml#L2)
- [Group of devices by Primary Id](https://github.com/microsoft/mdatp-devicecontrol/blob/c43f0ee80702f0a24f48b1d0f8302dd30a230586/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml)

### [**JSON (Mac)**](#tab/JSON)

The following JSON snippet shows the syntax for defining groups on Mac:

```json

    {
      "$type": "device",
      "id": "3f5253e4-0e73-4587-bb9e-bb29a2171694",
      "query": {
        "$type": "or",
        "clauses": [
    ...
        ]
      }
    }

```

The following table describes properties for groups:

| Property | Description | Options |
|---|---|---|
| `$type` | The kind of group | device |
| `id` | GUID, a unique ID, represents the group to be used in the policy. | You can generate the ID by using the Windows PowerShell [New-Guid](/powershell/module/microsoft.powershell.utility/new-guid) cmdlet or the `uuidgen` command on macOS |
| `name` | Friendly name for the group. | string |
| `query` | The media coverage under this group | See the query properties tables below for details. |

The query supports all, and (same as all), any, or (same as any) types. This is the logic used to combine the properties in the clauses.

The following values are supported as clauses:

| Clause `$type` | Value | Description |
|---|---|---|
| `primaryId` | One of: <br/>- `apple_devices`<br/>- `removable_media_devices`<br/>- `portable_devices`<br/>- `bluetooth_devices` |
| `vendorId` | four-digit hexadecimal string | Matches a device's vendor ID |
| `productId` | four-digit hexadecimal string | Matches a device's product ID |
| `serialNumber` | string | Matches a device's serial number. Doesn't match if the device doesn't have a serial number. |
| `encryption` | apfs | Match if a device is apfs-encrypted. |
| `groupId` | UUID string | Match if a device is a member of another group. The value represents the UUID of the group to match against. The group must be defined within the policy prior to the clause. |

Here's an example query:

```JSON

"query": {
        "$type": "or",
        "clauses": [
          {
            "$type": "serialNumber",
            "value": "FBH1111183300731"
          }
        ]
      }

```

Our example query can be edited to get behavior equivalent to the ExcludedMatchAll and ExcludedMatchAny by using the "not" type, as follows:

```json

"query": {
    "$type":"not",
        "query": {
                    "$type": "or",
                    "clauses": [
                          {
                            "$type": "serialNumber",
                            "value": "FBH1111183300731"
                          }
                    ]
              }

}

```

This query matches all devices that don't have the specified serial number.

---

## Advanced conditions

Entries can be further restricted based on parameters. Parameters apply advanced conditions that go beyond the device. Advanced conditions allow for fine-grained control based on Network, VPN Connection, File or Print Job being evaluated.

> [!NOTE]
> Advanced conditions are only supported in the XML format.

### Network Conditions

The following table describes network group properties:

| Property | Description |
|---|---|
| `NameId` | The name of the network. Wildcards are supported. |
| `NetworkCategoryId` | Valid options are `Public`, `Private`, or `DomainAuthenticated`. |
| `NetworkDomainId` | Valid options are `NonDomain`, `Domain`, `DomainAuthenticated`. |

These properties are added to the DescriptorIdList of a group of type Network. Here's an example snippet:

```xml

<Group Id="{e5f619a7-5c58-4927-90cd-75da2348a30a}" Type="Network" MatchType="MatchAll">
    <DescriptorIdList>
        <NetworkCategoryId>Public</PathId>
        <NetworkDomainId>NonDomain</PathId>
    </DescriptorIdList>
</Group>

```

The group is then referenced as parameters in the entry, as illustrated in the following snippet:

```xml

   <Entry Id="{1ecfdafb-9b7f-4b66-b3c5-f1d872b0961d}">
      <Type>Deny</Type>
      <Options>0</Options>
      <AccessMask>40</AccessMask>
      <Parameters MatchType="MatchAll">
             <Network MatchType="MatchAny">
                   <GroupId>{ e5f619a7-5c58-4927-90cd-75da2348a30a }</GroupId>
            </Network>
      </Parameters>
   </Entry>

```

### VPN Connection Conditions

The following table describes VPN connection conditions:

| Name | Description |
|---|---|
| `NameId` | The name of the VPN Connection. Wildcards are supported. |
| `VPNConnectionStatusId` | Valid values are `Connected` or `Disconnected`. |
| `VPNServerAddressId` | The string value of `VPNServerAddress`. Wildcards are supported. |
| `VPNDnsSuffixId` | The string value of `VPNDnsSuffix`. Wildcards are supported. |

These properties are added to the DescriptorIdList of a group of type VPNConnection, as shown in the following snippet:

```xml

    <Group Id="{d633d17d-d1d1-4c73-aa27-c545c343b6d7}" Type="VPNConnection">
        <Name>Corporate VPN</Name>
        <MatchType>MatchAll</MatchType>
        <DescriptorIdList>
            <NameId>ContosoVPN</NameId>
            <VPNServerAddressId>contosovpn.*.contoso.com</VPNServerAddressId>
            <VPNDnsSuffixId>corp.contoso.com</VPNDnsSuffixId>
            <VPNConnectionStatusId>Connected</VPNConnectionStatusId>
        </DescriptorIdList>
    </Group>

```

Then the group is then referenced as parameters in an entry, as illustrated in the following snippet:

```xml

       <Entry Id="{27c79875-25d2-4765-aec2-cb2d1000613f}">
          <Type>Allow</Type>
          <Options>0</Options>
          <AccessMask>64</AccessMask>
          <Parameters MatchType="MatchAny">
            <VPNConnection>
                    <GroupId>{d633d17d-d1d1-4c73-aa27-c545c343b6d7}</GroupId>
            </VPNConnection>
        </Parameters>
       </Entry>

```

### File Conditions

The following table describes file group properties:

| Name | Description |
|---|---|
| `PathId` | String, value of file path or name. <br/>Wildcards are supported. <br/>Only applicable for file type groups. |

The following table illustrates how properties are added to the `DescriptorIdList` of a file group:

```xml

<Group Id="{e5f619a7-5c58-4927-90cd-75da2348a30f}" Type="File" MatchType="MatchAny">
    <DescriptorIdList>
        <PathId>*.exe</PathId>
        <PathId>*.dll</PathId>
    </DescriptorIdList>
</Group>

```

The group is then referenced as parameters in an entry, as illustrated in the following snippet:

```xml

   <Entry Id="{1ecfdafb-9b7f-4b66-b3c5-f1d872b0961d}">
      <Type>Deny</Type>
      <Options>0</Options>
      <AccessMask>40</AccessMask>
      <Parameters MatchType="MatchAll">
             <File MatchType="MatchAny">
                   <GroupId>{ e5f619a7-5c58-4927-90cd-75da2348a30f }</GroupId>
            </File>
      </Parameters>
   </Entry>

```

### Print Job Conditions

The following table describes `PrintJob` group properties:

| Name | Description |
|---|---|
| `PrintOutputFileNameId` | The output destination file path for print to file. Wildcards are supported. For example, `C:\*\Test.pdf` |
| `PrintDocumentNameId` | The source file path. Wildcards are supported. This path might not exist. For example, add text to a new file in Notepad, and then print without saving the file. |

These properties are added to the `DescriptorIdList` of a group of type `PrintJob`, as illustrated in the following snippet:

```xml

<Group Id="{e5f619a7-5c58-4927-90cd-75da2348a30b}" Type="PrintJob" MatchType="MatchAny">
    <DescriptorIdList>
        <PrintOutputFileNameId>C:\Documents\*.pdf</PrintOutputFileNameId >
        <PrintDocumentNameId>*.xlsx</PrintDocumentNameId>
<PrintDocumentNameId>*.docx</PrintDocumentNameId>
    </DescriptorIdList>
</Group>

```

The group is then referenced as parameters in an entry, as illustrated in the following snippet:

```xml

   <Entry Id="{1ecfdafb-9b7f-4b66-b3c5-f1d872b0961d}">
      <Type>Deny</Type>
      <Options>0</Options>
      <AccessMask>40</AccessMask>
      <Parameters MatchType="MatchAll">
             <PrintJob MatchType="MatchAny">
                   <GroupId>{e5f619a7-5c58-4927-90cd-75da2348a30b}</GroupId>
            </PrintJob>
      </Parameters>
   </Entry>

```

## File evidence

With device control, you can store evidence of files that were copied to removable devices or were printed. When file evidence is enabled, a `RemovableStorageFileEvent` is created. The behavior of file evidence is controlled by options on the Allow action, as described in the following table:

| Option | Description |
|---|---|
| `8` | Create a `RemovableStorageFileEvent` event with `FileEvidenceLocation` |
| `16` | Create a `RemovableStorageFileEvent` without `FileEvidenceLocation` |

The `FileEvidenceLocation` field of has the location of the evidence file, if one is created. The evidence file has a name which ends in `.dup`, and its location is controlled by the `DataDuplicationFolder` setting.

## Next steps

- [View device control events and information in Microsoft Defender for Endpoint](device-control-report.md)
- [Deploy and manage device control in Microsoft Defender for Endpoint with Microsoft Intune](device-control-deploy-manage-intune.md)
- [Deploy and manage device control in Microsoft Defender for Endpoint using Group Policy](device-control-deploy-manage-gpo.md)
- [Device Control for macOS](mac-device-control-overview.md)
