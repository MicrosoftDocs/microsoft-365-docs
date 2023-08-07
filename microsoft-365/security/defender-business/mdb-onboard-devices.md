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
ms.date: 07/19/2023
ms.reviewer: efratka, nehabha
f1.keywords: NOCSH 
ms.collection: 
 - SMB
 - m365-security
 - m365solution-mdb-setup
 - highpri
 - tier1
---

# Onboard devices to Microsoft Defender for Business

This article describes how to onboard devices to Defender for Business.

:::image type="content" source="media/mdb-setup-step5.png" alt-text="Visual depicting step 5 - onboarding devices to Defender for Business.":::

Onboard your business devices to protect them right away. You can choose from several options to onboard your company's devices. This article walks you through your options and describes how onboarding works.

## What to do

1. Select a tab: 
   - **Windows 10 and 11**
   - **Mac**
   - **Mobile** (new capabilities are available for iOS and Android devices!)
   - **Servers** (Windows Server or Linux Server)
2. View your onboarding options, and follow the guidance on the selected tab.
3. [View a list of onboarded devices](#view-a-list-of-onboarded-devices).
4. [Run a phishing test on a device](#run-a-phishing-test-on-a-device). 
5. Proceed to your [next steps](#next-steps).

## [**Windows 10 and 11**](#tab/Windows10and11)

## Windows 10 and 11

> [!NOTE]
> Windows devices must be running one of the following operating systems:  
> - Windows 10 or 11 Business
> - Windows 10 or 11 Professional
> - Windows 10 or 11 Enterprise
> 
> For more information, see [Microsoft Defender for Business requirements](mdb-requirements.md).
> 
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

You can onboard Windows clients and other devices in Intune by using the Intune admin center ([https://intune.microsoft.com](https://intune.microsoft.com)). There are several methods available for enrolling devices in Intune. We recommend using one of the following methods:

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

After the command runs, the Command Prompt window closes automatically. If successful, the detection test is marked as completed, and a new alert appears in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device within about 10 minutes.

## [**Mac**](#tab/mac)

## Mac

> [!NOTE]
> We recommend that you use a [local script to onboard Mac](#local-script-for-mac). Although you can [set up enrollment for Mac using Intune](/mem/intune/enrollment/macos-enroll), the local script is the simplest method for onboarding Mac to Defender for Business. 

Choose one of the following options to onboard Mac:

- [Local script for Mac](#local-script-for-mac) (*recommended*)
- [Intune for Mac](#intune-for-mac) (if you're already using Intune)

### Local script for Mac

When you run the local script on Mac, it creates a trust with Azure Active Directory if that trust doesn't already exist. It enrolls the Mac in Microsoft Intune if it isn't already enrolled, and then onboards the Mac to Defender for Business. We recommend that you onboard up to 10 devices at a time using this method.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select **macOS**. In the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**, and save it to a removable drive. Also select **Download installation package**, and save it to your removable device.

5. On Mac, save the installation package as `wdav.pkg` to a local directory.

6. Save the onboarding package as `WindowsDefenderATPOnboardingPackage.zip` to the same directory you used for the installation package.

7. Use Finder to navigate to `wdav.pkg` you saved, and then open it.

8. Select **Continue**, agree with the license terms, and then enter your password when prompted.

9. You're prompted to allow installation of a driver from Microsoft (either "System Extension Blocked" or "Installation is on hold", or both). You must allow the driver installation: Select **Open Security Preferences** or **Open System Preferences** > **Security & Privacy**, and then select **Allow**.

10. Use the following Bash command to run the onboarding package:

   ```bash
   /usr/bin/unzip WindowsDefenderATPOnboardingPackage.zip \
   && /bin/chmod +x MicrosoftDefenderATPOnboardingMacOs.sh \
   && /bin/bash -c MicrosoftDefenderATPOnboardingMacOs.sh
   ```

After Mac is enrolled in Intune, you can add it to a device group. [Learn more about device groups in Defender for Business](mdb-create-edit-device-groups.md).

### Intune for Mac

If you already have Intune, you can enroll Mac computers by using the Intune admin center ([https://intune.microsoft.com](https://intune.microsoft.com)). There are several methods available for enrolling Mac in Intune. We recommend one of the following methods:

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

## [**Mobile devices**](#tab/mobiles)

## Mobile devices

You can use the following methods to onboard mobile devices, such as Android and iOS devices:

- [Use the Microsoft Defender app](#use-the-microsoft-defender-app)
- [Use Microsoft Intune](#use-microsoft-intune)

### Use the Microsoft Defender app

[Mobile threat defense capabilities](mdb-mtd.md) are now generally available to Defender for Business customers. With these capabilities, you can now onboard mobile devices (such as Android and iOS) by using the Microsoft Defender app. With this method, users download the app from Google Play or the Apple App Store, sign in, and complete onboarding steps.

> [!IMPORTANT]
> Make sure that all of the following requirements are met before onboarding mobile devices:
> 1. Defender for Business has finished provisioning. In the [Microsoft 365 Defender portal](https://security.microsoft.com), go to **Assets** > **Devices**.<br/>- If you see a message that says, "Hang on! We're preparing new spaces for your data and connecting them," it means that Defender for Business hasn't finished provisioning. This process is happening now, and can take up to 24 hours to complete. <br/>- If you see a list of devices, or you're prompted to onboard devices, it means Defender for Business provisioning has completed. 
> 2. Users have downloaded the Microsoft Authenticator app on their device, and have registered their device using their work or school account for Microsoft 365.

| Device | Procedure |
|:---|:---|
| Android | 1. On the device, go to the Google Play store.<br/><br/>2. If you haven't already done so, download and install the Microsoft Authenticator app. Sign in, and register your device in the Microsoft Authenticator app. <br/><br/>3. In the Google Play store, search for the Microsoft Defender app. <br/><br/>4. On the app page, scroll down and select **Join the beta** > **Join**.<br/><br/>5. Wait for the process to complete. It might take a few hours for the process of joining the beta program to complete.  You'll see text that says, "Joining the beta..."<br/><br/>6. After you've enrolled into the beta, verify that the beta version of the app looks like `1.0.xxxx.0201`, and then install the app.<br/><br/>7. Open the app, sign in, and complete the onboarding process. |
| iOS | 1. On the device, go to the Apple App Store. <br/><br/>2. If you haven't already done so, download and install the Microsoft Authenticator app. Sign in, and register your device in the Microsoft Authenticator app.<br/><br/>3. In the Apple App Store, search for the Microsoft Defender app.<br/><br/>4. Sign in and install the app. <br/><br/>5. Agree to the terms of use to continue. <br/><br/>6. Allow the Microsoft Defender app to set up a VPN connection and add VPN configurations. <br/><br/>7. Choose whether to allow notifications (such as alerts).  |

> [!TIP]
> After you have onboarded mobile devices using the Microsoft Defender app, proceed to [run a phishing test on a device](#run-a-phishing-test-on-a-device).

### Use Microsoft Intune

If your subscription includes Microsoft Intune, you can use it to onboard mobile devices, such as Android and iOS/iPadOS devices. See the following resources to get help enrolling these devices into Intune:

- [Enroll Android devices](/mem/intune/enrollment/android-enroll)
- [Enroll iOS or iPadOS devices](/mem/intune/enrollment/ios-enroll)

After a device is enrolled in Intune, you can add it to a device group. [Learn more about device groups in Defender for Business](mdb-create-edit-device-groups.md).


## [**Servers**](#tab/Servers)

## Servers

> [!NOTE]
> If you're planning to onboard an instance of Windows Server or Linux Server, you'll need an additional license, such as [Microsoft Defender for Business servers](get-defender-business.md#how-to-get-microsoft-defender-for-business-servers). Alternately, you could use [Microsoft Defender for Servers Plan 1 or Plan 2](/azure/defender-for-cloud/plan-defender-for-servers). To learn more, see [What happens if I have a mix of Microsoft endpoint security subscriptions](mdb-faq.yml#what-happens-if-i-have-a-mix-of-microsoft-endpoint-security-subscriptions)?

Choose the operating system for your server:

- [Windows Server](#windows-server)
- [Linux Server](#linux-server)

## Windows Server

> [!IMPORTANT]
> Make sure that you meet the following requirements before you onboard a Windows Server endpoint:
> - You have a Microsoft Defender for Business servers license. (See [How to get Microsoft Defender for Business servers](get-defender-business.md#how-to-get-microsoft-defender-for-business-servers).)
> - The enforcement scope for Windows Server is turned on. Go to **Settings** > **Endpoints** > **Configuration management** > **Enforcement scope**. Select **Use MDE to enforce security configuration settings from MEM**, select  **Windows Server**, and then select **Save**.

You can onboard an instance of Windows Server to Defender for Business by using a local script.

### Local script for Windows Server

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows Server 1803, 2019, and 2022**, and then in the **Deployment method** section, choose **Local script**. 

   If you select **Windows Server 2012 R2 and 2016**, you have two packages to download and run: an installation package and an onboarding package. The installation package contains an MSI file that installs the Defender for Business agent. The onboarding package contains the script to onboard your Windows Server endpoint to Defender for Business.

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

After the command runs, the Command Prompt window will close automatically. If successful, the detection test is marked as completed, and a new alert appears in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device within about 10 minutes.

## Linux Server

> [!IMPORTANT]
> Make sure that you meet the following requirements before you onboard a Linux Server endpoint:
> - You have a Microsoft Defender for Business servers license. (See [How to get Microsoft Defender for Business servers](get-defender-business.md#how-to-get-microsoft-defender-for-business-servers).)
> - You meet the [prerequisites for Microsoft Defender for Endpoint on Linux](../defender-endpoint/microsoft-defender-endpoint-linux.md#prerequisites).

### Onboard Linux Server endpoints

You can use the following methods to onboard an instance of Linux Server to Defender for Business:

- **Local script:** See [Deploy Microsoft Defender for Endpoint on Linux manually](../defender-endpoint/linux-install-manually.md).
- **Ansible:** See [Deploy Microsoft Defender for Endpoint on Linux with Ansible](../defender-endpoint/linux-install-with-ansible.md).
- **Chef:** See [Deploy Defender for Endpoint on Linux with Chef](../defender-endpoint/linux-deploy-defender-for-endpoint-with-chef.md).
- **Puppet:** See [Deploy Microsoft Defender for Endpoint on Linux with Puppet](../defender-endpoint/linux-install-with-puppet.md).

> [!NOTE]
> Onboarding an instance of Linux Server to Defender for Business is the same as onboarding to [Microsoft Defender for Endpoint on Linux](../defender-endpoint/microsoft-defender-endpoint-linux.md).

---

## View a list of onboarded devices

> [!IMPORTANT]
> You must be assigned an appropriate role, such as Global Administrator, Security Administrator, or Security Reader to perform the following procedure. For more information, see [Roles in Defender for Business](mdb-roles-permissions.md#roles-in-defender-for-business).

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, go to **Assets** > **Devices**. The **Device inventory** view opens.

## Run a phishing test on a device

After you've onboarded a device, you can run a quick phishing test to make sure the device is connected and that alerts are generated as expected.

1. On a device, go to [https://smartscreentestratings2.net](https://smartscreentestratings2.net). Defender for Business should block that URL on the user's device.

2. As a member of your organization's security team, go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

3. In the navigation pane, go to **Incidents**. You should see an informational alert that indicates a device tried to access a phishing site.

## Next steps

- If you have other devices to onboard, select the tab for those devices ([Windows 10 and 11, Mac, Servers, or Mobile devices](#what-to-do)), and follow the guidance on that tab.
- If you're done onboarding devices, proceed to [Step 6: Configure your security settings and policies in Defender for Business](mdb-configure-security-settings.md).
