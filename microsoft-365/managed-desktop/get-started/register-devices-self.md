---
title: Register new devices yourself
description: Register devices yourself so they can be managed by Microsoft Managed Desktop
ms.service: m365-md
author: jaimeo
f1.keywords:
- NOCSH
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
manager: laurawi
ms.topic: article
audience: Admin
---

# Register new devices yourself

Microsoft Managed Desktop can work with brand-new devices or you can reuse devices you might already have (which will require that you reimage them). You can register devices with Microsoft Managed Desktop in the Microsoft Endpoint Manager portal.

> [!NOTE]
> Working with a partner to obtain devices? If so, you don't need to worry about getting the hardware hashes; they'll take care of that for you. Make sure your partner establishes a relationship with you at the [Partner Center](https://partner.microsoft.com/dashboard). Your partner can learn more at [Partner Center help](/partner-center/request-a-relationship-with-a-customer). Once this relationship established, your partner will simply register devices on your behalf – no further action required from you. If you want to see the details, or your partner has questions, see [Steps for Partners to register devices](register-devices-partner.md). Once the devices are registered, you can proceed with [checking the image](#check-the-image) and [delivering the devices](#deliver-the-device) to your users.



## Prepare to register brand-new devices


Once you have the new devices in hand, you'll follow these steps:

1. [Obtain the hardware hash for each device.](#obtain-the-hardware-hash)
2. [Merge the hash data](#merge-hash-data)
3. [Register the devices in Microsoft Managed Desktop](#register-devices-by-using-the-admin-portal).
4. [Double-check that the image is correct.](#check-the-image)
5. [Deliver the device](#deliver-the-device)

### Obtain the hardware hash

Microsoft Managed Desktop identifies each device uniquely by referencing its hardware hash. You have three options for getting this information:

- Ask your OEM supplier for the AutoPilot registration file, which will include the hardware hashes.
- Run a [Windows PowerShell script](#powershell-script-method) on each device and collect the results in a file.
- Start each device--but don't complete the Windows setup experience--and [collect the hashes on a removable flash drive](#flash-drive-method).

#### PowerShell script method

You can use the [Get-WindowsAutoPilotInfo.ps1](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo) PowerShell script on the PowerShell Gallery website. For more information about device identification and hardware hash, see [Adding devices to Windows Autopilot](/mem/autopilot/add-devices#device-identification).

1.	Open a PowerShell prompt with administrative rights.
2.	Run `Install-Script -Name Get-WindowsAutoPilotInfo`
3.	Run `powershell -ExecutionPolicy Unrestricted Get-WindowsAutoPilotInfo -OutputFile <path>\hardwarehash.csv`
4.  Run `powershell -ExecutionPolicy restricted` to prevent subsequent unrestricted scripts from running.


#### Flash drive method

1. On a device other than the one you're registering, insert a USB drive.
2. Open a PowerShell prompt with administrative rights.
3. Run `Save-Script -Name Get-WindowsAutoPilotInfo -Path <pathToUsb>`
4. Turn on the device you are registering, but *do not start the setup experience*. If you accidentally start the setup experience, you'll have to reset or reimage the device.
5. Insert the USB drive, and then press SHIFT + F10.
6. Open a PowerShell prompt with administrative rights, and then run `cd <pathToUsb>`.
7. Run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted`
8. Run `.\Get-WindowsAutoPilotInfo -OutputFile <path>\hardwarehash.csv`
9. Remove the USB drive, and then shut down the device by running `shutdown -s -t 0`

>[!IMPORTANT]
>Do not power on the device you are registering again until you've completed registration for it. 


### Merge hash data

You'll need to have the data in the CSV files combined into a single file to complete registration. Here's a sample PowerShell script to make it easy:

`Import-CSV -Path (Get-ChildItem -Filter *.csv) | ConvertTo-Csv -NoTypeInformation | % {$_.Replace('"', '')} | Out-File .\aggregatedDevices.csv`


### Register devices by using the Admin Portal

In [Microsoft Endpoint Manager](https://endpoint.microsoft.com/), select **Devices** in the left navigation pane. Look for the Microsoft Managed Desktop section of the menu and select **Devices**. In the Microsoft Managed Desktop Devices workspace, Select **+ Register devices**, which opens a fly-in to register new devices.

<!-- [![Fly-in after selecting Register devices, listing devices with columns for assigned users, serial number, status, last-seen date, and age](../../media/new-registration-ui.png)](../../media/new-registration-ui.png) -->


<!--Registering any existing devices with Managed Desktop will completely re-image them; make sure you've backed up any important data prior to starting the registration process.-->


Follow these steps:

1. In **File upload**, provide a path to the CSV file you created previously.
2. Select a [device profile](../service-description/profiles.md) in the drop-down menu.
3. Select **Register devices**. The system will add the devices to your list of devices on **Devices**, marked as **Registration Pending**. Registration typically takes less than 10 minutes, and when successful the device will show as **Ready for user** meaning it's ready and waiting for a user to start using.

> [!NOTE]
> If you manually change the Azure Active Directory (AAD) group membership of a device, it will be automatically reassigned to the group for its device profile and removed from any conflicting groups.

You can monitor the progress of device registration on the main page. Possible states reported there include:

| State | Description |
|---------------|-------------|
| Registration Pending | Registration is not done yet. Check back later. |
| Registration failed | Registration could not be completed. Refer to [Troubleshooting device registration](#troubleshooting-device-registration) for more information. |
| Ready for user | Registration succeeded and the device is now ready to be delivered to the user. Microsoft Managed Desktop will guide them through first-time set-up, so there’s no need for you to do any further preparations. |
| Active | The device has been delivered to the user and they have registered with your tenant. This state also indicates that they are regularly using the device. |
| Inactive | The device has been delivered to the user and they have registered with your tenant. However, they have not used the device recently (in the last 7 days).  | 

#### Troubleshooting device registration

| Error message | Details |
|---------------|-------------|
| Device not found | We couldn’t register this device because we could not find a match for the provided manufacturer, model, or serial number. Confirm these values with your device supplier. |
| Hardware hash not valid | The hardware hash you provided for this device was not formatted correctly. Double-check the hardware hash and then resubmit. |
| Device already registered | This device is already registered to your organization. No further action required. |
| Device claimed by another organization | This device has already been claimed by another organization. Check with your device supplier. |
| Unexpected error | Your request could not be automatically processed. Contact Support and provide the Request ID: <requestId> |

### Check the image

If your device has come from a Microsoft Managed Desktop partner supplier, the image should be correct.

You’re also welcome to apply the image on your own if you prefer. To get started, contact the Microsoft representative you’re working with and they will provide you the location and steps for applying the image.

### Autopilot group tag

When you use the Admin portal to register devices, we automatically assign the **Microsoft365Managed_Autopilot** Autopilot Group Tag.
The service monitors all Microsoft Managed Desktop devices daily and assigns the group tag to any that don't already have it.

### Deliver the device

> [!IMPORTANT]
> Before you hand off the device to your user, make sure you have obtained and applied the [appropriate licenses](../get-ready/prerequisites.md) for that user.

If all the licenses are applied, you can [get your users ready to use devices](get-started-devices.md), and then your user can start up the device and proceed through the Windows setup experience.
