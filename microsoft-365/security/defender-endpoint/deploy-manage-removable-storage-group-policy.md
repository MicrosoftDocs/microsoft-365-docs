---
title: Deploy and manage Removable Storage Access Control using group policy
description: Use group policy to deploy and manage removable storage access control.
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
ms.date: 08/25/2022
ms.reviewer: tewchen
---

# Deploy and manage Removable Storage Access Control using group policy

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> The Group Policy management and Intune OMA-URI/Custom Policy management of this product are now generally available (4.18.2106): See [Tech Community blog: Protect your removable storage and printer with Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/protect-your-removable-storage-and-printers-with-microsoft/ba-p/2324806).

The Removable Storage Access Control feature enables you to apply a policy by using group policy to either user or device, or both.

## Device Control Removable Storage Access Control policies

You can use the following properties to create a removable storage group:

> [!NOTE]
> Comments using XML comment notation `<!-- COMMENT -->` can be used in the Rule and Group XML files, but they must be inside the first XML tag, not the first line of the XML file.

### Removable storage group

|Property Name|Description|Options|
|---|---|---|
|**GroupId**|GUID, a unique ID, represents the group and will be used in the policy.||
|**DescriptorIdList**|List the device properties you want to use to cover in the group. All properties are case sensitive. |**PrimaryId**: The Primary ID includes `RemovableMediaDevices`, `CdRomDevices`, `WpdDevices`, `PrinterDevices`. <p>**InstancePathId**: InstancePathId is a string that uniquely identifies the device in the system, for example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611&0`. It is the `Device instance path` in the Device Manager. The number at the end (for example &0) represents the available slot and may change from device to device. For best results, use a wildcard at the end. For example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611*`. <p>**DeviceId**: To transform `Device instance path` to Device ID format, see [Standard USB Identifiers](/windows-hardware/drivers/install/standard-usb-identifiers), for example, `USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07` <p>**HardwareId**: A string that identifies the device in the system, for example, `USBSTOR\DiskGeneric_Flash_Disk___8.07`, It is `Hardware Ids` in the Device Manager. <br>**Note**: Hardware Id is not unique; different devices might share the same value.<p>**FriendlyNameId**: It is a string attached to the device, for example, `Generic Flash Disk USB Device`. It is the `Friendly name` in the Device Manager. <p>**BusId**: For example, USB, SCSI <p>**SerialNumberId**: You can find SerialNumberId from `Device instance path` in the Device Manager, for example, `03003324080520232521` is SerialNumberId in USBSTOR\DISK&VEN__USB&PROD__SANDISK_3.2GEN1&REV_1.00\\`03003324080520232521`&0 <p>**VID_PID**: Vendor ID is the four-digit vendor code that the USB committee assigns to the vendor. Product ID is the four-digit product code that the vendor assigns to the device. It supports wildcard. To transform `Device instance path` to Vendor ID and Product ID format, see [Standard USB Identifiers](/windows-hardware/drivers/install/standard-usb-identifiers). For example: <br>`0751_55E0`: match this exact VID/PID pair<br>`_55E0`: match any media with PID=55E0 <br>`0751_`: match any media with VID=0751 <p> **Note**: See [How do I find the media property in the Device Manager?](device-control-removable-storage-access-control-faq.md#how-do-i-find-the-media-property-in-the-device-manager) to understand how to find the property in Device Manager.|
|**MatchType**|When there are multiple device properties being used in the `DescriptorIDList`, MatchType defines the relationship.|**MatchAll**: Any attributes under the `DescriptorIdList` will be **And** relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, system will check to see whether the USB meets both values. <p> **MatchAny**: The attributes under the DescriptorIdList will be **Or** relationship; for example, if administrator puts `DeviceID` and `InstancePathID`, for every connected USB, system will do the enforcement as long as the USB has either an identical **DeviceID** or **InstanceID** value.|

### Access Control policy

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

## Licensing requirements

Before you get started with Removable Storage Access Control, you must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=2). To access and use Removable Storage Access Control, you must have Microsoft 365 E3 or Microsoft 365 E5.

## Deploy Removable Storage Access Control by using group policy

1. Enable or Disable Removable Storage Access Control:

   You can enable Device control as follows:

   - Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Features** > **Device Control**
   - In the **Device Control** window, select **Enabled**.

   :::image type="content" source="images/enable-rsac-gp.png" alt-text="Screenshot of Enabling RSAC using Group Policy " lightbox="images/enable-rsac-gp.png":::

> [!NOTE]
> If you don't see this group policy objects, you need to add group policy administrative template. you can download administrative template (WindowsDefender.adml and WindowsDefender.admx) from https://github.com/microsoft/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples.

2. Set Default Enforcement:

   You can set default access (Deny or Allow) for all Device Control features (RemovableMediaDevices, CdRomDevices, WpdDevices, PrinterDevices).

   For example, you can have either a Deny or an Allow policy for RemovableMediaDevices, but not for CdRomDevices or WpdDevices. You set Default Deny through this policy, then Read/Write/Execute access to CdRomDevices or WpdDevices will be blocked. If you only want to manage storage, make sure to create Allow policy for Printer, otherwise, this Default Enforcement will be applied to Printer as well.

   - Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Features** > **Device Control** > **Select Device Control Default Enforcement**

   - In the **Select Device Control Default Enforcement** pane, select **Default Deny**:

   :::image type="content" source="images/set-default-enforcement-deny-gp.png" alt-text="Screenshot of setting Default Enforcement = Deny using Group Policy" lightbox="images/set-default-enforcement-deny-gp.png":::

3. Audit Default Deny:

   Use the following XML data to create Audit policy for Default Deny:

   :::image type="content" source="images/audit-default-deny-gp.png" alt-text="Screenshot of audit default deny xml data":::

4. ReadOnly - Group:

   Use the following XML data to create removable storage group with ReadOnly access:

   :::image type="content" source="images/read-only-group-gp.png" alt-text="Screen shot of Read only removable storage group xml data":::

5. ReadOnly - Policy:

   Use the following XML data to create ReadOnly policy and apply to the ReadOnly removable storage group to allow read activity:

    :::image type="content" source="images/read-only-policy-gp.png" alt-text="Screenshot of Read only policy xml data." lightbox="images/read-only-policy-gp.png":::

6. Create a group for allowed Media:

   Use the following XML data to create removable storage allowed media group:

   :::image type="content" source="images/create-group-allowed-medias-gp.png" alt-text="Screenshot of xml data for creating group for allowed medias" lightbox="images/create-group-allowed-medias-gp.png":::

7. Create a policy to allow the approved USB Group:

   Use the following XML data to create a policy to allow the approved USB group:

   :::image type="content" source="images/create-policy-allow-approved-usb-group-xml.png" alt-text="Screenshot of XML data to create policy to allow the approved USB Group using Group Policy" lightbox="images/create-policy-allow-approved-usb-group-xml.png":::

   What does '47' mean in the policy? It's 9 + 2 + 36 = 47:

   - Read access: 1+8 = 9.
   - Write access: disk level 2.
   - Execute: 4 + 32 = 36.

8. Combine groups into one XML file:

   You can combine device control policy groups into one XML file as follows:

   - Go to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Device Control** \> **Define device control policy groups**.

    :::image type="content" source="images/define-device-control-policy-grps-gp.png" alt-text="Screenshot of Define device control policy groups" lightbox="images/define-device-control-policy-grps-gp.png":::

   - In the **Define device control policy groups** window, specify the file path containing the XML groups data.

     XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Demo_Groups.xml>

     The following is the device control policy groups xml schema:

     :::image type="content" source="images/combine-grps-xml-file-gp.png" alt-text="Screenshot of combine groups into one XML file":::

9. Combine policies into one XML file:

   You can combine device control policy rules into one XML file as follows:

   - Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Device Control** > **Define device control policy rules**.

     :::image type="content" source="images/define-device-cntrl-policy-rules-gp.png" alt-text="Screenshot of define device control policy rules" lightbox="images/define-device-cntrl-policy-rules-gp.png":::

   - In the **Define device control policy rules** window, select **Enabled**, and enter the file path containing the XML rules data.

     XML file path: <https://github.com/microsoft/mdatp-devicecontrol/blob/main/Removable%20Storage%20Access%20Control%20Samples/Group%20Policy/Demo_Policies.xml>

     The following is the device control policy rules xml schema:

    :::image type="content" source="images/combine-policies-xml-gp.png" alt-text="Screenshot of combine policies into one XML file":::

10. Set location for a copy of the file (evidence):

    If you want to have a copy of the file (evidence) when Write access happens, specify the location where system can save the copy.

    - Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Device Control** > **Define Device Control evidence data remote location**.

    - In the **Define Device Control evidence data remote location** pane, select **Enabled**, and then specify the local or network share folder path.

      :::image type="content" source="images/evidence-data-remote-location-gp.png" alt-text="Screenshot of Define Device Control evidence data remote location." lightbox="images/evidence-data-remote-location-gp.png":::