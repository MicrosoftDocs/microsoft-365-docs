---
title: Onboard devices to Microsoft Defender for Business (preview)
description: Learn about device onboarding options in Microsoft Defender for Business (preview)
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 12/23/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Onboard devices to Microsoft Defender for Business (preview)

> [!IMPORTANT]
> Microsoft Defender for Business is now in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. We will onboard an initial set of customers and partners in the coming weeks and will expand the preview leading up to general availability. Note that preview will launch with an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

With Microsoft Defender for Business (preview), you have several options to choose from for onboarding your company's devices. This article walks you through your options and includes an overview of how onboarding works.

## What to do

1. [Learn about onboarding methods](#types-of-onboarding-methods), and determine whether you are using automatic onboarding or manual onboarding.

2. Do one of the following:

   - If you're using automatic onboarding, proceed to [Step 5: Configure your security settings and policies in Microsoft Defender for Business (preview)](mdb-configure-security-settings.md).
   - If you're onboarding devices manually, proceed to [Onboard a device using a local script in Microsoft 365 Defender](#onboard-a-device-using-a-local-script-in-defender-for-business).
   - If you're already using Microsoft Intune, proceed to [Onboard devices using Microsoft Intune](#onboard-devices-using-microsoft-intune).

3. [Run a detection test](#run-a-detection-test) for newly onboarded devices.

4. [See next steps](#next-steps). 

This article also includes information about [how to offboard a device](#what-if-i-want-to-offboard-a-device).

## Types of onboarding methods

The following table describes the types of onboarding methods that are supported in Defender for Business during preview. 
<br/><br/>

| Onboarding method  | Description  |
|---------|---------|
| **Automatic onboarding**<br/>(*available to customers who are already using Microsoft Endpoint Manager*) | If you were already using Microsoft Endpoint Manager before getting Defender for Business (preview), Defender for Business will detect that. You'll be asked if you want to use the automatic onboarding process for devices that were previously onboarded to Microsoft Endpoint Manager. <br/><br/>Automatic onboarding sets up a connection between Defender for Business (preview) and Microsoft Endpoint Manager, and then onboards devices to Defender for Business (preview). This option enables you to onboard devices to Defender for Business (preview) quickly and efficiently. All Windows devices that are currently enrolled in Microsoft Endpoint Manager will be onboarded to Defender for Business. <br/><br/>If you choose automatic onboarding, skip the procedures in this article and proceed to [Step 5: Configure your security settings and policies in Microsoft Defender for Business (preview)](mdb-configure-security-settings.md).  |
| **Local script**<br/>(*recommended during preview; useful for onboarding a few devices at a time*)  | During preview, you can onboard devices in Defender for Business (preview) by using a script that you download and run on macOS, Windows 10 or 11, and Linux devices. Running the script on a device creates a trust with Azure Active Directory (Azure AD) and enrolls the device with Microsoft Intune. The process is very similar to that of [onboarding devices to Microsoft Defender for Endpoint](../defender-endpoint/onboarding.md).<br/><br/>To use this method, proceed to [Onboard a device using a local script in Microsoft 365 Defender](#onboard-a-device-using-a-local-script-in-defender-for-business). |
| **Microsoft Intune** <br/>(*available to customers who are already using Microsoft Intune*) | If you were already using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) before getting Defender for Business (preview), you can use Microsoft Intune to onboard devices. During preview, you can use Microsoft Intune to onboard Windows, iOS, macOS, Linux, and Android devices to Defender for Business (preview). <br/><br/>To use this method, see [Device enrollment in Intune](/mem/intune/enrollment/device-enrollment). |

> [!TIP]
> If something goes wrong while onboarding devices, see [Microsoft Defender for Business (preview) troubleshooting](mdb-troubleshooting.yml). 

## Onboard a device using a local script in Defender for Business

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows 10 and 11**, and then, under **Onboard a device**, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**. We recommend saving the onboarding package to a removable drive.

5. Follow the guidance in the following articles:

   - Windows devices: [Onboard Windows devices using a local script](../defender-endpoint/configure-endpoints-script.md#onboard-devices)
   - macOS devices: [Manual deployment for Microsoft Defender for Endpoint on macOS](../defender-endpoint/mac-install-manually.md#client-configuration)
   - Linux devices: [Deploy Microsoft Defender for Endpoint on Linux manually](../defender-endpoint/linux-install-manually.md#client-configuration)

6. Proceed to [Run a detection test](#run-a-detection-test) for Windows devices.

> [!IMPORTANT]
> If something goes wrong and your onboarding process fails, see [Microsoft Defender for Business (preview) troubleshooting](mdb-troubleshooting.yml).

## Onboard devices using Microsoft Intune

If you were already using Microsoft Intune before getting Defender for Business (preview), you can use Microsoft Intune to onboard devices. To get help with this, see [Device enrollment in Microsoft Intune](/mem/intune/enrollment/device-enrollment).

## Run a detection test

After you have onboarded a Windows device manually, you can run a detection test to make sure that everything is working correctly with Defender for Business (preview).

1. On the Windows device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command has run, the Command Prompt window will close automatically. If successful, the detection test will be marked as completed, and a new alert will appear in the Microsoft 365 Defender portal for the newly onboarded device in about 10 minutes.

## What if I want to offboard a device?

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