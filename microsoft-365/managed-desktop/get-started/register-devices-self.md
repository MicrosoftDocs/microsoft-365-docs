---
title: Register devices in Microsoft Managed Desktop yourself
description: Register devices yourself so they can be managed by Microsoft Managed Desktop
ms.prod: w10
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
---

# Register devices in Microsoft Managed Desktop

>[!NOTE]
>This topic describes the steps for you to register devices on your own. The process for Partners is documented in [Register devices in Microsoft Managed Desktop for Partners](get-started/register-devices-partner.md).

Microsoft Managed Desktop can work with brand-new devices or you can re-use devices you might already have (which will require that you re-image them). You can register devices by using the Managed Desktop Admin Center or gain flexibility by using an API.

## Prepare to register devices

If you haven't already obtained the devices you want to use, check [Microsoft Managed Desktop devices](device-list.md) and work with a devide partner to procure supported devices.

Whether you're working with completely new devices or re-using existing ones, to register them with Microsoft Managed Desktop, you'll need to prepare a **comma-delimited (CSV) file**. This file should include the following information for each device:

>[!NOTE]
>This format is for self-service registration only. The format Partners should use is documented in [Register devices in Microsoft Managed Desktop for Partners](get-started/register-devices-partner.md).

These values are used for display purposes, and don't need to match properties from the device exactly.
- Device manufacturer (example: Microsoft) 
- Device model (example: Surface Laptop)
- Device serial number

The hardware hash must be an exact match.
- Hardware hash

To obtain the hardware hash you can ask for help from your OEM or Partner, or follow these steps for each device:

1.	Open a PowerShell prompt with administrative rights.
2.	Run `Install-Script -Name Get-WindowsAutoPilotInfo`
3.	Run `powershell -ExecutionPolicy Unrestricted Get-WindowsAutopilotInfo -OutputFile <path>\hardwarehash.csv`


Alternately, you can follow these steps on a brand-new device (before going through OOBE for the first time):

1. On a different device, insert a USB drive.
2. Open a PowerShell prompt with administrative rights.
3. Run `Save-Script -Name Get-WindowsAutoPilotInfo -Path <pathToUsb>`
4. Turn on the target device, but do not start the setup experience. If you accidentally start the setup experience, you'll have to reset or reimage the device.
5. Insert the USB drive, and then press SHIFT + F10.
6. Open a PowerShell prompt with administrative rights, and then run `cd <pathToUsb>`.
7. Run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted`
8. Run `.\Get-WindowsAutoPilotInfo -OutputFile <path>\hardwarehash.csv`
3. Remove the USB drive, and then shut down the device by running `shutdown -s -t 0`

>[!IMPORTANT]
>Do not power on the target device again until you've completed registration for it. 

>[!NOTE]
>For your convenience, you can download a [template](https://github.com/MicrosoftDocs/microsoft-365-docs-pr/raw/live/Microsoft-365-docs/downloads/device-registration-sample-self.xlsx) for this CSV file.

Your file needs to include the **exact same column headings** as the sample one (Manufacturer, Model, etc.), but your own data for the other rows. If you use the template, open it in a text editing tool such as Notepad, and consider leaving all the data in row 1 alone, only entering data in rows 2 and below. 
    
  ```
 Manufacturer,Model,Serial Number,Hardware Hash
  SpiralOrbit,ContosoABC,000000000000,dGhpc2RldmljZWlzYW5tbWRkZXZpY2U
  
  
  ```

>[!NOTE]
>If you forget to change any of the sample data, your registration will be rejected.   


## Register devices by using the Admin Center

From the Microsoft Managed Desktop [Admin Portal](https://aka.ms/mmdportal), select **Devices** in the left navigation pane. Select **+ Register devices**; the fly-in opens:

[![Fly-in after selecting Register devices](images/register-devices-flyin-sterile.png)](images/register-devices-flyin-sterile.png)


[//]: # (Sadly this isn't true. We can remove this note - but leaving it now until we have a chance to chat about it.)

<!--Registering any existing devices with Managed Desktop will completely re-image them; make sure you've backed up any important data prior to starting the registration process.-->


Follow these steps:

1. In **File upload**, provide a path to the CSV file you created previously.
2. Optionally, you can add an **Order ID** or **Purchase ID** for your own tracking purposes. There are no format requirements for these values.
3. Select **Register devices**. The system will add the devices to your list of devices on the **Devices blade**, marked as **Registration Pending**. Registration typically takes less than 10 minutes, and when successful the device will show as **Ready for user** meaning it's ready and waiting for an end-user to start using.


You can monitor the progress of device registration on the main **Microsoft Managed Desktop - Devices** page. Possible states reported there include:

| State | Description |
|---------------|-------------|
| Registration pending | Registration is not done yet. Check back later. |
| Registration failed | Registration could not be completed. Refer to [Troubleshooting](register-devices-self.md#troubleshooting) for more information. |
| Ready for user | Registration succeeded and the device is now ready to be delivered to the end user. Microsoft Managed Desktop will guide them through first time set-up, so there’s no need for you to do any further preparations. |
| Active | The device has been delivered to the end user and they have registered with your tenant. This also indicates that they are regularly using the device. |
| Inactive | The device has been delivered to the end user and they have registered with your tenant. However, they have not used the device recently.  | {WHAT'S "RECENTLY"? AS ADMIN CAN i CHANGE WHAT "RECENTLY" MEANS?}


## Register devices by using an API

A REST API is available to allow you greater flexibility and repeatability with frequent separate device registrations. Currently, to use the API, ask for help from your Microsoft contact to join a preview of this capability.



## Troubleshooting

| Error message | Details |
|---------------|-------------|
| Device not found | We couldn’t register this device because we could not find a match for the provided manufacturer, model, or serial number. Confirm these values with your device supplier. |
| Device not found | We couldn’t de-register this device because it does not exist in your organization. No further action required. |
| Hardware hash not valid | The hardware hash you provided for this device was not formatted correctly. Double-check the hardware hash and then resubmit. |
| Device already registered | This device is already registered to your organization. No further action required. |
| Device claimed by another organization | This device has already been claimed by another organization. Check with your device supplier. |
| Unexpected error | Your request could not be automatically processed. Contact Support (<support link>) and provide the Request ID: <requestId> |




