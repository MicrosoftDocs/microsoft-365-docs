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

> [!NOTE]
> Microsoft Defender for Business is now included in [Microsoft 365 Business Premium](../../business-premium/index.md). 

With Microsoft Defender for Business, you have several options to choose from for onboarding your company's devices. This article walks you through your options and includes an overview of how onboarding works.

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

## What to do

1. Select the tab for your operating system: (Windows client, Windows Server, macOS, or mobile devices).

2. View your onboarding options and follow the guidance on the selected tab.

3. Proceed to your next steps.

## [**Windows clients**](#tab/WindowsClients)

Choose one of the following options to onboard Windows client devices to Defender for Business:

- [Automatic onboarding](#automatic-onboarding-for-windows-clients) (for devices that are already enrolled in Microsoft Endpoint Manager, which includes Microsoft Intune and Mobile Device Management capabilities)
- [Local script](#local-script-for-windows-clients) (for onboarding devices manually in the Microsoft 365 Defender portal)
- [Microsoft Endpoint Manager](#endpoint-manager-for-windows-clients) (included in [Microsoft 365 Business Premium](../../business-premium/index.md))

### Automatic onboarding for Windows clients

If Windows devices are already enrolled in Endpoint Manager, Defender for Business will detect those devices while you are in the process of setting up and configuring Defender for Business. You'll be asked if you want to use automatic onboarding for all or some of your Windows devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later.

If you're not asked about automatic onboarding, it's most likely because you don't have devices enrolled in Endpoint Manager yet. In this case, choose either the [local script method](#local-script-for-windows-clients) (recommended), or proceed to [enroll your Windows client devices in Endpoint Manager](#endpoint-manager-for-windows-clients).

> [!TIP]
> - We recommend selecting the "all devices enrolled" option. That way, when Windows devices are enrolled in Endpoint Manager later on, they'll be onboarded to Defender for Business automatically. 
> - If you've been managing security policies and settings in Endpoint Manager, we recommend switching to the Microsoft 365 Defender portal to manage your devices, policies, and settings. To learn more, see [Choose where to manage security policies and devices](mdb-configure-security-settings.md#choose-where-to-manage-security-policies-and-devices).
> - To learn more about automatic onboarding, see step 3 in [Use the wizard to set up Microsoft Defender for Business](mdb-use-wizard.md).

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

7. Type the location of the script file. For example, if you copied the file to the Desktop folder, you would type `%userprofile%\Desktop\WindowsDefenderATPLocalOnboardingScript.cmd`, and then press the Enter key (or select **OK**).

8. After the script runs, proceed to [Run a detection test](#running-a-detection-test-on-a-windows-client).

### Endpoint Manager for Windows clients

If your subscription includes [Microsoft Endpoint Manager](/mem/endpoint-manager-overview), you can onboard Windows clients and other devices in the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). For example, if you have [Microsoft 365 Business Premium](../../business/index.yml), you have Endpoint Manager as part of your subscription. Endpoint Manager includes [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Mobile Device Management capabilities](/mem/intune/fundamentals/what-is-device-management). 

There are several methods available for enrolling devices in Intune. We recommend starting with one of the following methods:

- [Enable Windows automatic enrollment](/mem/intune/enrollment/windows-enroll) for company-owned or company-managed devices
- [Ask users to enroll their own Windows 10/11 devices in Intune](/mem/intune/user-help/enroll-windows-10-device)

#### To enable automatic enrollment for Windows devices

When you set up automatic enrollment, users add their work account to the device. In the background, the device registers and joins Azure Active Directory (Azure AD), and is enrolled in Intune.

1. Go to the Azure portal ([https://portal.azure.com/](https://portal.azure.com/)) and sign in. 

2. Select **Azure Active Directory** > **Mobility (MDM and MAM)** > **Microsoft Intune**.

3. Configure the MDM User scope and the MAM user scope.

   :::image type="content" source="media/mem-mam-scope-azure-ad.png" alt-text="Screenshot of setting MDM user scope and MAM user scope in Intune.":::

   - For MDM User scope, we recommend selecting **All** so that all users can automatically enroll their Windows devices.
   - In the MAM user scope section, we recommend using the following default values for the URLs:

       - **MDM Terms of use URL**
       - **MDM Discovery URL**
       - **MDM Compliance URL**

4. Choose **Save**.

5. After a device has been enrolled in Intune, you can add it to a device group. [Learn more about device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md).


> [!TIP]
> To learn more about automatic enrollment, see [Enable Windows automatic enrollment](/mem/intune/enrollment/windows-enroll).

#### To have users enroll their own Windows devices

1. Watch the following video to see how enrollment works: <br/><br/>

   > [!VIDEO https://www.youtube.com/embed/TKQxEckBHiE?rel=0]  

2. Share this article with users in your organization: [Enroll Windows 10/11 devices in Intune](/mem/intune/user-help/enroll-windows-10-device).

3. After a device has been enrolled in Intune, you can add it to a device group. [Learn more about device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md).

### Running a detection test on a Windows client

After you've onboarded Windows devices to Defender for Business, you can run a detection test on a Windows device to make sure that everything is working correctly.

1. On the Windows device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command has run, the Command Prompt window will close automatically. If successful, the detection test will be marked as completed, and a new alert will appear in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device in about 10 minutes.

## View a list of onboarded devices

To view the list of devices that are onboarded to Defender for Business, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, under **Endpoints**, choose **Device invetory**.

## Next steps

- If you have other devices to onboard, select the tab that corresponds to the operating system on the devices [(Windows clients, Windows Server, macOS, or mobile devices](#what-to-do)), and follow the guidance on that tab.

- If you're done onboarding devices, proceed to [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)

- See [Get started using Microsoft Defender for Business](mdb-get-started.md).

## [**Windows Server**](#tab/WindowsServers)

*The ability to onboard endpoints running Windows Server is currently in preview.*

See LINK.

## [**macOS**](#tab/macOS)

> [!NOTE]
> - We recommend using a [local script to onboard macOS devices](#local-script-for-macos). Although you can [set up enrollment for macOS devices in Intune](/mem/intune/enrollment/macos-enroll), the local script is the simplest method for onboarding macOS devices to Defender for Business. 

Choose one of the following options to onboard macOS devices:

- [Local script for macOS](#local-script-for-macos) (*recommended*)
- [Endpoint Manager for macOS](#endpoint-manager-for-macos)

### Local script for macOS

When you run the local script on a macOS device, it creates a trust with Azure Active Directory (if that trust doesn't already exist), enrolls the device in Microsoft Endpoint Manager (if it isn't already enrolled), and then onboards the device to Defender for Business. We recommend onboarding up to 10 devices at a time using this method.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select **macOS**, and then, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**, and save it to a removable drive. Also select **Download installation package**, and save it to your removable device.

5. On a macOS device, save the installation package as `wdav.pkg` to a local directory.

6. Save the onboarding package as `WindowsDefenderATPOnboardingPackage.zip` to the same directory you used for the installation package.

7. Use Finder to navigate to `wdav.pkg` you saved, and then open it.

8. Select **Continue**, agree with the License terms, and then enter your password when prompted.

9. You will be prompted to allow a driver from Microsoft to be installed (either "System Extension Blocked" or "Installation is on hold", or both. The driver must be allowed to be installed. To allow the installation, select **Open Security Preferences** or **Open System Preferences** > **Security & Privacy**, and then select **Allow**.

10. Use the following Python command in Bash to run the onboarding package: `/usr/bin/python MicrosoftDefenderATPOnboardingMacOs.py`

11. After a device has been enrolled in Intune, you can add it to a device group. [Learn more about device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md).

### Endpoint Manager for macOS

If your subscription includes [Microsoft Endpoint Manager](/mem/endpoint-manager-overview), you can onboard macOS devices in the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). For example, if you have [Microsoft 365 Business Premium](../../business/index.yml), you have Endpoint Manager as part of your subscription. Endpoint Manager includes [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Mobile Device Management capabilities](/mem/intune/fundamentals/what-is-device-management). 

There are several methods available for enrolling devices in Intune. We recommend starting with one of the following methods:

- [Choose an option for company-owned macOS devices](#options-for-company-owned-macos-devices)
- [Ask users to enroll their own macOS devices in Intune](#ask-users-to-enroll-their-own-macos-devices-in-intune)

#### Options for company-owned macOS devices

Choose one of the options in the following table to enroll company-managed macOS devices in Intune:

| Option  | Description  |
|---------|---------|
| Apple Automated Device Enrollment |  Use this method to automate the enrollment experience on devices purchased through Apple Business Manager or Apple School Manager. Automated device enrollment deploys the enrollment profile over-the-air, so you don't need to have physical access to devices. <br/><br/>See [Automatically enroll macOS devices with the Apple Business Manager or Apple School Manager](/mem/intune/enrollment/device-enrollment-program-enroll-macos). |
| Device enrolllment manager (DEM)  |  Use this method for large-scale deployments and when there are multiple people in your organization who can help with enrollment setup. Someone with device enrollment manager (DEM) permissions can enroll up to 1,000 devices with a single Azure Active Directory account. This method uses the Company Portal app or Microsoft Intune app to enroll devices. You can't use a DEM account to enroll devices via Automated Device Enrollment.<br/><br/> See [Enroll devices in Intune by using a device enrollment manager account](/mem/intune/enrollment/device-enrollment-manager-enroll).  |
| Direct enrollment  | Direct enrollment enrolls devices with no user affinity, so this method is best for devices that aren't associated with a single user. This method requires you to have physical access to the Macs you're enrolling. <br/><br/>See [Use Direct Enrollment for macOS devices](/mem/intune/enrollment/device-enrollment-direct-enroll-macos).      |

#### Ask users to enroll their own macOS devices in Intune

If your business prefers to have people enroll their own devices in Intune, ask users to follow these steps:

1. Go to the Company Portal website ([https://portal.manage.microsoft.com/](https://portal.manage.microsoft.com/)) and sign in.

2. Follow the instructions on the Company Portal website to add their device.

3. Install the Company Portal app at [https://aka.ms/EnrollMyMac](https://aka.ms/EnrollMyMac), and follow the instructions in the app.

### Confirm that a macOS device is onboarded

1. To confirm that the device is associated with your company, use the following Python command in Bash: `mdatp health --field org_id`.

2. If you are using macOS 10.15 (Catalina) or later, grant Defender for Business consent to protect your device. Go to **System Preferences** > **Security & Privacy** > **Privacy** > **Full Disk Access**. Select the lock icon to make changes (bottom of the dialog box), and then select **Microsoft Defender for Business** (or **Defender for Endpoint**, if that's what you see).

3. To verify that the device is onboarded, use the following command in Bash: `mdatp health --field real_time_protection_enabled`

4. After a device has been enrolled in Intune, you can add it to a device group. [Learn more about device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md).

## View a list of onboarded devices

To view the list of devices that are onboarded to Defender for Business, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, under **Endpoints**, choose **Device inventory**.

## Next steps

- If you have other devices to onboard, select the tab that corresponds to the operating system on the devices ([Windows clients, Windows Server, macOS, or mobile devices](#what-to-do)), and follow the guidance on that tab.

- If you're done onboarding devices, proceed to [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)

- See [Get started using Microsoft Defender for Business](mdb-get-started.md).

## [**mobile devices**](#tab/mobile)

You'll need Microsoft Intune to onboard mobile devices, such as Android and iOS/iPadOS devices. If you have [Microsoft 365 Business Premium](../../business/index.yml), you have Endpoint Manager as part of your subscription. Endpoint Manager includes [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Mobile Device Management capabilities](/mem/intune/fundamentals/what-is-device-management). 

See the following resources to get help enrolling these devices into Intune:

- [Enroll Android devices](/mem/intune/enrollment/android-enroll)
- [Enroll iOS or iPadOS devices](/mem/intune/enrollment/ios-enroll)

After a device has been enrolled in Intune, you can add it to a device group. [Learn more about device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md).

## Next steps

- If you have other devices to onboard, select the tab that corresponds to the operating system on the devices ([Windows clients, Windows Server, macOS, or mobile devices](#what-to-do)), and follow the guidance on that tab.

- If you're done onboarding devices, proceed to [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)

- See [Get started using Microsoft Defender for Business](mdb-get-started.md).
