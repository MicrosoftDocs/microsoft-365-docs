---
title: Device control for macOS
description: Learn how to configure Microsoft Defender for Endpoint on Mac to reduce threats from removable storage such as USB devices.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, macOS, device, control, usb, removable, media
ms.service: microsoft-365-security
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 04/03/2023
---

# Device Control for macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Business](/microsoft-365/security/defender-business)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## Requirements

Device Control for macOS has the following prerequisites:

> [!div class="checklist"]
>
> - Microsoft Defender for Endpoint entitlement (can be trial)
> - Minimum OS version: macOS 11 or higher
> - Minimum product version: 101.34.20

## Overview

Microsoft Defender for Endpoint Device Control feature enables you to:

- Audit, allow, or prevent the read, write, or execute access to removable storage; and 
- Manage iOS and Portable devices, and Apple APFS encrypted devices and Bluetooth media, with or without exclusions.

## Prepare your endpoints

- Microsoft Defender for Endpoint entitlement (can be trial)
- Minimum OS version: macOS 11 or higher
- Deploy Full Disk Access: you may already have been previously created and deployed this [https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig) for other MDE features. You need to grant Full Disk Access permission for a new application: `com.microsoft.dlp.daemon`.
- Enable Device Control on the MDE Preference setting:

   Data Loss Prevention (DLP)/Features/

   For **Feature Name**, enter "DC_in_dlp"

   For **State**, enter "enabled"

Example 1: JAMF using [schema.json](https://github.com/microsoft/mdatp-xplat/tree/master/macos/schema)

:::image type="content" source="images/macos-device-control-jamf-json.png" alt-text="Shows how to enable Device Control in Microsoft Defender for Endpoint Data Loss Prevention / Features." lightbox="images/macos-device-control-jamf-json.png":::

Example 2: [demo.mobileconfig](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples/macos/mobileconfig)

```json
   <key>dlp</key>
    <dict> 
      <key>features</key>
      <array> 
        <dict> 
          <key>name</key>
          <string>DC_in_dlp</string>
          <key>state</key>
          <string>enabled</string>
        </dict>
      </array>
    </dict>
```

- Minimum product version: 101.91.92 or higher
- Run _mdatp version_ through Terminal to see the product version on your client machine:

:::image type="content" source="images/macos-device-control-mdatp-version-terminal.png " alt-text="Shows the results when you run mdatp version in Terminal to see the product version on a client machine." lightbox="images/macos-device-control-mdatp-version-terminal.png ":::

## Device Control for macOS properties

The Device Control for macOS includes global setting, group creation and access policy rule creation:

- Global setting called 'settings' allows you to define the global environment.
- Group called 'groups' allows you to create media groups. For example, authorized USB group or encrypted USB group.
- Access policy rule called 'rules' allows you to create policy to restrict each group. For example, only allow authorized user to Write access-authorized USB group.

Here are the properties you can use when you create the group and policy.

> [!NOTE]
> We recommend you use the examples on the GitHub to understand the properties: [mdatp-devicecontrol/Removable Storage Access Control Samples/macOS/policy at main - microsoft/mdatp-devicecontrol (github.com)](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples/macOS/policy). You can also use the scripts at [mdatp-devicecontrol/Removable Storage Access Control Samples/macOS/policy/scripts at main - microsoft/mdatp-devicecontrol (github.com)](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples/macOS/policy/scripts) to translate Windows Device Control policy to macOS Device Control policy or translate macOS Device Control V1 policy to this V2 policy.

### Settings

| Property name | Description | Options |
|:---|:---|:---|
| features | Feature specific configurations | You can set `disable` to false or true for following features: <br/>- `removableMedia`<br/>- `appleDevice`<br/>- `portableDevice`, including camera or PTP media<br/>- `bluetoothDevice`<br/><br/>The default is `true`, so if you don't configure this value, it will not apply even if you create a custom policy for `removableMedia`, because it's disabled by default. |
| global | Set default enforcement  | You can set `defaultEnforcement` to<br/>- `allow` (_default_)<br/>- `deny` |
| ux | You can set a hyperlink on notification. | `navigationTarget: string`. Example: `"http://www.microsoft.com"` |

### Group

| Property name | Description | Options |
|:---|:---|:---|
| `$type` | The kind of group | "device" |
| `id` | GUID, a unique ID, represents the group and will be used in the policy. | You can generate the ID through [New-Guid (Microsoft.PowerShell.Utility) - PowerShell](/powershell/module/microsoft.powershell.utility/new-guid?view=powershell-7.2&preserve-view=true) or the uuidgen command on macOS |
| `name` | Friendly name for the group. | string |
| `query` | The media coverage under this group | See the **query** properties tables below for details. |

### Query

Device Control supports two kinds of queries:

Query type 1 is as follows:

| Property name | Description | Options |
|:---|:---|:---|
| `$type` | Identify the logical operation to perform on the clauses | **all**: Any attributes under the **clauses** are an _And_ relationship. For example, if the administrator puts `vendorId` and `serialNumber`, for every connected USB, the system checks to see whether the USB meets both values.<br> **and**: is equivalent to _all_ <br> **any:** The attributes under the **clauses** are _Or_ relationship. For example, if administrator puts `vendorId` and `serialNumber`, for every connected USB, system does the enforcement as long as the USB has either an identical `vendorId` or `serialNumber` value. <br> **or**: is equivalent to _any_ |
| `clauses` | Use media device property to set group condition. | An array of clause objects that are evaluated to determine group membership. See the [Clause](#clause) section below. |

Query type 2 is as follows:

| Property name | Description | Options |
|:---|:---|:---|
| `$type` | Identify the logical operation to perform on the subquery | not: logical negation of a query |
| `query` | A subquery | **A query which will be negated.** |

### Clause

#### Clause properties

| Property name | Description | Options |
|:---|:---|:---|
| `$type` | The type of clause | See the following table for supported clauses. |
| `value` | $type specific value to use | |

#### Supported clauses

| clause $type | value | Description |
|:---|:---|:---|
| `primaryId` | One of: <br>- `apple_devices`<br>- `removable_media_devices` <br>- `portable_devices` <br>- `bluetooth_devices` | |
| `vendorId` | 4 digit hexadecimal string | Matches a device's vendor ID |
| `productId` | 4 digit hexadecimal string | Matches a device's product ID |
| `serialNumber` | string | Matches a device's serial number. Doesn't match if the device doesn't have a serial number. |
| `encryption` | apfs | Match if a device is apfs-encrypted. |
| `groupId` | UUID string | Match if a device is a member of another group. The value represents the UUID of the group to match against. <br> The group must be defined within the policy prior to the clause. |

### Access policy rule

| Property name | Description | Options |
|:---|:---|:---|
| `id` | GUID, a unique ID, represents the rule and will be used in the policy. | New-Guid (Microsoft.PowerShell.Utility) - PowerShell <br> uuidgen |
| `name` | String, the name of the policy and will display on the toast based on the policy setting. | |
| `includeGroups` | The group(s) that the policy will be applied to. If multiple groups are specified, the policy applies to any media in all those groups. If not specified, the rule applies to all devices. | The **id** value inside the group must be used in this instance. If multiple groups are in the `includeGroups`, it's _AND_. <br/> `"includeGroups": ["3f082cd3-f701-4c21-9a6a-ed115c28e217"]` |
| `excludeGroups` | The group(s) that the policy doesn't apply to. | The **id** value inside the group must be used in this instance. If multiple groups are in the excludeGroups, it's _OR_. |
| `entries` | One rule can have multiple entries; each entry with a unique GUID tells Device Control one restriction.| See entry properties table later in this article to get the details. |

The following table lists the properties you can use in your entry:

| Property name | Description | Options |
|:---|:---|:---|
| `$type` | | Includes: <br/>- `removableMedia`<br/>- `appleDevice`<br/>- `PortableDevice`<br/>- `bluetoothDevice`<br/>- `generic` |
| enforcement | | - `$type`:<br/>- `allow`<br/>- `deny`<br/>- `auditAllow`<br/>- `auditDeny`<br/><br/>**When $type allow is selected, options value supports:** <br/>- `disable_audit_allow`<br/> Even if **Allow** happens and the **auditAllow** is setting configured, the system won't send event.<br/><br/>**When $type deny is selected, options value supports:** <br/>`disable_audit_deny`<br/>Even if **Block** happens and the **auditDeny** is setting configured, the system won't show notification or send event.<br/><br/>**When $type auditAllow is selected, options value supports:** <br/>`send_event`<br/><br/>**When $type auditDeny is selected, options value supports:** <br/>`send_event`<br/>`show_notification` |
| `access`| |Specify one or more access rights for this rule. These may include either device specific granular permissions, or broader generic permissions. See table below for more details on the valid access types for a given entry $type. |
| `id`| UUID| |

The following table lists the properties you can use in entry:

### Enforcement

#### Enforcement property name

| Property name | Description | Options |
|:---|:---|:---|
| `$type` | The type of enforcement | See table below for supported enforcements |
| `options` | $type specific value to use | An array of options for the entry. May be omitted if not options are desired. |

#### Enforcement type

| Property name | Description | Options |
|:---|:---|:---|
|`Enforcement $type` | `options` values [string] | Description |
| `allow` | `disable_audit_allow` | Even if **Allow** happens and the **auditAllow** is setting configured, the system won't send event. |
| `deny` | `disable_audit_deny` | Even if **Block** happens and the auditDeny is setting configured, the system won't show notification or send event. |
| `auditAllow` | `send_event` | Send telemetry |
| `auditDeny` | - `send_event`<br/>- `show_notification` | - Send telemetry<br/>- Display Block UX to user |

### Access types

|entry $type | 'access' values [string]  | Generic Access | Description |
|:---|:---|:---|:---|
| **appleDevice** | backup_device | generic_read | |
| appleDevice | update_device | generic_write | |
| appleDevice | download_photos_from_device | generic_read | download photo(s) from the specific iOS device to local machine |
| appleDevice | download_files_from_device | generic_read | download file(s) from the specific iOS device to local machine |
| appleDevice | sync_content_to_device | generic_write | sync content from local machine to specific iOS device |
| **portableDevice**| download_files_from_device | generic_read | |
| portableDevice | send_files_to_device | generic_write | |
| portableDevice | download_photos_from_device | generic_read | |
| portableDevice | debug | generic_execute | ADB tool control |
| ***removableMedia**| read | generic_read | |
| removableMedia | write | generic_write | |
| removableMedia | execute | generic_execute | generic_read |
| **bluetoothDevice** | download_files_from_device | | |
| bluetoothDevice | send_files_to_device | generic_write | |
| **generic** | generic_read | | Equivalent to setting all access values denoted in this table that map to generic_read. |
| generic | generic_write | | Equivalent to setting all access values denoted in this table that map to generic_write. |
| generic | generic_execute | | Equivalent to setting all access values denoted in this table that map to generic_execute. |

## End-user experience

Once Deny happens and the notification is enabled in the policy, the end user sees a dialog:

:::image type="content" source="images/macos-device-control-enduser-experience-dialog.png" alt-text="Shows a Device Control Dialog that indicates the USB device is restricted" lightbox="images/macos-device-control-enduser-experience-dialog.png":::

## Reporting

You'll be able to see the policy event on Advanced hunting and Device Control report. For more information, see [Protect your organization's data with Device Control](device-control-report.md).

## Scenarios

Here are some common scenarios to help you familiarize with Microsoft Defender for Endpoint and Microsoft Defender for Endpoint Device Control.

### Scenario 1: Deny any removable media but allow specific USBs

In this scenario, you need to create two groups: one group for any removable media, and another group for approved USBs group. You also need to create an access policy rule.

#### Step 1: Settings: enable Device Control and set Default Enforcement

```json
    "settings": { 

        "features": { 

            "removableMedia": { 

                "disable": false 

            } 

        }, 

        "global": { 

            "defaultEnforcement": "allow" 

        }, 

        "ux": { 

            "navigationTarget": "http://www.deskhelp.com" 

        } 

    } 
```

#### Step 2: Groups: Create any removable media group and approved-USBs group

-1. Create a group to cover any removable media devices
-1. Create a group for approved USBs
-1. Combine those groups into one 'groups'

```json
"groups": [ 

        { 

            "type": "device", 

            "id": "3f082cd3-f701-4c21-9a6a-ed115c28e211", 

            "name": "All Removable Media Devices", 

            "query": { 

                "$type": "all", 

                "clauses": [ 

                    { 

                        "$type": "primaryId", 

                        "value": "removable_media_devices" 

                    } 

                ] 

            } 

        }, 

        { 

            "type": "device", 

            "id": "3f082cd3-f701-4c21-9a6a-ed115c28e212", 

            "name": "Kingston Devices", 

            "query": { 

                "$type": "all", 

                "clauses": [ 

                    { 

                        "$type": "vendorId", 

                        "value": "0951" 

                    } 

                ] 

            } 

        } 

    ] 
```

#### Step 3: Rules: Create Deny policy for unallowed USBs

Create access policy rule and put into 'rules':

```json
   "rules": [ 

        { 

            "id": "772cef80-229f-48b4-bd17-a69130092981", 

            "name": "Deny RWX to all Removable Media Devices except Kingston", 

            "includeGroups": [ 

                "3f082cd3-f701-4c21-9a6a-ed115c28e211" 

            ], 

            "excludeGroups": [ 

                "3f082cd3-f701-4c21-9a6a-ed115c28e212" 

            ], 

            "entries": [ 

                { 

                    "$type": "removableMedia", 

                    "id": "A7CEE2F8-CE34-4B34-9CFE-4133F0361035", 

                    "enforcement": { 

                        "$type": "deny" 

                    }, 

                    "access": [ 

                        "read", 

                        "write", 

                        "execute" 

                    ] 

                }, 

                { 

                    "$type": "removableMedia", 

                    "id": "18BA3DD5-4C9A-458B-A756-F1499FE94FB4", 

                    "enforcement": { 

                        "$type": "auditDeny", 

                        "options": [ 

                            "send_event", 

                            "show_notification" 

                        ] 

                    }, 

                    "access": [ 

                        "read", 

                        "write", 

                        "execute" 

                    ] 

                } 

            ] 

        } 

    ] 
```

In this case, only have one access rule policy, but if you have multiple, make sure to add all into 'rules'.

## See also

- [Deploy Device Control by using Intune](mac-device-control-intune.md)
- [Deploy Device Control by using JAMF](mac-device-control-jamf.md)
- [macOS Device Control frequently asked questions (FAQ)](mac-device-control-faq.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
