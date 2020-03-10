---
title: Steps for Partners to register devices
description: How Partners can register devices so they can be managed by Microsoft Managed Desktop
ms.prod: w10
author: jaimeo
f1.keywords:
- NOCSH
ms.author: jaimeo
ms.localizationpriority: medium
---

# Steps for Partners to register devices


This topic describes the steps for Partners to follow to register devices. The process for registering devices yourself is documented in [Register devices in Microsoft Managed Desktop yourself](register-devices-self.md).



## Prepare for registration 
Before completing registration for a customer, you must first establish a relationship with them at the [Partner Center](https://partner.microsoft.com/dashboard). Be sure to select **Include delegated administration privileges for Azure Active Directory and Office 365**. Learn more at [Partner Center help](https://docs.microsoft.com/partner-center/request-a-relationship-with-a-customer).

To complete registration for your customer, first create a CSV file.

>[!NOTE]
>For your convenience, you can download a [sample CSV file](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/managed-desktop/get-started/downloads/device-registration-sample-partner.csv) for this *Partner version*.

Your file needs to include the **exact same column headings** as the sample one (Manufacturer, Model, etc.), but your own data for the other rows. If you use the template, open it in a text editing tool such as Notepad, and consider leaving all the data in row 1 alone, only entering data in rows 2 and below. 
    
  ```
 Manufacturer,Model,Serial Number
  SpiralOrbit,ContosoABC,000000000000
  
  
  ```




>[!NOTE]
>This format is only for the Partner process. The process for self-registration is documented in [Register devices in Microsoft Managed Desktop yourself](register-devices-self.md).

>[!IMPORTANT]
>These values must match the manufacturer values from SMBIOS exactly, including capitalization and special characters. 

- Device manufacturer (example: SpiralOrbit) 
- Device model (example: ContosoABC)
- Device serial number

## Register devices by using the Azure Portal

Registering by using the Azure Portal is the same as for self-service, except you access the portal differently. Follow these steps:

1. Navigate to [Partner Center](https://partner.microsoft.com/dashboard)
2. Select **Customers**.
3. Select the customer you want to manage.
4. Select **Service Administration**.
5. Select **Intune**.
6. Search for "mmd" in the top search box of the Azure portal.
7. Select **Devices**.
8. In **File upload**, provide a path to the CSV file you created previously.
9. Optionally, you can add an **Order ID** or **Purchase ID** for your own tracking purposes. There are no format requirements for these values.
10. Select **Register devices**. The system will add the devices to your list of devices on the **Devices blade**, marked as **Registration Pending**. Registration typically takes less than 10 minutes, and when successful the device will show as **Ready for user** meaning it's ready and waiting for an end-user to start using.


You can monitor the progress of device registration on the main **Microsoft Managed Desktop - Devices** page. Possible states reported there include:

| State | Description |
|---------------|-------------|
| Registration pending | Registration is not done yet. Check back later. |
| Registration failed | Registration could not be completed. Refer to [Troubleshooting device registration](register-devices-self.md#troubleshooting-device-registration) for more information. |
| Ready for user | Registration succeeded and the device is now ready to be delivered to the end user. Microsoft Managed Desktop will guide them through first time set-up, so there’s no need for you to do any further preparations. |
| Active | The device has been delivered to the end user and they have registered with your tenant. This also indicates that they are regularly using the device. |
| Inactive | The device has been delivered to the end user and they have registered with your tenant. However, they have not used the device recently (in the last 7 days).  |



## Troubleshooting

| Error message | Details |
|---------------|-------------|
| Device not found | We couldn’t register this device because we could not find a match for the provided manufacturer, model, or serial number. Confirm these values with your device supplier. |
| Hardware hash not valid | The hardware hash you provided for this device was not formatted correctly. Double-check the hardware hash and then resubmit. |
| Device already registered | This device is already registered to your organization. No further action required. |
| Device claimed by another organization | This device has already been claimed by another organization. Check with your device supplier. |
| Unexpected error | Your request could not be automatically processed. Contact Support (<support link>) and provide the Request ID: <requestId> |
