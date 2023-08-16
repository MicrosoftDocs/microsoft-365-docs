---
title: Microsoft Defender for Endpoint Device Control Printer Protection
description: Microsoft Defender for Endpoint Device Control Printer Protection blocks people from printing via non-corporate printers or non-approved USB printer.
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.date: 07/11/2023
ms.author: dansimp
author: dansimp
ms.reviewer: dansimp
manager: dansimp
audience: ITPro
ms.subservice: mde
ms.topic: conceptual
ms.collection: 
- m365-security
- tier3
ms.custom: admindeeplinkDEFENDER
search.appverid: met150
---

# Device Control Printer Protection

**Applies to**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> If you want to manage printers, see [Microsoft Defender for Endpoint Device Control Printer Protection](printer-protection-overview.md).

Microsoft Defender for Endpoint Device Control Printer Protection blocks people from printing via non-corporate printers or non-approved USB printer.

## Licensing

Before you get started with Printer Protection, you should [confirm your Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1). To access and use Printer Protection, you must have the following:

- Microsoft 365 E3 for functionality/policy deployment
- Microsoft 365 E5 for reporting

## Permission

For Policy deployment in Intune, to deploy policy via OMA-URI, the account must have permissions to create, edit, update, or delete device configuration profiles. You can create custom roles or use any of the built-in roles with these permissions:

- Policy and profile Manager role.
- Or custom role with Create/Edit/Update/Read/Delete/View Reports permissions turned on for Device Configuration profiles
- Or Global admin

To see device configuration reports, the account must have view reports permissions. You can create custom roles or use the built-in roles with these permissions:

- Global security admin
- Security admin
- Security Reader

## Prepare your endpoints

Make sure that the Windows 10 or Windows 11 devices that you plan on deploying Printer Protection to meet these requirements.

1. The following Windows Updates are installed.
    - For Windows 1809: install Windows Update [KB5003217](https://support.microsoft.com/topic/may-20-2021-kb5003217-os-build-17763-1971-preview-08687c95-0740-421b-a205-54aa2c716b46)
    - For Windows 1909: install Windows Update [KB5003212](https://support.microsoft.com/topic/may-20-2021-kb5003212-os-build-18363-1593-preview-05381524-8380-4b30-b783-e330cad3d4a1)
    - For Windows 2004 or later

2. If you're planning to deploy policy via Group Policy, the device must be onboarded to Microsoft Defender for Endpoint joined; if you're planning to deploy policy via Microsoft Intune, the device must be joined by using Microsoft Intune.

## Deploy Device Control Printer Protection policy

You can deploy the policy via Group Policy or Intune.

|Title|Description|CSP Support | GPO Support | User-based Support | Machine-based Support |
|---|---|:---:|:---:|:---:|:---:|
|**Enable Device control Printing Restrictions**|Block people from printing via non-corporate printer|Yes|Yes|Yes|Yes|
|**List of Approved USB-connected print devices**\*|Allow specific USB printer|Yes|Yes|Yes|Yes|

\* This policy must be used together with **Enable Device control Printing Restrictions**.

## Deploy policy via Intune

For Intune, currently Device Control Printer Protection supports OMA-URI only.

### Scenario 1: Block people from printing via any non-corporate printer using Intune

- Apply policy over machine:

  `./Vendor/MSFT/Policy/Config/Printers/EnableDeviceControl`

- Apply policy over user:

  `./Vendor/MSFT/Policy/Config/Printers/EnableDeviceControlUser`

The CSP support string with `<enabled/>`:

:::image type="content" source="../../media/customeditrow.png" alt-text="The Custom page" lightbox="../../media/customeditrow.png":::

### Scenario 2: Allow specific approved USB printers using Intune

- Apply policy over machine:

  `./Vendor/MSFT/Policy/Config/Printers/ApprovedUsbPrintDevices`

- Apply policy over user:

  `./Vendor/MSFT/Policy/Config/Printers/ApprovedUsbPrintDevicesUser`

The CSP support string with approved USB printers via 'ApprovedUsbPrintDevices' property. Example: `<enabled/><data id="ApprovedUsbPrintDevices_List" value="03F0/0853,0351/0872"/>`:

:::image type="content" source="../../media/editrow.png" alt-text="The Edit Row pane" lightbox="../../media/editrow.png":::

## Deploy policy via Group Policy

If the device isn't Intune joined, you can also deploy the policy via Group Policy.

### Scenario 1: Block people from printing via any non-corporate printer using Group Policy

- Apply policy over machine:

  Computer Configuration \> Administrative Templates \> Printer: Enable Device control Printing Restrictions

- Apply policy over user:

  User Configuration \> Administrative Templates \> Control Panel \> Printers: Enable Device control Printing Restrictions

:::image type="content" source="../../media/enable-device-ctrl-printing-restrictions.png" alt-text="The Enable Device Control Printing Restrictions pane" lightbox="../../media/enable-device-ctrl-printing-restrictions.png":::

### Scenario 2: Allow specific approved USB printers using Group Policy

- Apply policy over machine:

  Computer Configuration \> Administrative Templates \> Printer:  List of Approved USB-connected print devices

- Apply policy over user:

  User Configuration \> Administrative Templates \> Control Panel \> Printers: List of Approved USB-connected print devices

:::image type="content" source="../../media/list-of-approved-connected-print-devices.png" alt-text="The list of approved USB-connected print devices" lightbox="../../media/list-of-approved-connected-print-devices.png":::

## View Device Control Printer Protection data in Microsoft Defender for Endpoint portal

The <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> shows printing blocked by the Device Control Printer Protection policy above.

```kusto
DeviceEvents
| where ActionType == 'PrintJobBlocked'
| extend parsed=parse_json(AdditionalFields)
| extend PrintedFile=tostring(parsed.JobOrDocumentName)
| extend PrintPortName=tostring(parsed.PortName)
| extend PrinterName=tostring(parsed.PrinterName)
| extend Policy=tostring(parsed.RestrictionReason) 
| project Timestamp, DeviceId, DeviceName, ActionType, InitiatingProcessAccountName, Policy, PrintedFile, PrinterName, PrintPortName, AdditionalFields
| order by Timestamp desc
```

 :::image type="content" source="../../media/device-control-advanced-hunting.png" alt-text="advanced hunting" lightbox="../../media/device-control-advanced-hunting.png":::

 You can use the PnP event to find the USB printer used in the organization:

```kusto
//find the USB Printer VID/PID
DeviceEvents
| where ActionType == "PnpDeviceConnected"
| extend parsed=parse_json(AdditionalFields)
| extend DeviceDescription = tostring(parsed.DeviceDescription) 
| extend PrinterDeviceId = tostring(parsed.DeviceId) 
| extend VID_PID_Array = split(split(PrinterDeviceId, "\\")[1], "&")
| extend VID_PID = replace_string(strcat(VID_PID_Array[0], '/', VID_PID_Array[1]), 'VID_', '')
| extend VID_PID = replace_string(VID_PID, 'PID_', '')
| extend ClassId = tostring(parsed.ClassId) 
| extend VendorIds = tostring(parsed.VendorIds) 
| where DeviceDescription == 'USB Printing Support'
| project Timestamp , DeviceId, DeviceName, ActionType, DeviceDescription, VID_PID, ClassId, PrinterDeviceId, VendorIds, parsed
| order by Timestamp desc
```

 :::image type="content" source="https://user-images.githubusercontent.com/81826151/128954383-71df3009-77ef-40db-b575-79c73fda332b.png" alt-text="The Advanced Hunting page" lightbox="https://user-images.githubusercontent.com/81826151/128954383-71df3009-77ef-40db-b575-79c73fda332b.png":::
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
