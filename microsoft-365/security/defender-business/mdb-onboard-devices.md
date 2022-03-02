---
title: Onboard devices to Microsoft Defender for Business
description: Learn about device onboarding options in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 03/02/2022
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

# Onboard devices to Microsoft Defender for Business

> [!IMPORTANT]
> Microsoft Defender for Business is rolling out to Microsoft 365 Business Premium customers, beginning March 1, 2022. Defender for Business as a standalone subscription is in in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. Preview includes an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

The device onboarding experience in Defender for Business was built on processes that are similar to what we use in Microsoft Defender for Endpoint. Watch the following video to see how it works:<br/><br/>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

With Microsoft Defender for Business, you have several options to choose from for onboarding your organization's devices. This article walks you through your options and includes an overview of how onboarding works.

> [!TIP]
> To view more detailed information about device onboarding in Defender for Endpoint, see [Onboard devices and configure Microsoft Defender for Endpoint capabilities](../defender-endpoint/onboard-configure.md).

## What to do

1. See your options for [onboarding devices](#device-onboarding-methods), and select one of the following methods: 

   - [Automatic onboarding for Windows devices enrolled in Microsoft Endpoint Manager](#automatic-onboarding-for-windows-devices-enrolled-in-microsoft-endpoint-manager)
   - [Microsoft Defender for Business security configuration](#microsoft-defender-for-business-security-configuration)
   - [Microsoft Endpoint Manager (Microsoft Intune)](#microsoft-endpoint-manager)
   - [Local script for evaluating Defender for Business](#local-script-in-defender-for-business)

2. [Run a detection test](#run-a-detection-test) for newly onboarded Windows devices.

3. [See your next steps](#next-steps). 

This article also includes information about [Running a detection test for Windows devices](#run-a-detection-test) and [Offboarding a device](#offboarding-a-device).

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

## Device onboarding methods

The following table describes the most commonly used methods to onboard devices to Defender for Business. 

| Onboarding method  | Description  | OS |
|---------|---------|---------|
| **Automatic onboarding**<br/>(*available to customers who are already using Microsoft Endpoint Manager*) | *Microsoft 365 Business Premium customers already have Microsoft Intune, and can use this option*. Automatic onboarding sets up a connection between Defender for Business and Microsoft Endpoint Manager, and then onboards Windows devices to Defender for Business. In order to use this option, your devices must already be enrolled in Endpoint Manager.<br/><br/>To learn more, see [Automatic onboarding](#automatic-onboarding-for-windows-devices-enrolled-in-microsoft-endpoint-manager). | Windows |
| **Local script** <br/> | This option enables you to onboard individual devices to Defender for Business manually. You can onboard up to 10 devices at a time using the local script.<br/><br/>To learn more, see [Local script in Defender for Business](#local-script-in-defender-for-business). | Windows <br/>macOS |
| **Microsoft Intune** or **Microsoft Endpoint Manager**<br/>(*available to customers who are using Microsoft Intune or Endpoint Manager*) | [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Mobile Device Management](/mem/intune/enrollment/device-enrollment) are part of Endpoint Manager. Microsoft 365 Business Premium customers already have Microsoft Intune, and can use this option.<br/><br/>If you were already using Endpoint Manager before you got Defender for Business, you can opt to continue using Endpoint Manager to onboard and manage devices<br/><br/>To use this method, see [Microsoft Endpoint Manager](#microsoft-endpoint-manager). | Windows <br/>macOS<br/>iOS<br/>Android OS | 
| **Microsoft Defender for Business security configuration** <br/>(*uses the Microsoft 365 Defender portal*) | To use this option, you configure certain settings to facilitate communication between Defender for Business and Endpoint Manager. Then, you onboard devices in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) by using a package that you download and run on each device. A trust is established between devices and Azure Active Directory (Azure AD), and Defender for Business security policies are pushed to devices.<br/><br/>To learn more, see [Microsoft Defender for Business security configuration](#microsoft-defender-for-business-security-configuration). | Windows <br/>macOS |



> [!IMPORTANT]
> If something goes wrong and your onboarding process fails, see [Microsoft Defender for Business troubleshooting](mdb-troubleshooting.yml).

## Automatic onboarding for Windows devices enrolled in Microsoft Endpoint Manager

The automatic onboarding option applies to Windows devices only. Automatic onboarding is available if your organization was already using Microsoft Endpoint Manager, Microsoft Intune, or Mobile Device Management (MDM) in Microsoft Intune before you got Defender for Business, and you already have Windows devices enrolled in Endpoint Manager. 

If Windows devices are already enrolled in Endpoint Manager, Defender for Business will detect those devices while you are in the process of setting up and configuring Defender for Business. You'll be asked if you want to use automatic onboarding for all or some of your Windows devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more devices later.

To learn more about automatic onboarding, see step 3 in [Use the wizard to set up Microsoft Defender for Business](mdb-use-wizard.md).

## Microsoft Defender for Business security configuration

> [!NOTE]
> If you're already using Endpoint Manager to manage your devices and security policies, skip this method, and see [Microsoft Endpoint Manager](#microsoft-endpoint-manager) instead.

Microsoft Defender for Business security configuration was built on a capability known as [Security Management for Microsoft Defender for Endpoint (preview)](/mem/intune/protect/mde-security-integration). It enables you to onboard devices to Defender for Business in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) without requiring those devices to be fully enrolled in Microsoft Endpoint Manager beforehand. 

This method enables you to onboard devices and manage your antivirus and firewall policies in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). Here's how it works:

1. You download an onboarding package from the Microsoft 365 Defender portal, and then run the package on your devices to onboard those devices to Defender for Business.

2. Running the package establishes a trust between each device (if the trust doesn't already exist) and Azure Active Directory (Azure AD). 

3. Devices communicate with Endpoint Manager using their Azure AD Identity, and security policies in Defender for Business are pushed to devices.

4. You can view your devices and policies in both the Microsoft 365 Defender portal and the Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)).

To use this option, certain settings must be configured beforehand. To learn more, including prerequisites and supported operating systems, see [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration).

## Microsoft Endpoint Manager

If you were already using Endpoint Manager (which includes Microsoft Intune and Mobile Device Management), before you got Defender for Business, you can continue to use Endpoint Manager to onboard your organization's devices. With Endpoint Manager, you can onboard computers, tablets, and phones, including iOS and Android devices.

See [Device enrollment in Microsoft Intune](/mem/intune/enrollment/device-enrollment).

## Local script in Defender for Business

You can use a local script to onboard Windows and Mac devices. When you run the onboarding script on a device, it creates a trust with Azure Active Directory, enrolls the device in Microsoft Endpoint Manager, and onboards the device to Defender for Business. This method is useful for onboarding devices in Defender for Business. You can onboard up to 10 devices at a time.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows 10 and 11**, and then, under **Onboard a device**, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**. We recommend saving the onboarding package to a removable drive.

5. Follow the guidance in the following articles:

   - Windows devices: [Onboard Windows devices using a local script](../defender-endpoint/configure-endpoints-script.md#onboard-devices)
   - macOS devices: [Manual deployment for Microsoft Defender for Endpoint on macOS](../defender-endpoint/mac-install-manually.md#client-configuration)

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

7. Run the script on each device that you want to offboard. Need help with this task? See the following resources:   

   - Windows devices: [Offboard Windows devices using a local script](../defender-endpoint/configure-endpoints-script.md#offboard-devices-using-a-local-script)
   - macOS devices: [Uninstalling on macOS](../defender-endpoint/mac-resources.md#uninstalling)

> [!IMPORTANT]
> Offboarding a device causes the devices to stop sending data to Defender for Business. However, data received prior to offboarding is retained for up to six (6) months.

## Next steps

Proceed to:

- [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)

- [Get started using Microsoft Defender for Business](mdb-get-started.md) 