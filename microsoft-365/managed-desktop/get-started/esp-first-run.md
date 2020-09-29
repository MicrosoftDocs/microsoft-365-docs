---
title: First-run experience with Autopilot and the Enrollment Status Page 
description: How to deploy the ESP experience, the settings used, and configuration changes
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
manager: laurawi
audience: ITpro
ms.topic: article
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# First-run experience with Autopilot and the Enrollment Status Page

Microsoft Managed Desktop uses both [Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-autopilot) and Microsoft Intune's [Enrollment Status Page (ESP)](https://docs.microsoft.com/windows/deployment/windows-autopilot/enrollment-status) to provide the best possible first-run experience to your users.

The Enrollment Status Page is currently in public preview.

## Initial deployment

To provide the ESP experience, you must register devices in the Microsoft Managed Desktop service. For more about registration, see [Register new devices yourself](../get-started/register-devices-self.md) or [Steps for Partners to register devices](../get-started/register-devices-partner.md).

Once your devices are registered with the service, you can enable ESP for your Microsoft Managed Desktop devices by filing a support ticket through the [Admin Portal](https://portal.azure.com/). We will initially deploy the ESP configuration to the Test group when you file the ticket. It is deployed to the other subsequent deployment groups (First, Fast, and Broad) each 24 hours. To pause the deployment, file another ticket asking Operations to hold.

## Autopilot profile settings

Microsoft Managed Desktop uses these settings in the Autopilot profile used for your users' devices:


|Setting  |Value  |
|---------|---------|
|Deployment mode |  User Driven       |
|Join to Azure AD as     |  Azure AD joined       |
|Language (Region)     | Operating system default        |
|Automatically configure keyboard     | No        |
|Microsoft Software License Terms     |  Hide       |
|Privacy settings     | Hide        |
|Hide change account options     | Show        |
|User account type     |  Standard       |
|Allow White Glove OOBE     |  Yes       |
|Apply device name template     | Yes        |
|Enter a name     | MMD-%RAND:11%        |

> [!NOTE]
> While "white glove" provisioning is only enabled for customers with ESP turned on, it is not currently supported in Microsoft Managed Desktop.

## Enrollment Status Page settings

Microsoft Managed Desktop uses these settings for the Enrollment Status Page experience:


|Setting  |Value  |
|---------|---------|
|Show app and profile configuration progress     | Yes        |
|Show an error when installation takes longer than specified number of minutes     |  60       |
|Show custom message when time limit error occurs     |  Yes       |
|Error message     | Yes, It's taking a little longer to set up your device than expected. Click below to get started and we'll finish setting up in the background        |
|Allow users to collect logs about installation errors     |  Yes       |
|Only show page to devices provisioned by out-of-box experience (OOBE)     | Yes        |
|Block device use until all apps and profiles are installed     |  Yes       |
|Allow users to reset device if installation error occurs     |  Yes       |
|Allow users to use device if installation error occurs     |  Yes       |
|Block device use until these required apps are installed if they are assigned to the user/device     |  Modern Workplace - Time Correction       |



The Enrollment Status Page experience occurs in three phases. For more, see [Enrollment Status Page tracking information](https://docs.microsoft.com/mem/intune/enrollment/windows-enrollment-status#enrollment-status-page-tracking-information).

The experience proceeds as follows:

1. The Autopilot experience starts and the user enters their credentials.
2. The device opens the Enrollment Status Page and proceeds through Device Preparation and Device Setup phases. The third step (Account Setup) is *currently skipped* in the Microsoft Managed Desktop configuration because User ESP is disabled. The device restarts.
3. After restart, the device opens the Windows sign-in page with **Other user**.
4. The users enter their credentials again and the desktop opens.

> [!NOTE]
> Win32 apps are only deployed during ESP if the Windows 10 version is 1903 or later.

![Start page of Autopilot setup showing "device preparation" and "device setup" phases.](../../media/mmd-autopilot-screenshot.png)

## White glove provisioning

Microsoft Managed Desktop doesn't currently support the "white glove" feature of Windows Autopilot.

## Change to Autopilot and Enrollment Status Page settings

If the setup used by Microsoft Managed Desktop doesn't exactly match your needs, you can  file a support ticket through the [Admin Portal](https://portal.azure.com/). Here are some examples of the types of configuration you might need:

### Autopilot settings change

You might want to request a different device name template. You cannot, however, change Deployment Mode, Join to Azure As, Privacy Settings, or User Account Type.

### Enrollment Status Page settings change

- A longer number of minutes for the "Show an error when installation takes longer than specified number of minutes" setting.
- The error message displayed
- Adding or removing applications in the "Block device use until these required apps are installed if they are assigned to the user/device" setting.

## Required applications

- You must target applications in the Modern Workplace *device groups* Test, First, Fast, and Broad. Applications must install in the "System" context. Make sure to complete testing with ESP in the Test group before you assign them to all groups.
- No applications should require the device to restart. We recommend that applications be set to "Do nothing" when you build the application package if they will require a restart.
- Limit required applications to only the core applications that a user needs immediately when they sign in to the device.
- Keep the total size of all applications collectively under 1 GB to avoid timeouts during the application installation phase.
- Ideally, apps should not have any dependencies. If you have apps that *must* have dependencies, be sure you configure, test, and validate them as part of your ESP evaluation.
- No applications that require the "user" context (for example, Teams) can be included in the public preview of ESP.
