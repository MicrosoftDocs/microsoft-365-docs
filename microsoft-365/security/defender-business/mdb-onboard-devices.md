---
title: Onboard devices to Microsoft Defender for business
description: Understand your configuration settings in Microsoft Defender for business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 07/15/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
---

# Onboard devices to Microsoft Defender for business

Microsoft Defender for business is designed with the busy small business in mind. With preconfigured policies and settings based on industry best practices, Microsoft Defender for business helps protect your company’s devices as soon as they are onboarded. You can onboard devices in the Microsoft 365 Defender portal or in the Microsoft Endpoint Manager (MEM) admin center.

> [!NOTE]
> Initially, Microsoft Defender for business supports Windows 10 devices only; however, we are planning to add support for additional operating systems soon. You can choose from several different methods to onboard devices:
>
> - [Use a script to onboard devices](#use-a-script-to-onboard-devices)
> - [Use Microsoft Intune to onboard devices](#use-microsoft-intune-to-onboard-devices)

## Use a script to onboard devices

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Settings**, and then choose **Endpoints**.

3. Under **Device management**, choose **Onboarding**.

4. Select the Windows 10 operating system.

5. In the **Onboard a device** section, in the **Deployment method** list, select **Local Script**, and then choose **Download package**.

6. Save the zipped folder to a location, such as a removable drive.

7. On each device, follow these steps: 

   1. Copy the configuration package to the device.
   2. Extract its contents to a location you can find easily (such as the Desktop or to a `C:\Temp folder`). Notice that the folder contains a file called `WindowsDefenderATPLocalOnboardingScript.cmd`.
   3. Select the Start menu, and then type `cmd` to find the Command Prompt app. Then run Command Prompt as an administrator.
   4. In the Command Prompt window, type the location of the script file that you saved in step 7b. For example, if you saved it to the Desktop, you’d type `%userprofile%\Desktop\WindowsDefenderATPLocalOnboardingScript.cmd`.
   5. Press the Enter key, or select **OK**.

Soon after the script runs, the device is onboarded to Microsoft Defender for business. You can [run a detection test](#run-a-detection-test) to confirm.

## Use Microsoft Intune to onboard devices

1. Make sure you meet the following requirements:

   - Your company has [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-whatis).
   - Your company has Microsoft Intune configured for users to [perform auto-enrollment](/mem/intune/enrollment/windows-enroll). (See [Set up Intune](/mem/intune/fundamentals/setup-steps).) 



## Run a detection test

After each device is onboarded, you can run a detection test. 

1. Open Command Prompt as an administrator.

2. Run the following command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference= 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-WDATP-test\\invoice.exe');Start-Process 'C:\\test-WDATP-test\\invoice.exe'
   ```
3. Wait a few minutes, and then, in the Microsoft 365 Defender portal (https://security.microsoft.com), go to **Incidents**. You should see a new alert indicating the detection test was successful.
