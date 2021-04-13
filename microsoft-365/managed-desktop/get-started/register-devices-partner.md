---
title: Steps for Partners to register devices
description: How Partners can register devices so they can be managed by Microsoft Managed Desktop
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

# Steps for Partners to register devices


This article describes the steps for Partners to follow to register devices. The process for registering devices yourself is documented in [Register devices in Microsoft Managed Desktop yourself](register-devices-self.md).



## Prepare for registration 
Before completing registration for a customer, you must first establish a relationship with them at the [Partner Center](https://partner.microsoft.com/dashboard). See the [consent documentation](/windows/deployment/windows-autopilot/registration-auth#csp-authorization) for more details on that process. Any CSP partner can add devices on behalf of any customer, as long as the customer consents. You can also learn more about partner relationships and Autopilot permissions at [Partner Center help](/partner-center/customers_revoke_admin_privileges#windows-autopilot).


> [!NOTE]
> This documentation is only for Partners and OEMs. The process for self-registration is documented in [Register devices in Microsoft Managed Desktop yourself](register-devices-self.md).


## Register devices by using Partner Center

Once you have established the relationship with your customers, you can use Partner Center to add devices to Autopilot for any of the customers that you have a relationship with by following these steps:

1. Navigate to [Partner Center](https://partner.microsoft.com/dashboard)
2. Select **Customers** from the Partner Center menu and then select the customer whose devices you want to manage.
3. On the customer's detail page, select **Devices**.
4. Under **Apply profiles** to devices, select **Add devices**.
5. Enter the appropriate Group Tag for the device profile you've selected (as shown in the following table) and then select **Browse** to upload the customer's list (in .csv file format) to Partner Center.

|[Device profile](../service-description/profiles.md)  |Group Tag  |
|---------|---------|
|Sensitive data     |**Microsoft365Managed\_SensitiveData**    |
|Power user     | **Microsoft365Managed\_PowerUser**          |
|Standard     | **Microsoft365Managed\_Standard**        |

> [!IMPORTANT]
> The Group Name must match those listed in the table exactly, including capitalization and special characters. This will allow the newly registered devices to be assigned with the Microsoft Managed Desktop Autopilot profile.

>[!NOTE]
> You should have received this .csv file with your device purchase. If you didn't receive a .csv file, you can create one yourself by following the steps in [Adding devices to Windows Autopilot](/windows/deployment/windows-autopilot/add-devices#collecting-the-hardware-id-from-existing-devices-using-powershell). The Windows PowerShell script is different from the one used for the [Microsoft Managed Desktop Admin portal](./register-devices-self.md#obtain-the-hardware-hash). Partners should use [Get-WindowsAutoPilotInfo](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo) to register devices for Microsoft Managed Desktop devices in Partner Center.

If you get an error message while trying to upload the .csv file, check the format of the file. Make sure the column order matches what is described in [Use Windows Autopilot profiles on new devices to customize a customer's out-of-box experience](/partner-center/autopilot#add-devices-to-a-customers-account). You can also use the sample .csv file provided from the link next to **Add devices** to create a device list. 

For more information about Autopilot in Partner scenarios, see [Add devices to a customer’s account](/partner-center/autopilot#add-devices-to-a-customers-account).


## Register devices by using the OEM API

Before completing registration for a customer, you must first establish a relationship with them. You should have a unique link to provide to your respective customers. See [How to establish OEM relationship](/windows/deployment/windows-autopilot/registration-auth#oem-authorization).

Once you've established the relationship, you can start registering devices for customers using the appropriate Group Tag for each device profile they've selected:


|Device profile  |Group Tag  |
|---------|---------|
|Sensitive data     | **Microsoft365Managed\_SensitiveData**     |
|Power user     | **Microsoft365Managed\_PowerUser**          |
|Standard     | **Microsoft365Managed\_Standard**      |

> [!IMPORTANT]
> The Group Tags must match those listed in the table exactly, including capitalization and special characters. This will allow the newly registered devices to be assigned with the Microsoft Managed Desktop Autopilot profile.