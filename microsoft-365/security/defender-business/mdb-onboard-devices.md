---
title: Onboard devices to Microsoft Defender for Business (preview)
description: Learn about device onboarding options in Microsoft Defender for Business (preview)
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 02/22/2022
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

# Onboard devices to Microsoft Defender for Business (preview)

> [!IMPORTANT]
> Microsoft Defender for Business is now in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. We will onboard an initial set of customers and partners in the coming weeks and will expand the preview leading up to general availability. Note that preview will launch with an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

The device onboarding experience in Defender for Business was built on the same device onboarding processes that are used in Microsoft Defender for Endpoint. Watch the following video to see how it works:<br/><br/>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

With Microsoft Defender for Business (preview), you have several options to choose from for onboarding your organization's devices. This article walks you through your options and includes an overview of how onboarding works.

> [!TIP]
> To view more detailed information about device onboarding in Defender for Endpoint, see [Onboard devices and configure Microsoft Defender for Endpoint capabilities](../defender-endpoint/onboard-configure.md).

## What to do

1. See your options for [onboarding devices](#device-onboarding-methods), and select a method.

   - [Automatic onboarding for Windows devices enrolled in Microsoft Endpoint Manager](#automatic-onboarding-for-windows-devices-enrolled-in-microsoft-endpoint-manager)
   - [Microsoft Defender for Business security configuration](#microsoft-defender-for-business-security-configuration)
   - [Microsoft Endpoint Manager](#microsoft-endpoint-manager)
   - [Local script in Defender for Business](#local-script-in-defender-for-business)
   - [Other methods](#onboard-devices-using-a-method-not-listed-in-this-article)

2. [Run a detection test](#run-a-detection-test) for newly onboarded Windows devices.

3. [See your next steps](#next-steps). 

This article also includes information about [Offboarding a device](#offboarding-a-device).

## Device onboarding methods

The following table describes the most commonly used methods to onboard devices to Defender for Business. 

| Onboarding method  | Description  | Supported operating systems |
|---------|---------|---------|
| **Automatic onboarding**<br/>(*available to customers who are already using Microsoft Endpoint Manager*) | Automatic onboarding sets up a connection between Defender for Business (preview) and Microsoft Endpoint Manager, and then onboards Windows devices to Defender for Business (preview). In order to use this option, your devices must already be enrolled in Endpoint Manager.<br/><br/>To learn more, see [Use automatic onboarding for Windows devices enrolled in Microsoft Endpoint Manager](#automatic-onboarding-for-windows-devices-enrolled-in-microsoft-endpoint-manager). | Windows |
| **Microsoft Defender for Business security configuration** <br/>(*uses the Microsoft 365 Defender portal*) | To use this option, you configure certain settings to facilitate communication between Defender for Business and Endpoint Manager. Then, you onboard devices in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com) by using a package that you download and run on each device. When you onboard a device by using this method, a trust is established between the device and Azure Active Directory (Azure AD). The device uses its Azure AD Identity to communicate with Endpoint Manager. As a result, you can view your devices and policies in Endpoint Manager.<br/><br/>To learn more, see [Microsoft Defender for Business security configuration](#microsoft-defender-for-business-security-configuration). | Windows <br/><br/>macOS <br/><br/>Linux |
| **Microsoft Intune** or **Microsoft Endpoint Manager**<br/>(*available to customers who are already using Microsoft Intune or Endpoint Manager*) | [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Mobile Device Management](/mem/intune/enrollment/device-enrollment) are part of Endpoint Manager. If you were already using Endpoint Manager before you got Defender for Business (preview), you can opt to continue using Endpoint Manager to onboard and manage devices<br/><br/>To use this method, see [Onboard devices using Microsoft Endpoint Manager](#onboard-devices-using-microsoft-endpoint-manager). | Windows <br/><br/>macOS <br/><br/>Linux<br/><br/>iOS<br/><br/>Android OS | 
| **Local script** <br/>(*for evaluating Defender for Business*) | This option enables you to onboard individual devices to Defender for Business manually. It's not recommended for a production deployment, but is useful for evaluating how Defender for Business will work in your environment.<br/><br/>To learn more, see [Local script in Defender for Business](#local-script-in-defender-for-business). | Windows <br/><br/>macOS <br/><br/>Linux |

> [!IMPORTANT]
> If something goes wrong and your onboarding process fails, see [Microsoft Defender for Business troubleshooting](mdb-troubleshooting.yml).

## Automatic onboarding for Windows devices enrolled in Microsoft Endpoint Manager

The automatic onboarding option applies to Windows devices only. Automatic onboarding is available if your organization was already using Microsoft Endpoint Manager, Microsoft Intune, or Mobile Device Management (MDM) in Microsoft Intune before you got Defender for Business (preview), and you already have Windows devices enrolled in Endpoint Manager. 

If Windows devices are already enrolled in Endpoint Manager, Defender for Business will detect those devices while you are in the process of setting up and configuring Defender for Business. You'll be asked if you want to use automatic onboarding for all or some of your Windows devices. You can onboard all Windows devices at once, or select specific devices to start with, and then add more later.

To learn more about automatic onboarding, see step 3 in [Use the wizard to set up Microsoft Defender for Business (preview)](mdb-use-wizard.md).

## Microsoft Defender for Business security configuration

Microsoft Defender for Business security configuration was built on a capability known as [Security Management for Microsoft Defender for Endpoint (preview)](/mem/intune/protect/mde-security-integration). It enables you to onboard devices to Defender for Business in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) without requiring those devices to be fully enrolled in Microsoft Endpoint Manager beforehand. You can onboard devices using a package that you download and then run on the device. Running the package establishes a trust between each device (if the trust doesn't already exist) and Azure Active Directory (Azure AD), and each device uses its Azure AD Identity to communicate with Endpoint Manager. As a result, you can view your devices and policies in Endpoint Manager.

To use this option, certain settings must be configured beforehand. To learn more, including prerequisites, see [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration).

## Microsoft Endpoint Manager

If you were already using Endpoint Manager (which includes Microsoft Intune and Mobile Device Management), before you got Defender for Business (preview), you can continue to use Endpoint Manager to onboard your organization's devices. With Endpoint Manager, you can onboard computers, tablets, and phones, including iOS and Android devices.

See [Device enrollment in Microsoft Intune](/mem/intune/enrollment/device-enrollment).

## Local script in Defender for Business

You can use a local script to onboard some Windows, macOS, and Linux devices to evaluate how Defender for Business will work for you. When you run the onboarding script on a device, it creates a trust with Azure Active Directory, enrolls the device in Microsoft Endpoint Manager, and onboards the device to Defender for Business. This method is useful for onboarding devices in Defender for Business and for onboarding a few devices at a time. Each script can be used on up to 10 devices.

This method is not recommended for production deployment, but is useful for onboarding up to 10 devices per script.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system, such as **Windows 10 and 11**, and then, under **Onboard a device**, in the **Deployment method** section, choose **Local script**. 

4. Select **Download onboarding package**. We recommend saving the onboarding package to a removable drive.

5. Follow the guidance in the following articles:

   - Windows devices: [Onboard Windows devices using a local script](../defender-endpoint/configure-endpoints-script.md#onboard-devices)
   - macOS devices: [Manual deployment for Microsoft Defender for Endpoint on macOS](../defender-endpoint/mac-install-manually.md#client-configuration)
   - Linux devices: [Deploy Microsoft Defender for Endpoint on Linux manually](../defender-endpoint/linux-install-manually.md#client-configuration)

## Onboard devices using a method not listed in this article

If you want to use another method that is not listed in this article to onboard devices, see [Onboarding and configuration tool options](../defender-endpoint/onboard-configure.md#onboarding-and-configuration-tool-options).

## Run a detection test

After you've onboarded Windows devices to Defender for Business (preview), you can run a detection test on a Windows device to make sure that everything is working correctly.

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
   - Linux devices: [Uninstalling on Linux](../defender-endpoint/linux-resources.md#uninstall)

> [!IMPORTANT]
> Offboarding a device causes the devices to stop sending data to Defender for Business (preview). However, data received prior to offboarding is retained for up to six (6) months.

## Next steps

Proceed to:

- [Step 5: Configure your security settings and policies in Microsoft Defender for Business (preview)](mdb-configure-security-settings.md)

- [Get started using Microsoft Defender for Business (preview)](mdb-get-started.md) 