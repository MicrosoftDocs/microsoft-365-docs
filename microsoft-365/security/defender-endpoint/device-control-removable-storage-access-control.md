---
title: Microsoft Defender for Endpoint Device Control Removable Storage Access Control, removable storage media
description: A walk-through about Microsoft Defender for Endpoint
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.technology: mde
ms.date: 02/07/2022
---

# Microsoft Defender for Endpoint Device Control Removable Storage Access Control

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> The Group Policy management and Intune OMA-URI/Custom Policy management of this product are now generally available (4.18.2106): See [Tech Community blog: Protect your removable storage and printer with Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/protect-your-removable-storage-and-printers-with-microsoft/ba-p/2324806).


Microsoft Defender for Endpoint Device Control Removable Storage Access Control enables you to do the following task:

- auditing, allowing or preventing the read, write or execute access to removable storage with or without exclusion

<br/><br/>

|Privilege|Permission|
|---|---|
|Access|Read, Write, Execute|
|Action Mode|Audit, Allow, Prevent|
|CSP Support|Yes|
|GPO Support|Yes|
|User-based Support|Yes|
|Machine-based Support|Yes|

<br/><br/>

|Capability|Description|Deploy through Intune|Deploy through Group Policy|
|---|---|---|---|
|Removable Media Group Creation|Allows you to create reusable removable media group|Step 1 and step 3 in the section, [Deploying policy via OMA-URI](#deploying-policy-via-oma-uri) | Step 1 in the section, [Deploying policy via Group Policy](#deploying-policy-via-group-policy)|
|Policy Creation|Allows you to create policy to enforce each removable media group|Steps 2 and 3 in the section, [Deploying policy via OMA-URI](#deploying-policy-via-oma-uri) | Step 2 in the section, [Deploying policy via Group Policy](#deploying-policy-via-group-policy) |
|Default Enforcement|Allows you to set default access (Deny or Allow) to removable media if there is no policy|Step 4 in the section, [Deploying policy via OMA-URI](#deploying-policy-via-oma-uri) | Step 3 in the section, [Deploying policy via Group Policy](#deploying-policy-via-group-policy) |
|Enable or Disable Removable Storage Access Control|If you set Disable, it will disable the Removable Storage Access Control policy on this machine| Step 5 in the section, [Deploying policy via OMA-URI](#deploying-policy-via-oma-uri) | Step 4 in the section, [Deploying policy via Group Policy](#deploying-policy-via-group-policy) |

## Prepare your endpoints

Deploy Removable Storage Access Control on Windows 10 and Windows 11 devices that have antimalware client version **4.18.2103.3 or later**.

- **4.18.2104 or later**: Add SerialNumberId, VID_PID, filepath-based GPO support, ComputerSid

- **4.18.2105 or later**: Add Wildcard support for HardwareId/DeviceId/InstancePathId/FriendlyNameId/SerialNumberId, the combination of specific user on specific machine, removeable SSD (a SanDisk Extreme SSD)/USB Attached SCSI (UAS) support

- **4.18.2107 or later**: Add Windows Portable Device (WPD) support (for mobile devices, such as tablets); add AccountName into [advanced hunting](device-control-removable-storage-access-control.md#view-device-control-removable-storage-access-control-data-in-microsoft-defender-for-endpoint)

- **4.18.2111 or later**: Add 'Enable or Disable Removable Storage Access Control', 'Default Enforcement', client machine policy update time through PowerShell.

:::image type="content" source="images/powershell.png" alt-text="The PowerShell interface.":::

> [!NOTE]
> None of Windows Security components need to be active as you can run Removable Storage Access Control independent of Windows Security status.

## Policy properties

You can use the following properties to create a removable storage group:

> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

### Removable Storage Group

<br/><br/>

|Property Name|Description|Options|
|---|---|---|
|**GroupId**|GUID, a unique ID, represents the group and will be used in the policy.||
|**DescriptorIdList**|List the device properties you want to use to cover in the group. For each device property, see [Device Properties](device-control-removable-storage-protection.md) for more detail. All properties are case sensitive. |**PrimaryId**: `RemovableMediaDevices`, `CdRomDevices`, `WpdDevices`<p>**BusId**: For example, USB, SCSI<p>**DeviceId**<p>**HardwareId**<p>**InstancePathId**: InstancePathId is a string that uniquely identifies the device in the system, for example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611&0`. The number at the end (for example &0) represents the available slot and may change from device to device. For best results, use a wildcard at the end. For example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611*`.<p>**FriendlyNameId**<p>**SerialNumberId**<p>**VID**<p>**PID**<p>**VID_PID**<p>0751_55E0: match this exact VID/PID pair<p>55E0: match any media with PID=55E0 <p>0751: match any media with VID=0751|
|**MatchType**|When there are multiple device properties being used in the `DescriptorIDList`, MatchType defines the relationship.|**MatchAll**: Any attributes under the `DescriptorIdList` will be **And** relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, system will check to see whether the USB meets both values. <p> **MatchAny**: The attributes under the DescriptorIdList will be **Or** relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, system will do the enforcement as long as the USB has either an identical **DeviceID** or **InstanceID** value. |

### Access Control Policy

<br/><br/>

| Property Name | Description | Options |
|---|---|---|
| **PolicyRuleId** | GUID, a unique ID, represents the policy and will be used in the reporting and troubleshooting. | |
| **IncludedIdList** | The group(s) that the policy will be applied to. If multiple groups are added, the policy will be applied to any media in all those groups.|The Group ID/GUID must be used at this instance. <p> The following example shows the usage of GroupID: <p> `<IncludedIdList> <GroupId> {EAA4CCE5-F6C9-4760-8BAD-FDCC76A2ACA1}</GroupId> </IncludedIdList>` |
| **ExcludedIDList** | The group(s) that the policy will not be applied to. | The Group ID/GUID must be used at this instance. |
| **Entry Id** | One PolicyRule can have multiple entries; each entry with a unique GUID tells Device Control one restriction.| |
| **Type** | Defines the action for the removable storage groups in IncludedIDList. <p>Enforcement: Allow or Deny <p>Audit: AuditAllowed or AuditDenied<p> | Allow<p>Deny <p>AuditAllowed: Defines notification and event when access is allowed <p>AuditDenied: Defines notification and event when access is denied; has to work together with **Deny** entry.<p> When there are conflict types for the same media, the system will apply the first one in the policy. An example of a conflict type is **Allow** and **Deny**. |
| **Sid** | Local user Sid or user Sid group or the Sid of the AD object, defines whether to apply this policy over a specific user or user group; one entry can have a maximum of one Sid and an entry without any Sid means applying the policy over the machine. |  |
| **ComputerSid** | Local computer Sid or computer Sid group or the Sid of the AD object, defines whether to apply this policy over a specific machine or machine group; one entry can have a maximum of one ComputerSid and an entry without any ComputerSid means applying the policy over the machine. If you want to apply an Entry to a specific user and specific machine, add both Sid and ComputerSid into the same Entry. |  |
| **Options** | Defines whether to display notification or not |**0 or 4**: When Type Allow or Deny is selected. <p>0: nothing<p>4: disable **AuditAllowed** and **AuditDenied** for this Entry. Even if **Block** happens and the AuditDenied is setting configured, the system will not show notification. <p> When Type **AuditAllowed** is selected: <p>0: nothing <p>1: nothing <p>2: send event<p>3: send event <p> When Type **AuditDenied** is selected: <p>0: nothing <p>1: show notification <p>2: send event<p>3: show notification and send event |
|AccessMask|Defines the access. | **1-7**: <p>1: Read <p>2: Write <p>3: Read and Write <p>4: Execute <p>5: Read and Execute<p>6: Write and Execute <p>7: Read and Write and Execute |

## Common Removable Storage Access Control scenarios

To help familiarize you with Microsoft Defender for Endpoint Removable Storage Access Control, we have put together some common scenarios for you to follow.

### Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs

1. Create groups

    1. Group 1: Any removable storage and CD/DVD. An example of a removable storage and CD/DVD is: Group **9b28fae8-72f7-4267-a1a5-685f747a7146** in the sample [Any Removable Storage and CD-DVD Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

    2. Group 2: Approved USBs based on device properties. An example for this use case is:
    Instance ID - Group **65fa649a-a111-4912-9294-fb6337a25038** in the sample [Approved USBs Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

    > [!TIP]
    > Replace `&` with `&amp;` in the value.

2. Create policy

    1. Policy 1: Block Write and Execute Access but allow approved USBs. An example for this use case is: PolicyRule **c544a991-5786-4402-949e-a032cb790d0e** in the sample [Scenario 1 Block Write and Execute Access but allow approved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

    2. Policy 2: Audit Write and Execute access to allowed USBs. An example for this use case is: PolicyRule **36ae1037-a639-4cff-946b-b36c53089a4c** in the sample [Scenario 1 Audit Write and Execute access to approved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

### Scenario 2: Audit Write and Execute access to all but block specific unapproved USBs

1. Create groups

    1. Group 1: Any removable storage and CD/DVD. An example for this use case is:
    Group **9b28fae8-72f7-4267-a1a5-685f747a7146** in the sample [Any Removable Storage and CD-DVD Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

    2. Group 2: Unapproved USBs based on device properties, for example, Vendor ID / Product ID, Friendly Name – Group **65fa649a-a111-4912-9294-fb6337a25038** in the sample [Unapproved USBs Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

    > [!TIP]
    > Replace `&` with `&amp;` in the value.

2. Create policy

    1. Policy 1: Block Write and Execute access to all but block specific unapproved USBs. An example of this use case is: PolicyRule **23b8e437-66ac-4b32-b3d7-24044637fc98** in the sample [Scenario 2 Audit Write and Execute access to all but block specific unapproved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

    2. Policy 2: Audit Write and Execute access to others. An example of this use case is: PolicyRule **b58ab853-9a6f-405c-a194-740e69422b48** in the sample [Scenario 2 Audit Write and Execute access to others.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

## Deploying and managing policy via Group Policy

The Removable Storage Access Control feature enables you to apply policy via Group Policy to either user or device, or both.

### Licensing

Before you get started with Removable Storage Access Control, you must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control, you must have Microsoft 365 E3 or Microsoft 365 E5.

### Deploying policy via Group Policy

1. Combine all groups within `<Groups>` `</Groups>` into one xml file.

    The following image illustrates the example of [Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs](#scenario-1-prevent-write-and-execute-access-to-all-but-allow-specific-approved-usbs).

    :::image type="content" source="images/prevent-write-access-allow-usb.png" alt-text="The screen displaying the configuration settings that allow specific approved USBs on devices.":::

2. Combine all rules within `<PolicyRules>` `</PolicyRules>` into one xml file.

    If you want to restrict a specific user, then use SID property into the Entry. If there is no SID in the policy Entry, the Entry will be applied to everyone login instance for the machine.

    The following image illustrates the usage of SID property, and an example of [Scenario 1: Prevent Write and Execute access to all but allow specific approved USBs](#scenario-1-prevent-write-and-execute-access-to-all-but-allow-specific-approved-usbs).

    :::image type="content" source="images/usage-sid-property.png" alt-text="The screen displaying a code that indicates usage of the SID property attribute.":::

3. Save both rule and group XML files on the network share folder and put the network share folder path into the Group Policy setting: **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Device Control**: **'Define device control policy groups'** and **'Define device control policy rules'**.

   If you cannot find the policy configuration UX in the Group Policy, you can download the [WindowsDefender.adml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/WindowsDefender.adml) and [WindowsDefender.admx](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/WindowsDefender.admx) files by selecting **Raw** and then **Save as**.

   - The target machine must be able to access the network share to have the policy. However, once the policy is read, the network share connection is no longer required, even after machine reboot.

    :::image type="content" source="images/device-control.png" alt-text="The Device Control screen.":::

4. Default enforcement: allows you to set default access (Deny or Allow) to removable media if there is no policy. For example, you only have policy (either Deny or Allow) for RemovableMediaDevices, but do not have any policy for CdRomDevices or WpdDevices, and you set default Deny through this policy, Read/Write/Execute access to CdRomDevices or WpdDevices will be blocked.

   - Once you deploy this setting, you will see **Default Allow** or **Default Deny**.

    :::image type="content" source="images/148609579-a7df650b-7792-4085-b552-500b28a35885.png" alt-text="Default Allow or Default Deny PowerShell code":::

5. Enable or Disable Removable Storage Access Control: you can set this value to temporarily disable Removable Storage Access Control.

    :::image type="content" source="images/148608318-5cda043d-b996-4146-9642-14fccabcb017.png" alt-text="Device Control settings":::

   - Once you deploy this setting, you will see ‘Enabled’ or ‘Disabled’ - Disabled means this machine does not have Removable Storage Access Control policy running.

    :::image type="content" source="images/148609685-4c05f002-5cbe-4aab-9245-83e730c5449e.png" alt-text="Enabled or Disabled device control in PowerShell code":::

## Deploying and managing policy via Intune OMA-URI

The Removable Storage Access Control feature enables you to apply policy via OMA-URI to either user or device, or both.

### Licensing requirements

Before you get started with Removable Storage Access Control, you  must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control, you must have Microsoft 365 E3 or Microsoft 365 E5.

### Permission

For policy deployment in Intune, the account must have permissions to create, edit, update, or delete device configuration profiles. You can create custom roles or use any of the built-in roles with these permissions.

- Policy and profile Manager role

- Custom role with Create/Edit/Update/Read/Delete/View Reports permissions turned on for Device Configuration profiles

- Global administrator

### Deploying policy via OMA-URI

Microsoft Endpoint Manager admin center (<https://endpoint.microsoft.com/>) \> **Devices** \> **Configuration profiles** \> **Create profile** \> **Platform: Windows 10 and later & Profile: Custom**

1. For each Group, create an OMA-URI rule:

    - OMA-URI:

      `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b**GroupGUID**%7d/GroupData`

      For example, for **any removable storage and CD/DVD** group in the sample, the link must be:

      `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b9b28fae8-72f7-4267-a1a5-685f747a7146%7d/GroupData`

    - Data Type: String (XML file)

      :::image type="content" source="images/xml-data-type-string.png" alt-text="The xml file for the STRING data type.":::

2. For each policy, also create an OMA-URI:

    - OMA-URI:

      `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7b**PolicyRuleGUID**%7d/RuleData`

      For example, for the **Block Write and Execute Access but allow approved USBs** rule in the sample, the link must be:

      `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bc544a991-5786-4402-949e-a032cb790d0e%7d/RuleData`

    - Data Type: String (XML file)

3. Default enforcement: allows you to set default access (Deny or Allow) to removable media if there is no policy. For example, you only have policy (either Deny or Allow) for RemovableMediaDevices, but do not have any policy for CdRomDevices or WpdDevices, and you set default Deny through this policy, Read/Write/Execute access to CdRomDevices or WpdDevices will be blocked.

    - OMA-URI: `./Vendor/MSFT/Defender/Configuration/DefaultEnforcement`

    - Data Type: Int

      `DefaultEnforcementAllow = 1`
      `DefaultEnforcementDeny = 2`

    - Once you deploy this setting, you will see **Default Allow** or **Default Deny**

    :::image type="content" source="images/148609590-c67cfab8-8e2c-49f8-be2b-96444e9dfc2c.png" alt-text="Default Enforcement Allow PowerShell code":::

4. Enable or Disable Removable Storage Access Control: you can set this value to temporarily disable Removable Storage Access Control.

   - OMA-URI: `./Vendor/MSFT/Defender/Configuration/DeviceControlEnabled`

   - Data Type: Int
     `Disable: 0`
     `Enable: 1`

   - Once you deploy this setting, you will see **Enabled** or **Disabled**

    **Disabled** means this machine does not have Removable Storage Access Control policy running

    :::image type="content" source="images/148609770-3e555883-f26f-45ab-9181-3fb1ff7a38ac.png" alt-text="Removeable Storage Access Control in PowerShell code":::

## Deploying and managing policy by using Intune user interface

This capability is available in the Microsoft Endpoint Manager admin center (<https://endpoint.microsoft.com/>). Go to **Endpoint Security** > **Attack Surface Reduction** > **Create Policy**. Choose **Platform: Windows 10 and later** with **Profile: Device Control**.

## View Device Control Removable Storage Access Control data in Microsoft Defender for Endpoint

The [Microsoft 365 Defender portal](https://security.microsoft.com/advanced-hunting) shows events triggered by the Device Control Removable Storage Access Control. To access the Microsoft 365 security, you must have the following subscription:

- Microsoft 365 for E5 reporting

```kusto
//events triggered by RemovableStoragePolicyTriggered
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
|project Timestamp, DeviceId, DeviceName, InitiatingProcessAccountName, ActionType, RemovableStorageAccess, RemovableStoragePolicyVerdict, MediaBusType, MediaClassGuid, MediaClassName, MediaDeviceId, MediaInstanceId, MediaName, RemovableStoragePolicy, MediaProductId, MediaVendorId, MediaSerialNumber
| order by Timestamp desc
```

```kusto
//information of file written to removable storage 
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
    
:::image type="content" source="images/block-removable-storage.png" alt-text="The screen depicting the blockage of the removable storage.":::

## Frequently asked questions

### What is the removable storage media limitation for the maximum number of USBs?

We've validated one USB group with 100,000 media - up to 7 MB in size. The policy works in both Intune and GPO without performance issues.

### Why does the policy not work?

The most common reason is there's no required [antimalware client version](/microsoft-365/security/defender-endpoint/device-control-removable-storage-access-control#prepare-your-endpoints).

Another reason could be that the XML file isn't correctly formatted, for example, not using the correct markdown formatting for the "&" character in the XML file, or the text editor might add a byte order mark (BOM) 0xEF 0xBB 0xBF at the beginning of the files, which causes the XML parsing not to work. One simple solution is to download the [sample file](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) (select **Raw** and then **Save as**) and then update.

If you are deploying and managing the policy via Group Policy, please make sure combine all PolicyRule into one XML file within a parent node called PolicyRules and all Group into one XML file within a parent node called Groups; if you manage through Intune, keep one PolicyRule one XML file, same thing, one Group one XML file.

### There is no configuration UX for 'Define device control policy groups' and 'Define device control policy rules' on my Group Policy

We don't backport the Group Policy configuration UX, but you can still get the related adml and admx files by clicking 'Raw' and 'Save as' at the [WindowsDefender.adml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/WindowsDefender.adml) and [WindowsDefender.admx](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/WindowsDefender.admx) files.


### How can I know whether the latest policy has been deployed to the target machine?

You can run ‘Get-MpComputerStatus’ on PowerShell as an Administrator. The following value will show whether the latest policy has been applied to the target machine.

:::image type="icon" source="images/148609885-bea388a9-c07d-47ef-b848-999d794d24b8.png" border="false":::

### How can I know which machine is using out of date antimalware client version in the organization?

You can use following query to get antimalware client version on the Microsoft 365 security portal:

```kusto
//check the antimalware client version
DeviceFileEvents
|where FileName == "MsMpEng.exe"
|where FolderPath contains @"C:\ProgramData\Microsoft\Windows Defender\Platform\"
|extend PlatformVersion=tostring(split(FolderPath, "\\", 5))
//|project DeviceName, PlatformVersion // check which machine is using legacy platformVersion
|summarize dcount(DeviceName) by PlatformVersion // check how many machines are using which platformVersion
|order by PlatformVersion desc
```
