---
title: Microsoft Defender for Endpoint Device Control Printer Protection
description: Microsoft Defender for Endpoint Device Control Printer Protection blocks people from printing via non-corporate printers or non-approved USB printer.
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.author: v-lsaldanha
author: lovina-saldanha
ms.reviewer: dansimp
manager: dansimp
audience: ITPro
ms.technology: mde
---

# Device Control Printer Protection 

Microsoft Defender for Endpoint Device Control Printer Protection blocks people from printing via non-corporate printers or non-approved USB printer.

## Licensing 

Before you get started with Printer Protection, you should [confirm your Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1). To access and use Printer Protection, you must have the following:

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

Make sure that the Windows 10 devices that you plan on deploying Printer Protection to meet these requirements.

1. Join the Insider Program. 
1. The following Windows Updates are installed. 

    - For Windows 1809: install Windows Update [KB5003217](https://support.microsoft.com/en-us/topic/may-20-2021-kb5003217-os-build-17763-1971-preview-08687c95-0740-421b-a205-54aa2c716b46) 
    - For Windows 1909: install Windows Update [KB5003212](https://support.microsoft.com/en-us/topic/may-20-2021-kb5003212-os-build-18363-1593-preview-05381524-8380-4b30-b783-e330cad3d4a1)
    - For Windows 2004 or later 
    
1. If you're planning to deploy policy via Group Policy, the device must be MDATP joined; if you're planning to deploy policy via MEM, the device must be Intune joined.

## Deploy Device Control Printer Protection policy

You can deploy the policy via Group Policy or Intune.

|||||||
|:--|:--|:--|:--|:--|:--|
|**Title**|**Description**|**CSP Support**|**GPO Support**|**User-based Support**|**Machine-based Support**|
|**Enable Device control Printing Restrictions**|Block people from printing via non-corporate printer|Yes|Yes|Yes|Yes|
|**List of Approved USB-connected print devices** *|Allow specific USB printer|Yes|Yes|Yes|Yes|
|||||||

*This policy must be used together with **Enable Device control Printing Restrictions**
## Deploy policy via Intune 

For Intune, currently Device Control Printer Protection supports OMA-URI only.

**Scenario 1: Block people from printing via any non-corporate printer** 

 - Apply policy over machine: 

    - ./Vendor/MSFT/Policy/Config/Printers/EnableDeviceControl 

- Apply policy over user: 

    - ./Vendor/MSFT/Policy/Config/Printers/EnableDeviceControlUser 

The CSP support string with `` <enabled/>``: 

:::image type="content" source="images/customeditrow.PNG" alt-text="custom edit row":::

**Scenario 2: Allow specific approved USB printers**

- Apply policy over machine: 

    - ./Vendor/MSFT/Policy/Config/Printers/ApprovedUsbPrintDevices 

- Apply policy over user: 

    - ./Vendor/MSFT/Policy/Config/Printers/ApprovedUsbPrintDevicesUser  

The CSP support string with approved USB printers via ‘ApprovedUsbPrintDevices’ property, example `` <enabled/><data id="ApprovedUsbPrintDevices_List" value="03F0/0853,0351/0872"/>``: 

:::image type="content" source="images/editrow.PNG" alt-text="edit row":::

## Deploy policy via Group Policy 

If the device isn't Intune joined, you can also deploy the policy via Group Policy. 

**Scenario 1: Block people from printing via any non-corporate printer** 

- Apply policy over machine: 

    - Computer Configuration > Administrative Templates > Printer: Enable Device control Printing Restrictions 

- Apply policy over user: 

    - User Configuration > Administrative Templates > Control Panel > Printers: Enable Device control Printing Restrictions 

:::image type="content" source="images/enable-device-ctrl-printing-restrictions.PNG" alt-text="enable device printing restrictions":::
 

**Scenario 2: Allow specific approved USB printers**

- Apply policy over machine: 

    - Computer Configuration > Administrative Templates > Printer:  List of Approved USB-connected print devices 

- Apply policy over user:  

    - User Configuration > Administrative Templates > Control Panel > Printers: List of Approved USB-connected print devices 
 
 :::image type="content" source="images/list-of-approved-connected-print-devices.PNG" alt-text="list of approved usb connected print devices":::

## View Device Control Printer Protection data in Microsoft Defender for Endpoint portal 

The [Microsoft 365 security center](https://security.microsoft.com) shows printing blocked by the Device Control Printer Protection policy above.
 
```sql
DeviceEvents 

|where ActionType == 'PrintJobBlocked' 

| extend parsed=parse_json(AdditionalFields) 

| extend PrintedFile=tostring(parsed.JobOrDocumentName) 

| extend PrintPortName=tostring(parsed.PortName) 

| extend PrinterName=tostring(parsed.PrinterName) 

| extend Policy=tostring(parsed.RestrictionReason)  

| project Timestamp, DeviceId, DeviceName, ActionType, InitiatingProcessAccountName,Policy, PrintedFile, PrinterName, PrintPortName, AdditionalFields 

| order by Timestamp desc 
```

 :::image type="content" source="images/advanced-hunting.PNG" alt-text="advanced hunting":::
