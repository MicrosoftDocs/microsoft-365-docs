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
ms.date: 01/17/2023
ms.reviewer: tewchen
search.appverid: met150
---

# Printer Protection Overview

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> The Group Policy management and Intune OMA-URI/Custom Policy management of this product have been released. If you're currently using [Microsoft Defender for Endpoint Device Control Printer Protection](printer-protection-overview.md), we recommend that you upgrade.

## Overview

Microsoft Defender for Endpoint Device Control Printer Protection feature enables you to audit, allow, or prevent printer with or without exclusions.

|Privilege|Permission|
|---|:---:|
|Access|Read, Write, Execute|
|Action Mode|Audit, Allow, Prevent|
|CSP Support|Yes|
|GPO Support|Yes|
|User-based Support|Yes|
|Machine-based Support|Yes|

### Prerequisites for preview

Ensure that the Windows devices that you need to onboard should meet the following requirements:

1. Install the right OS KB:
   - Windows 10 and later (20H2, 21H1, 21H2, and later) - [KB5020030](https://support.microsoft.com/en-us/topic/november-15-2022-kb5020030-os-builds-19042-2311-19043-2311-19044-2311-and-19045-2311-preview-237a9048-f853-4e29-a3a2-62efdbea95e2)
   - Win 11 21H2 - [KB5019157](https://support.microsoft.com/en-us/topic/november-15-2022-kb5019157-os-build-22000-1281-preview-d64fb317-3435-49ff-b2c4-d0356a51a6b0)
   - Win 11 22H2 - [KB5020044](https://support.microsoft.com/en-us/topic/november-29-2022-kb5020044-os-build-22621-900-preview-43f0bdf9-0b75-4110-bab3-3bd2433d84b3)
- Windows Server 2022 - [KB5020032](https://support.microsoft.com/en-us/topic/november-22-2022-kb5020032-os-build-20348-1311-preview-7ca1be57-3555-4377-9eb1-0e4d714d9c68)

2. MOCAMP:4.18.2205 or later, you can run the command `Get-MpComputerStatus` in PowerShell to check the version.

:::image type="content" source="images/administrator-windows-powershell.png" alt-text="This is administrator windows powershell.":::

### Device control printer protection properties

The printer protection comprises group and policy configurations:

- Group configuration allows you to create group. For example, authorized USB printer group or network location group.
- Policy configuration allows you to create policy to restrict each printer group. For example, only allow authorized users to Print access authorized printer group.

#### Group configuration

Group configuration includes the following types:

- Device
- Network
- VPNConnection
- PrintJob

The table below lists the properties you can use in **Group**:

|Property Name|Description|Options|
|---|---|---|
|Group ID|GUID, a unique ID, represents the group and will be used in the policy.|You can generate the group ID through  [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid?view=powershell-7.3&preserve-view=true)|
|Name|String, the name of the policy and will display on the toast based on the policy setting.|
|Type|The type of the group.|<ul><li>Device</li><li>Network</li><li>VPN Connection</li><li>PrintJob</li></ul> <p> **Note:** Default type is Device that includes removable storage and printer. For any other group you define in your Group setting, make sure explicitly mark Type, for example, Type="File".|
|DescriptorIdList|List the device properties you want to use to cover in the group. All properties are case sensitive.|When the Group type is Device, you can use the following attributes inside DescriptorIdList: <ul><li>PrimaryId: The Primary ID includes: <ul><li>RemovableMediaDevices</li><li>CdRomDevices</li><li>WpdDevices</li><li>PrinterDevices</li></ul></li><li>FriendlyNameId: A string that's attached to the device (the same string as the Friendly name in Device Manager). For example, `Generic Flash Disk USB Device`.</li><li>Device instance path (VID_PID): <ul><li>Vendor ID (VID): The four-digit vendor code that's assigned to the vendor by the USB committee.</li><li>Product ID (PID): The four-digit product code that's assigned to the device by the vendor. Wildcards are supported.</li></ul> <p> To transform the Device instance path to the VID_PID format, see [Standard USB Identifiers](/windows-hardware/drivers/install/standard-usb-identifiers). For example: <ul><li>`0751_55E0` matches that exact VID_PID pair value.</li><li>`_55E0` matches any device with the PID value 55E0.</li><li>`0751_` matches any device with the VID value 0751.</li></ul></li><li>PrinterConnectionId: Includes the following values: <ul><li>USB: A printer that's connected through USB port of a computer. You can use this value to enforce any USB printer. To define a specific USB printer, use the VID_PID.</li><li>Corporate: A print queue that's shared through a Windows print server in your on-premises domain. For example, `\print-server\contoso.com\legal_printer_001`.</li><li>Network: A printer that's accessible by network connection, making it usable by other computers that are connected to the network.</li><li>Universal: For more information about universal printers, see [Set up Universal Print](/universal-print/fundamentals/universal-print-getting-started).</li><li>File: Microsoft Print to PDF or Microsoft XPS Document Writer. To enforce Microsoft Print to PDF only, use the FriendlyNameId value 'Microsoft Print to PDF'.</li><li>Custom: A printer that doesn't connect through a Microsoft print port.</li><li>Local: A printer that connects through a Microsoft print port, but not any of the previously described types. For example, print through Remote Desktop or redirect printer.</li></ul> </li></ul> <p> **When the Group type is Network, you can use the following attributes inside DescriptorIdList**: <ul><li>NameId: The name of the Network. Wildcards are supported.</li><li>NetworkCategoryId: Public, Private, or DomainAuthenticated.</li><li>NetworkDomainId: NonDomain, Domain, or DomainAuthenticated.</li></ul> <p> **When the Group type is VPNConnection, you can use the following attributes inside DescriptorIdList**: <ul><li>NameId: The name of the VPN Connection. Wildcards are supported.</li><li>VPNConnectionStatusId: Connected or Disconnected.</li><li>VPNServerAddressId: The value of VPNServerAddress (string). Wildcards are supported.</li><li>VPNDnsSuffixId: The value of VPNDnsSuffix (string). Wildcards are supported.</li></ul> <p> **When the Group type is PrintJob, you can use the following attributes inside DescriptorIdList**: <ul><li>PrintOutputFileNameId: The output destination file path for print to file. Wildcards are supported. For example, `C:\*\Test.pdf`</li><li>PrintDocumentNameId: The source file path. Wildcards are supported. This path may not exist. For example, add text to a new file in Notepad, and then print without saving the file.</li></ul>|
|MatchType|When there are multiple device properties being used in the `DescriptorIDList`, MatchType defines the relationship.|<ul><li>**MatchAll**: Any attributes under the DescriptorIdList will be And relationship; for example, if administrator puts DeviceID and InstancePathID, for every connected USB, system will check to see whether the USB meets both values. </li><li>**MatchAny**: The attributes under the DescriptorIdList will be Or relationship; for example, if administrator puts DeviceID and InstancePathID, for every connected USB, system will do the enforcement as long as the USB has either an identical DeviceID or InstanceID value.</li><li>**MatchExcludeAll**: The attributes under the DescriptorIdList will be And relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAll, for every connected USB, system will do the enforcement as long as the USB doesn't have both identical DeviceID and InstanceID value.</li><li>**MatchExcludeAny**: The attributes under the DescriptorIdList will be Or relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAny, for every connected USB, system will do the enforcement as long as the USB doesn't have either an identical DeviceID or InstanceID value.</li></ul>|

## Access policy rule

Every access policy rule called PolicyRule can be used to define access restriction for each Device type group through multiple Entry.

The table below lists the properties you can use in **PolicyRule**:

|Property Name|Description|Options|
|---|---|---|
|PolicyRule ID|GUID, a unique ID, represents the policy and will be used in the reporting and troubleshooting.|You can generate the group ID through  [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid?view=powershell-7.3&preserve-view=true)|
|Name|String, the name of the policy and will display on the toast based on the policy setting and will be captured in the reporting.|
|IncludedIdList|The group(s) that the policy will be applied to. If multiple groups are added, the policy will be applied to any media in all those groups.|The Group ID/GUID must be used at this instance. The following example shows the usage of GroupID: {EAA4CCE5-F6C9-4760-8BAD-FDCC76A2ACA1} <p> **Note**: You shouldn't add multiple groups inside IncludedIdList. Instead, add all groups into a new group and then add the new group inside IncludedIdList.|
|ExcludedIDList|The group(s) that the policy won't be applied to.|The Group ID/GUID must be used at this instance.|
|Entry|One PolicyRule can have multiple entries; each entry with a unique GUID tells Device Control one restriction.|See Entry properties table below for more details.|

The table below lists the properties you can use in **Entry**:

|Property Name|Description|Options|
|---|---|---|
|PolicyRule ID|GUID, a unique ID, represents the policy and will be used in the reporting and troubleshooting.|You can generate the group ID through  [PowerShell](/powershell/module/microsoft.powershell.utility/new-guid?view=powershell-7.3&preserve-view=true)|
|Type|Defines the action for the removable storage groups in IncludedIDList. <ul><li>Enforcement: Allow or Deny</li><li>Audit: AuditAllowed or AuditDenied</li></ul>|<ul><li>Allow</li><li>Deny</li><li>AuditAllowed: Defines event when access is allowed</li><li>AuditDenied: Defines notification and event when access is denied; has to work together with Deny entry.</li></ul> <p> When there are conflict types for the same media, the system will apply the first one in the policy. An example of a conflict type is  **Allow**  and  **Deny**.|
|Sid|Local user Sid or user Sid group or the Sid of the AD object or the Object ID of the Azure AD object, defines whether to apply this policy over a specific user or user group. One entry can have a maximum of one SID and an entry without any SID means to apply the policy over the machine.|
|ComputerSid|Local computer Sid or computer Sid group or the Sid of the AD object or the Object ID of the AAD object, defines whether to apply this policy over a specific machine or machine group. One entry can have a maximum of one ComputerSID and an entry without any ComputerSID means to apply the policy over the machine. If you want to apply an Entry to a specific user and specific machine, add both SID and ComputerSID into the same Entry.|
|Options|Defines whether to display notification or not|**When Type Allow is selected:** <ul><li>0: nothing</li><li>4: disable AuditAllowed and AuditDenied for this Entry. Even if Allow happens and the AuditAllowed is setting configured, the system won't send event.</li><li>8: create a copy of the file as evidence, and fire "RemovableStorageFileEvent" event, this has to be used together with 'Set location for a copy of the file' setting through Intune or Group Policy. </li></ul> <p> **When  Type Deny is selected:**<ul><li>0: nothing</li><li>4: disable AuditDenied for this Entry. Even if Block happens and the AuditDenied is setting configured, the system won't show notification.</li></ul> <p> **When Type AuditAllowed is selected:** <ul><li>0: nothing</li><li>1: nothing</li><li>2: send event</li></ul> <p> **When Type AuditDenied is selected:** </ul><li>0: nothing</li><li>1: show notification</li><li>2: send event</li><li>3: show notification and send event</li><li>4: print</li></ul>|
|AccessMask|Defines the access.|
|Parameters|Condition for this Entry, for example, network condition.|Can add groups (non-devices type) or even put Parameters into Parameters. See Parameters properties table below for more details.|

The table below lists the properties you can use in **Parameters**:

|Property Name|Description|Options|
|---|---|---|
|MatchType|When there are multiple device properties being used in the DescriptorIDList, MatchType defines the relationship.|**MatchAll:** <ul><li> Any attributes under the DescriptorIdList will be And relationship; for example, if administrator puts DeviceID and InstancePathID, for every connected USB, system will check to see whether the USB meets both values.</li></ul> <p> **MatchAny:** <ul></li>The attributes under the DescriptorIdList will be Or relationship; for example, if administrator puts DeviceID and InstancePathID, for every connected USB, system will do the enforcement as long as the USB has either an identical DeviceID or InstanceID value.</li></ul> <p> **MatchExcludeAll:** <ul><li>The attributes under the DescriptorIdList will be And relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAll, for every connected USB, system will do the enforcement as long as the USB doesn't have both identical DeviceID and InstanceID value.</li></ul> <p> **MatchExcludeAny:** <ul><li>The attributes under the DescriptorIdList will be Or relationship, any items that do NOT meet will be covered. For example, if administrator puts DeviceID and InstancePathID and uses MatchExcludeAny, for every connected USB, system will do the enforcement as long as the USB doesn't have either an identical DeviceID or InstanceID value.</li></ul>|
|PrintJob Network VPNConnection|The PrintJob or Network or VPNConnection group(s) created above.|Use the GroupId of the PrintJob or Network or VPNConnection group(s) created above.|
|Parameters|You can embed Parameters inside Parameters with MatchType.|

## Enduser experience

You can view the policy name and printer information if you have right options setting in your policy.

:::image type="content" source="images/enduser-experience.png" alt-text="This is enduser experience image.":::
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
