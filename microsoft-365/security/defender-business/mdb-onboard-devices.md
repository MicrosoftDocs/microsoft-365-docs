---
title: Onboard devices to Microsoft Defender for Business
description: Understand your configuration settings in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 09/13/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
---

# Onboard devices to Microsoft Defender for Business

Microsoft Defender for Business is designed with the busy small business in mind. With preconfigured policies and settings that are based on industry best practices, Microsoft Defender for Business helps protect your company’s devices as soon as they are onboarded. 

The process of onboarding devices consists of the following steps:

1. [Confirm that you have Microsoft Defender for Business](#confirm-that-you-have-microsoft-defender-for-business).
2. [Join devices to Azure Active Directory](#join-a-device-to-azure-ad) (Azure AD).
3. [Enroll devices in Microsoft Endpoint Manager](#enroll-a-device-in-microsoft-endpoint-manager).
4. [Onboard devices to Microsoft Defender for Business](#onboard-devices-to-microsoft-defender-for-business).
5. [Run a detection test](#run-a-detection-test).

## Confirm that you have Microsoft Defender for Business

> [!IMPORTANT]
> You must be a Billing Admin or Global Admin to perform this task.

1. Go to the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)), and sign in.

2. Go to Billing > Licenses. Confirm that you have Microsoft Defender for Business. 

   > [!TIP]
   > You might see **Microsoft Defender for Endpoint - SMB** listed. This subscription is Microsoft Defender for Business.

## Join a device to Azure AD

1. On a Windows 10 device, choose **Settings** > **Accounts** > **Access work or school**.

2. Choose **+ Connect**, type your email address for Microsoft 365, and then choose **Next**. 

3. Sign in using your work or school account for Microsoft 365.

## Enroll a device in Microsoft Endpoint Manager

1. On a Windows 10 device, open the Microsoft Store app, and search for *Company Portal*.

2. In the list of results, select **Company Portal**, and choose **Get**, and then choose **Launch**.

3. Sign in using your work or school account for Microsoft 365.

4. Select **Allow my organization to manage my device**, and then choose **Yes**.

5. When your device has finished adding, choose **Done**. 

6. In the Company Portal app, make sure that your device is connected to work. If it isn't, select **Connect this device to work**, and then follow the prompts.

7. In the Company Portal app, when you see **You're all set**, select **Done**.

> [!TIP]
> If you need help with this procedure, see [Quickstart: Enroll your Windows 10 device](/mem/intune/enrollment/quickstart-enroll-windows-device).

### Confirm that devices are enrolled in Microsoft Intune

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com/](https://endpoint.microsoft.com/)) and sign in.

2. Choose **Devices**, and then choose **Enrollment status**. If any devices failed to enroll, you will see them listed here.

## Onboard devices to Microsoft Defender for Business

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Device inventory**. If this is the first time you are accessing the Microsoft 365 Defender portal, you'll see a message that indicates your tenant is being created.

3. Choose whether to onboard devices using Microsoft Intune (recommended), or manually using a script for up to 10 devices.

### Onboard devices using Microsoft Intune

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), select **Settings** > **Endpoints** > **Advanced features**.

2. Scroll down to **Microsoft Intune connection**, and turn this setting on.

3. In the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com/](https://endpoint.microsoft.com/)), choose **Endpoint security**, and then under **Setup**, choose **Microsoft Defender for Endpoint**. 

4. Under **MDM Compliance Policy Settings**, set the **Connect Windows devices to Microsoft Defender for Endpoint** to **On**.

5. Choose **Save**.

### Use a script to onboard devices

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

Soon after the script runs, the device is onboarded to Microsoft Defender for Business. You can [run a detection test](#run-a-detection-test) to confirm.

## Run a detection test

After each device is onboarded, you can run a detection test. 

1. On a Windows 10 device, open Command Prompt as an administrator.

2. Run the following command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference= 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-WDATP-test\\invoice.exe');Start-Process 'C:\\test-WDATP-test\\invoice.exe'
   ```

3. Wait a few minutes, and then, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Incidents**. You should see a new alert indicating the detection test was successful.

## What if I want to offboard a device?

See [Offboard a device](mdb-manage-devices.md#offboard-a-device).

## Next steps

- [Manage devices in Microsoft Defender for Business](mdb-manage-devices.md)

- [View or edit device policies in Microsoft Defender for Business](mdb-view-edit-device-policies.md)