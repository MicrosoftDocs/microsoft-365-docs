---
title: Onboard devices to Microsoft Defender for Business
description: Understand your configuration settings in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 10/29/2021
ms.prod: m365-security
ms.technology: mdb
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

Microsoft Defender for Business is designed with the busy small and medium-sized business in mind. For example, Defender for Business can detect whether you are already using Microsoft Endpoint Manager, and will prompt you to choose between automatic or manual onboarding. 

> [!NOTE]
> If you are working through the initial setup and configuration process for Microsoft Defender for Business, you'll be prompted to onboard devices after you have [set up email notifications for your security team](mdb-email-notifications.md). 

## What to do

- [Part 1: Identify your security and device management path](#part-1-identify-your-security-and-device-management-path)
- [Part 2: Choose an onboarding process](#part-2-choose-an-onboarding-process)
- [Part 3: Choose a deployment method](#part-3-choose-a-deployment-method)
- [Learn how to onboard devices in the Microsoft 365 Defender portal](#how-to-onboard-devices-in-the-microsoft-365-defender-portal) 

## Part 1: Identify your security and device management path

Review the scenarios listed in the following table and what to expect. Then proceed to your next step.
<br/><br/>

|Scenario  |What to expect  | What to do next |
|---------|---------|---------|
| You are already using Microsoft Endpoint Manager (or Microsoft Intune) to manage devices and security settings | Defender for Business will detect that you're already using Microsoft Endpoint Manager. You'll be asked whether you want to continue using Endpoint Manager, or switch to the [simplified configuration process in Microsoft Defender for Business](mdb-simplified-configuration.md).<br/><br/>If you choose the simplified configuration process, your onboarding process will be streamlined, and you can choose between the automatic, gradual, or manual onboarding process with Defender for Business.   | Proceed to [Part 2: Choose an onboarding process](#part-2-choose-an-onboarding-process).  |
| You are not currently using Microsoft Endpoint Manager | Defender for Business will prompt you to choose a deployment method. You have several options available, including using a local script or using a tool like Microsoft Endpoint Manager.  | Proceed to [Part 3: Choose a deployment method](#part-3-choose-a-deployment-method). |
| You are already using a non-Microsoft productivity and device management tool    | If you're using a non-Microsoft productivity and device management tool, you can continue using that tool to manage devices and security settings. <br/><br/>Or, you can choose a deployment method in Defender for Business.        | Connect to Defender for Endpoint continue using your existing productivity and device management tool. <br/><br/>--- or ---<br/><br/> Proceed to [Part 3: Choose a deployment method](#part-3-choose-a-deployment-method).  |

## Part 2: Choose an onboarding process

> [!NOTE]
> If you are not already using Microsoft Endpoint Manager (or Microsoft Intune), skip to [Part 3: Choose a deployment method](#part-3-choose-a-deployment-method).

If you are already using Microsoft Endpoint Manager (or Microsoft Intune), you can choose from several onboarding processes in Defender for Business. The following table summarizes these processes.

<br/><br/>

| Method | Description |
|:---|:---|
| Automatic onboarding process <br/>(*Recommended*) | The automatic onboarding process sets up a connection between Defender for Business and Microsoft Endpoint Manager, and then onboards devices to Defender for Business. <br/><br/>We recommend this option because it enables you to onboard devices in Endpoint Manager to Defender for Business efficiently. |
| Gradual device onboarding | The gradual device onboarding process applies security settings and policies in Defender for Business to the devices that you select. This option enables you to start with a few devices and then add more later.<br/><br/>[Learn more about gradual device onboarding with Microsoft Defender for Business](mdb-gradual-device-onboarding.md).  |
| Manual onboarding with Microsoft Endpoint Manager | The manual onboarding process enables you to choose from several [deployment methods](#part-3-choose-a-deployment-method).  |

## Part 3: Choose a deployment method

You can choose from several deployment methods in Defender for Business, as described in the following table:
<br/><br/>

| Method | Description |
|:---|:---|
| **Microsoft Endpoint Manager** <br/>(*recommended*)  | Microsoft Endpoint Manager is an integrated solution for managing and monitoring devices.  Microsoft Endpoint Manager includes services and tools to manage and monitor mobile devices, desktop computers, virtual machines, embedded devices, and servers. Microsoft Endpoint Manager includes Microsoft Intune, Configuration Manager, Desktop Analytics, co-management, and Windows Autopilot. [Learn more about Microsoft Endpoint Manager](/mem/endpoint-manager-overview). <br/><br/>You can use Microsoft Endpoint Manager to onboard your company's devices, and then use the Microsoft 365 Defender portal to manage your security settings and devices. That way, you can onboard devices efficiently, and then take advantage of the [streamlined configuration process in Microsoft Defender for Business](mdb-simplified-configuration.md). <br/><br/>To learn more about onboarding with Microsoft Endpoint Manager, see [Onboard Windows devices using Mobile Device Management tools](../defender-endpoint/configure-endpoints-mdm.md). |
| **Local script**<br/>(*recommended for a few devices, such as for a pilot program*)  | Microsoft Defender for Business hosts a downloadable script that you can use on Windows devices. With this script, you can onboard up to ten (10) devices that are running Windows 10 or 11. <br/><br/> To use the local script method, you download the script from the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), extract it on a device, and then run the script using Command Prompt. <br/><br/>To learn more about this method, see [Onboard Windows devices using a local script](../defender-endpoint/configure-endpoints-script.md). |
| **Group Policy** | Group Policy is an infrastructure that allows you to specify managed configurations for users and computers through Group Policy settings and Group Policy Preferences. A Group Policy object (GPO) is a logical object composed a Group Policy container and a Group Policy template. You can create GPOs and apply them to your company's devices. To learn more about group policy, see [Group Policy overview](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/hh831791(v=ws.11)). <br/><br/>To learn more about this method, see [Onboard Windows devices using Group Policy](../defender-endpoint/configure-endpoints-gp.md). | 
| **VDI onboarding script** | If your company is using non-persistent virtual desktop infrastructure (VDI) devices, you can onboard those endpoints using a downloadable script. <br/><br/>To learn more about this method, see [Onboard non-persistent VDI devices](../defender-endpoint/configure-endpoints-vdi.md).  |
| **System Center Configuration Manager** | System Center Configuration Manager (now part of Microsoft Endpoint Manager) can help you onboard and monitor Windows 10 or later clients through policies. You can deploy a Microsoft Defender policy to a target collection or multiple collections. <br/><br/>To learn more about this method, see [Onboard Windows devices using Configuration Manager](../defender-endpoint/configure-endpoints-sccm.md).  |
| **Mobile Device Management** | You can use Mobile Device Management (MDM) with Microsoft Intune (now part of Microsoft Endpoint Manager) to onboard devices. Devices must be enrolled in MDM in order to onboard those devices with Microsoft Intune. <br/><br/>To learn more about this method, see [Onboard Windows devices using Mobile Device Management tools](../defender-endpoint/configure-endpoints-mdm.md). |

> [!TIP]
> If you're new to all of the onboarding methods described in this section, consider using either **Microsoft Endpoint Manager** or the **local script** method.

## How to onboard devices in the Microsoft 365 Defender portal

The following video outlines the onboarding process for Microsoft Defender for Endpoint. This process is similar to what you'll do in Microsoft Defender for Business. <br/><br/>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

Follow these steps to onboard devices:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and then sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system (such as Windows 10 and 11), and then choose a deployment method. Follow the guidance provided for the method you selected.

## What if I want to offboard a device?

1. Go to the  Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and then sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Offboarding**.

3. Select an operating system (such as Windows 10 and 11), and then choose a deployment method. Follow the guidance provided for the method you selected. To learn more, see [Offboard a device](mdb-manage-devices.md#offboard-a-device).

## Next steps

Proceed to:

- [Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md)