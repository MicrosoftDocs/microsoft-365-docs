---
title: Onboard devices to Microsoft Defender for Business (preview)
description: Learn about device onboarding options in Microsoft Defender for Business (preview)
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 02/15/2022
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Onboard devices to Microsoft Defender for Business (preview)

> [!IMPORTANT]
> Microsoft Defender for Business is now in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. We will onboard an initial set of customers and partners in the coming weeks and will expand the preview leading up to general availability. Note that preview will launch with an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

The device onboarding experience in Defender for Business was built on the same device onboarding processes that are used in Microsoft Defender for Endpoint. Watch the following video to see how it works:<br/><br/>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

With Microsoft Defender for Business (preview), you have several options to choose from for onboarding your organization's devices. This article walks you through your options and includes an overview of how onboarding works.

> [!TIP]
> To view more detailed information about device onboarding in Defender for Endpoint, see [Onboard devices and configure Microsoft Defender for Endpoint capabilities](../defender-endpoint/onboard-configure.md).

## What to do

1. See the [device onboarding method](#device-onboarding-methods).

2. Onboard a device by using:
    - [Automatic onboarding for Windows devices enrolled in Microsoft Endpoint Manager](#automatic-onboarding-for-windows-devices-enrolled-in-microsoft-endpoint-manager)
    - [A local script for Windows, macOS, and Linux devices](#onboard-devices-using-a-local-script-in-defender-for-business)
    - [Microsoft Endpoint Manager for computers, tablets, and phones](#onboard-devices-using-microsoft-endpoint-manager)
    - [Group Policy for Windows devices](#onboard-windows-devices-using-group-policy)
    - [Another method not listed here](#onboard-devices-using-a-method-not-listed-here)

3. [Run a detection test](#run-a-detection-test) for newly onboarded devices.

4. [See next steps](#next-steps). 

This article also includes information about [Offboarding a device](#offboarding-a-device).

> [!TIP]
> If something goes wrong while onboarding devices, see [Microsoft Defender for Business (preview) troubleshooting](mdb-troubleshooting.yml). 

## Device onboarding methods

The following table describes the most commonly used methods to onboard devices to Defender for Business. 

| Onboarding method  | Description  |
|---------|---------|
| **Automatic onboarding**<br/>(*available to customers who are already using Microsoft Endpoint Manager*) | Automatic onboarding sets up a connection between Defender for Business (preview) and Microsoft Endpoint Manager, and then onboards Windows devices to Defender for Business (preview). Devices must already be enrolled in Endpoint Manager.<br/><br/>To learn more, see [Use automatic onboarding for Windows devices enrolled in Microsoft Endpoint Manager](#automatic-onboarding-for-windows-devices-enrolled-in-microsoft-endpoint-manager). |
| **Local script**<br/>(*recommended during preview; useful for onboarding a few devices at a time*)  | You can onboard computers to Defender for Business (preview) by using a script that you download and run on Windows, macOS, or Linux devices. The script sets up a trust with Azure Active Directory and enrolls the device.<br/><br/>To use this method, see [Onboard devices using a local script in Defender for Business](#onboard-devices-using-a-local-script-in-defender-for-business). |
| **Microsoft Intune** or **Microsoft Endpoint Manager**<br/>(*available to customers who are already using Microsoft Intune or Endpoint Manager*) | [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Mobile Device Management](/mem/intune/enrollment/device-enrollment) are part of Endpoint Manager. If you were already using Endpoint Manager before you got Defender for Business (preview), you can opt to continue using Endpoint Manager to onboard and manage devices<br/><br/>To use this method, see [Onboard devices using Microsoft Endpoint Manager](#onboard-devices-using-microsoft-endpoint-manager). |
| **Group Policy** | If your organization is already using Group Policy, you can create GPOs and apply them to your organization's devices in Defender for Business (preview).<br/><br/>To learn more about this method, see [Onboard Windows devices using Group Policy](#onboard-windows-devices-using-group-policy). | 

> [!IMPORTANT]
> If something goes wrong and your onboarding process fails, see [Microsoft Defender for Business troubleshooting](mdb-troubleshooting.yml).

## Automatic onboarding for Windows devices enrolled in Microsoft Endpoint Manager

The automatic onboarding option applies to Windows devices only. This option is available if your organization was already using Microsoft Endpoint Manager, Microsoft Intune, or Mobile Device Management (MDM) in Microsoft Intune before you got Defender for Business (preview). 

If Windows devices are already enrolled in Endpoint Manager, Defender for Business will detect those devices while you are in the process of setting up and configuring Defender for Business. You'll be asked if you want to use automatic onboarding for all or some of your Windows devices. 

The automatic onboarding process sets up a connection between Defender for Business and Endpoint Manager, and then onboards devices to Defender for Business. You can choose to onboard all enrolled Windows devices at one time, or select a set of Windows devices to onboard.

To learn more, see step 3 in [Use the wizard to set up Microsoft Defender for Business (preview)](mdb-use-wizard.md).

## Onboard devices using a local script in Defender for Business

You can use a local script to onboard Windows, macOS, and Linux devices to Defender for Business. When you run the onboarding script on a device, it creates a trust with Azure Active Directory, enrolls the device in Microsoft Endpoint Manager, and onboards the device to Defender for Business. This method is useful for onboarding devices in Defender for Business and for onboarding a few devices at a time.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows 10 and 11**, and then, under **Onboard a device**, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**. We recommend saving the onboarding package to a removable drive.

5. Follow the guidance in the following articles:

   - Windows devices: [Onboard Windows devices using a local script](../defender-endpoint/configure-endpoints-script.md#onboard-devices)
   - macOS devices: [Manual deployment for Microsoft Defender for Endpoint on macOS](../defender-endpoint/mac-install-manually.md#client-configuration)
   - Linux devices: [Deploy Microsoft Defender for Endpoint on Linux manually](../defender-endpoint/linux-install-manually.md#client-configuration)

> [!IMPORTANT]
> If something goes wrong and your onboarding process fails, see [Microsoft Defender for Business (preview) troubleshooting](mdb-troubleshooting.yml).

## Onboard devices using Microsoft Endpoint Manager

If you were already using Microsoft Intune before getting Defender for Business (preview), you can continue to use Microsoft Intune to onboard devices. With Endpoint Manager, you can onboard computers, tablets, and phones. 

See [Device enrollment in Microsoft Intune](/mem/intune/enrollment/device-enrollment).

## Onboard Windows devices using Group Policy

[Group Policy](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/hh831791(v=ws.11)) is an infrastructure that allows you to specify managed configurations for users and computers through Group Policy settings and Group Policy Preferences. A Group Policy object (GPO) is a logical object composed a Group Policy container and a Group Policy template. 

If your organization is already using Group Policy to manage devices, you can use Group Policy to onboard devices to Defender for Business. If you're brand new to Group Policy,we recommend using another method, such as Endpoint Manager or a local script instead. 

See [Onboard Windows devices using Group Policy](../defender-endpoint/configure-endpoints-gp.md).

## Onboard devices using a method not listed here

If you want to use another method that is not listed in this article to onboard devices, see [Onboarding and configuration tool options](../defender-endpoint/onboard-configure.md#onboarding-and-configuration-tool-options).

## Run a detection test

After you've onboarded Windows devices to Defender for Business (preview), you can run a detection test on a Windows device to make sure that everything is working correctly.

1. On the Windows device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command has run, the Command Prompt window will close automatically. If successful, the detection test will be marked as completed, and a new alert will appear in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device in about 10 minutes.

## Gradual device onboarding

If you want to onboard your organization's devices in phases, follow these steps:

1. Identify a set of devices to onboard.

2. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

3. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

4. Select an operating system (such as **Windows 10 and 11)**, and then choose an onboarding method (such as **Local script**). Follow the guidance provided for the method you selected.

5. Repeat this process for each set of devices you want to onboard. 

> [!TIP]
> You don't have to use the same onboarding package every time you onboard devices. For example, you can use a local script to onboard some devices, and later on, you can choose another method to onboard more devices.

## Offboarding a device

If you want to offboard a device, follow these steps:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Settings**, and then choose **Endpoints**.

3. Under **Device management**, choose **Offboarding**.

4. Select an operating system, such as **Windows 10 and 11**, and then, under **Offboard a device**, in the **Deployment method** section, choose **Local script**. 

5. In the confirmation screen, review the information, and then choose **Download** to proceed.

6. Select **Download offboarding package**. We recommend saving the offboarding package to a removable drive.

7. Run the script on each device that you want to offboard. 

   Need help with this task? See the following resources:   

   - Windows devices: [Offboard Windows devices using a local script](../defender-endpoint/configure-endpoints-script.md#offboard-devices-using-a-local-script)
   - macOS devices: [Uninstalling on macOS](../defender-endpoint/mac-resources.md#uninstalling)
   - Linux devices: [Uninstalling on Linux](../defender-endpoint/linux-resources.md#uninstall)

> [!IMPORTANT]
> Offboarding a device causes the devices to stop sending data to Defender for Business (preview). However, data received prior to offboarding is retained for up to six (6) months.

## Next steps

Proceed to:

- [Step 5: Configure your security settings and policies in Microsoft Defender for Business (preview)](mdb-configure-security-settings.md)

- [Get started using Microsoft Defender for Business (preview)](mdb-get-started.md) 