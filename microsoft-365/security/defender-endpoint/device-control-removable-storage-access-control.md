---
title: Microsoft Defender for Endpoint Device Control Removable Storage Access Control, removable storage media
description: A walk-through about Microsoft Defender for Endpoint
ms.service: microsoft-365-security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
ms.date: 04/25/2023
ms.reviewer: tewchen, kurtsarens
search.appverid: met150
---

# Microsoft Defender for Endpoint Device Control Removable Storage Access Control

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](/microsoft-365/security/defender-business)

> [!NOTE]
> The Group Policy management and Intune OMA-URI/Custom Policy management of this product are now generally available (4.18.2106): See [Tech Community blog: Protect your removable storage and printer with Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/protect-your-removable-storage-and-printers-with-microsoft/ba-p/2324806).

## Overview

Microsoft Defender for Endpoint Device Control Removable Storage Access Control feature enables you to audit, allow, or prevent the read, write, or execute access to removable storage with or without exclusions.

|Privilege|Permission|
|---|---|
|Access|Read, Write, Execute|
|Action Mode|Audit, Allow, Prevent|
|CSP Support|Yes|
|GPO Support|Yes|
|User-based Support|Yes|
|Machine-based Support|Yes|

### Prepare your endpoints

Deploy Removable Storage Access Control on Windows 10 and Windows 11 devices that have the anti-malware client version **4.18.2103.3 or later**.

- **4.18.2104 or later**: Add `SerialNumberId`, `VID_PID`, filepath-based GPO support, and `ComputerSid`

- **4.18.2105 or later**: Add Wildcard support for `HardwareId/DeviceId/InstancePathId/FriendlyNameId/SerialNumberId`, the combination of specific user on specific machine, removable SSD (a SanDisk Extreme SSD)/USB Attached SCSI (UAS) support

- **4.18.2107 or later**: Add Windows Portable Device (WPD) support (for mobile devices, such as tablets); add `AccountName` into [advanced hunting](device-control-removable-storage-access-control.md#view-data-in-microsoft-defender-for-endpoint)

- **4.18.2205 or later**: Expand the default enforcement to **Printer**. If you set it to **Deny**, it will block Printer as well, so if you only want to manage storage, make sure to create a custom policy to allow Printer

- **4.18.2207 or later**: Add **File** support, the common use case can be: block people from Read/Write/Execute access specific file on removable storage; add **Network** and **VPN Connection** support, the common use case can be: block people from access removable storage when the machine isn't connecting corporate network.

:::image type="content" source="images/powershell.png" alt-text="Screenshot of the PowerShell interface" lightbox="images/powershell.png":::

> [!NOTE]
> None of Windows Security components need to be active as you can run Removable Storage Access Control independent of Windows Security status.

## Device Control Removable Storage Access Control properties

The Removable Storage Access Control includes Removable storage group creation and access policy rule creation:

- Removable storage group allows you to create group. For example, authorized USB group or encrypted USB group.
- Access policy rule allows you to create policy to restrict each removable storage group. For example, only allow authorized user to Write access-authorized USB group.
- To block a specific removable storage class but allow specific media, you can use `IncludedIdList` a group through `PrimaryId` and `ExcludedIDList` a group through `DeviceId/HardwareId/etc.` For more information, see [Deploy Removable Storage Access Control by using Intune OMA-URI](deploy-manage-removable-storage-intune.md#deploy-removable-storage-access-control-by-using-intune-oma-uri).

Here are the properties you can use when you create the group and policy XML files.

### Group

Group includes following types:

- Device: if there's an explicit type setting, this setting is the default, including removable storage and Printer.
- Network
- VPN Connection

The following table lists the properties you can use in **Group**:

|Property Name|Description|Options|
|---|---|---|
|**GroupId**|GUID, a unique ID, represents the group and will be used in the policy.| You can generate the ID through [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid).|
|**Type**|The type of the group. |**File** <p>**Device** <p> **Note**: Default type is Device that includes removable storage and printer. For any other group you define in your Group setting, make sure explicitly mark Type, for example, Type="File". |
|**DescriptorIdList**|List the device properties you want to use to cover in the group. All properties are case sensitive. |**PrimaryId**: The Primary ID includes `RemovableMediaDevices`, `CdRomDevices`, `WpdDevices`, `PrinterDevices`. <p>**InstancePathId**: InstancePathId is a string that uniquely identifies the device in the system, for example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611&0`. It's the `Device instance path` in the Device Manager. The number at the end (for example &0) represents the available slot and may change from device to device. For best results, use a wildcard at the end. For example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611*`. <p>**DeviceId**: To transform `Device instance path` to Device ID format, see [Standard USB Identifiers](/windows-hardware/drivers/install/standard-usb-identifiers), for example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07` <p>**HardwareId**: A string that identifies the device in the system, for example, `USBSTOR\DiskGeneric_Flash_Disk___8.07`. It's `Hardware Ids` in the Device Manager. <br>**Note**: Hardware ID isn't unique; different devices might share the same value.<p>**FriendlyNameId**: It's a string attached to the device, for example, `Generic Flash Disk USB Device`. It's the `Friendly name` in the Device Manager. <p>**BusId**: For example, USB, SCSI <p>**SerialNumberId**: You can find SerialNumberId from `Device instance path` in the Device Manager, for example, `03003324080520232521` is SerialNumberId in USBSTOR\DISK&VEN__USB&PROD__SANDISK_3.2GEN1&REV_1.00\\`03003324080520232521`&0 <p>**VID_PID**: Vendor ID is the four-digit vendor code that the USB committee assigns to the vendor. Product ID is the four-digit product code that the vendor assigns to the device. It supports wildcard. To transform `Device instance path` to Vendor ID and Product ID format, see [Standard USB Identifiers](/windows-hardware/drivers/install/standard-usb-identifiers). For example: <br>`0751_55E0`: match this exact VID/PID pair<br>`_55E0`: match any media with PID=55E0 <br>`0751_`: match any media with VID=0751 <p> **NameId**: The name of the Network or VPN Connection, support wildcard and only applicable for Network type or VPN Connection type Group.  <p> **NetworkCategoryId**:  only applicable for Network type Group and includes `Public`, `Private`, `DomainAuthenticated`. <p> **NetworkDomainId**:  only applicable for Network type Group and includes `NonDomain`, `Domain`, `DomainAuthenticated`.  <p> **VPNConnectionStatusId**:  only applicable for VPN Connection type Group and includes `Connected`, `Disconnected`. <p> **VPNServerAddressId**:  string, value of VPNServerAddress, support wildcard and only applicable for VPN Connection type Group. <p> **VPNDnsSuffixId**:  string, value of VPNDnsSuffix, support wildcard and only applicable for VPN Connection type Group. <p> **PathId**:  string, value of file path or name, support wildcard and only applicable for File type Group. <p> **Note**: See [How do I find the media property in the Device Manager?](device-control-removable-storage-access-control-faq.md#how-do-i-find-the-media-property-in-the-device-manager) to understand how to find the property in Device Manager.|
|**MatchType**|When there are multiple device properties being used in the `DescriptorIDList`, MatchType defines the relationship.|**MatchAll**: Any attributes under the `DescriptorIdList` will be **And** relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, system will check to see whether the USB meets both values. <p> **MatchAny**: The attributes under the DescriptorIdList will be **Or** relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, system will do the enforcement as long as the USB has either an identical **DeviceID** or **InstanceID** value. <p> **MatchExcludeAll**: The attributes under the DescriptorIdList will be And relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAll, for every connected USB, system will do the enforcement as long as the USB doesn't have both identical DeviceID and InstanceID value. <p> **MatchExcludeAny**: The attributes under the DescriptorIdList will be Or relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAny, for every connected USB, system will do the enforcement as long as the USB doesn't have either an identical DeviceID or InstanceID value.|

### Access policy rule

Every access policy rule called **PolicyRule** can be used to define access restriction for each group through multiple **Entry**.

The following table lists the properties you can use in **PolicyRule**:

| Property Name | Description | Options |
|---|---|---|
| **PolicyRule Id** | GUID, a unique ID, represents the policy and will be used in the reporting and troubleshooting. | You can generate the ID through [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid).|
| **Name** | String, the name of the policy and will display on the toast based on the policy setting. | |
| **IncludedIdList** | The group(s) that the policy will be applied to. If multiple groups are added, **the media must be a member of each group in the list** to be included.|The Group ID/GUID must be used at this instance. <p> The following example shows the usage of GroupID: <p> `<IncludedIdList> <GroupId> {EAA4CCE5-F6C9-4760-8BAD-FDCC76A2ACA1}</GroupId> </IncludedIdList>` |
| **ExcludedIDList** | The group(s) that the policy won't  be applied to. If multiple groups are added, **the media must be a member of a group in the list** to be excluded. | The Group ID/GUID must be used at this instance. |
| **Entry** | One PolicyRule can have multiple entries; each entry with a unique GUID tells Device Control one restriction.| See Entry properties table below to get details.|


The following table lists the properties you can use in **Entry**:

| Property Name | Description | Options |
|---|---|---|
| **Entry Id** | GUID, a unique ID, represents the entry and will be used in the reporting and troubleshooting.| You can generate the ID through [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid).|
| **Type** | Defines the action for the removable storage groups in IncludedIDList. <p>Enforcement: Allow or Deny <p>Audit: AuditAllowed or AuditDenied<p> | Allow<p>Deny <p>AuditAllowed: Defines notification and event when access is allowed <p>AuditDenied: Defines notification and event when access is denied; has to work together with **Deny** entry.<p> When there are conflict types for the same media, the system will apply the first one in the policy. An example of a conflict type is **Allow** and **Deny**. |
| **Sid** | Local user Sid or user Sid group or the Sid of the AD object or the Object ID of the Azure AD object, defines whether to apply this policy over a specific user or user group. One entry can have a maximum of one SID and an entry without any SID means to apply the policy over the machine. |  |
| **ComputerSid** | Local computer Sid or computer Sid group or the Sid of the AD object or the Object Id of the AAD object, defines whether to apply this policy over a specific machine or machine group. One entry can have a maximum of one ComputerSID and an entry without any ComputerSID means to apply the policy over the machine. If you want to apply an Entry to a specific user and specific machine, add both SID and ComputerSID into the same Entry. |  |
| **Options** | Defines whether to display notification or not |**When Type Allow is selected**: <p>0: nothing<p>4: disable **AuditAllowed** and **AuditDenied** for this Entry. Even if **Allow** happens and the AuditAllowed is setting configured, the system won't send event. <p>8: create a copy of the file as evidence, and fire "RemovableStorageFileEvent" event, this has to be used together with 'Set location for a copy of the file' setting through Intune or Group Policy. <p>**When Type Deny is selected**: <p>0: nothing<p>4: disable **AuditDenied** for this Entry. Even if **Block** happens and the AuditDenied is setting configured, the system won't show notification. <p>**When Type **AuditAllowed** is selected**: <p>0: nothing <p>1: nothing <p>2: send event<p> **When Type **AuditDenied** is selected**: <p>0: nothing <p>1: show notification <p>2: send event<p>3: show notification and send event |
|AccessMask|Defines the access. | **Disk level access**: <p>1: Read <p>2: Write <p>4: Execute <p>**File system level access**: <p>8: File system Read <p>16: File system Write <p>32: File system Execute <p><p>You can have multiple access by performing binary OR operation, for example, the AccessMask for Read and Write and Execute will be 7; the AccessMask for Read and Write will be 3.|
|Parameters|Condition for this Entry, for example Network condition. | Can add groups (non Devices type) or even put Parameters into Parameters. See Parameters properties table below to get details.|

The following table lists the properties you can use in **Parameters**:

| Property Name | Description | Options |
|---|---|---|
|**MatchType**|When there are multiple device properties being used in the `DescriptorIDList`, MatchType defines the relationship.|**MatchAll**: Any attributes under the `DescriptorIdList` will be **And** relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, system will check to see whether the USB meets both values. <p> **MatchAny**: The attributes under the DescriptorIdList will be **Or** relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, system will do the enforcement as long as the USB has either an identical **DeviceID** or **InstanceID** value. <p> **MatchExcludeAll**: The attributes under the DescriptorIdList will be And relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAll, for every connected USB, system will do the enforcement as long as the USB doesn't have both identical DeviceID and InstanceID value. <p> **MatchExcludeAny**: The attributes under the DescriptorIdList will be Or relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAny, for every connected USB, system will do the enforcement as long as the USB doesn't have either an identical DeviceID or InstanceID value.|
| **File** <p> **VPN Connection**  <p> **Network** | You can use one or multiple File or Network or VPN Connection group(s) as parameter for this Entry, and then define MatchType for the relationship between those groups.|
| **Parameters** | You can embed Parameters inside Parameters with MatchType.|

For specific guidance, see:

| Article | Description |
|---|---|
| [Deploying Removable Storage Access Control by using Group Policy](deploy-manage-removable-storage-group-policy.md) | Use Group Policy to deploy the policy.|
| [Deploying Removable Storage Access Control by using Intune OMA-URI](deploy-manage-removable-storage-intune.md) | Use Intune to deploy the policy.|

## View data in Microsoft Defender for Endpoint

The [Microsoft 365 Defender portal](https://security.microsoft.com/advanced-hunting) shows events triggered by the Device Control Removable Storage Access Control. To access the Microsoft 365 security, you must have the following subscription:

- Microsoft 365 E5
- Microsoft Defender for Endpoint Plan 2
  

If `AuditAllowed` or `AuditDenied` is configured in your policy and **Send event** is selected in **Options**, an event will be sent to Advanced hunting or the Device control report for every covered access (`AccessMask` in the entry), regardless of whether it was initiated by the system or by the user who signed in.

```kusto
//RemovableStoragePolicyTriggered: event triggered by Disk and file system level enforcement
DeviceEvents
| where ActionType == "RemovableStoragePolicyTriggered"
| extend parsed=parse_json(AdditionalFields)
| extend RemovableStorageAccess = tostring(parsed.RemovableStorageAccess)
| extend RemovableStoragePolicyVerdict = tostring(parsed.RemovableStoragePolicyVerdict)
| extend MediaBusType = tostring(parsed.BusType)
| extend MediaClassGuid = tostring(parsed.ClassGuid)
| extend MediaClassName = tostring(parsed.ClassName)
| extend MediaDeviceId = tostring(parsed.DeviceId)
| extend MediaInstanceId = tostring(parsed.DeviceInstanceId)
| extend MediaName = tostring(parsed.MediaName)
| extend RemovableStoragePolicy = tostring(parsed.RemovableStoragePolicy)
| extend MediaProductId = tostring(parsed.ProductId)
| extend MediaVendorId = tostring(parsed.VendorId)
| extend MediaSerialNumber = tostring(parsed.SerialNumber)
|project Timestamp, DeviceId, DeviceName, InitiatingProcessAccountName, ActionType, RemovableStorageAccess, RemovableStoragePolicyVerdict, MediaBusType, MediaClassGuid, MediaClassName, MediaDeviceId, MediaInstanceId, MediaName, RemovableStoragePolicy, MediaProductId, MediaVendorId, MediaSerialNumber, FolderPath, FileSize
| order by Timestamp desc
```

```kusto
//information of the evidence file
DeviceEvents
| where ActionType contains "RemovableStorageFileEvent"
| extend parsed=parse_json(AdditionalFields)
| extend Policy = tostring(parsed.Policy)
| extend PolicyRuleId = tostring(parsed.PolicyRuleId)
| extend MediaClassName = tostring(parsed.ClassName)
| extend MediaInstanceId = tostring(parsed.InstanceId)
| extend MediaName = tostring(parsed.MediaName)
| extend MediaProductId = tostring(parsed.ProductId)
| extend MediaVendorId = tostring(parsed.VendorId)
| extend MediaSerialNumber = tostring(parsed.SerialNumber)
| extend FileInformationOperation = tostring(parsed.DuplicatedOperation)
| extend FileEvidenceLocation = tostring(parsed.TargetFileLocation)
| project Timestamp, DeviceId, DeviceName, InitiatingProcessAccountName, ActionType, Policy, PolicyRuleId, FileInformationOperation, MediaClassName, MediaInstanceId, MediaName, MediaProductId, MediaVendorId, MediaSerialNumber, FileName, FolderPath, FileSize, FileEvidenceLocation, AdditionalFields
| order by Timestamp desc
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
