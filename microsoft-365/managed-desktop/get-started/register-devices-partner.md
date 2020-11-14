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
Before completing registration for a customer, you must first establish a relationship with them at the [Partner Center](https://partner.microsoft.com/dashboard). See the [consent documentation](https://docs.microsoft.com/windows/deployment/windows-autopilot/registration-auth#csp-authorization) for more details on that process. Any CSP partner can add devices on behalf of any customer, as long as the customer consents. You can also learn more about partner relationships and Autopilot permissions at [Partner Center help](https://docs.microsoft.com/partner-center/customers_revoke_admin_privileges#windows-autopilot).


> [!NOTE]
> This documentation is only for Partners and OEMs. The process for self-registration is documented in [Register devices in Microsoft Managed Desktop yourself](register-devices-self.md).


## Register devices by using Partner Center

Once you have established the relationship with your customers, you can leverage Partner Center to add devices to Autopilot for any of the customers that you have a relationship with by following these steps:

1. Navigate to [Partner Center](https://partner.microsoft.com/dashboard)
2. Select **Customers** from the Partner Center menu and then select the customer whose devices you want to manage.
3. On the customer's detail page, select **Devices**.
4. Under **Apply profiles** to devices, select **Add devices**.
5. Enter **Microsoft365Managed_Autopilot** for the Group Name and then select **Browse** to upload the customer's list (in .csv file format) to Partner Center.


> [!IMPORTANT]
> The Group Name must match **Microsoft365Managed_Autopilot** exactly, including capitalization and special characters. This will allow the newly registered devices to be assigned with the Microsoft Managed Desktop Autopilot profile.

>[!NOTE]
> You should have received this .csv file with your device purchase. If you didn't receive a .csv file, you can create one yourself by following the steps in [Adding devices to Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-autopilot/add-devices#collecting-the-hardware-id-from-existing-devices-using-powershell). The Windows PowerShell script is different from the one used for the [Microsoft Managed Desktop Admin portal](https://docs.microsoft.com/microsoft-365/managed-desktop/get-started/register-devices-self?view=o365-worldwide#obtain-the-hardware-hash). Partners should use [Get-WindowsAutoPilotInfo](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo) to register devices for Microsoft Managed Desktop devices in Partner Center.

If you get an error message while trying to upload the .csv file, check the format of the file. Make sure the column order matches what is described in [Use Windows Autopilot profiles on new devices to customize a customer's out-of-box experience](https://docs.microsoft.com/partner-center/autopilot#add-devices-to-a-customers-account). You can also use the sample .csv file provided from the link next to **Add devices** to create a device list. 

For more information about Autopilot in Partner scenarios, see [Add devices to a customer’s account](https://docs.microsoft.com/partner-center/autopilot#add-devices-to-a-customers-account).


## Register devices by using the OEM API

Before completing registration for a customer, you must first establish a relationship with them. You should have a unique link to provide to your respective customers. See [How to establish OEM relationship](https://docs.microsoft.com/windows/deployment/windows-autopilot/registration-auth#oem-authorization).

Once you've established the relationship, you can start registering devices for customers using the Group Tag **Microsoft365Managed_Autopilot**.

> [!IMPORTANT]
> The group name must match **Microsoft365Managed_Autopilot** exactly, including capitalization and special characters. This will allow the newly registered devices to be assigned with the Microsoft Managed Desktop Autopilot profile.
