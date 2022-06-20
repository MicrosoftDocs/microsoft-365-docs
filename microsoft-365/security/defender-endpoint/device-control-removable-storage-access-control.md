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
ms.date: 06/20/2022
---

# Microsoft Defender for Endpoint Device Control Removable Storage Access Control

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> The Group Policy management and Intune OMA-URI/Custom Policy management of this product are now generally available (4.18.2106): See [Tech Community blog: Protect your removable storage and printer with Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/protect-your-removable-storage-and-printers-with-microsoft/ba-p/2324806).

## Device Control Removable Storage Access Control Overview

Microsoft Defender for Endpoint Device Control Removable Storage Access Control feature enables you to audit, allow or prevent the read, write or execute access to removable storage with or without exclusion.

|Privilege|Permission|
|---|---|
|Access|Read, Write, Execute|
|Action Mode|Audit, Allow, Prevent|
|CSP Support|Yes|
|GPO Support|Yes|
|User-based Support|Yes|
|Machine-based Support|Yes|

Microsoft Defender for Endpoint Device Control Removable Storage Access Control feature gives you the following capabilities:

|Capability|Description|Deploy through Intune|Deploy through Group Policy|
|---|---|---|---|
|Removable Media Group Creation|Allows you to create reusable removable media group|Step 4 and 6 in the section, [Deploying Removable Storage Access Control by using Intune OMA-URI](#deploying-removable-storage-access-control-by-using-intune-oma-uri)| Step 4 and 6 in the section, [Deploying Removable Storage Access Control by using Group Policy](#deploying-removable-storage-access-control-by-using-group-policy)|
|Policy Creation|Allows you to create policy to enforce each removable media group|Step 5 and 7 in the section, [Deploying Removable Storage Access Control by using Intune OMA-URI](#deploying-removable-storage-access-control-by-using-intune-oma-uri)| Steps 5 and 7 in the section, [Deploying Removable Storage Access Control by using Group Policy](#deploying-removable-storage-access-control-by-using-group-policy)|
|Default Enforcement|Allows you to set default access (Deny or Allow) to removable media if there is no policy|Step 2 in the section, [Deploying Removable Storage Access Control by using Intune OMA-URI](#deploying-removable-storage-access-control-by-using-intune-oma-uri) | Step 2 in the section, [Deploying Removable Storage Access Control by using Group Policy](#deploying-removable-storage-access-control-by-using-group-policy)|
|Enable or Disable Removable Storage Access Control|If you set Disable, it will disable the Removable Storage Access Control policy on this machine| Step 1 in the section, [Deploying Removable Storage Access Control by using Intune OMA-URI](#deploying-removable-storage-access-control-by-using-intune-oma-uri)| Step 1 in the section, [Deploying Removable Storage Access Control by using Group Policy](#deploying-removable-storage-access-control-by-using-group-policy)|
|Capture file information|Allows you to create policy to capture file information when Write access happens|  | Step 10 in the section, [Deploying Removable Storage Access Control by using Group Policy](#deploying-removable-storage-access-control-by-using-group-policy) |

### Prepare your endpoints

Deploy Removable Storage Access Control on Windows 10 and Windows 11 devices that have antimalware client version **4.18.2103.3 or later**.

- **4.18.2104 or later**: Add SerialNumberId, VID_PID, filepath-based GPO support, ComputerSid

- **4.18.2105 or later**: Add Wildcard support for HardwareId/DeviceId/InstancePathId/FriendlyNameId/SerialNumberId, the combination of specific user on specific machine, removeable SSD (a SanDisk Extreme SSD)/USB Attached SCSI (UAS) support

- **4.18.2107 or later**: Add Windows Portable Device (WPD) support (for mobile devices, such as tablets); add AccountName into [advanced hunting](device-control-removable-storage-access-control.md#view-device-control-removable-storage-access-control-data-in-microsoft-defender-for-endpoint)

:::image type="content" source="images/powershell.png" alt-text="The PowerShell interface" lightbox="images/powershell.png":::

> [!NOTE]
> None of Windows Security components need to be active as you can run Removable Storage Access Control independent of Windows Security status.

## Device Control Removable Storage Access Control Policies

You can use the following properties to create a removable storage group:

> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

### Removable Storage Group

|Property Name|Description|Options|
|---|---|---|
|**GroupId**|GUID, a unique ID, represents the group and will be used in the policy.||
|**DescriptorIdList**|List the device properties you want to use to cover in the group. For each device property, see [Device Properties](device-control-removable-storage-protection.md) for more detail. All properties are case sensitive. |**PrimaryId**: `RemovableMediaDevices`, `CdRomDevices`, `WpdDevices`<p>**BusId**: For example, USB, SCSI<p>**DeviceId**<p>**HardwareId**<p>**InstancePathId**: InstancePathId is a string that uniquely identifies the device in the system, for example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611&0`. The number at the end (for example &0) represents the available slot and may change from device to device. For best results, use a wildcard at the end. For example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611*`.<p>**FriendlyNameId**<p>**SerialNumberId**<p>**VID**<p>**PID**<p>**VID_PID**<p>`0751_55E0`: match this exact VID/PID pair<p>`_55E0`: match any media with PID=55E0 <p>`0751_`: match any media with VID=0751|
|**MatchType**|When there are multiple device properties being used in the `DescriptorIDList`, MatchType defines the relationship.|**MatchAll**: Any attributes under the `DescriptorIdList` will be **And** relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, system will check to see whether the USB meets both values. <p> **MatchAny**: The attributes under the DescriptorIdList will be **Or** relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, system will do the enforcement as long as the USB has either an identical **DeviceID** or **InstanceID** value.|

### Access Control Policy
You can use the following properties to create the access control policy:

| Property Name | Description | Options |
|---|---|---|
| **PolicyRule Id** | GUID, a unique ID, represents the policy and will be used in the reporting and troubleshooting. | |
| **IncludedIdList** | The group(s) that the policy will be applied to. If multiple groups are added, the policy will be applied to any media in all those groups.|The Group ID/GUID must be used at this instance. <p> The following example shows the usage of GroupID: <p> `<IncludedIdList> <GroupId> {EAA4CCE5-F6C9-4760-8BAD-FDCC76A2ACA1}</GroupId> </IncludedIdList>` |
| **ExcludedIDList** | The group(s) that the policy will not be applied to. | The Group ID/GUID must be used at this instance. |
| **Entry Id** | One PolicyRule can have multiple entries; each entry with a unique GUID tells Device Control one restriction.| |
| **Type** | Defines the action for the removable storage groups in IncludedIDList. <p>Enforcement: Allow or Deny <p>Audit: AuditAllowed or AuditDenied<p> | Allow<p>Deny <p>AuditAllowed: Defines notification and event when access is allowed <p>AuditDenied: Defines notification and event when access is denied; has to work together with **Deny** entry.<p> When there are conflict types for the same media, the system will apply the first one in the policy. An example of a conflict type is **Allow** and **Deny**. |
| **Sid** | Local user Sid or user Sid group or the Sid of the AD object, defines whether to apply this policy over a specific user or user group; one entry can have a maximum of one Sid and an entry without any Sid means applying the policy over the machine. |  |
| **ComputerSid** | Local computer Sid or computer Sid group or the Sid of the AD object, defines whether to apply this policy over a specific machine or machine group; one entry can have a maximum of one ComputerSid and an entry without any ComputerSid means applying the policy over the machine. If you want to apply an Entry to a specific user and specific machine, add both Sid and ComputerSid into the same Entry. |  |
| **Options** | Defines whether to display notification or not |**When Type Allow is selected**: <p>0: nothing<p>4: disable **AuditAllowed** and **AuditDenied** for this Entry. Even if **Allow** happens and the AuditAllowed is setting configured, the system will not send event. <p>8: capture file information and have a copy of the file as evidence for Write access. <p>16: capture file information for Write access. <p>**When Type Deny is selected**: <p>0: nothing<p>4: disable **AuditDenied** for this Entry. Even if **Block** happens and the AuditDenied is setting configured, the system will not show notification. <p>**When Type **AuditAllowed** is selected**: <p>0: nothing <p>1: nothing <p>2: send event<p> **When Type **AuditDenied** is selected**: <p>0: nothing <p>1: show notification <p>2: send event<p>3: show notification and send event |
|AccessMask|Defines the access. | **Disk level access**: <p>1: Read <p>2: Write <p>4: Execute <p>**File system level access**: <p>8: File system Read <p>16: File system Write <p>32: File system Execute <p><p>You can have multiple access by performing binary OR operation, for example, the AccessMask for Read and Write and Execute will be 7; the AccessMask for Read and Write will be 3.|

## Device Control Removable Storage Access Control Scenarios

To help you familiarize with Microsoft Defender for Endpoint Removable Storage Access Control, we have put together some common scenarios for you to follow.

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

    2. Group 2: Unapproved USBs based on device properties, for example, Vendor ID / Product ID, Friendly Name - Group **65fa649a-a111-4912-9294-fb6337a25038** in the sample [Unapproved USBs Group.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

    > [!TIP]
    > Replace `&` with `&amp;` in the value.

2. Create policy

    1. Policy 1: Block Write and Execute access to all but block specific unapproved USBs. An example of this use case is: PolicyRule **23b8e437-66ac-4b32-b3d7-24044637fc98** in the sample [Scenario 2 Audit Write and Execute access to all but block specific unapproved USBs.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

    2. Policy 2: Audit Write and Execute access to others. An example of this use case is: PolicyRule **b58ab853-9a6f-405c-a194-740e69422b48** in the sample [Scenario 2 Audit Write and Execute access to others.xml](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) file.

## Deploying and managing Removable Storage Access Control by using Intune OMA-URI

The Removable Storage Access Control feature enables you to apply policy by using OMA-URI to either user or device, or both.

### Licensing requirements

Before you get started with Removable Storage Access Control, you  must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control, you must have Microsoft 365 E3 or Microsoft 365 E5.

### Permission

For policy deployment in Intune, the account must have permissions to create, edit, update, or delete device configuration profiles. You can create custom roles or use any of the built-in roles with these permissions.

- Policy and profile Manager role
- Custom role with Create/Edit/Update/Read/Delete/View Reports permissions turned on for Device Configuration profiles
- Global administrator

### Deploying Removable Storage Access Control by using Intune OMA-URI

Go to Microsoft Endpoint Manager admin center (<https://endpoint.microsoft.com/>) **> Devices > Create profile > Platform: Windows 10 and later, Profile type: Templates > Custom**

1. Enable or Disable Device control as follows:

   - Under **Custom > Configuration settings**, click **Add**.
   - In the **Add Row** pane, enter:
     - **Name** as **Enable Device Control**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControlEnabled`
     - **Data Type** as **Integer**
     - **Value** as **1**

       `Disable: 0`
       `Enable: 1`

     - Click **Save**.

   :::image type="content" source="images/enable-rsac.png" alt-text="Screenshot of enabling Removable Storage Access Control policy" lightbox="images/enable-rsac.png":::

2. Set Default Enforcement:

   You can set default access (Deny or Allow) for all Device Control features (RemovableMediaDevices, CdRomDevices, WpdDevices, PrinterDevices).

   For example, you have either Deny or Allow policy for RemovableMediaDevices, but you do not have any policy for CdRomDevices or WpdDevices. You set Default Deny through this policy, then Read/Write/Execute access to CdRomDevices or WpdDevices will be blocked. If you only want to manage storage, make sure create Allow policy for Printer, otherwise, this Default Enforcement will be applied to Printer as well.

   - In the **Add Row** pane, enter:
     - **Name** as **Default Deny**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DefaultEnforcement`
     - **Data Type** as **Integer**
     - **Value** as **1** or **2**

       `DefaultEnforcementAllow = 1`
       `DefaultEnforcementDeny = 2`

     - Click **Save**.

   :::image type="content" source="images/default-deny.png" alt-text="Screenshot of setting Default Enforcement as Deny" lightbox="images/default-deny.png":::

3. Audit Default Deny:

   You can create Audit policy for Default Deny as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Audit Default Deny**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bf3520ea7-fd1b-4237-8ebc-96911db44f8e%7d/RuleData`

       :::image type="content" source="images/audit-default-deny-1.png" alt-text="Screenshot of creating Audit Default Deny policy" lightbox="images/audit-default-deny-1.png":::

     - **Data Type** as **String (XML file)**
     - **Custom XML** as **Audit Default Deny.xml** file.

       XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Audit%20Default%20Deny.xml>

       Use the following XML data to create Audit policy for Default Deny:

       :::image type="content" source="images/audit-default-deny-xml-file-1.png" alt-text="Screenshot of audit default deny xml file":::

4. ReadOnly - Group:

   You can create removable storage group with ReadOnly access as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Any Removable Storage Group**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b9b28fae8-72f7-4267-a1a5-685f747a7146%7d/GroupData`

       :::image type="content" source="images/any-removable-storage-group.png" alt-text="Screenshot of creating any Removable Storage Group" lightbox="images/any-removable-storage-group.png":::

     - **Data Type** as **String (XML file)**
       - **Custom XML** as **Any Removable Storage and CD-DVD and WPD Group.xml** file

         XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Any%20Removable%20Storage%20and%20CD-DVD%20and%20WPD%20Group.xml>

         Use the following XML data to create 'Any Removable Storage and CD-DVD and WPD Group' with ReadOnly access:

         :::image type="content" source="images/read-only-group-xml-file.png" alt-text="Screenshot of read only group xml file":::

5. ReadOnly - Policy:

   You can create ReadOnly policy and apply to the ReadOnly removable storage group to allow read activity as follows:

   - In the **Add Row** pane, enter:
     - **Name** as **Allow Read Activity**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bf7e75634-7eec-4e67-bec5-5e7750cb9e02%7d/RuleData`

       :::image type="content" source="images/allow-read-activity.png" alt-text="Screenshot of Allow Read Activity policy" lightbox= "images/allow-read-activity.png":::

     - **Data Type** as **String (XML file)**
     - **Custom XML** as **Allow Read.xml**  file

       XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Allow%20Read.xml>

       Use the following XML data to create ReadOnly policy and apply to the ReadOnly removable storage group:

       :::image type="content" source="images/read-only-policy-xml-file.png" alt-text="Screenshot of read only policy xml file":::

6. Create Group for Allowed Medias: You can create allowed medias group as follows:
   - In the **Add Row** pane, enter:
     - **Name** as **Approved USBs Group**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/%7b65fa649a-a111-4912-9294-fb6337a25038%7d/GroupData`

       :::image type="content" source="images/create-group-allowed-medias.png" alt-text="Screenshot of creating Approved USBs group" lightbox="images/create-group-allowed-medias.png":::

     - **Data Type** as **String (XML file)**
     - **Custom XML** as **Approved USBs Group.xml** file

       XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Approved%20USBs%20Group.xml>

       Use the following XML data to create allowed medias group:

       :::image type="content" source="images/create-group-allowed-medias-xml-file.png" alt-text="Screenshot of creating group for allowed medias xml file":::

7. Create Policy to allow the approved USB Group: You can create policy to allow the approved USB group as follows:
   - In the **Add Row** pane, enter:
     - **Name** as **Allow access and Audit file information**
     - **OMA-URI** as `./Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/%7bb2061588-029e-427d-8404-6dfec096a571%7d/RuleData`

       :::image type="content" source="images/allow-access-audit-file-information-1.png" alt-text="Screenshot of Allow access and audit file information" lightbox= "images/allow-access-audit-file-information-1.png":::

     - **Data Type** as **String (XML file)**
     - **Custom XML** as **Allow full access and audit file.xml**  file

       XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Intune%20OMA-URI/Allow%20full%20access%20and%20audit%20file.xml>

       Use the following XML data to create policy to allow the approved USB group:

       :::image type="content" source="images/create-policy-allow-approved-usb-group-xml-intune.png" alt-text="Screenshot of creating policy to allow the approved USB Group XML file":::

       What does '47' mean in the policy? It's 9 + 2 + 36 = 47:

       - Read access: 1 + 8 = 9.
       - Write access: disk level 2.
       - Execute: 4 + 32 = 36.

## Deploying and managing policy by using Intune user interface

This capability is available in the Microsoft Endpoint Manager admin center (<https://endpoint.microsoft.com/>). Go to **Endpoint Security** > **Attack Surface Reduction** > **Create Policy**. Choose **Platform: Windows 10 and later** with **Profile: Device Control**.

## Deploying and managing Removable Storage Access Control by using Group Policy

The Removable Storage Access Control feature enables you to apply policy by using Group Policy to either user or device, or both.

### Licensing

Before you get started with Removable Storage Access Control, you must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control, you must have Microsoft 365 E3 or Microsoft 365 E5.

### Deploying Removable Storage Access Control by using Group Policy

1. Enable or Disable Removable Storage Access Control:

   You can enable Device control as follows:

   - Go to **Computer Configuration > Administrative Templates > Windows Components > Microsoft Defender Antivirus > Features > Device Control**
   - In the **Device Control** window, select **Enabled**.

   :::image type="content" source="images/enable-rsac-gp.png" alt-text="Screenshot of Enabling RSAC using Group Policy " lightbox="images/enable-rsac-gp.png":::

2. Set Default Enforcement:

   You can set default access (Deny or Allow) for all Device Control features (RemovableMediaDevices, CdRomDevices, WpdDevices, PrinterDevices).

   For example, you have either Deny or Allow policy for RemovableMediaDevices, but you do not have any policy for CdRomDevices or WpdDevices. You set Default Deny through this policy, then Read/Write/Execute access to CdRomDevices or WpdDevices will be blocked. If you only want to manage storage, make sure create Allow policy for Printer, otherwise, this Default Enforcement will be applied to Printer as well.

   - Go to **Computer Configuration > Administrative Templates > Windows Components > Microsoft Defender Antivirus > Features > Device Control > Select Device Control Default Enforcement**

   - In the **Select Device Control Default Enforcement** window, select **Default Deny**:

   :::image type="content" source="images/set-default-enforcement-deny-gp.png" alt-text="Screenshot of setting Default Enforcement = Deny using Group Policy" lightbox="images/set-default-enforcement-deny-gp.png":::

3. Audit Default Deny:

   Use the following XML data to create Audit policy for Default Deny:

   :::image type="content" source="images/audit-default-deny-gp.png" alt-text="Screenshot of audit default deny xml data":::

4. ReadOnly - Group:

   Use the following XML data to create removable storage group with ReadOnly access:

   :::image type="content" source="images/read-only-group-gp.png" alt-text="Screen shot of Read only removable storage group xml data":::

5. ReadOnly - Policy:

   Use the following XML data to create ReadOnly policy and apply to the ReadOnly removable storage group to allow read activity:

    :::image type="content" source="images/read-only-policy-gp.png" alt-text="Screen shot of Read only policy xml data" lightbox="images/read-only-policy-gp.png":::

6. Create Group for Allowed Medias:

   Use the following XML data to create removable storage allowed medias group:

   :::image type="content" source="images/create-group-allowed-medias-gp.png" alt-text="Screenshot of xml data for creating group for allowed medias" lightbox="images/create-group-allowed-medias-gp.png":::

7. Create Policy to allow the approved USB Group:

   Use the following XML data to create a policy to allow approved USB group:

   :::image type="content" source="images/create-policy-allow-approved-usb-group-xml.png" alt-text="Screenshot of XML data to create policy to allow the approved USB Group using Group Policy" lightbox="images/create-policy-allow-approved-usb-group-xml.png":::

   What does '47' mean in the policy? It's 9 + 2 + 36 = 47:

   - Read access: 1+8 = 9.
   - Write access: disk level 2.
   - Execute: 4 + 32 = 36.

8. Combine groups into one XML file:

   You can combine device control policy groups into one XML file as follows:

   - Go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Device Control** \> **Define device control policy groups**.

    :::image type="content" source="images/define-device-control-policy-grps-gp.png" alt-text="Screenshot of Define device control policy groups" lightbox="images/define-device-control-policy-grps-gp.png":::

   - In the **Define device control policy groups** window, enter the file path containing the XML groups data.

     XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Demo_Groups.xml>

     The following is the device control policy groups xml schema:

     :::image type="content" source="images/combine-grps-xml-file-gp.png" alt-text="Screenshot of combine groups into one XML file":::

9. Combine policies into one XML file:

   You can combine device control policy rules into one XML file as follows:

   - Go to **Computer Configuration > Administrative Templates > Windows Components > Microsoft Defender Antivirus > Device Control > Define device control policy rules**

     :::image type="content" source="images/define-device-cntrl-policy-rules-gp.png" alt-text="Screenshot of define device control policy rules" lightbox="images/define-device-cntrl-policy-rules-gp.png":::

   - In the **Define device control policy rules** window, select **Enabled**, and enter the file path containing the XML rules data.

     XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Demo_Policies.xml>

     The following is the device control policy rules xml schema:

    :::image type="content" source="images/combine-policies-xml-gp.png" alt-text="Screenshot of combine policies into one XML file":::

10. Set location for a copy of the file (evidence):

    If you want to have a copy of the file (evidence) when Write access happens, you have to set the location where system can save the copy.

    - Go to **Computer Configuration > Administrative Templates > Windows Components > Microsoft Defender Antivirus > Device Control > Define Device Control evidence data remote location**.

    - In the **Define Device Control evidence data remote location** window, select **Enabled** and enter the local or network share folder path.

      :::image type="content" source="images/evidence-data-remote-location-gp.png" alt-text="Screenshot of Define Device Control evidence data remote location" lightbox="images/evidence-data-remote-location-gp.png":::

## View Device Control Removable Storage Access Control data in Microsoft Defender for Endpoint

The [Microsoft 365 Defender portal](https://security.microsoft.com/advanced-hunting) shows events triggered by the Device Control Removable Storage Access Control. To access the Microsoft 365 security, you must have the following subscription:

- Microsoft 365 for E5 reporting

```kusto
//RemovableStoragePolicyTriggered: event triggered by Disk level enforcement
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

### How to generate GUID for Group Id/PolicyRule Id/Entry Id?

You can generate GUID through online open source, or through PowerShell - [How to generate GUID through PowerShell](/powershell/module/microsoft.powershell.utility/new-guid)

![image](https://user-images.githubusercontent.com/81826151/159046476-26ea0a21-8087-4f01-b8ae-5aa73b392d8f.png)

### What are the removable storage media and policy limitations?

Either from the Microsoft Endpoint Manager admin center (Intune) or through Microsoft Graph API, the backend call is done through OMA-URI (GET to read or PATCH to update) and therefore the limitation is the same as any OMA-URI custom configuration profile in Microsoft which is officially 350,000 characters for XML files.

For example, if you need two blocks of entries per user SID to "Allow"/"Audit allowed" specific users and two blocks of entries at the end to "Deny" all, you will be able to manage 2,276 users.

### Why does the policy not work?

1. The most common reason is there's no required [antimalware client version](/microsoft-365/security/defender-endpoint/device-control-removable-storage-access-control#prepare-your-endpoints).

2. Another reason could be that the XML file isn't correctly formatted, for example, not using the correct markdown formatting for the "&" character in the XML file, or the text editor might add a byte order mark (BOM) 0xEF 0xBB 0xBF at the beginning of the files, which causes the XML parsing not to work. One simple solution is to download the [sample file](https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples) (select **Raw** and then **Save as**) and then update.

3. If you are deploying and managing the policy by using Group Policy, please make sure to combine all PolicyRule into one XML file within a parent node called PolicyRules and all Group into one XML file within a parent node called Groups; if you manage through Intune, keep one PolicyRule one XML file, same thing, one Group one XML file.

If it still doesn't work, you may want to contact us and share support cab by running cmd with administrator: "%programfiles%\Windows Defender\MpCmdRun.exe" -GetFiles

### There is no configuration UX for 'Define device control policy groups' and 'Define device control policy rules' on my Group Policy

We don't backport the Group Policy configuration UX, but you can still get the related adml and admx files by clicking 'Raw' and 'Save as' at the [WindowsDefender.adml](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/WindowsDefender.adml) and [WindowsDefender.admx](https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/WindowsDefender.admx) files.

### How can I know whether the latest policy has been deployed to the target machine?

You can run "Get-MpComputerStatus' on PowerShell as an Administrator. The following value will show whether the latest policy has been applied to the target machine.

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
