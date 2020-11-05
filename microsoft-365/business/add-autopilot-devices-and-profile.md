---
title: "Use the step-by-step guide to add Autopilot devices and profile"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.collection: 
- M365-subscription-management 
- M365-identity-device-management
localization_priority: Normal
ms.custom:
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- OKR_SMB_M365
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: be5b6d90-3344-4c5e-bf40-5733eb845beb
description: "Learn how to use Windows AutoPilot to set up new Windows 10 devices for your business so they're ready for employee use."
---

# Use the step-by-step guide to add Autopilot devices and profile

You can use Windows AutoPilot to set up **new** Windows 10 devices for your business so they're ready for use when you give them to your employees.
  
## Device requirements

Devices must meet these requirements:
  
- Windows 10, version 1703 or later
    
- New devices that haven't been through Windows out-of-box experience

## How to get the CSV for Import in Intune

For more information, see the following PowerShell cmdlet:

- [Get-WindowsAutoPilotInfo](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo)

## Add devices

You can add Windows Autopilot devices by importing a CSV file with their information.

1. In the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), choose **Devices** > **Windows** > **Windows enrollment** > **Devices** (under **Windows Autopilot Deployment Program** > **Import**.

2. Under **Add Windows Autopilot devices**, browse to a CSV file listing the devices that you want to add. The CSV file should list:
    - Serial numbers.
    - Windows product IDs.
    - Hardware hashes.
    - Optional group tags.
    - Optional assigned user.
  
    You can have up to 500 rows in the list. For information about how to get device information, see [Adding devices to Windows Autopilot](https://docs.microsoft.com/mem/autopilot/add-devices#device-identification). Use the header and line format shown below:

   `Device Serial Number,Windows Product ID,Hardware Hash,Group Tag,Assigned User`</br>
   `<serialNumber>,<ProductID>,<hardwareHash>,<optionalGroupTag>,<optionalAssignedUser>`

   > [!IMPORTANT]
   > When you use CSV upload to assign a user, make sure that you assign valid UPNs. If you assign an invalid UPN (incorrect username), your device may be inaccessible until you remove the invalid assignment. During CSV upload the only validation we perform on the **Assigned User** column is to check that the domain name is valid. We're unable to perform individual UPN validation to ensure that you're assigning an existing or correct user.

    > [!NOTE]
    > The CSV file being imported into the Intune portal must be formatted as described above. Extra columns are not supported. Quotes are not supported. Only ANSI-format text files can be used (not Unicode). Headers are case-sensitive. Editing the file in Excel and saving it as a CSV file will not generate a usable file due to these requirements.

3. Choose **Import** to start importing the device information. Importing can take several minutes.

4. After import is complete, choose **Devices** > **Windows** > **Windows enrollment** > **Devices** (under **Windows Autopilot Deployment Program** > **Sync**. A message displays that the synchronization is in progress. The process might take a few minutes to complete, depending on how many devices are being synchronized.

5. Refresh the view to see the new devices.

## Create an Autopilot deployment profile
Autopilot deployment profiles are used to configure the Autopilot devices. You can create up to 350 profiles per tenant.
1. In the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), choose **Devices** > **Windows** > **Windows enrollment** > **Deployment Profiles** > **Create Profile** > **Windows PC** or **HoloLens**. This article explains how to set up Autopilot for Windows PC. For more information about Autopilot and HoloLens, see [Windows Autopilot for HoloLens 2](https://docs.microsoft.com/hololens/hololens2-autopilot).
2. On the **Basics** page, type a **Name** and optional **Description**.

3. If you want all devices in the assigned groups to automatically convert to Autopilot, set **Convert all targeted devices to Autopilot** to **Yes**. All corporate-owned, non-Autopilot devices in assigned groups will register with the Autopilot deployment service. Personally owned devices won't be converted to Autopilot. Allow 48 hours for the registration to be processed. When the device is unenrolled and reset, Autopilot will enroll it. After a device is registered in this way, disabling this option or removing the profile assignment won't remove the device from the Autopilot deployment service. You must instead [remove the device directly](https://docs.microsoft.com/mem/autopilot/enrollment-autopilot#delete-autopilot-devices).
4. Select **Next**.
5. On the **Out-of-box experience (OOBE)** page, for **Deployment mode**, choose one of these two options:
    - **User-driven**: Devices with this profile are associated with the user enrolling the device. User credentials are required to enroll the device.
    - **Self-deploying (preview)** (requires Windows 10, version 1809 or later): Devices with this profile aren't associated with the user enrolling the device. User credentials aren't required to enroll the device. When a device has no user associated with it, user-based compliance policies don't apply to it. When using self-deploying mode, only compliance policies targeting the device will be applied.

    > [!NOTE]
    > Options that appear dimmed or shaded are currently not supported by the selected deployment mode.

6. In the **Join to Azure AD as** box, choose **Azure AD joined**.
7. Configure the following options:
    - **End-user license agreement (EULA)** (Windows 10, version 1709 or later): Choose if you want to show the EULA to users.
    - **Privacy settings**: Choose if you want to show privacy settings to users.

    > [!IMPORTANT]
    > The default value for the Diagnostic Data setting varies between Windows versions. For devices running Windows 10, version 1903, the default value is set to Full during the out-of-box experience. For more information, see [Windows Diagnostics Data](https://docs.microsoft.com/windows/privacy/configure-windows-diagnostic-data-in-your-organization). <br>
 
    - **Hide change account options** (requires Windows 10, version 1809 or later): Choose **Hide** to prevent change account options from displaying on the company sign-in and domain error pages. This option requires [company branding to be configured in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/fundamentals/customize-branding).
    - **User account type**: Choose the user's account type (**Administrator** or **Standard** user). We allow the user joining the device to be a local Administrator by adding them to the local Admin group. We don't enable the user as the default administrator on the device.
    - **Allow White Glove OOBE** (requires Windows 10, version 1903 or later; [additional physical requirements](https://docs.microsoft.com/mem/autopilot/pre-provision#prerequisites)): Choose **Yes** to allow pre-provisioning support.
   
   When setting this to **No** (blocking pre-provisioning), be aware that it will still be possible to press the Windows key five times during OOBE to invoke pre-provisioning and progress down that path. However, Intune will subsequently enforce this setting and you will encounter a red screen indicating pre-provisioning failure with error code 0x80180005.

    - **Apply device name template** (requires Windows 10, version 1809 or later, and Azure AD join type): Choose **Yes** to create a template to use when naming a device during enrollment. Names must be 15 characters or less, and can have letters, numbers, and hyphens. Names can't be all numbers. Use the [%SERIAL% macro](https://docs.microsoft.com/windows/client-management/mdm/accounts-csp) to add a hardware-specific serial number. Or, use the [%RAND:x% macro](https://docs.microsoft.com/windows/client-management/mdm/accounts-csp) to add a random string of numbers, where x equals the number of digits to add. You can only provide a pre-fix for hybrid devices in a [domain join profile](https://docs.microsoft.com/mem/autopilot/windows-autopilot-hybrid#create-and-assign-a-domain-join-profile). 
    - **Language (Region)**\*: Choose the language to use for the device. This option is only available if you chose **Self-deploying** for **Deployment mode**.
    - **Automatically configure keyboard**: If a **Language (Region)** is selected, choose **Yes** to skip the keyboard selection page. This option is only available if you chose **Self-deploying** for **Deployment mode**.
8. Select **Next**.
9. On the **Scope tags** page, optionally add the scope tags you want to apply to this profile. For more information about scope tags, see [Use role-based access control and scope tags for distributed IT](https://docs.microsoft.com/mem/intune/fundamentals/scope-tags).
10. Select **Next**.
11. On the **Assignments** page, choose **Selected groups** for **Assign to**.
12. Choose **Select groups to include**, and choose the groups you want to include in this profile.
13. If you want to exclude any groups, choose **Select groups to exclude**, and choose the groups you want to exclude.
14. Select **Next**.
15. On the **Review + Create** page, choose **Create** to create the profile.

> [!NOTE]
> Intune will periodically check for new devices in the assigned groups, and then begin the process of assigning profiles to those devices. This process can take several minutes to complete. Before deploying a device, ensure that this process has completed. You can check under **Devices** > **Windows** > **Windows enrollment** > **Devices** (under **Windows Autopilot Deployment Program** where you should see the profile status change from "Unassigned" to "Assigning" and finally to "Assigned."
