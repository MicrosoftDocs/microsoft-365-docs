---
title: View device control events and information in Microsoft Defender for Endpoint
description: Monitor your organization's data security through device control reports.
ms.service: defender-endpoint
ms.localizationpriority: medium
ms.date: 12/14/2023
ms.author: deniseb
author: denisebmsft
ms.reviewer: dansimp
ms.topic: conceptual
manager: dansimp
ms.reviewer: joshbregman
audience: ITPro
ms.subservice: asr
ms.collection: 
- m365-security
- tier2
- mde-asr
search.appverid: met150
---

# View device control events and information in Microsoft Defender for Endpoint

Microsoft Defender for Endpoint device control protects against data loss by monitoring and controlling media used by peripheral devices (like removable storage or printers) in your organization. You can view device control events events that are triggered by either Device Control Removable Storage Access Control or Printer Protection policies by using advanced hunting or the device control report.

To access the [Microsoft Defender portal](https://security.microsoft.com/advanced-hunting), your subscription must include Microsoft 365 for E5 reporting.

Select each tab to learn more about advanced hunting and the device control report.

## [**Advanced hunting**](#tab/advhunt)

## Advanced hunting

**Applies to:** 

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

When a device control policy is triggered, an event is visible with advanced hunting, regardless of whether it was initiated by the system or by the user who signed in. This section includes some example queries you can use in advanced hunting.

### Example 1: Removable storage policy triggered by disk and file system level enforcement

When a RemovableStoragePolicyTriggered action occurs, event information about the disk and file system level enforcement is available. 

```kusto

//RemovableStoragePolicyTriggered: event triggered by Disk and file system level enforcement for both Printer and Removable storage based on your policy
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

### Example 2: Removable storage file event

When a RemovableStorageFileEvent action occurs, information about the evidence file is available for both printer protection and removable storage. Here's an example query you can use with advanced hunting:

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

## [**Device control report**](#tab/report)

## Device control report

**Applies to:** 
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](/microsoft-365/security/defender-business)

With the device control report, you can view events that relate to media usage. Such events include:

- **Audit events:** Shows the number of audit events that occur when external media is connected.
- **Policy events:** Shows the number of policy events that occur when a device control policy is triggered.

> [!NOTE]
> The audit event to track media usage is enabled by default for devices onboarded to Microsoft Defender for Endpoint.

### Understanding the audit events

The audit events include:

- **USB drive mount and unmount:** Audit events that are generated when a USB drive is mounted or unmounted.
- **PnP:** Plug and Play audit events are generated when removable storage, a printer, or Bluetooth media is connected.
- **Removable storage access control:** Events are generated when a removable storage access control policy is triggered. It can be Audit, Block, or Allow.

### Monitor device control security

Device control in Defender for Endpoint empowers security administrators with tools that enable them to track their organization's device control security through reports. You can find the device control report in the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). Go to **Reports** > **Endpoints**. Find **Device control** card, and select the link to open the report. 

In the **Reports** dashboard, the **Device protection** card shows the number of audit events generated by media type, over the last 180 days. Under **View details**, raw events over the last 30 days are listed.

The **View details** button shows more media usage data in the **Device control report** page.

The page provides a dashboard with aggregated number of events per type and a list of events and shows 500 events per page, but if you're an administrator (such as a global administrator or security administrator), you can scroll down to see more events and can filter on time range, media class name, and device ID.

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/Detaileddevicecontrolreport.png" alt-text="The Device Control Report Details page in the Microsoft Defender portal" lightbox="images/Detaileddevicecontrolreport.png":::

When you select an event, a flyout appears that shows you more information:

- **General details:** Date, Action mode, the policy, and Access of this event.
- **Media information:** Media information includes Media name, Class name, Class GUID, Device ID, Vendor ID, Serial number, and Bus type.
- **Location details:** Device name, User, and MDATP device ID.

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/devicecontrolreportfilter.png" alt-text="The Filter On Device Control Report page" lightbox="images/devicecontrolreportfilter.png":::

To see real-time activity for this media across the organization, select the **Open Advanced hunting** button. This includes an embedded, predefined query.

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/Devicecontrolreportquery.png" alt-text="The Query On Device Control Report page" lightbox="images/Devicecontrolreportquery.png":::

To see the security of the device, select the **Open device page** button on the flyout. This button opens the device entity page.

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/Devicesecuritypage.png" alt-text="The Device Entity Page" lightbox="images/Devicesecuritypage.png":::

### Reporting delays

There might be a delay of up to six hours from the time a media connection occurs to the time the event is reflected in the card or in the domain list.

> [!NOTE]
> When you export data, such as a list of events, from the device control report to Excel, up to 500 events are exported. However, if your organization is using Microsoft Sentinel, you can integrate Defender for Endpoint with Sentinel so that all incidents and alerts are streamed. For more information, see [Connect data from Microsoft Defender XDR to Microsoft Sentinel](/azure/sentinel/connect-microsoft-365-defender).
> 
---

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
