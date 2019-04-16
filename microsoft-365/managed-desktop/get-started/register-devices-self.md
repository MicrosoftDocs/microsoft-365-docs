---
title: Register devices in Microsoft Managed Desktop yourself
description: Register devices yourself so they can be managed by Microsoft Managed Desktop
ms.prod: w10
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
---

# Register devices in Microsoft Managed Desktop

[//]: # (This draft version topic focuses on the self-service option--how different is the partner thing?)
>Note: This article describes the steps for you to register devices on your own. The process for Partners is documented [Somewhere else LINK].

Managed Desktop can work with brand-new devices or you re-use devices you might already have (which will re-image them). You can register devices by using the Managed Desktop Admin Center or save time and gain flexibility by using an API.

## Prepare to register devices

If you haven't already obtained the devices you want to use, see [Order devices](get-started/devices.md) for options to get some. In either case, you should check {device list LINK} to ensure that they meet the appropriate system requirements.

Whether you're working with completely new devices or re-using existing ones, to register them with Microsoft Managed Desktop, you'll need to prepare a **comma-delimited (CSV) file**. This file should include the following information for each device:

>Note: This format is for self-service only. Partners have a different format documented [Somewhere else LINK].

These values are used for display purposes, and don't need to match properties from the device exactly.
- Device manufacturer (example: Microsoft) 
- Device model (example: Surface Laptop)
- Device serial number

The Hardware hash must be an exact match.
- Hardware hash

To obtain the hardware hash you can ask for help from your OEM or Partner, or follow these steps for each device:

1. Open a PowerShell prompt with administrative rights.
2. Run `Install-Script -Name Get-WindowsAutoPilotInfo`
3. Run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted`
4. Run `.\Get-WindowsAutoPilotInfo -OutputFile <path>\hardwarehash.csv`

Alternately, you can follow these steps on a brand-new device (before going through OOBE for the first time):

1. On a different device, insert a USB drive.
2. Open a PowerShell prompt with administrative rights.
3. Run `Save-Script -Name Get-WindowsAutoPilotInfo -Path <pathToUsb>`
4. Turn on the target device, but do not start the setup experience. If you accidentally start the setup experience, you'll have to reset or reimage the device.
5. Insert the USB drive, and then press SHIFT + F10.
6. Open a PowerShell prompt with administrative rights, and then run `cd <pathToUsb>`.
7. Run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted`
8. Run `.\Get-WindowsAutoPilotInfo -OutputFile <path>\hardwarehash.csv`
3. Remove the USB drive, and then shut down the device running `shutdown -s -t 0`

>[!IMPORTANT]
>Do not power on the target device again until you've completed registration for it. 

>[!NOTE]
>For your convenience, you can download a template for this CSV file from {deeplink into product}.

Your file needs to include the **exact same column headings** as the sample one (Manufacturer, Model, etc.), but your own data for the other rows. If you use the template, open it in a text editing tool such as Notepad, and consider leaving all the data in row 1 alone, only entering data in rows 2 and below. 
    
  ```
 Manufacturer,Model,Serial Number,Hardware Hash
  Microsoft Corporation,Surface Laptop,016520771357,eidkaofjeioaofjfoieoajfoiejofiaoiojeifjojew
  
  
  ```
<<<<<<< HEAD

>[!NOTE]
>If you don't change any of the sample data, the registration fail.   
=======
>Failure to change any the sample data will result in your registration being rejected.   
>>>>>>> ac435e1063912e6ceeb5b367be5873975670b969


## Register devices by by using the Admin Center

From the Microsoft Managed Desktop Admin Portal [aka.ms/mmdportal LINK], select **Devices** in the left navigation pane. Select **+ Register devices**; the fly-in opens:

{screenshot to reassure user they're in the right place}


[//]: # (Sadly this isn't true. We can remove this note - but leaving it now until we have a chance to chat about it.)

<!--Registering any existing devices with Managed Desktop will completely re-image them; make sure you've backed up any important data prior to starting the registration process.-->


Follow these steps:

1. In **File upload**, provide a path to the CSV file you created previously.
2. Optionally, you can add an **Order ID** or **Purchase ID** for your own tracking purposes. There are no format requirements for these values.
<<<<<<< HEAD
3. Select **Register devices**. The system will add the devices to your list of devices on the **Devices blade**, marked as **Registration Pending**. Registration typically takes less than 10 minutes, and when successful the device will show as **Setup needed** meaning it's ready and waiting for an end-user to start using.
=======
3. Select **Register devices**.
4. The system will add the devices to your list of devices on the **Devices blade**, marked as **Registration Pending**.
5. Registration typically takes less than 10 minutes, and when successful the device will show as **Setup needed** meaning it's ready and waiting for an end-user to start using.
>>>>>>> ac435e1063912e6ceeb5b367be5873975670b969


You can monitor the progress of device registration on the main **Microsoft Managed Desktop - Devices** page. Possible states reported there include:

| Error message | Details |
|---------------|-------------|
| Device not found | We couldn’t register this device because we could not find a match for the provided manufacturer, model, or serial number. Confirm these values with your device supplier. |
| Device not found | We couldn’t de-register this device because it does not exist in your organization. No further action required. |
| Hardware hash not valid | The hardware hash you provided for this device was not formatted correctly. Double-check the hardware hash and then resubmit. |
| Device already registered | This device is already registered to your organization. No further action required. |
| Device claimed by another organization | This device has already been claimed by another organization. Check with your device supplier. |
| Unexpected error | Your request could not be automatically processed. Contact Support (<support link>) and provide the Request ID: <requestId> |


## Register devices by using an API

<<<<<<< HEAD
A REST API is available to allow you greate flexibility and repeatability with frequent separate device registrations. Currently, to use the API, ask for help from your Microsoft contact to join a preview of this capability.
=======
{what it's good for - more for repeatability/flexibility rather than # of devices} - This is a great way of phrasing it. It helps if you have to complete many separate registrations, but if you just do one big batch of 10,000, the UI is just as good. It's really meant for automation and Partners than for Customers. 

{what language or framework or whatever is it?} - It's a REST API, and we have a C# sample app to help them get started. 

{where to obtain} - We decided to self-publish as an Alpha release. This should read something like "ask for help from your microsoft contract to get added to the preview.". 
>>>>>>> ac435e1063912e6ceeb5b367be5873975670b969



## Troubleshooting

[//]: # (Do we have anything to go here currently?)



