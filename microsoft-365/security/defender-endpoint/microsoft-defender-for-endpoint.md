---
title: Microsoft Defender for Endpoints
description: A walk-through about Microsoft Defender for Endpoint
keywords: removable storage media
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-smandalika
author: v-smandalika
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoints

**Microsoft Defender for Endpoint Preview**

Microsoft Defender for Endpoint adds various feature enhancements and capabilities in the Sep 2020 Private Preview.

In this private preview release, we’ll guide you through the following feature enhancements:

## Microsoft Defender for Endpoint Device Control Removable Storage Access Control

Removable storage Access Control includes two parts, namely removable storage group and access control policy over the select group.

**Access**: Read, Write, Execute
**Action Mode**: Audit, Allow, Prevent
**CSP Support**: Yes
**GPO Support**: Yes
**User-based Support**: Yes
**Machine-based Support**: Yes

## Prepare your endpoints

Ensure that the Windows 10 devices on which you plan to deploy Removable Storage Protection have Anti-malware Client Version **4.18.2103.3 or later**.

<to include the image anti-malware.png>

## Policy Properties

You can use the following properties to create a removable storage group:

1.
**Property name**: Group Id

**Description**: [GUID](https://en.wikipedia.org/wiki/Universally_unique_identifier), a unique Id, represents the group and will be used in the policy.

**Options**: - 


**Property name**: DescriptorIdList

**Description**: List the device properties you want to use to cover in the group.

**Options**:
- Primary Id
    - RemovableMediaDevices
    - CdRomDevices
- DeviceId
- HardwareId
- InstancePathId
- FriendlyNameId
- SerialNumberId
- VID
- PID
- VID_PID
    - 0751_55E0: match this exact VID/PID pair
    - _55E0: match any media with PID=55E0
    - 0751_: match any media with VID=0751


**Property name**: MatchType

**Description**: When there are multiple device properties being used in the DescriptorIdList, MatchType defines the relationship.

**Options**: 
- MatchAll: Any attributes under the DescriptorIdList will be **And** relationship, for example, if administrator puts DeviceId and InstancePathId, for every connected USB, system will check to see whether the USB meet both values. 

MatchAny: The attributes under the DescriptorIdList will be **Or** relationship, for example, if administrator puts DeviceId and InstancePathId, for every connected USB, system will do the enforcement as long as the USB has either an identical **DeviceId** or **InstanceId** value.

Following are the access control policy properties:

|Property Name  |Description |Options  |
|---------|---------|---------|
|PolicyRule Id     |   [GUID](https://en.wikipedia.org/wiki/Universally_unique_identifier), a unique Id, represents the policy and will be used in the reporting and troubleshooting.      |      -   |
|IncludedIdList    |   The group(s) that the policy will be applied to. If multiple groups are added, the policy will be applied to any media in all those groups.      |    The Group Id/GUID has to be used here, for example, <IncludedIdList> <GroupId>{EAA4CCE5-F6C9-4760-8BAD-FDCC76A2ACA1}</GroupId>  </IncludedIdList>     |
|ExcludedIdList  |    The group(s) that the policy will not be applied to.     |    The Group Id/GUID has to be used here.     |
|Entry Id    |    One PolicyRule can have multiple entries; each entry with a unique GUID tells Device Control one restriction.     |   -      |
|Type    |     Defines the action for the removable storage groups in IncludedIdList: (1)Enforcement: Allow or Deny, (2) Audit: AuditAllowed or AuditDenied    |   (1) Allow, (2) Deny, (3) AuditAllowed: defines notification and event when access is allowed, (4) AuditDenied: defines notification and event when access is denied, has to work together with ‘Deny’ entry. When there are conflict types (for example, one Allow and other Deny) for same media, system will apply the first one in the policy.    |
|Options     |    Defines whether display notification or not.     |  0 – 4. When Type **Allow** or **Deny** is selected:  (a) 0: nothing, (b) 4: disable **AuditAllowed** and **AuditDenied** for this entry. Even if a Block happens and the **AuditDenied** setting is configured, the system will not show notification.   When Type AuditAllowed or AuditDenied is selected: (a) 0: nothing, (b) 1: show notification, (c) 2: send event, (d) 3: show notification and send event |
|AccessMask   |   Defines the access.      | 1 – 7: (a) 1: Read, (b) 2: Write, (c) 3: Read and Write, (d) 4: Execute, (e) 5: Read and Execute, (f) 6: Write and execute, (g) 7: Read, Write and Execute     |

## Common Removable Storage Access Control scenarios

To help familiarize you with Microsoft Defender for Endpoint Removable Storage Access Control, we have put together some common scenarios for you to follow.

### Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs

1. Create groups
    1. Group 1: Any removable storage and CD/DVD, for example, Group **9b28fae8-72f7-4267-a1a5-685f747a7146** in the sample [Any Removable Storage and CD-DVD Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.
    
    2. Group 2: Approved USBs based on device properties, for example, Instance Id – Group **65fa649a-a111-4912-9294-fb6337a25038** in the sample [Approved USBs Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file. 
    
> [!NOTE]
> You have to replace ‘&’ with ‘&amp;’ in the value.

2. Create policy
    1. Policy 1: Block Write and Execute Access but allow approved USBs, for example, PolicyRule **c544a991-5786-4402-949e-a032cb790d0e** in the sample [Scenario 1 Block Write and Execute Access but allow approved USBs .xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.
     
    2. Policy 2: Audit Write and Execute access to allowed USBs, for example, **PolicyRule ‘36ae1037-a639-4cff-946b-b36c53089a4c**’ in the sample [Scenario 1 Audit Write and Execute access to aproved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

### Scenario 2: Audit Write and Execute access to all but block specific unapproved USBs

1. Create groups
    1. Group 1: Any removable storage and CD/DVD, for example, Group **9b28fae8-72f7-4267-a1a5-685f747a7146** in the sample [Any Removable Storage and CD-DVD Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.
    
    2. Group 2: Unapproved USBs based on device properties, for example, Vendor Id / Product Id, Friendly Name – Group **65fa649a-a111-4912-9294-fb6337a25038** in the sample [Unapproved USBs Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file. 
    
> [!NOTE]
> You have to replace ‘&’ with ‘&amp;’ in the value.

2. Create policy
    1. Policy 1: Block Write and Execute access to all but block specific unapproved USBs, for example, PolicyRule **23b8e437-66ac-4b32-b3d7-24044637fc98** in the sample [Scenario 2 Audit Write and Execute access to all but block specific unapproved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.
    
    2. Policy 2: Audit Write and Execute access to others, for example, PolicyRule **b58ab853-9a6f-405c-a194-740e69422b48** in the sample [Scenario 2 Audit Write and Execute access to others.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

## Deploying and managing policy via Group Policy

The Removable storage Protection feature allows you to apply policy via Group Policy to either user or device or both.

### Licensing

Before you get started with Removable Storage Protection, you should confirm your Microsoft 365 subscription. To access and use Removable Storage Protection, you must have Microsoft 365 E5.

### Deploying policy via Group Policy

1. Combine all groups within <Groups> </Groups> into one xml file.

<require screenshot>

2. Combine all rules within <PolicyRules> </PolicyRules>into one xml file.

<require screenshot>

## Deploying and managing policy via Intune OMA-URI

The Removable Storage Protection feature allows you to apply policy via OMA-URI to either user or device or both.

### Licensing

Before you get started with Removable Storage Protection, you should confirm your Microsoft 365 subscription. To access and use Removable Storage Protection, you must have Microsoft 365 E3.

### Permission

For policy deployment in Intune, to deploy policy via OMA-URI, the account must have permissions to create, edit, update or delete device configuration profiles. You can create custom roles or use any of the built-in roles with these permissions.

- Policy and profile Manager role
- Custom role with Create/Edit/Update/Read/Delete/View Reports permissions turned on for Device Configuration profiles
- Global administrator

## Deploying policy via OMA-URI

MEM (https://endpoint.microsoft.com/) -> Devices -> Configuration profiles -> Create profile -> Platform: Windows 10 and later & Profile: Custom

1. For each Group, create an OMA-URI rule:
    - OMA-URI:
    /Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b**GroupGUID**%7d/GroupData

    For example, for the **any removable storage and CD/DVD** group in the sample, the link should be:
    ./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b9b28fae8-72f7-4267-a1a5-685f747a7146%7d/GroupData

    - Data Type: String (XML file)
    
:::image type="content" source="images/xml-file-for-data-type-string.png" alt-text="The xml file for the STRING data type":::

2. For each policy, also create an OMA-URI:

    - OMA-URI:
      /Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bFA6BE102-0784-4A2A-B010-A0BEBEBF68E1%7d/RuleData


      For example, for the **Block Write and Execute Access but allow approved USBs** rule in the sample, the link should be ./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bc544a991-5786-4402-949e-a032cb790d0e%7d/RuleData.

    - Data Type: String (XML file)


<include the image xml-file-for-data-type-string-2>

## View Device Control Printer Protection data in Microsoft Defender for Endpoint portal

The Microsoft 365 security portal shows printing blocked by the Device Control Printer Protection policy above.


    





















    








 














