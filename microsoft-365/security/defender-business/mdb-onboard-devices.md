---
title: Onboard devices to Microsoft Defender for Business
description: See how to get devices onboarded to Defender for Business to protect your devices from day one.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 11/01/2022
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
 - SMB
 - m365-security
 - m365solution-mdb-setup
 - highpri
 - tier1
---

# Onboard devices to Microsoft Defender for Business

Onboard your business devices to protect them right away. You can choose from several options to onboard your company's devices. This article walks you through your options and describes how onboarding works.

## What to do

1. Select a tab: 
   - **Windows 10 and 11**
   - **Mac**
   - **Servers** (NEW! Windows Server or Linux Server)
   - **Mobile** (for iOS/iPadOS or Android devices)
2. View your onboarding options, and follow the guidance on the selected tab.
3. Proceed to your next steps.

## [**Windows 10 and 11**](#tab/Windows10and11)

## Windows 10 and 11

Choose one of the following options to onboard Windows client devices to Defender for Business:

- [Local script](#local-script-for-windows-10-and-11) (for onboarding devices manually in the Microsoft 365 Defender portal)
- [Group Policy](#group-policy-for-windows-10-and-11) (if you're already using Group Policy in your organization)
- [Microsoft Intune](#intune-for-windows-10-and-11) (if you're already using Intune)

### Local script for Windows 10 and 11

You can use a local script to onboard Windows client devices. When you run the onboarding script on a device, it creates a trust with Azure Active Directory, if that trust doesn't already exist; enrolls the device in Microsoft Intune, if it isn't already enrolled; and then onboards the device to Defender for Business. If you're not currently using Intune, the local script method is the recommended onboarding method for Defender for Business customers.

> [!TIP]
> We recommend that you onboard up to 10 devices at a time when you use the local script method.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select **Windows 10 and 11**, and then, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**. We recommend that you save the onboarding package to a removable drive.

5. On a Windows device, extract the contents of the configuration package to a location, such as the Desktop folder. You should have a file named `WindowsDefenderATPLocalOnboardingScript.cmd`. 

6. Open a command prompt as an administrator.

7. Type the location of the script file. For example, if you copied the file to the Desktop folder, you would type `%userprofile%\Desktop\WindowsDefenderATPLocalOnboardingScript.cmd`, and then press the Enter key (or select **OK**).

8. After the script runs, [Run a detection test](#run-a-detection-test-on-a-windows-10-or-11-device).

### Group Policy for Windows 10 and 11

If you prefer to use Group Policy to onboard Windows clients, follow the guidance in [Onboard Windows devices using Group Policy](../defender-endpoint/configure-endpoints-gp.md). This article describes the steps for onboarding to Microsoft Defender for Endpoint. The steps for onboarding to Defender for Business are similar.

### Intune for Windows 10 and 11

You can onboard Windows clients and other devices in Intune by using the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). There are several methods available for enrolling devices in Intune. We recommend using one of the following methods:

- [Enable Windows automatic enrollment for company-owned or company-managed devices](#enable-automatic-enrollment-for-windows-10-and-11)
- [Ask users to enroll their own Windows 10/11 devices in Intune](#ask-users-to-enroll-their-windows-10-and-11-devices)

#### Enable automatic enrollment for Windows 10 and 11

When you set up automatic enrollment, users add their work account to the device. In the background, the device registers and joins Azure Active Directory (Azure AD) and is enrolled in Intune.

1. Go to the Azure portal ([https://portal.azure.com/](https://portal.azure.com/)) and sign in.

2. Select **Azure Active Directory** > **Mobility (MDM and MAM)** > **Microsoft Intune**.

3. Configure the **MDM User scope** and the **MAM user scope**.

   :::image type="content" source="media/mem-mam-scope-azure-ad.png" alt-text="Screenshot of setting MDM user scope and MAM user scope in Intune.":::

   - For MDM User scope, we recommend that you select **All** so that all users can automatically enroll their Windows devices.
   - In the MAM user scope section, we recommend the following default values for the URLs:

       - **MDM Terms of use URL**
       - **MDM Discovery URL**
       - **MDM Compliance URL**

4. Select **Save**.

5. After a device is enrolled in Intune, you can add it to a device group in Defender for Business. [Learn more about device groups in Defender for Business](mdb-create-edit-device-groups.md).

> [!TIP]
> To learn more, see [Enable Windows automatic enrollment](/mem/intune/enrollment/windows-enroll).

#### Ask users to enroll their Windows 10 and 11 devices

1. Watch the following video to see how enrollment works:<br/><br/>

   > [!VIDEO https://www.youtube.com/embed/TKQxEckBHiE?rel=0]  

2. Share this article with users in your organization: [Enroll Windows 10/11 devices in Intune](/mem/intune/user-help/enroll-windows-10-device).

3. After a device is enrolled in Intune, you can add it to a device group in Defender for Business. [Learn more about device groups in Defender for Business](mdb-create-edit-device-groups.md).

### Run a detection test on a Windows 10 or 11 device

After you've onboarded Windows devices to Defender for Business, you can run a detection test on the device to make sure that everything is working correctly.

1. On the Windows device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command runs, the Command Prompt window will close automatically. If successful, the detection test will be marked as completed, and a new alert will appear in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device in about 10 minutes.

## View the list of onboarded devices

To view the list of devices that are onboarded to Defender for Business, go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). In the navigation pane, go to **Assets** > **Devices**.

## Next steps

- If you have other devices to onboard, select the tab for those devices ([Windows 10 and 11, Mac, Servers, or Mobile devices](#what-to-do)), and follow the guidance on that tab.
- If you're done onboarding devices, go to [Step 5: Configure your security settings and policies in Defender for Business](mdb-configure-security-settings.md)
- See [Get started using Defender for Business](mdb-get-started.md).

## [**Mac**](#tab/mac)

## Mac

> [!NOTE]
> We recommend that you use a [local script to onboard Mac](#local-script-for-mac). Although you can [set up enrollment for Mac using Intune](/mem/intune/enrollment/macos-enroll), the local script is the simplest method for onboarding Mac to Defender for Business. 

Choose one of the following options to onboard Mac:

- [Local script for Mac](#local-script-for-mac) (*recommended*)
- [Intune for Mac](#intune-for-mac) (if you're already using Intune)

### Local script for Mac

When you run the local script on Mac: 

- It creates a trust with Azure Active Directory if that trust doesn't already exist.
- It enrolls the Mac in Microsoft Intune if it isn't already enrolled, and then onboards the Mac to Defender for Business. 
- We recommend that you onboard up to 10 devices at a time using this method.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select **macOS**. In the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**, and save it to a removable drive. Also select **Download installation package**, and save it to your removable device.

5. On Mac, save the installation package as `wdav.pkg` to a local directory.

6. Save the onboarding package as `WindowsDefenderATPOnboardingPackage.zip` to the same directory you used for the installation package.

7. Use Finder to navigate to `wdav.pkg` you saved, and then open it.

8. Select **Continue**, agree with the license terms, and then enter your password when prompted.

9. You'll be prompted to allow installation of a driver from Microsoft (either "System Extension Blocked" or "Installation is on hold", or both). You must allow the driver installation: Select **Open Security Preferences** or **Open System Preferences** > **Security & Privacy**, and then select **Allow**.

10. Use the following Python command in Bash to run the onboarding package: `/usr/bin/python MicrosoftDefenderATPOnboardingMacOs.sh`

After Mac is enrolled in Intune, you can add it to a device group. [Learn more about device groups in Defender for Business](mdb-create-edit-device-groups.md).

### Intune for Mac

If you already have Intune, you can enroll Mac computers by using the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). There are several methods available for enrolling Mac in Intune. We recommend one of the following methods:

- [Choose an option for company-owned Mac](#options-for-company-owned-mac)
- [Ask users to enroll their own Mac in Intune](#ask-users-to-enroll-their-own-mac-in-intune)

#### Options for company-owned Mac

Choose one of the following options to enroll company-managed Mac devices in Intune:

| Option  | Description  |
|---------|---------|
| Apple Automated Device Enrollment |  Use this method to automate enrollment on devices purchased through Apple Business Manager or Apple School Manager. Automated device enrollment deploys the enrollment profile "over the air," so you don't need to have physical access to devices. <br/><br/>See [Automatically enroll Mac with the Apple Business Manager or Apple School Manager](/mem/intune/enrollment/device-enrollment-program-enroll-macos). |
| Device enrollment manager (DEM)  |  Use this method for large-scale deployments and when there are multiple people in your organization who can help with enrollment setup. Someone with device enrollment manager (DEM) permissions can enroll up to 1,000 devices with a single Azure Active Directory account. This method uses the Company Portal app or Microsoft Intune app to enroll devices. You can't use a DEM account to enroll devices via Automated Device Enrollment.<br/><br/> See [Enroll devices in Intune by using a device enrollment manager account](/mem/intune/enrollment/device-enrollment-manager-enroll).  |
| Direct enrollment  | Direct enrollment enrolls devices with no user affinity, so this method is best for devices that aren't associated with a single user. This method requires you to have physical access to the Macs you're enrolling. <br/><br/>See [Use Direct Enrollment for Mac](/mem/intune/enrollment/device-enrollment-direct-enroll-macos).      |

#### Ask users to enroll their own Mac in Intune

If your business prefers to have people enroll their own devices in Intune, direct users to follow these steps:

1. Go to the Company Portal website ([https://portal.manage.microsoft.com/](https://portal.manage.microsoft.com/)) and sign in.

2. Follow the instructions on the Company Portal website to add their device.

3. Install the Company Portal app at [https://aka.ms/EnrollMyMac](https://aka.ms/EnrollMyMac), and follow the instructions in the app.

### Confirm that a Mac is onboarded

1. To confirm that the device is associated with your company, use the following Python command in Bash:

   `mdatp health --field org_id`.

2. If you're using macOS 10.15 (Catalina) or later, grant Defender for Business consent to protect your device. Go to **System Preferences** > **Security & Privacy** > **Privacy** > **Full Disk Access**. Select the lock icon at the bottom of the dialog to make changes, and then select **Microsoft Defender for Business** (or **Defender for Endpoint**, if that's what you see).

3. To verify that the device is onboarded, use the following command in Bash:

   `mdatp health --field real_time_protection_enabled`

After a device is enrolled in Intune, you can add it to a device group. [Learn more about device groups in Defender for Business](mdb-create-edit-device-groups.md).

## View a list of onboarded devices

To view the list of devices that are onboarded to Defender for Business, go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). In the navigation pane, go to **Assets** > **Devices**.

## Next steps

- If you have other devices to onboard, select the tab for those devices ([Windows 10 and 11, Mac, Servers, or Mobile devices](#what-to-do)), and follow the guidance on that tab.
- If you're done onboarding devices, go to [Step 5: Configure your security settings and policies in Defender for Business](mdb-configure-security-settings.md).
- See [Get started using Defender for Business](mdb-get-started.md).

## [**Servers**](#tab/Servers)

## Servers

> [!NOTE]
> If you're planning to onboard an instance of Windows Server or Linux Server, you'll need an additional license, such as [Microsoft Defender for Business servers](get-defender-business-servers.md). Alternately, you could use [Microsoft Defender for Servers](/azure/defender-for-cloud/defender-for-servers-introduction); however, your Defender for Business experience could change when you add an enterprise plan, such as Defender for Servers Plan 1 or Plan 2. To learn more, see [What happens if I have a mix of Microsoft endpoint security subscriptions?](mdb-faq.yml#what-happens-if-i-have-a-mix-of-microsoft-endpoint-security-subscriptions).

Choose the operating system for your server:

- [Windows Server](#windows-server)
- [Linux Server](#linux-server)

## Windows Server

> [!IMPORTANT]
> Make sure that you meet the following requirements before you onboard a Windows Server endpoint:
> - You have a Microsoft Defender for Business servers license. (See [How to get Microsoft Defender for Business servers](get-defender-business-servers.md).)
> - The enforcement scope for Windows Server is turned on. Go to **Settings** > **Endpoints** > **Configuration management** > **Enforcement scope**. Select **Use MDE to enforce security configuration settings from MEM**, select  **Windows Server**, and then select **Save**.

You can onboard an instance of Windows Server to Defender for Business by using a local script.

### Local script for Windows Server

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows Server 1803, 2019, and 2022**, and then in the **Deployment method** section, choose **Local script**. 

   If you select **Windows Server 2012 R2 and 2016**, you'll have two packages to download and run: an installation package and an onboarding package. The installation package contains an MSI file that installs the Defender for Business agent. The onboarding package contains the script to onboard your Windows Server endpoint to Defender for Business.

4. Select **Download onboarding package**. We recommend that you save the onboarding package to a removable drive.

   If you selected **Windows Server 2012 R2 and 2016**, also select **Download installation package**, and save the package to a removable drive

5. On your Windows Server endpoint, extract the contents of the installation/onboarding package to a location such as the Desktop folder. You should have a file named `WindowsDefenderATPLocalOnboardingScript.cmd`. 

   If you're onboarding Windows Server 2012 R2 or Windows Server 2016, extract the installation package first.

6. Open a command prompt as an administrator.

7. If you're onboarding Windows Server 2012R2 or Windows Server 2016, run the following command:

   `Msiexec /i md4ws.msi /quiet` 

   If you're onboarding Windows Server 1803, 2019, or 2022, skip this step, and go to step 8.

8. Type the location of the script file. For example, if you copied the file to the Desktop folder, you would type `%userprofile%\Desktop\WindowsDefenderATPLocalOnboardingScript.cmd`, and then press Enter (or select **OK**).

9. Go to [Run a detection test on Windows Server](#run-a-detection-test-on-windows-server).

### Run a detection test on Windows Server

After you onboard your Windows Server endpoint to Defender for Business, you can run a detection test to make sure that everything is working correctly:

1. On the Windows Server device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command runs, the Command Prompt window will close automatically. If successful, the detection test will be marked as completed, and a new alert will appear in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device in about 10 minutes.

## Linux Server

> [!IMPORTANT]
> Make sure that you meet the following requirements before you onboard a Linux Server endpoint:
> - You have a Microsoft Defender for Business servers license. (See [How to get Microsoft Defender for Business servers](get-defender-business-servers.md).)
> - You meet the [prerequisites for Microsoft Defender for Endpoint on Linux](../defender-endpoint/microsoft-defender-endpoint-linux.md#prerequisites).

### Onboard Linux Server endpoints

You can use the following methods to onboard an instance of Linux Server to Defender for Business:

- **Local script:** See [Deploy Microsoft Defender for Endpoint on Linux manually](../defender-endpoint/linux-install-manually.md).
- **Ansible:** See [Deploy Microsoft Defender for Endpoint on Linux with Ansible](../defender-endpoint/linux-install-with-ansible.md).
- **Chef:** See [Deploy Defender for Endpoint on Linux with Chef](../defender-endpoint/linux-deploy-defender-for-endpoint-with-chef.md).
- **Puppet:** See [Deploy Microsoft Defender for Endpoint on Linux with Puppet](../defender-endpoint/linux-install-with-puppet.md).

> [!NOTE]
> Onboarding an instance of Linux Server to Defender for Business is the same as onboarding to [Microsoft Defender for Endpoint on Linux](../defender-endpoint/microsoft-defender-endpoint-linux.md).

## View a list of onboarded devices

To view the list of devices that are onboarded to Defender for Business, go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). In the navigation pane, go to **Assets** > **Devices**.

## Next steps

- If you have other devices to onboard, select the tab for those devices ([Windows 10 and 11, Mac, Servers, or Mobile devices](#what-to-do)), and follow the guidance on that tab.
- If you're done onboarding devices, go to [Step 5: Configure your security settings and policies in Defender for Business](mdb-configure-security-settings.md).
- See [Get started using Defender for Business](mdb-get-started.md).

## [**Mobile devices**](#tab/mobiles)

## Mobile devices

Use Microsoft Intune to onboard mobile devices, such as Android and iOS/iPadOS devices. See the following resources to get help enrolling these devices into Intune:

- [Enroll Android devices](/mem/intune/enrollment/android-enroll)
- [Enroll iOS or iPadOS devices](/mem/intune/enrollment/ios-enroll)

After a device is enrolled in Intune, you can add it to a device group. [Learn more about device groups in Defender for Business](mdb-create-edit-device-groups.md).

> [!NOTE]
> The standalone version of Defender for Business does not include the Intune license that is required to onboard iOS and Android devices. You can add Intune to your Defender for Business subscription to onboard mobile devices. Intune is included in Microsoft 365 Business Premium.

## View a list of onboarded devices

To view the list of devices that are onboarded to Defender for Business, go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). In the navigation pane, go to **Assets** > **Devices**.

## Next steps

- If you have other devices to onboard, select the tab for those devices ([Windows 10 and 11, Mac, Servers, or Mobile devices](#what-to-do)), and follow the guidance on that tab.
- If you're done onboarding devices, go to [Step 5: Configure your security settings and policies in Defender for Business](mdb-configure-security-settings.md).
- See [Get started using Defender for Business](mdb-get-started.md).
