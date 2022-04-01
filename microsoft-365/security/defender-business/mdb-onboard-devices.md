---
title: Onboard devices to Microsoft Defender for Business
description: Learn about device onboarding options in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 04/01/2022
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

# Onboard devices to Microsoft Defender for Business

> [!IMPORTANT]
> Microsoft Defender for Business is rolling out to [Microsoft 365 Business Premium](../../business-premium/index.md) customers, beginning March 1, 2022. Defender for Business as a standalone subscription is in in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. Preview includes an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

With Microsoft Defender for Business, you have several options to choose from for onboarding your company's devices. This article walks you through your options and includes an overview of how onboarding works.

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

## What to do

1. [See your options for onboarding devices](#device-onboarding-methods), and select a method. 

   - [Use automatic onboarding for Windows devices already enrolled in Microsoft Endpoint Manager](#automatic-onboarding-for-windows-devices-enrolled-in-microsoft-endpoint-manager)
   - [Use a local script to onboard Windows or macOS devices](#local-script-in-defender-for-business)
   - [Use Microsoft Endpoint Manager to onboard Windows, macOS, or mobile devices](#microsoft-endpoint-manager)

2. [Run a detection test](#run-a-detection-test) on newly onboarded Windows devices.

3. [See your next steps](#next-steps). 

This article also includes information about [Offboarding a device](#offboarding-a-device).

## Device onboarding methods

Defender for Business offers you several different methods for onboarding devices, whether you're already using Microsoft Endpoint Manager, or you just want a simplified onboarding experience. The most commonly used methods to onboard devices to Defender for Business include:

- **Automatic onboarding** for Windows devices that are already enrolled in Microsoft Endpoint Manager. Automatic onboarding sets up a connection between Defender for Business and Microsoft Endpoint Manager, and then onboards Windows devices to Defender for Business. In order to use this option, your devices must already be enrolled in Endpoint Manager. To learn more, see [Automatic onboarding](#automatic-onboarding-for-windows-devices-enrolled-in-microsoft-endpoint-manager).

- **Local script** to onboard Windows and macOS devices to Defender for Business manually. You can onboard up to 10 devices at a time using the local script. To learn more, see [Local script in Defender for Business](#local-script-in-defender-for-business).

- **Microsoft Intune** or **Microsoft Endpoint Manager** to onboard Windows, macOS, and mobile devices. You can enroll devices in Endpoint Manager, and then onboard your devices to Defender for Business. [Microsoft 365 Business Premium](../../business-premium/index.md) customers already have [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), and both Microsoft Intune and [Mobile Device Management](/mem/intune/enrollment/device-enrollment) are now part of Endpoint Manager. To use this method, see [Microsoft Endpoint Manager](#microsoft-endpoint-manager).

> [!IMPORTANT]
> If something goes wrong and your onboarding process fails, see [Microsoft Defender for Business troubleshooting](mdb-troubleshooting.yml).

## Automatic onboarding for Windows devices enrolled in Microsoft Endpoint Manager

The automatic onboarding option applies to Windows devices only. Automatic onboarding is available if the following conditions are met:

- Your company was already using Microsoft Endpoint Manager, Microsoft Intune, or Mobile Device Management (MDM) in Microsoft Intune before you got Defender for Business

- You already have Windows devices enrolled in Endpoint Manager

If Windows devices are already enrolled in Endpoint Manager, Defender for Business will detect those devices while you are in the process of setting up and configuring Defender for Business. You'll be asked if you want to use automatic onboarding for all or some of your Windows devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later.

> [!TIP]
> We recommend selecting the "all devices enrolled" option. That way, when Windows devices are enrolled in Endpoint Manager later on, they'll be onboarded to Defender for Business automatically. In addition, if you've been managing security policies and settings in Endpoint Manager, we recommend switching to the Microsoft 365 Defender portal to manage your devices, policies, and settings. To learn more, see [Choose where to manage security policies and devices](mdb-configure-security-settings.md#choose-where-to-manage-security-policies-and-devices).

To learn more about automatic onboarding, see step 2 in [Use the wizard to set up Microsoft Defender for Business](mdb-use-wizard.md).

## Local script in Defender for Business

You can use a local script to onboard Windows and Mac devices. When you run the onboarding script on a device, it creates a trust with Azure Active Directory (if that trust doesn't already exist), enrolls the device in Microsoft Endpoint Manager (if it isn't already enrolled), and then onboards the device to Defender for Business. This method is useful for onboarding devices in Defender for Business. You can onboard up to 10 devices at a time.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows 10 and 11** or **macOS**, and then, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**. We recommend saving the onboarding package to a removable drive. (If you selected **macOS**, also select **Download installation package** and save it to your removable device.)

5. Follow the guidance in the following table:

   | Operating System | Procedure |
   |---|---|
   | Windows | 1. On a Windows device, extract the contents of the configuration package to a location, such as the Desktop folder. You should have a file named `WindowsDefenderATPLocalOnboardingScript.cmd`. <br/><br/>2. Open Command Prompt as an administrator.<br/><br/>3. Type the location of the script file. For example, if you copied the file to the Desktop folder, you would type: `%userprofile%\Desktop\WindowsDefenderATPLocalOnboardingScript.cmd`, and then press the Enter key (or select **OK**).<br/><br/>4. After the script runs, proceed to [Run a detection test](#run-a-detection-test). |
   | macOS | 1. On a Mac computer, save the installation package as `wdav.pkg` to a local directory. <br/><br/>2. Save the onboarding package as `WindowsDefenderATPOnboardingPackage.zip` to the same directory you used for the installation package. <br/><br/>3. Use Finder to navigate to `wdav.pkg` you saved, and then open it.<br/><br/>4. Select **Continue**, agree with the License terms, and then enter your password when prompted.<br/><br/>5. You will be prompted to allow a driver from Microsoft to be installed (either "System Extension Blocked" or "Installation is on hold", or both. The driver must be allowed to be installed. To allow the installation, select **Open Security Preferences** or **Open System Preferences** > **Security & Privacy**, and then select **Allow**.<br/><br/>6. Use the following Python command in Bash to run the onboarding package: `/usr/bin/python MicrosoftDefenderATPOnboardingMacOs.py`. <br/><br/>7. To confirm that the device is associated with your company, use the following Python command in Bash: `mdatp health --field org_id`.<br/><br/>8. If you are using macOS 10.15 (Catalina) or later, grant Defender for Business consent to protect your device. Go to **System Preferences** > **Security & Privacy** > **Privacy** > **Full Disk Access**.  Select the lock icon to make changes (bottom of the dialog box), and then select Microsoft Defender for Business (or Defender for Endpoint, if that's what you see). <br/><br/>9. To verify that the device is onboarded, use the following command in Bash: `mdatp health --field real_time_protection_enabled`.    |

## Microsoft Endpoint Manager

If you were already using Endpoint Manager (which includes Microsoft Intune and Mobile Device Management), before you got Defender for Business, you can continue to use Endpoint Manager to onboard your company's devices. With Endpoint Manager, you can onboard computers, tablets, and phones, including iOS and Android devices.

See [Device enrollment in Microsoft Intune](/mem/intune/enrollment/device-enrollment).

## Run a detection test

After you've onboarded Windows devices to Defender for Business, you can run a detection test on a Windows device to make sure that everything is working correctly.

1. On the Windows device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command has run, the Command Prompt window will close automatically. If successful, the detection test will be marked as completed, and a new alert will appear in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device in about 10 minutes.

## Gradual device onboarding

You can onboard your company's devices in phases. *We call this gradual device onboarding*. 

1. Identify a set of devices to onboard.

2. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

3. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

4. Select an operating system (such as **Windows 10 and 11)**, and then choose an onboarding method (such as **Local script**). Follow the guidance provided for the method you selected.

5. Repeat this process for each set of devices you want to onboard. 

> [!TIP]
> You don't have to use the same onboarding package every time you onboard devices. For example, you can use a local script to onboard some devices, and later on, you can choose another method to onboard more devices.

## Offboarding a device

If you want to offboard a device, use one of the following procedures:

| Operating system | Procedure |
|---|---|
| Windows | 1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.<br/><br/>2. In the navigation pane, choose **Settings**, and then choose **Endpoints**.<br/><br/>3. Under **Device management**, choose **Offboarding**.<br/><br/>4. Select an operating system, such as **Windows 10 and 11**, and then, under **Offboard a device**, in the **Deployment method** section, choose **Local script**. <br/><br/>5. In the confirmation screen, review the information, and then choose **Download** to proceed.<br/><br/>6. Select **Download offboarding package**. We recommend saving the offboarding package to a removable drive.<br/><br/>7. Run the script on each device that you want to offboard.| 
| macOS | 1. Go to **Finder** > **Applications**. <br/><br/>2. Right click on Microsoft Defender for Business, and then choose **Move to Trash**. <br/><br/>--- or --- <br/><br/> Use the following command: `sudo '/Library/Application Support/Microsoft/Defender/uninstall/uninstall'`.|

> [!IMPORTANT]
> Offboarding a device causes the devices to stop sending data to Defender for Business. However, data received prior to offboarding is retained for up to six (6) months.

## Next steps

Proceed to:

- [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)

- [Get started using Microsoft Defender for Business](mdb-get-started.md) 
