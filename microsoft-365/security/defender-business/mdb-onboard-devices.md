---
title: Onboard devices to Microsoft Defender for Business
description: Learn about device onboarding options in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 04/12/2022
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

1. Select the tab for your operating system: 
   - [Windows client](#windows-clientstabwindowsclients)
   - [Windows Server](#windows-servertabwindowsservers)
   - [macOS](#macostabmacos)
   - [mobile devices](#mobile-devicestabmobile)

2. View your onboarding options and follow the guidance on the selected tab.

3. Proceed to your next steps.

## [**Windows clients**](#tab/WindowsClients)

Choose one of the following options to onboard Windows client devices to Defender for Business:

- [Automatic onboarding](#automatic-onboarding-for-windows-clients) (for devices that are already enrolled in Microsoft Endpoint Manager, which includes Microsoft Intune and Mobile Device Management capabilities)
- [Local script](#local-script-for-windows-clients) (for onboarding devices manually in the Microsoft 365 Defender portal)
- [Microsoft Endpoint Manager](#endpoint-manager-for-windows-clients)

## Automatic onboarding for Windows clients

If Windows devices are already enrolled in Endpoint Manager, Defender for Business will detect those devices while you are in the process of setting up and configuring Defender for Business. You'll be asked if you want to use automatic onboarding for all or some of your Windows devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later.

If you're not asked about automatic onboarding, it's most likely because you don't have devices enrolled in Endpoint Manager yet. In this case, choose either the [local script method](#local-script-for-windows-clients) (recommended), or proceed to [enroll your Windows client devices in Endpoint Manager](#endpoint-manager-for-windows-clients).

> [!TIP]
> We recommend selecting the "all devices enrolled" option. That way, when Windows devices are enrolled in Endpoint Manager later on, they'll be onboarded to Defender for Business automatically. In addition, if you've been managing security policies and settings in Endpoint Manager, we recommend switching to the Microsoft 365 Defender portal to manage your devices, policies, and settings. To learn more, see [Choose where to manage security policies and devices](mdb-configure-security-settings.md#choose-where-to-manage-security-policies-and-devices).

To learn more about automatic onboarding, see step 3 in [Use the wizard to set up Microsoft Defender for Business](mdb-use-wizard.md).


### Local script for Windows clients

You can use a local script to onboard Windows client devices. When you run the onboarding script on a device, it creates a trust with Azure Active Directory (if that trust doesn't already exist), enrolls the device in Microsoft Endpoint Manager (if it isn't already enrolled), and then onboards the device to Defender for Business. 

> [!TIP]
> We recommend onboarding up to 10 devices at a time when you use the local script method.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows 10 and 11**, and then, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**. We recommend saving the onboarding package to a removable drive.

5. On a Windows device, extract the contents of the configuration package to a location, such as the Desktop folder. You should have a file named `WindowsDefenderATPLocalOnboardingScript.cmd`. 

6. Open Command Prompt as an administrator.

7. Type the location of the script file. For example, if you copied the file to the Desktop folder, you would type: `%userprofile%\Desktop\WindowsDefenderATPLocalOnboardingScript.cmd`, and then press the Enter key (or select **OK**).

8. After the script runs, proceed to [Run a detection test](#running-a-detection-test-on-a-windows-client).

### Endpoint Manager for Windows clients

If you were already using Endpoint Manager (which includes Microsoft Intune and Mobile Device Management), before you got Defender for Business, you can continue to use Endpoint Manager to onboard your company's devices. With Endpoint Manager, you can onboard computers, tablets, and phones, including iOS and Android devices.

See [Device enrollment in Microsoft Intune](/mem/intune/enrollment/device-enrollment).

### Running a detection test on a Windows client

After you've onboarded Windows devices to Defender for Business, you can run a detection test on a Windows device to make sure that everything is working correctly.

1. On the Windows device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command has run, the Command Prompt window will close automatically. If successful, the detection test will be marked as completed, and a new alert will appear in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device in about 10 minutes.

## Next steps

Proceed to:

- [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)

- [Get started using Microsoft Defender for Business](mdb-get-started.md) 

## [**Windows Server**](#tab/WindowsServers)

*The ability to onboard endpoints running Windows Server is currently in preview.*

See LINK.

## [**macOS**](#tab/macOS)

### Local script for macOS

You can use a local script to onboard Mac devices. When you run the onboarding script on a device, it creates a trust with Azure Active Directory (if that trust doesn't already exist), enrolls the device in Microsoft Endpoint Manager (if it isn't already enrolled), and then onboards the device to Defender for Business. 

> [!TIP]
> We recommend onboarding up to 10 devices at a time when you use the local script method.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select **macOS**, and then, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**, and save it to a removable drive. Also select **Download installation package**, and save it to your removable device.

5. On a macOS device, save the installation package as `wdav.pkg` to a local directory.

6. Save the onboarding package as `WindowsDefenderATPOnboardingPackage.zip` to the same directory you used for the installation package.

7. Use Finder to navigate to `wdav.pkg` you saved, and then open it.

8. Select **Continue**, agree with the License terms, and then enter your password when prompted.

9. You will be prompted to allow a driver from Microsoft to be installed (either "System Extension Blocked" or "Installation is on hold", or both. The driver must be allowed to be installed. To allow the installation, select **Open Security Preferences** or **Open System Preferences** > **Security & Privacy**, and then select **Allow**.

10. Use the following Python command in Bash to run the onboarding package: 

`/usr/bin/python MicrosoftDefenderATPOnboardingMacOs.py`

11. To confirm that the device is associated with your company, use the following Python command in Bash: 

`mdatp health --field org_id`.

12. If you are using macOS 10.15 (Catalina) or later, grant Defender for Business consent to protect your device by following these steps:   

   1. Go to **System Preferences** > **Security & Privacy** > **Privacy** > **Full Disk Access**.  
   2. Select the lock icon to make changes (bottom of the dialog box), and then select Microsoft Defender for Business (or Defender for Endpoint, if that's what you see).

13. To verify that the device is onboarded, use the following command in Bash: 

`mdatp health --field real_time_protection_enabled`

### Endpoint Manager for macOS

## [**mobile devices**](#tab/mobile)

text
