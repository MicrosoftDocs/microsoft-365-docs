---
title: Onboard devices to Microsoft Defender for Business
description: Learn about device onboarding options in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 11/23/2021
ms.prod: m365-security
ms.technology: mde
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Onboard devices to Microsoft Defender for Business

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

With Microsoft Defender for Business, you have several options to choose from for onboarding your company's devices. This article walks you through your options and includes an overview of how onboarding works.

## What to do

1. [Learn about onboarding methods](#types-of-onboarding-methods).
2. [Onboard devices in the Microsoft 365 Defender portal](#how-to-onboard-devices-in-the-microsoft-365-defender-portal).
3. [Proceed to your next steps](#next-steps). 

**This article also includes**:

- [How to onboard devices gradually](#what-if-i-want-to-onboard-devices-gradually)
- [How to offboard a device](#what-if-i-want-to-offboard-a-device)

## Types of onboarding methods

The following table describes the types of onboarding methods that are supported in Defender for Business. <br/><br/>

| Onboarding method  | Description  |
|---------|---------|
| **Automatic onboarding** (*recommended for customers who're already using Microsoft Endpoint Manager*) | If you were already using Microsoft Endpoint Manager before getting Defender for Business, Defender for Business will detect that. You'll be asked if you want to use the automatic onboarding process for devices that were previously onboarded to Microsoft Endpoint Manager.<br/><br/>Automatic onboarding sets up a connection between Defender for Business and Microsoft Endpoint Manager, and then onboards devices to Defender for Business. This option enables you to onboard devices to Defender for Business quickly and efficiently.<br/><br/>**IMPORTANT**: If you choose the automatic onboarding process, *all* devices that are enrolled in Microsoft Endpoint Manager will be onboarded to Defender for Endpoint. <br/><br/>If you select automatic onboarding, skip the procedures in this article and proceed to [Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md).  |
| **Microsoft Endpoint Manager** <br/>(*recommended for most customers*)  | Microsoft Endpoint Manager is an integrated solution for managing and monitoring devices. Microsoft Endpoint Manager includes services and tools to manage and monitor mobile devices, desktop computers, virtual machines, embedded devices, and servers. Microsoft Endpoint Manager includes Microsoft Intune, Configuration Manager, Desktop Analytics, co-management, and Windows Autopilot. [Learn more about Microsoft Endpoint Manager](/mem/endpoint-manager-overview). <br/><br/>To learn more about onboarding with Microsoft Endpoint Manager, see [Onboard Windows devices using Mobile Device Management tools](../defender-endpoint/configure-endpoints-mdm.md). |
| **Local script**<br/>(*recommended for onboarding a few devices at a time, such as for a pilot program*)  | Microsoft Defender for Business hosts a downloadable script that you can use on Windows devices. With this script, you can onboard up to ten (10) devices that are running Windows 10 or 11. <br/><br/>To learn more about this method, see [Onboard Windows devices using a local script](../defender-endpoint/configure-endpoints-script.md). |
| **Group Policy** | [Group Policy](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/hh831791(v=ws.11)) is an infrastructure that allows you to specify managed configurations for users and computers through Group Policy settings and Group Policy Preferences. A Group Policy object (GPO) is a logical object composed a Group Policy container and a Group Policy template. You can create GPOs and apply them to your company's devices.<br/><br/>To learn more about this method, see [Onboard Windows devices using Group Policy](../defender-endpoint/configure-endpoints-gp.md). | 
| **VDI onboarding script** | If your company is using non-persistent virtual desktop infrastructure (VDI) devices, you can onboard those endpoints using a downloadable script. <br/><br/>To learn more about this method, see [Onboard non-persistent VDI devices](../defender-endpoint/configure-endpoints-vdi.md).  |
| **System Center Configuration Manager** | System Center Configuration Manager (now part of Microsoft Endpoint Manager) can help you onboard and monitor Windows 10 or later clients through policies. You can deploy a Microsoft Defender policy to a target collection or multiple collections. <br/><br/>To learn more about this method, see [Onboard Windows devices using Configuration Manager](../defender-endpoint/configure-endpoints-sccm.md).  |
| **Mobile Device Management** | You can use Mobile Device Management (MDM) with Microsoft Intune (now part of Microsoft Endpoint Manager) to onboard devices. Devices must be enrolled in MDM in order to onboard those devices with Microsoft Intune. <br/><br/>To learn more about this method, see [Onboard Windows devices using Mobile Device Management tools](../defender-endpoint/configure-endpoints-mdm.md). |

> [!TIP]
> If you're new to all of the onboarding methods described in this section, consider using either **Microsoft Endpoint Manager** or the **local script** method. 

## How to onboard devices in the Microsoft 365 Defender portal

The following video demonstrates the onboarding process for Microsoft Defender for Endpoint. This process is similar to what you'll do in Microsoft Defender for Business. <br/><br/>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

Follow these steps to onboard devices:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system (such as **Windows 10 and 11)**, and then choose an onboarding method (such as **Microsoft Endpoint Manager**, **Local script**, and so on). Follow the guidance provided for the method you selected.

> [!IMPORTANT]
> If something goes wrong and your onboarding process fails, see [Microsoft Defender for Business troubleshooting](mdb-troubleshooting.md).

## What if I want to onboard devices gradually?

If you want to onboard your company's devices in phases (gradual device onboarding), follow these steps:

1. Identify a set of devices to onboard.

2. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

3. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

4. Select an operating system (such as **Windows 10 and 11)**, and then choose an onboarding method (such as **Microsoft Endpoint Manager**, **Local script**, and so on). Follow the guidance provided for the method you selected.

5. Repeat this process for each set of devices you want to onboard. 

> [!TIP]
> You don't have to use the same onboarding package every time you onboard devices. For example, you can use a local script to onboard some devices, and later on, you can choose another method to onboard more devices.

## What if I want to offboard a device?

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Settings**, and then choose **Endpoints**.

3. Under **Device management**, choose **Offboarding**.

4. Select the Windows 10 operating system.

5. In the **Offboard a device** section, in the **Deployment method** list, select a method, such as **Local Script**, and then choose **Download package**.

6. Save the zipped folder to a location, such as a removable drive.

7. On each device, follow these steps: 

   1. Copy the configuration package to the device.
   2. Extract its contents to a location you can find easily (such as the Desktop or to a `C:\Temp folder`). Notice that the folder contains a file called `WindowsDefenderATPOffboardingPackage_valid_until_YYYY-MM-DD.zip` (where `YYYY-MM-DD` refers to the expiry date of the package.
   3. Select the Start menu, and then type `cmd` to find the Command Prompt app. Then run Command Prompt as an administrator.
   4. In the Command Prompt window, type the location of the script file that you saved in step 7b. For example, if you saved it to the Desktop, you’d type `%userprofile%\Desktop\WindowsDefenderATPOffboardingPackage_valid_until_YYYY-MM-DD.cmd`.
   5. Press the Enter key, or select **OK**.

## Next steps

Proceed to:

- [Step 5: Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)

- [Get started using Microsoft Defender for Business](mdb-get-started.md) 