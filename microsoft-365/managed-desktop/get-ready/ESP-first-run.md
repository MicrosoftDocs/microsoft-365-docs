---
title: First-run experience with Autopilot and the Enrollment Status Page 
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# First-run experience with Autopilot and the Enrollment Status Page

Microsoft Managed Desktop uses both [Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-autopilot) and Microsoft Intune's Enrollment Status Page (ESP) to provide the best possible first-run experience to your users.

To provide this, you must register devices in the Microsoft Managed Desktop service. For more about registration, see [Register new devices yourself](../get-started/register-devices-self.md) or [Steps for Partners to register devices](../get-started/register-devices-partner.md).

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
|Enter a name     | MMD-%RAND:7%        |



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
2. The device opens the Enrollment Status Page and proceeds through Device Preparation and Device Setup phases. A third phase (Account Setup) is skipped in Microsoft Managed Desktop configuration because User ESP is disabled. User ESP is enabled later in the configuration. The device restarts.
3. After restart, the device opens the Windows sign-in page with **Other user**.
4. The users enters their credentials again and the desktop opens.

![Start page of Autopilot setup showing "device preparation" and "device setup" phases.](../../media/MMD-autopilot-screenshot.png)

## White glove provisioning

You can use the "white glove" feature of Autopilot to pre-provision a device so that it is completely set up and ready for business. The experience looks the same to the end user, but proceeds faster. For more information, see [Windows Autopilot for white glove deployment](https://docs.microsoft.com/windows/deployment/windows-autopilot/white-glove).

In the implementation used by Microsoft Managed Desktop, the Account Setup phase is not used. See the "[Technician flow](https://docs.microsoft.com/windows/deployment/windows-autopilot/white-glove#scenarios)" scenario for more information about using white glove provisioning.

## Exceptions

If the setup used by Microsoft Managed Desktop doesn't exactly match your needs, you can file a request for an exception. To do this, see details in [Request an exception](../service-description/customizing.md#request-an-exception). Here are some examples of the types of exceptions you might need:

### Autopilot exception

You might want to request a different device name template. You cannot, however, change Deployment Mode, Join to Azure As, Privacy Settings, or User Account Type.

### Enrollment Status Page exception

- A longer number of minutes for the "Show an error when installation takes longer than specified number of minutes" setting.
- The error message displayed
- Adding or removing applications in the "Block device use until these required apps are installed if they are assigned to the user/device" setting.

## Required applications

- You must target applications in the Modern Workplace *device groups* Test, First, Fast, and Broad. Make sure to complete testing with ESP in the Test group before you assign them to all groups.
- No applications should require the device to restart. We recommend that applications be set to "Do nothing" when you build the application package if they will require a restart.
- Limit required applications to only the core applications that a user needs immediately when they sign in to the device.
- Keep applications under 1 GB in size to avoid timeouts during the application installation phase.