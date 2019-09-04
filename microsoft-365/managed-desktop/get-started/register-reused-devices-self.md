---
title: Register existing devices in Microsoft Managed Desktop yourself
description: Register devices yourself so they can be managed by Microsoft Managed Desktop
ms.prod: w10
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
---

# Register existing devices in Microsoft Managed Desktop yourself

>[!NOTE]
>This topic describes the steps for you to re-use devices you already have and register them in Microsoft Managed Desktop. The process for Partners is documented in [Register devices in Microsoft Managed Desktop for Partners](register-devices-partner.md).

Microsoft Managed Desktop can work with brand-new devices or you can re-use devices you might already have (which will require that you re-image them). You can register devices by using Microsoft Managed Desktop on the Azure Portal or gain flexibility by using an API.

## Prepare to register brand-new devices


Once you have the new devices in hand, you'll follows these steps:

1. [Obtain the hardware hash for each device.](#obtain-the-hardware-hash)
2. [Merge the hash data](#merge-hash-data)
3. [Register the devices in Microsoft Managed Desktop](#register-devices).
4. [Double-check that the image is correct.](#check-the-image)
5. [Deliver the device](#deliver-the-device)

### Obtain the hardware hash

Microsoft Managed Desktop identifies each device uniquely by referencing its hardware hash. You have four options for getting this information from devices you're already using:

- Ask your OEM supplier for the AutoPilot registration file, which will include the hardware hashes.
- Create a custom report in Configuration Manager.
- Run a [Windows PowerShell script](#powershell-script-method) on each device and collect the results in a file.
- Start each device--but don't complete the Windows setup experience--and [collect the hashes on a removable flash drive](#flash-drive-method).

#### Configuration Manager

You can use System Center Configuration Manager to collect the hardware hashes from existing devices that you want to register with Microsoft Managed Desktop.

> [!IMPORTANT]
> Any devices you want to get this information for must be running Windows 10, version 1703 or later. You also need a device that is a Configuration Manager client connected to System Center Current Branch site. You also need the Reporting Point Site System role set up in your environment with SQL Server Reporting Services enabled. 

If you've met all these prerequisites, you're ready to collect the information by following these steps:

1. In the Configuration Manager console, select **Monitoring**. 
2. In the Monitoring workspace, expand **Reporting**, and then select **Reports**. 
3. On the **Home** tab, in the **Create** section, select **Create Report** to open the Create Report wizard. 
4. On the **Information** page, set these settings: 
    - **Type:** Select **SQL-based Report** to create a report in Report Builder by using a SQL statement. 
    - **Name:** Specify a name for the report. 
    - **Description:** Specify a description for the report. 
    - **Server:** Displays the name of the report server on which you are creating this report. 
    - **Path:** Select **Browse** to specify a folder in which you want to store the report. 
5. Select **Next**. 
6. On the **Summary** page, review the settings. Select **Previous** to change the settings or select **Next** to create the report in Configuration Manager. 
7. On the **Confirmation** page, select **Close** to exit the wizard and open **Report Builder** to enter the report settings. Enter your user account and password if you are prompted, and then select **OK.** If Report Builder is not installed on the device, you are prompted to install it. Select **Run to install Report Builder**, which is required to modify and create reports. 


**In Microsoft Report Builder**, provide the SQL statement for the report and follow these steps:

1. Select **Datasets**, and then right-click to **Add Dataset**.
2. Select the **Query** property, and then enter the name as *DataSet0*. 
3. Select **Use a dataset embedded in my report** 
4. Select Use a dataset embedded in my report 
 
Data source: Select the source in Report Server 
 
Choose **Query type as Text** and enter this query:

```

SELECT comp.manufacturer0      AS Manufacturer,  
       comp.model0             AS Model,  
       bios.serialnumber0      AS Serial_Number,  
       mdm.devicehardwaredata0 AS HardwareHash  
FROM   Fn_rbac_gs_computer_system(@UserSIDs) comp  
       INNER JOIN Fn_rbac_gs_pc_bios(@UserSIDs) bios  
               ON comp.resourceid = bios.resourceid  
       INNER JOIN Fn_rbac_gs_mdm_devdetail_ext01(@UserSIDs) mdm  
               ON comp.resourceid = mdm.resourceid


```
5. Navigate to the **Field** properties, select **Add**, and then select **Query Field**. Enter the **Field Name** and **Field Source**.
6. Repeat for each of these values: 
    - Manufacturer 
    - Model 
    - Serial_Number 
    - HardwareHash
7. 


#### PowerShell script method

1.	Open a PowerShell prompt with administrative rights.
2.	Run `Install-Script -Name Get-MMDRegistrationInfo`
3.	Run `powershell -ExecutionPolicy Unrestricted Get-MMDRegistrationInfo -OutputFile <path>\hardwarehash.csv`

#### Flash drive method

1. On a device other than the one you're registering, insert a USB drive.
2. Open a PowerShell prompt with administrative rights.
3. Run `Save-Script -Name Get-MMDRegistrationInfo -Path <pathToUsb>`
4. Turn on the device you are registering, but *do not start the setup experience*. If you accidentally start the setup experience, you'll have to reset or reimage the device.
5. Insert the USB drive, and then press SHIFT + F10.
6. Open a PowerShell prompt with administrative rights, and then run `cd <pathToUsb>`.
7. Run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted`
8. Run `.\Get-MMDRegistrationInfo -OutputFile <path>\hardwarehash.csv`
9. Remove the USB drive, and then shut down the device by running `shutdown -s -t 0`

>[!IMPORTANT]
>Do not power on the device you are registering again until you've completed registration for it. 


### Merge hash data

You'll need to have the data in the CSV files combined into a single file to complete registration. Here's a sample PowerShell script to make this easy:

`Get-ChildItem -Filter *.csv |Select-Object -expandproperty FullName | Import-Csv |ConvertTo-Csv -NoTypeInformation | %{$_.Replace('"','')}| Out-File -Append .\joinedcsv\aggregatedDevices.csv`

### Register devices

The CSV file must be in a particular format for registration. If you collected the data yourself in the previous steps, the file should already be in the right format; if you obtain the file from a supplier, you might need to adjust the format.

>[!NOTE]
>For your convenience, you can download a [template](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/managed-desktop/get-started/downloads/device-registration-sample-partner.xlsx) for this CSV file.

Your file needs to include the **exact same column headings** as the sample one (Manufacturer, Model, etc.), but your own data for the other rows. If you use the template, open it in a text editing tool such as Notepad, and consider leaving all the data in row 1 alone, only entering data in rows 2 and below. 
    
  ```
 Manufacturer,Model,Serial Number,Hardware Hash
  SpiralOrbit,ContosoABC,000000000000,dGhpc2RldmljZWlzYW5tbWRkZXZpY2U
  
  
  ```

>[!NOTE]
>If you forget to change any of the sample data, registration will fail.

#### Register devices by using the Azure Portal

From the Microsoft Managed Desktop [Azure Portal](https://aka.ms/mmdportal), select **Devices** in the left navigation pane. Select **+ Register devices**; the fly-in opens:

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
| Inactive | The device has been delivered to the end user and they have registered with your tenant. However, they have not used the device recently (in the last 7 days).  | 


### Check the image

If your device has come from a Microsoft Managed Desktop partner supplier, the image should be correct.

You’re also welcome to apply the image on your own if you prefer. To get started, contact the Microsoft representative you’re working with and they will provide you the location and steps for applying the image.

### Deliver the device

> [!IMPORTANT]
> Before you hand off the device to your user, make sure you have obtained and applied the appropriate licenses for that user.

If all the licenses are applied, your user can start up the device and proceed through the Windows setup experience. You might also want to provide them with a user guide {LINK}.
































-----------------------------------------

>[!NOTE]
>This format is for self-service registration only. The format Partners should use is documented in [Register devices in Microsoft Managed Desktop for Partners](register-devices-partner.md).

These values are used for display purposes, and don't need to match properties from the device exactly.
- Device manufacturer (example: SpiralOrbit) 
- Device model (example: ContosoABC)
- Device serial number

The hardware hash must be an exact match.
- Hardware hash

To obtain the hardware hash you can ask for help from your OEM or Partner, or follow these steps for each device:

1.	Open a PowerShell prompt with administrative rights.
2.	Run `Install-Script -Name Get-MMDRegistrationInfo`
3.	Run `powershell -ExecutionPolicy Unrestricted Get-MMDRegistrationInfo -OutputFile <path>\hardwarehash.csv`


Alternately, you can follow these steps on a brand-new device (before going through OOBE for the first time):

1. On a different device, insert a USB drive.
2. Open a PowerShell prompt with administrative rights.
3. Run `Save-Script -Name Get-MMDRegistrationInfo -Path <pathToUsb>`
4. Turn on the target device, but do not start the setup experience. If you accidentally start the setup experience, you'll have to reset or reimage the device.
5. Insert the USB drive, and then press SHIFT + F10.
6. Open a PowerShell prompt with administrative rights, and then run `cd <pathToUsb>`.
7. Run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted`
8. Run `.\Get-MMDRegistrationInfo -OutputFile <path>\hardwarehash.csv`
3. Remove the USB drive, and then shut down the device by running `shutdown -s -t 0`

>[!IMPORTANT]
>Do not power on the target device again until you've completed registration for it. 

>[!NOTE]
>For your convenience, you can download a [template](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/managed-desktop/get-started/downloads/device-registration-sample-partner.xlsx) for this CSV file.

Your file needs to include the **exact same column headings** as the sample one (Manufacturer, Model, etc.), but your own data for the other rows. If you use the template, open it in a text editing tool such as Notepad, and consider leaving all the data in row 1 alone, only entering data in rows 2 and below. 
    
  ```
 Manufacturer,Model,Serial Number,Hardware Hash
  SpiralOrbit,ContosoABC,000000000000,dGhpc2RldmljZWlzYW5tbWRkZXZpY2U
  
  
  ```

>[!NOTE]
>If you forget to change any of the sample data, registration will fail.   


## Register devices by using the Azure Portal

From the Microsoft Managed Desktop [Azure Portal](https://aka.ms/mmdportal), select **Devices** in the left navigation pane. Select **+ Register devices**; the fly-in opens:

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
| Inactive | The device has been delivered to the end user and they have registered with your tenant. However, they have not used the device recently (in the last 7 days).  | 


## Register devices by using an API

A REST API is available to allow you greater flexibility and repeatability with frequent separate device registrations. Currently, to use the API, ask for help from your Microsoft contact to join a preview of this capability.



## Troubleshooting

| Error message | Details |
|---------------|-------------|
| Device not found | We couldn’t register this device because we could not find a match for the provided manufacturer, model, or serial number. Confirm these values with your device supplier. |
| Hardware hash not valid | The hardware hash you provided for this device was not formatted correctly. Double-check the hardware hash and then resubmit. |
| Device already registered | This device is already registered to your organization. No further action required. |
| Device claimed by another organization | This device has already been claimed by another organization. Check with your device supplier. |
| Unexpected error | Your request could not be automatically processed. Contact Support and provide the Request ID: <requestId> |




