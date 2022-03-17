---
title: Onboard your organization's devices to Microsoft Defender for Business
description: Onboard your organization's devices to Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 03/14/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Onboard managed devices to Microsoft Defender for Business

Onboard devices to Microsoft Defender for Business to protect them with next-generation protection (antivirus, antimalware, and cloud-delivered protection), firewall protection, web content filtering and more. 

To onboard devices, you can choose from several options:

- [Use automatic onboarding for Windows devices that are already enrolled in Microsoft Endpoint Manager](#use-automatic-onboarding-for-windows-devices-that-are-already-enrolled-in-microsoft-endpoint-manager)
- [Use a local script to onboard Windows and macOS devices](#use-a-local-script-to-onboard-windows-and-macos-devices)
- [Use Endpoint Manager to enroll devices](#use-microsoft-endpoint-manager-to-enroll-devices) (Windows, macOS, iOS, and Android) and then apply Defender for Business policies to those devices

This article also includes:

- [How to run a detection test on a Windows device](#run-a-detection-test-on-a-windows-device)
- [How to onboard devices gradually](#onboard-devices-gradually)
- [How to offboard a device](#offboard-a-device) if a device is replaced or someone leaves the organization

> [!IMPORTANT]
> If something goes wrong and your onboarding process fails, see [Microsoft Defender for Business troubleshooting](../security/defender-business/mdb-troubleshooting.yml).

## Use automatic onboarding for Windows devices that are already enrolled in Microsoft Endpoint Manager

The automatic onboarding option applies to Windows devices only. Automatic onboarding is available if your organization was already using Microsoft Endpoint Manager, Microsoft Intune, or Mobile Device Management (MDM) in Microsoft Intune before you got Defender for Business, and you already have Windows devices enrolled in Endpoint Manager. 

If Windows devices are already enrolled in Endpoint Manager, Defender for Business will detect those devices while you are in the process of setting up and configuring Defender for Business. You'll be asked if you want to use automatic onboarding for all or some of your Windows devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later.

To learn more about automatic onboarding, see Step 2 in [Use the wizard to set up Microsoft Defender for Business](../security/defender-business/mdb-use-wizard.md).

## Use a local script to onboard Windows and macOS devices

You can use a local script to onboard Windows and macOS devices. When you run the onboarding script on a device, it creates a trust with Azure Active Directory (if that trust does not already exist), enrolls the device in Microsoft Endpoint Manager (if it isn't already enrolled), and then onboards the device to Defender for Business. 

You can onboard up to 10 devices at a time with this method.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows 10 and 11**, and then, under **Onboard a device**, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**. We recommend saving the onboarding package to a removable drive.

5. Follow the guidance in the following articles:

   - Windows devices: [Onboard Windows devices using a local script](../security/defender-endpoint/configure-endpoints-script.md#onboard-windows-devices-using-a-local-script)
   - macOS devices: [Manual deployment for Microsoft Defender for Endpoint on macOS](../security/defender-endpoint/mac-install-manually.md#download-installation-and-onboarding-packages)

## Use Microsoft Endpoint Manager to enroll devices

If you were already using Endpoint Manager (which includes Microsoft Intune and Mobile Device Management), before you got Defender for Business, you can continue to use Endpoint Manager to onboard your organization's devices. With Endpoint Manager, you can onboard computers, tablets, and phones, including iOS and Android devices.

If your organization is using Android devices, use this method.

See [Device enrollment in Microsoft Intune](/mem/intune/enrollment/device-enrollment).


## Run a detection test on a Windows device

After you've onboarded Windows devices to Defender for Business, you can run a detection test on a Windows device to make sure that everything is working correctly.

1. On the Windows device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command has run, the Command Prompt window will close automatically. If successful, the detection test will be marked as completed, and a new alert will appear in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device in about 10 minutes.

## Onboard devices gradually

If you prefer to onboard devices in phases, which we call *gradual device onboarding*, follow these steps: 

1. Identify a set of devices to onboard.

2. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

3. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

4. Select an operating system (such as **Windows 10 and 11)**, and then choose an onboarding method (such as **Local script**). Follow the guidance provided for the method you selected.

5. Repeat this process for each set of devices you want to onboard. 

> [!TIP]
> You don't have to use the same onboarding package every time you onboard devices. For example, you can use a local script to onboard some devices, and later on, you can choose another method to onboard more devices.

## Offboard a device

If you want to offboard a device, follow these steps:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Settings**, and then choose **Endpoints**.

3. Under **Device management**, choose **Offboarding**.

4. Select an operating system, such as **Windows 10 and 11**, and then, under **Offboard a device**, in the **Deployment method** section, choose **Local script**. 

5. In the confirmation screen, review the information, and then choose **Download** to proceed.

6. Select **Download offboarding package**. We recommend saving the offboarding package to a removable drive.

7. Run the script on each device that you want to offboard. Need help with this task? See the following resources:   

   - Windows devices: [Offboard Windows devices using a local script](../security/defender-endpoint/configure-endpoints-script.md#offboard-devices-using-a-local-script)
   - macOS devices: [Uninstalling on macOS](../security/defender-endpoint/mac-resources.md#uninstalling)

> [!IMPORTANT]
> Offboarding a device causes the devices to stop sending data to Defender for Business. However, data received prior to offboarding is retained for up to six (6) months.

## Next steps

[Review remediation actions in Microsoft 365 Business Premium](m365bp-review-remediation-actions-devices.md)