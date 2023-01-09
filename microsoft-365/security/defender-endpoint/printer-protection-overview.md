---
title: Printer Protection Overview
description: A walk-through about Microsoft Defender for Endpoint for Printer Protection
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-nsatapathy
author: nimishasatapathy
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
ms.date: 01/09/2023
ms.reviewer: tewchen
search.appverid: met150
---

# Printer Protection Overview

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> The Group Policy management and Intune OMA-URI/Custom Policy management of this product have been release, if you are currently using [Microsoft Defender for Endpoint Device Control Printer Protection | Microsoft Learn](printer-protection-overview.md), we recommend you upgrade.

## Overview

Microsoft Defender for Endpoint Device Control Printer Protection feature enables you to audit, allow, or prevent printer with or without exclusions. 

|Privilege|Permission|
|---|---|
|Access|Read, Write, Execute|
|Action Mode|Audit, Allow, Prevent|
|CSP Support|Yes|
|GPO Support|Yes|
|User-based Support|Yes|
|Machine-based Support|Yes|

### Prerequisites for preview  

Ensure that the Windows devices that you need to onboard should meet the following requirements:

1. Install the right OS KB:
   
- [KB5020030 (OS Builds 19042.2311, 19043.2311, 19044.2311, and 19045.2311) Preview Microsoft Support](https://support.microsoft.com/en-us/topic/november-15-2022-kb5020030-os-builds-19042-2311-19043-2311-19044-2311-and-19045-2311-preview-237a9048-f853-4e29-a3a2-62efdbea95e2)
- [KB5019157 (OS Build 22000.1281) Preview - Microsoft Support](https://support.microsoft.com/en-us/topic/november-15-2022-kb5019157-os-build-22000-1281-preview-d64fb317-3435-49ff-b2c4-d0356a51a6b0)
    
2. MOCAMP:4.18.2205 or later, you can run the command `Get-MpComputerStatus `on PowerShell to check the version. 

:::image type="content" source="images/administrator-windows-powershell.png" alt-text="This is administrator windows powershell":::

### Device control printer protection properties

The printer protection comprises of group and policy configurations:

- Group configuration allows you to create group. For example, authorized USB printer group or network location group. 
- Policy configuration allows you to create policy to restrict each printer group. For example, only allow authorized users to Print access authorized printer group. 

**Group configuration**

Group configuration includes the following types:

- Device
- Network
- VPNConnection
- PrintJob

The table below lists the properties you can use in **Group**:

|Property Name|Description|Options|
|---|---|---|
|Group ID |GUID, a unique ID, represents the group and will be used in the policy.|You can generate the group ID through  [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid?view=powershell-7.3&preserve-view=true)|
|Name |String, the name of the policy and will display on the toast based on the policy setting. |
|Type |The type of the group. |<li> Device</li><li>Network</li><li>VPNConnection</li><li>PrintJob</li><p><b>Note:</b></p>Default type is Device that includes removable storage and printer. For any other group you define in your Group setting, make sure explicitly mark Type, for example, Type="File".  
|DescriptorIdList|List the device properties you want to use to cover in the group. All properties are case sensitive.|When the Group type is Device, following are the attributes you can use inside DescriptorIdList: <li> PrimaryId: The Primary ID includes RemovableMediaDevices, CdRomDevices, WpdDevices, PrinterDevices. </li><li> FriendlyNameId: It's a string attached to the device, for example, Generic Flash Disk USB Device. It's the Friendly name in the Device Manager. </li><li> Device</li>VID_PID: Vendor ID is the four-digit vendor code that the USB committee assigns to the vendor. Product ID is the four-digit product code that the vendor assigns to the device. It supports wildcard. To transform Device instance path to Vendor ID and Product ID format, see  [Standard USB Identifiers](https://learn.microsoft.com/windows-hardware/drivers/install/standard-usb-identifiers). For example:<b>0751_55E0: match this exact VID/PID pair</b><b>_55E0: match any media with PID=55E0</b><b>_0751_: match any media with VID=0751 </b> PrinterConnectionId: The PrinterConnectionId includes:<li> USB: A printer connected through USB port of a computer. You can use this if you want to enforce any USB printer, if you want to define specific USB printer then use the VID_PID.</li> <li> Corporate: A corporate printer is a print queue shared through on-premises Windows print server in your domain. Its path might look like \print-server\contoso.com\legal_printer_001. </li> <li> Network: A network printer is a printer that is accessible by network connection, making it usable by other computers connected to the network. </li> <li> Universal: See, Set up Universal Print for more information on universal printers. </li> <li> File: Microsoft Print to PDF or Microsoft XPS Document Writer. If you only want to enforce Microsoft Print to PDF, you should use Friendly printer name with 'Microsoft Print to PDF'.</li> <li> Custom: Any printer not connecting through Microsoft print port.</li> <li> Local: Any printer connecting through Microsoft print port but not any of above type, for example print through remote desktop or redirect printer. </li> **When the Group type is Network, following are the attributes you can use inside DescriptorIdList:** <li> NameId: The name of the Network, support wildcard. </li> <li> NetworkCategoryId: includes Public, Private, DomainAuthenticated. </li> <li> NetworkDomainId: includes NonDomain, Domain, DomainAuthenticated. </li> **When the Group type is VPNConnection, following are the attributes you can use inside DescriptorIdList:** <li> NameId: The name of the VPN Connection, support wildcard. </li> <li> VPNConnectionStatusId: includes Connected, Disconnected. </li> <li> VPNServerAddressId: string, value of VPNServerAddress, support. </li> <li> VPNDnsSuffixId: string, value of VPNDnsSuffix, support wildcard. </li> **When the Group type is PrintJob, following are the attributes you can use inside DescriptorIdList:** <li> PrintOutputFileNameId: Print to file, the output destination file path, support wildcard, for example, C:\*\Test.pdf </li> <li>  PrintDocumentNameId: The source file path, support wildcard. This may not exist, e.g. open a `notepad.exe`, type and print without saving to the disk.</li> 
|MatchType|When there are multiple device properties being used in the `DescriptorIDList`, MatchType defines the relationship.|<li> **MatchAll**: Any attributes under the DescriptorIdList will be And relationship; for example, if administrator puts DeviceID and InstancePathID, for every connected USB, system will check to see whether the USB meets both values. </li><li>**MatchAny**: The attributes under the DescriptorIdList will be Or relationship; for example, if administrator puts DeviceID and InstancePathID, for every connected USB, system will do the enforcement as long as the USB has either an identical DeviceID or InstanceID value. </li><li>**MatchExcludeAll**: The attributes under the DescriptorIdList will be And relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAll, for every connected USB, system will do the enforcement as long as the USB doesn't have both identical DeviceID and InstanceID value.</li><li>**MatchExcludeAny**: The attributes under the DescriptorIdList will be Or relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAny, for every connected USB, system will do the enforcement as long as the USB doesn't have either an identical DeviceID or InstanceID value.</li>|

## Access policy rule

Every access policy rule called PolicyRule can be used to define access restriction for each Device type group through multiple Entry.

The table below lists the properties you can use in **PolicyRule**:

|Property Name|Description|Options|
|---|---|---|
|PolicyRule Id|GUID, a unique ID, represents the policy and will be used in the reporting and troubleshooting.|You can generate the group ID through  [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid?view=powershell-7.3&preserve-view=true)|
|Name |String, the name of the policy and will display on the toast based on the policy setting and will be captured in the reporting.|
|IncludedIdList|The group(s) that the policy will be applied to. If multiple groups are added, the policy will be applied to any media in all those groups. |The Group ID/GUID must be used at this instance. The following example shows the usage of GroupID: <IncludedIdList> <GroupId> {EAA4CCE5-F6C9-4760-8BAD-FDCC76A2ACA1}</GroupId> </IncludedIdList> <p><b>Note:</b></p> You should not add multiple groups inside IncludedIdList, instead, add all groups into a new group and then add the new group inside IncludedIdList.|
|ExcludedIDList |The group(s) that the policy won't be applied to.|The Group ID/GUID must be used at this instance.| 
|Entry |One PolicyRule can have multiple entries; each entry with a unique GUID tells Device Control one restriction. |See Entry properties table below for more details.|

The table below lists the properties you can use in **Entry**:

|Property Name|Description|Options|
|---|---|---|
|PolicyRule Id|GUID, a unique ID, represents the policy and will be used in the reporting and troubleshooting.|You can generate the group ID through  [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid?view=powershell-7.3&preserve-view=true)|
|Type |Defines the action for the removable storage groups in IncludedIDList.<li> Enforcement: Allow or Deny</li> <li> Audit: AuditAllowed or AuditDenied | <li> Allow</li> <li> Deny</li><li> AuditAllowed: Defines event when access is allowed</li> <li> AuditDenied: Defines notification and event when access is denied; has to work together with Deny entry. </li> When there are conflict types for the same media, the system will apply the first one in the policy. An example of a conflict type is  **Allow**  and  **Deny**.|
|Sid |Local user Sid or user Sid group or the Sid of the AD object or the Object ID of the Azure AD object, defines whether to apply this policy over a specific user or user group. One entry can have a maximum of one SID and an entry without any SID means to apply the policy over the machine.|
|ComputerSid|Local computer Sid or computer Sid group or the Sid of the AD object or the Object ID of the AAD object, defines whether to apply this policy over a specific machine or machine group. One entry can have a maximum of one ComputerSID and an entry without any ComputerSID means to apply the policy over the machine. If you want to apply an Entry to a specific user and specific machine, add both SID and ComputerSID into the same Entry. |
|Options|Defines whether to display notification or not|**When Type Allow is selected:**<li> 0: nothing </li> <li> 4: disable AuditAllowed and AuditDenied for this Entry. Even if Allow happens and the AuditAllowed is setting configured, the system won't send event. </li> <li> 8: capture file information and have a copy of the file as evidence for Write access. </li> <li> 16: capture printed content. </li> **When  Type Deny is selected:**<li> 0: nothing </li> <li> 4: disable AuditDenied for this Entry. Even if Block happens and the AuditDenied is setting configured, the system won't show notification. </li> **When Type AuditAllowed is selected:**<li> 0: nothing </li> <li> 1: nothing </li> <li> 2: send event </li> **When Type AuditDenied is selected:**<li> 0: nothing </li> <li> 1: show notification </li> <li> 2: send event </li> <li> 3: show notification and send event </li> <li> 4: print </li>|
|AccessMask |Defines the access. |
|Parameters |Condition for this Entry, for example, network condition.| Can add groups (non-devices type) or even put Parameters into Parameters. See Parameters properties table below for more details.|

The table below lists the properties you can use in **Parameters**: 

|Property Name|Description|Options|
|---|---|---|
|MatchType | When there are multiple device properties being used in the DescriptorIDList, MatchType defines the relationship.| **MatchAll:**<li> Any attributes under the DescriptorIdList will be And relationship; for example, if administrator puts DeviceID and InstancePathID, for every connected USB, system will check to see whether the USB meets both values.</li> **MatchAny:**</li> The attributes under the DescriptorIdList will be Or relationship; for example, if administrator puts DeviceID and InstancePathID, for every connected USB, system will do the enforcement as long as the USB has either an identical DeviceID or InstanceID value. </li> **MatchExcludeAll:**<li> The attributes under the DescriptorIdList will be And relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAll, for every connected USB, system will do the enforcement as long as the USB doesn't have both identical DeviceID and InstanceID value.</li> **MatchExcludeAny:**<li> The attributes under the DescriptorIdList will be Or relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAny, for every connected USB, system will do the enforcement as long as the USB doesn't have either an identical DeviceID or InstanceID value.</li>|
|PrintJob Network VPNConnection| The PrintJob or Network or VPNConnection group(s) created above.| Use the GroupId of the PrintJob or Network or VPNConnection group(s) created above.|
|Parameters | You can embed Parameters inside Parameters with MatchType. | 

## Enduser experience

You can view the policy name and printer information if you have right options setting in your policy.

:::image type="content" source="images/enduser-experience.png" alt-text="This is enduser experience image.":::