---
title: Get started with device control in Microsoft Defender for Endpoint            
description: Get an overview of device control, including removable storage access control and device installation policies in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/05/2024
ms.topic: overview
ms.service: defender-endpoint
ms.subservice: asr
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-asr
ms.reviewer: joshbregman
search.appverid: MET150
f1.keywords: NOCSH 
audience: ITPro
---

# Get started with device control in Microsoft Defender for Endpoint

By default, [device control](device-control-overview.md) is disabled and there are no restrictions on which devices can be added. The auditing of basic device control events is enabled for devices that are onboarded to Defender for Endpoint. This activity can be seen in the [device control report](device-control-report.md). Filtering on the built-in **PnP Audit Policy** shows devices that are connected to the endpoints in the environment, as shown in the following screenshot:

:::image type="content" source="media/device-control-report-filterpnp.png" alt-text="Screenshot of device control report with PnP filter applied." lightbox="media/device-control-report-filterpnp.png":::

Device control in Defender for Endpoint identifies a device based on its properties. The device properties are visible by selecting an entry in the report. The following image depicts device properties:

:::image type="content" source="media/device-control-deviceproperties.png" alt-text="Screenshot showing device properties.":::

The **Device ID**, **Vendor ID** (VID), **Serial number**, and **Bus type** can all be used to identify a device (see *LINK NEEDED* List of device properties for the complete list). The data is also available in [advanced hunting](../defender/advanced-hunting-overview.md), by searching for the `Plug and Play Device Connected action` (`PnPDeviceConnected`), as shown in the following example query:

```kusto

DeviceEvents
| where ActionType == "PnpDeviceConnected"
| extend parsed=parse_json(AdditionalFields)
| extend MediaClass = tostring(parsed.ClassName)
| extend MediaDeviceId = tostring(parsed.DeviceId)
| extend MediaDescription = tostring(parsed.DeviceDescription)
| extend MediaSerialNumber = tostring(parsed.SerialNumber)
| project Timestamp, DeviceId, DeviceName, AccountName, AccountDomain, MediaClass, MediaDeviceId, MediaDescription, MediaSerialNumber, parsed
| order by Timestamp desc

```

The previous example query could return results like the following screenshot:

:::image type="content" source="media/device-control-ahqueryresults.png" alt-text="Screenshot showing results from advanced hunting query for device control." lightbox="media/device-control-ahqueryresults.png":::

The status of device control (enabled/disabled, default enforcement, and last policy update) is available on a device via [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus), as shown in the following screenshot:

:::image type="content" source="media/device-control-status.png" alt-text="Screenshot showing device control status." lightbox="media/device-control-status.png":::

To get started, change the device control state to *enabled* on a test device.  Make sure the policy has been applied by checking [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus), as shown in the following screenshot:

:::image type="content" source="media/device-control-statusenabled.png" alt-text="Screenshot showing device control is enabled on a device.":::

In the test device, insert a USB drive. There are no restrictions; all types of access (read, write, execute, and print) are allowed. A record is created to show that a USB device was connected. You can use the following example advanced hunting query to see it:

```kusto

DeviceEvents
| where ActionType == "PnpDeviceConnected"
| extend parsed=parse_json(AdditionalFields)
| extend MediaClass = tostring(parsed.ClassName)
| extend MediaDeviceId = tostring(parsed.DeviceId)
| extend MediaDescription = tostring(parsed.DeviceDescription)
| extend MediaSerialNumber = tostring(parsed.SerialNumber)
| where MediaClass == "USB"
| project Timestamp, DeviceId, DeviceName, AccountName, AccountDomain, MediaClass, MediaDeviceId, MediaDescription, MediaSerialNumber, parsed
| order by Timestamp desc

```

This example query filters the events by `MediaClass`. The default behavior can be changed to deny all devices, or to exclude families of devices from device control. Change the default behavior to deny, and then set device control only to apply to removable storage.

For Intune, use a custom profile to set the device control settings, as shown in the following screenshot:

:::image type="content" source="media/device-control-intuneentries.png" alt-text="Screenshot showing Intune settings for device control." lightbox="media/device-control-intuneentries.png":::

The previous screenshot lists these settings for Intune:

-	Set `./Vendor/MSFT/Defender/Configuration/DeviceControlEnabled` to `1`
-	Set `./Vendor/MSFT/Defender/Configuration/DefaultEnforcement` to `2` 
-	Set `./Vendor/MSFT/Defender/Configuration/SecuredDevicesConfiguration` to `RemovableMediaDevices`

Deploy your policy to the test device. Using [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus), the default enforcement should now be Deny, as shown in the following screenshot:

:::image type="content" source="media/device-control-status-defaultdeny.png" alt-text="Screenshot showing device control is set to DefaultDeny.":::

Remove, and reinsert the USB device in the test machine.  Try to open the drive.  The drive isn't accessible.  A message appears that “Access is Denied”.


MORE TO COME

## Next steps

- [Learn about device control policies and entries](device-control-policies-entries.md)
- [Learn how to deploy RSAC policies](defender-endpoint\device-control-mde-deploy.md)
- [View device control reports](device-control-report.md)