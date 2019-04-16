---
title: Register devices in Microsoft Managed Desktop for Partners
description: How Partners can register devices so they can be managed by Microsoft Managed Desktop 
ms.prod: w10
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
---

# Register devices in Microsoft Managed Desktop for partners


This article describes the steps for Partners to follow to register devices in Microsoft Managed Desktop. To register devices yourself, see the steps in [Register devices in Microsoft Managed Desktop yourself](register-devices-self.md).


## Preparing for Registration 

Before completing registration for a customer, you must first establish a relationship with them on Partner Center [Partner Center LINK].

To complete registration for your customer, you must create a CSV file.

>[!NOTE]
>This format is for Partners only. Users registering devices themselves use different format documented in [Register devices in Microsoft Managed Desktop yourself](register-devices-self.md)


>[!IMPORTANT]
>These values must match the manufacturer values from SMBIOS exactly:

- Device manufacturer (example: Microsoft) 
- Device model (example: Surface Laptop)
- Device serial number
- {they don't need hardware hash?}

## Register devices by by using the Admin Center

Registering by using the Admin Center is the same as for self-service, except getting to the portal is slightly different. For Partners to access the portal, follow these steps:

1. Navigate to [Partner Center]{LINK?}.
2. Select **Customers**.
3. Select the customer you want to manage.
4. Select **Service Administration**.
5. Select *Intune**.
6. Search for "mmd" in the top search box of the Azure portal.
7. Select **Devices** and it's the same from here.
8. In **File upload**, provide a path to the CSV file you created previously.
9. Optionally, you can add an **Order ID** or **Purchase ID** for your own tracking purposes. There are no format requirements for these values.
10. Select **Register devices**. The system will add the devices to your list of devices on the **Devices blade**, marked as **Registration Pending**. Registration typically takes less than 10 minutes, and when successful the device will appear as **Setup needed** meaning it's ready and waiting for an end-user to start using.


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
Registering by API is the same as self-service, except that the Hardware Hash property of the Device collection is optional as described in the CSV section. 