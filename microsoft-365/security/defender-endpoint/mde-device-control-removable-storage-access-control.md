---
title: Microsoft Defender for Endpoint Device Control Removable Storage Access Control
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

# Microsoft Defender for Endpoint Device Control Removable Storage Access Control

Microsoft Defender for Endpoint Device Control Removable Storage Access Control enables you to do the following tasks:
- auditing the read, write or execute access to removable storage with or without exclusion
- allowing the read, write or execute access to removable storage with or without exclusion 
- preventing the read, write or execute access to removable storage with or without exclusion


|Privilege |Permission  |
|---------|---------|
|Access    |  Read, Write, Execute       |
|Action Mode    |    Audit, Allow, Prevent     |
|CSP Support   |   Yes      |
|GPO Support    |   Yes      |
|User-based Support     |   Yes      |
|Machine-based Support    |    Yes     |

## Prepare your endpoints

Deploy Removable Storage Access Control on Windows 10 devices that have Anti-malware Client Version **4.18.2103.3 or later**.

:::image type="content" source="images/anti-malware.png" alt-text="The screen showing device that has anti-malware client version":::

## Policy Properties

You can use the following properties to create a removable storage group:

**Property name: Group Id**
1. Description: [GUID](https://en.wikipedia.org/wiki/Universally_unique_identifier), a unique Id, represents the group and will be used in the policy.
1. Options: - 

**Property name: DescriptorIdList**

1. Description: List the device properties you want to use to cover in the group.
List the device properties you want to use to cover in the group.
For each device property, see **Device Properties** section above for more detail.
1. Options:
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

**Property name: MatchType** 

1. Description: When there are multiple device properties being used in the DescriptorIdList, MatchType defines the relationship.
1. Options: 
    - MatchAll: Any attributes under the DescriptorIdList will be **And** relationship; for example, if administrator puts DeviceId and InstancePathId, for every connected USB, system will check to see whether the USB meets both values.

    - MatchAny: The attributes under the DescriptorIdList will be **Or** relationship; for example, if administrator puts DeviceId and InstancePathId, for every connected USB, system will do the enforcement as long as the USB has either an identical **DeviceId** or **InstanceId** value.

Following are the access control policy properties:

**Property name: PolicyRuleId**

1. Description: [GUID](https://en.wikipedia.org/wiki/Universally_unique_identifier), a unique Id, represents the policy and will be used in the reporting and troubleshooting.
1. Options: -

**Property name: IncludedIdList**

1. Description: The group(s) that the policy will be applied to. If multiple groups are added, the policy will be applied to any media in all those groups.
1. Options: The Group ID/GUID has to be used here.

The following example shows the usage of GroupID:

`<IncludedIdList> <GroupId>{EAA4CCE5-F6C9-4760-8BAD-FDCC76A2ACA1}</GroupId> </IncludedIdList>`

**Property name: ExcludedIdList**

1. Description: The group(s) that the policy will not be applied to.
1. Options: The Group ID/GUID has to be used here.

**Property name: Entry Id**

1. Description: One PolicyRule can have multiple entries; each entry with a unique GUID tells Device Control one restriction.
1. Options: -

**Property name: Type**

1. Description: Defines the action for the removable storage groups in IncludedIdList.
    - Enforcement: Allow or Deny
    - Audit: AuditAllowed or AuditDenied 
1. Options:
    - Allow
    - Deny
    - AuditAllowed: Defines notification and event when access is allowed
    - AuditDenied: Defines notification and event when access is denied; has to work together with **Deny** entry.

When there are conflict types for the same media, the system will apply the first one in the policy. An example of a conflict type is **Allow** and **Deny**.

**Property name: Options**

1. Description: Defines whether to display notification or not.

:::image type="content" source="images/device-status.png" alt-text="The screen on which the status of the device can be seen":::

1. Options: 0-4.
When Type Allow or Deny is selected:
- 0: nothing
- 4: disable **AuditAllowed** and **AuditDenied** for this Entry. Even if **Block** happens and the **AuditDenied** is setting configured, the system will not show notification.

When Type **AuditAllowed** or **AuditDenied** is selected:
- 0: nothing
- 1: show notification
- 2: send event
- 3: show notification and send event

**Property name: AccessMask**

1. Description: Defines the access.
1. Options: 
   1-7:
    - 1: Read
    - 2: Write
    - 3: Read and Write
    - 4: Execute
    - 5: Read and Execute
    - 6: Write and Execute
    - 7: Read and Write and Execute

## Common Removable Storage Access Control scenarios

To help familiarize you with Microsoft Defender for Endpoint Removable Storage Access Control, we have put together some common scenarios for you to follow.

### Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs

1. Create groups
    1. Group 1: Any removable storage and CD/DVD. 

An example of a removable storage and CD/DVD is Group **9b28fae8-72f7-4267-a1a5-685f747a7146** in the sample [Any Removable Storage and CD-DVD Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.
    
    2. Group 2: Approved USBs based on device properties. An example for this use case is:
    Instance Id – Group **65fa649a-a111-4912-9294-fb6337a25038** in the sample [Approved USBs Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

> [!NOTE]
> You have to replace `&` with `&amp;` in the value.

2. Create policy
    1. Policy 1: Block Write and Execute Access but allow approved USBs. An example for this use case is: PolicyRule **c544a991-5786-4402-949e-a032cb790d0e** in the sample [Scenario 1 Block Write and Execute Access but allow approved USBs .xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.
    
    2. Policy 2: Audit Write and Execute access to allowed USBs. An example for this use case is: PolicyRule **36ae1037-a639-4cff-946b-b36c53089a4c** in the sample [Scenario 1 Audit Write and Execute access to approved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

### Scenario 2: Audit Write and Execute access to all but block specific unapproved USBs

1. Create groups
    1. Group 1: Any removable storage and CD/DVD. An example for this use case is:
    Group **9b28fae8-72f7-4267-a1a5-685f747a7146** in the sample [Any Removable Storage and CD-DVD Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.
    
    2. Group 2: Unapproved USBs based on device properties, for example, Vendor Id / Product Id, Friendly Name – Group **65fa649a-a111-4912-9294-fb6337a25038** in the sample [Unapproved USBs Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file. 
    
> [!NOTE]
> You have to replace `&` with `&amp;` in the value.

2. Create policy
    1. Policy 1: Block Write and Execute access to all but block specific unapproved USBs. An example of this use case is: PolicyRule **23b8e437-66ac-4b32-b3d7-24044637fc98** in the sample [Scenario 2 Audit Write and Execute access to all but block specific unapproved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.
    
    2. Policy 2: Audit Write and Execute access to others. An example of this use case is: PolicyRule **b58ab853-9a6f-405c-a194-740e69422b48** in the sample [Scenario 2 Audit Write and Execute access to others.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

## Deploying and managing policy via Group Policy

The Removable Storage Access Control feature enables you to apply policy via Group Policy to either user or device, or both.

### Licensing

Before you get started with Removable Storage Access Control, you must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control, you must have Microsoft 365 E5.

### Deploying policy via Group Policy

1. Combine all groups within `<Groups>` `</Groups>` into one xml file. 

The following image illustrates the example of [Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs](#scenario-1-prevent-write-and-execute-access-to-all-but-allow-specific-approved-usbs)

:::image type="content" source="images/prevent-write-and-access-allow-usb.png" alt-text="The screen displaying the configuration settings that allow specific approved USBs on devices":::

2. Combine all rules within `<PolicyRules>` `</PolicyRules>` into one xml file. 

If you want to restrict a specific user, then use SID property into the Entry. If there is no SID in the policy Entry, the Entry will be applied to everyone login instance for the machine.

The following image illustrates the usage of SID property, and an example of [Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs](#scenario-1-prevent-write-and-execute-access-to-all-but-allow-specific-approved-usbs).

:::image type="content" source="images/usage-of-sid-property.png" alt-text="The screen displaying a code that indicates usage of the SID property attribute":::

3. Save both rule and group XML files on network share folder and put network share folder path into the Group Policy setting: **Computer Configuration -> Administrative Templates -> Windows Components -> Microsoft Defender Antivirus -> Device Control: ‘Define device control policy groups’ and ‘Define device control policy rules’**.

    - The target machine must be able to access the network share to have the policy. However, once the policy is read, the network share connection is no longer required, even after machine reboot.

:::image type="content" source="images/device-control.png" alt-text="The Device Control screen":::

## Deploying and managing policy via Intune OMA-URI

The Removable Storage Access Control feature enables you to apply policy via OMA-URI to either user or device, or both.

### Licensing

Before you get started with Removable Storage Access Control, you  must confirm your [Microsoft 365 subscription](https://www.microsoft.com/en-in/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control, you must have Microsoft 365 E3.

:::image type="content" source="images/microsoft-365-e3.png" alt-text="`Write and Execute access blocked but approved USBs allowed":::

### Permission

For policy deployment in Intune, the account must have permissions to create, edit, update, or delete device configuration profiles. You can create custom roles or use any of the built-in roles with these permissions.

- Policy and profile Manager role
- Custom role with Create/Edit/Update/Read/Delete/View Reports permissions turned on for Device Configuration profiles
- Global administrator

## Deploying policy via OMA-URI

**Microsoft Endpoint Manager admin center (https://endpoint.microsoft.com/) -> Devices -> Configuration profiles -> Create profile -> Platform: Windows 10 and later & Profile: Custom**

1. For each Group, create an OMA-URI rule:
    - OMA-URI:
    /Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b**GroupGUID**%7d/GroupData

    For example, for **any removable storage and CD/DVD** group in the sample, the link must be:
    ./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b9b28fae8-72f7-4267-a1a5-685f747a7146%7d/GroupData

    - Data Type: String (XML file)
    
:::image type="content" source="images/xml-file-for-data-type-string.png" alt-text="The xml file for the STRING data type":::

2. For each policy, also create an OMA-URI:

    - OMA-URI:
      /Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bFA6BE102-0784-4A2A-B010-A0BEBEBF68E1%7d/RuleData

      For example, for the **Block Write and Execute Access but allow approved USBs** rule in the sample, the link must be: 
      ./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bc544a991-5786-4402-949e-a032cb790d0e%7d/RuleData.

    - Data Type: String (XML file)

:::image type="content" source="images/xml-file-for-data-type-string-2.png" alt-text="Display of XML file for the STRING data type":::

## View Device Control Removable Storage Access Control data in Microsoft Defender for Endpoint

The Microsoft 365 security portal shows removable storage blocked by the Device Control Removable Storage Access Control.

//events triggered by RemovableStoragePolicyTriggered 

DeviceEvents 

| where ActionType == "RemovableStoragePolicyTriggered" 

| extend parsed=parse_json(AdditionalFields) 

| extend RemovableStorageAccess = tostring(parsed.RemovableStorageAccess)  

| extend RemovableStoragePolicyVerdict = tostring(parsed.RemovableStoragePolicyVerdict)  

| extend MediaBusType = tostring(parsed.BusType)  

| extend MediaClassGuid = tostring(parsed.ClassGuid)  

| extend MediaClassName = tostring(parsed.ClassName) 

| extend MediaDeviceId = tostring(parsed.DeviceId) 

| extend MediaInstanceId = tostring(parsed.DeviceInstanceId) 

| extend MediaName = tostring(parsed.MediaName) 

| extend RemovableStoragePolicy = tostring(parsed.RemovableStoragePolicy)  

| extend MediaProductId = tostring(parsed.ProductId)  

| extend MediaVendorId = tostring(parsed.VendorId)  

| extend MediaSerialNumber = tostring(parsed.SerialNumber)  

| extend MediaVolume = tostring(parsed.Volume)  

| project Timestamp , DeviceId, DeviceName, ActionType, RemovableStorageAccess, RemovableStoragePolicyVerdict, MediaBusType, MediaClassGuid, MediaClassName, MediaDeviceId, MediaInstanceId, MediaName, RemovableStoragePolicy, MediaProductId, MediaVendorId, MediaSerialNumber, MediaVolume 

| order by Timestamp desc

:::image type="content" source="images/blockage-of-removable-storage.png" alt-text="The screen depicting the blockage of the removable storage":::






















    








 














