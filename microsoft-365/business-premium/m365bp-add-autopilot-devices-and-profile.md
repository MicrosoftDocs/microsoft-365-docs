---
title: "Use this step-by-step guide to add Autopilot devices and profile"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: o365-administration
ms.collection: 
ms.localizationpriority: high
ms.date: 08/18/2022
ms.custom:
- MiniMaven
- OKR_SMB_M365
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to use Windows Autopilot to set up new Windows 10 devices for your business so they're ready for employee use."
---

# Use this step-by-step guide to add Autopilot devices and profile

You can use Windows Autopilot to set up **new** Windows 10 devices for your business so they're ready for use when you give them to your employees.
  
## Device requirements

Devices must meet these requirements:
  
- Windows 10, version 1703 or later

- New devices that haven't been through Windows out-of-box experience

## Use the setup guide to add devices and profiles

If you haven't created device groups or profiles yet, the best way to get started is by using the step-by-step guide. You can also [add Autopilot devices](m365bp-create-and-edit-Autopilot-devices.md) and [assign profiles](../admin/devices/create-and-edit-Autopilot-profiles.md) to them without using the guide.
  
1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=837890" target="_blank">https://admin.microsoft.com</a>.

2. On the left navigation pane, choose **Devices** \> **Autopilot**.

    :::image type="content" source="../media/Autopilot.png" alt-text="In the Microsoft 365 admin center, choose devices and then Autopilot.":::
  
3. On the **Autopilot** page, click or tap **Start guide**.

    :::image type="content" source="./media/settings-catalog/settings-picker-authentication.png" alt-text="Click Start guide for step-by-step instructions for Autopilot":::
  
4. On the **Upload .csv file with list of devices** page, browse to a location where you have the prepared .CSV file, then **Open** \> **Next**. The file must have three headers:

    - Column A: Device Serial Number
    - Column B: Windows Product ID
    - Column C: Hardware Hash

You can get this information from your hardware vendor, or you can use the [Get-WindowsAutopilotInfo PowerShell script](https://www.powershellgallery.com/packages/Get-WindowsAutopilotInfo) to generate a CSV file.

For more information, see [Device list CSV-file](../admin/misc/device-list.md). You can also download a sample file on the **Upload .csv file with list of devices** page.

> [!NOTE]
> This script uses WMI to retrieve properties needed for a customer to register a device with Windows Autopilot. Note that it is normal for the resulting CSV file to not collect a Windows Product ID (PKID) value since this is not required to register a device and PKID being NULL in the output CSV is totally fine. Only the serial number and hardware hash will be populated.

5. On the **Assign a profile** page, you can either pick an existing profile or create a new one. If you don't have one yet, you'll be prompted to create one.

    A profile is a collection of settings that can be applied to a single device or to a group of devices.

    The default features are required and are set automatically. The default features are:

    - Skip Cortana, OneDrive, and OEM registration.

    - Create sign-in experience with your company brand.

    - Connect your devices to Azure Active Directory accounts, and automatically enroll them to be managed by Microsoft 365 Business Premium.

    For more information, see [About Autopilot Profile settings](m365bp-Autopilot-profile-settings.md).

6. The other settings are **Skip privacy settings** and **Don't allow user to become the local admin**. These are both set to **Off** by default.

    Choose **Next**.

7. **You're done** indicates that the profile you created (or chose) will be applied to the device group you created by uploading the list of devices. The settings will be in effect when the device users sign in next. Choose **Close**.

## Related content

[About Autopilot Profile settings](../business-premium/m365bp-Autopilot-profile-settings.md) (article)\
[Options for protecting your devices and app data](../admin/basic-mobility-security/choose-between-basic-mobility-and-security-and-intune.md) (article)\
[Best practices for securing Microsoft 365 for business plans](../admin/security-and-compliance/secure-your-business-data.md)
