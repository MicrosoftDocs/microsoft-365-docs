---
title: Shared devices
description:  How and when to use shared device mode
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
manager: dougeby
ms.topic: article
---

# Shared devices

Microsoft Managed Desktop allows you to register devices in "shared device mode," similar to the shared device mode offered by [Microsoft Intune](/mem/intune/configuration/shared-user-device-settings).

Devices in this mode are optimized for situations where users aren't tied down to a single desk and are frequently changing devices. For example, frontline workers such as bank tellers or nursing staff. You can apply any of the Microsoft Managed Desktop [profiles](profiles.md) to devices in this mode. Devices registered in this mode have some important differences:

- [Device storage](#device-storage) is optimized for shared users.
- [Inactive accounts](#deletion-of-inactive-accounts) are deleted.
- [Guest accounts](#guest-accounts) aren't supported by default.
- [Microsoft 365 Applications](#microsoft-365-apps-for-enterprise) for enterprise licensing is optimized for shared devices.

Because you make the choice to use shared device mode at the point of registration in Microsoft Managed Desktop, if you want to change out of this mode later, you must de-register it and register it again.

## When to use shared device mode

Use shared device mode in situations where users are frequently changing devices.

For example, bank tellers might be in one location managing deposits, but move to a back office to help customers with a mortgage. In each of those locations, the device runs different applications and is optimized for those tasks, though they're used by multiple people.

Nursing staff typically move between rooms and offices as they interact with patients. They can sign into a workstation in an office, but connect to their remote desktop and take notes, and repeat this process in a different room with a different patient.

## When not to use shared device mode

Shared device mode isn't a good choice in these situations:

- When a user's files need to be stored locally rather than in the cloud.
- If the user experience needs to be different for different users on the device.
- If the set of applications each user needs differs greatly.

## Register new devices using the Windows Autopilot self-deploying mode profile in Microsoft Managed Desktop

Whether you or a partner are handling device registration, you can choose to use the [Windows Autopilot self-deploying mode](/mem/autopilot/self-deploying) profile in Microsoft Managed Desktop.

### Before you begin

Review the Windows Autopilot self-deploying mode requirements:

> [!IMPORTANT]
> You cannot automatically re-enroll a device through Autopilot after an initial deployment in self-deploying mode. Instead, delete the device record in the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431). To delete the device record from the admin center, select **Devices** > **All devices** > select the devices you want to delete > **Delete**.  For more information, see [Updates to the Windows Autopilot sign-in and deployment experience](https://techcommunity.microsoft.com/t5/intune-customer-success/updates-to-the-windows-autopilot-sign-in-and-deployment/ba-p/2848452).

#### Trusted Platform Module

Self-deploying mode uses a device's TPM 2.0 hardware to authenticate the device into an organization's Azure Active Directory tenant. Therefore, devices without TPM 2.0 can't use this mode. Devices must also support TPM device attestation. All new Windows devices should meet these requirements. The TPM attestation process also requires access to a set of HTTPS URLs that are unique for each TPM provider. For more information, see the entry for Autopilot self-deploying mode and Autopilot pre-provisioning in [Networking requirements](/mem/autopilot/self-deploying#requirements). For more information about Windows Autopilot software requirements, see [Windows Autopilot software requirements](/mem/autopilot/software-requirements).

> [!TIP]
> If you attempt to deploy self-deploying mode on a device that doesn't have TPM 2.0 support or it's on a virtual machine, the process will fail when verifying the device with the following error: 0x800705B4 timeout error (Hyper-V virtual TPMs are not supported). Also note that Windows 10 version 1903 or later is required to use self-deploying mode due to issues with TPM device attestation in Windows 10 version 1809. Since Windows 10 Enterprise 2019 LTSC is based on Windows 10 version 1809, self-deploying mode is also not supported on Windows 10 Enterprise 2019 LTSC.
>
> For more information about other known issues and review solutions, see [Windows Autopilot known issues](/mem/autopilot/known-issues) and [Troubleshoot Autopilot device import and enrollment](/mem/autopilot/troubleshoot-device-enrollment).

### Steps to register devices to use the Windows Autopilot self-deploying mode profile

If you're registering devices yourself, you must import new devices into the Windows Autopilot Devices blade.

**To import new devices into the Windows Autopilot Devices blade:**

1. Collect the [hardware hash](../get-started/manual-registration.md#obtain-the-hardware-hash) for new devices you want to assign the Windows Autopilot Self-deployment mode profile to.
2. Go to the [Microsoft Endpoint Manager portal](https://endpoint.microsoft.com).
2. Select **Devices** from the left navigation menu.
3. In the **By platform** section, select **Windows**. Then, select **Windows Enrollment**.
4. In the **Windows Autopilot Deployment Program** section, select **Devices**.
5. [Import](../get-started/manual-registration.md#register-devices-by-using-the-admin-portal) the .CSV file containing all hardware hashes collected in step #1.
6. After you've uploaded the Windows Autopilot devices, you must edit the imported devices' group tag attribute so Microsoft Managed Desktop can register them using the Windows Autopilot self-deploying mode profile. See below for the group tag attributes. You must append **-Shared** to the group tag, as shown in the table below:

| Device profile | Autopilot group tag (standard mode) | Group tag (shared device mode) |
| ----- | ----- | ----- |
| Sensitive data | Microsoft365Managed_SensitiveData |  Microsoft365Managed_SensitiveData-Shared |
| Power user | Microsoft365Managed_PowerUser | Not supported |
| Standard  | Microsoft365Managed_Standard | Microsoft365Managed_Standard-Shared |

> [!WARNING]
> Don't try to edit the group tab attribute by appending **-Shared** to devices previously imported to Windows Autopilot. Devices already imported into Windows Autopilot, using one of the Microsoft Managed Desktop group tags starting with *Microsoft365Managed_*, but without **-Shared** initially appended, are already part of a different Azure Active Directory group. This Azure Active Directory group doesn't have the Windows Autopilot self-deploying mode profile assigned to it. If you must re-purpose an existing device to be a shared device, you must delete and re-register the device into Windows Autopilot again.

If you're having a partner enroll devices, follow the steps in [Partner registration](../get-started/partner-registration.md), but append **-Shared** to the group tag, as shown in the table above.

## Consequences of shared device mode

### Device storage

Users of shared devices must have their data backed up onto the cloud so it can follow them to other devices. Once you've registered devices in shared device mode, be sure to enable OneDrive's [Files On-Demand](https://support.microsoft.com/office/save-disk-space-with-onedrive-files-on-demand-for-windows-10-0e6860d3-d9f3-4971-b321-7092438fb38e#:~:text=%20Turn%20on%20Files%20On-Demand%20%201%20Make,files%20as%20you%20use%20them%20box.%20More%20) and [known-folder redirection](/onedrive/redirect-known-folders) features. This approach minimizes the effect that each user profile has on device storage. Devices in shared device mode automatically delete user profiles if the free disk space drops below 25%. This activity is scheduled for midnight at the device's local time, unless storage becomes critically limited.

Microsoft Managed Desktop uses the [SharedPC](/mem/intune/configuration/shared-user-device-settings-windows) CSP to do these operations, so make sure you don't use those CSPs yourself.

> [!IMPORTANT]
> Train your users that after they have downloaded a large file they should confirm that they see the green check icon on the file before they sign out. If their account gets deleted as part of the cleanup operations and the file isn't completely uploaded in OneDrive, the file will be permanently lost.

### Deletion of inactive accounts

Shared device mode removes any accounts that haven't been signed into for more than 30 days.

### Guest accounts

Devices in shared device mode only allow accounts that are joined to a domain. If you need guest accounts on a device, you can file a [change request](../working-with-managed-desktop/admin-support.md) to request them to be enabled.

### Microsoft 365 Apps for enterprise

[Microsoft 365 Apps for enterprise](/microsoft-365/managed-desktop/get-started/m365-apps) typically allows a given user to install those apps on only five devices at the same time. In shared device mode, the apps don't count against the limit, so they can use them while roaming between devices. Deployment and updates of Microsoft 365 Apps for enterprise work as usual.

### Device profiles

In shared device mode, you can have only one [device profile](profiles.md) on a given device. Also, the Power user device profile isn't currently supported in shared device mode.

### Apps and policies assigned to users

On shared devices, you should assign any apps or policies that you're managing yourself to *device groups*, not user groups. Assigning to device groups ensures that each user has a more consistent experience. The exception is [Company Portal](#deploying-apps-with-company-portal).

## Limitations of shared device mode

### Windows Hello

Windows Hello uses smart card emulation to securely [cache user PINs](/windows/security/identity-protection/hello-for-business/hello-faq), minimizing the number of times users have to authenticate. However, Windows only allows 10 smart cards at a time on a given device. When an 11th user signs in for the first time, one of the existing accounts will lose their smart card. They'll be able to sign in, but their PIN won't be cached.

### Universal print

When Universal print installs a printer for a single user on a shared device that printer becomes available to all users of that device. There's no way to isolate printers between users on shared devices.

## Limitations of shared device mode in the public preview release

### Primary user

Each Microsoft Intune device has a primary user, which is assigned when a device is set up by Autopilot. But when devices are shared, Intune requires that the primary user is removed.

> [!IMPORTANT]
> While shared device mode is in public preview, be sure to remove the primary user by following these steps: sign in to the Microsoft Endpoint Manager admin center, select **Devices**>**All devices**, select a device, then select **Properties**>**Remove primary user**, and delete the user listed there.

### Deploying apps with Company Portal

Some apps probably don't need to be present on all devices, so you might prefer that users only install those apps when they need them from [Company Portal](/mem/intune/user-help/install-apps-cpapp-windows).

Microsoft Managed Desktop disables Company Portal by default for devices in shared device mode. If you want the Company Portal enabled, you can file a [change request](../working-with-managed-desktop/admin-support.md). However, you should be aware of some limitations in this feature in this public preview:

- To make an app available to users in Company Portal, [assign a user group](/mem/intune/apps/apps-deploy) to that app in Intune and then add each user to that user group.
- Devices can't have a [primary user](#primary-user).
- To uninstall an app that a user installed through Company Portal, you must uninstall the app from all users on that device.

> [!CAUTION]
> Company Portal doesn't support applications assigned to device groups as available.

### Redeployment of Microsoft 365 Apps for Enterprise

During public preview, if Microsoft 365 Apps must be redeployed, users must contact their local support staff to request an agent elevate and reinstall Microsoft 365 Apps for enterprise on that device.

### Microsoft Teams

When a user starts Teams for the first time, they'll be prompted to update the app before they can use it. Once they allow the update, Teams will keep itself updated in the background.
