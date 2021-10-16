---
title: Onboard devices to Microsoft Defender for Business
description: Understand your configuration settings in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 10/15/2021
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

> [!TIP]
> If your company is a small or midsized business (300 or fewer users) and you would like to sign up for the Microsoft Defender for Business preview program, visit [https://aka.ms/MDBPreview](https://aka.ms/MDBPreview).

Microsoft Defender for Business is designed with the busy small and midsized business in mind. For example, if you are already using Microsoft Endpoint Manager, you can choose from automatic or manual onboarding. Or, if you're not already using Endpoint Manager, you can choose from several different onboarding packages and methods to use.

## Are you already using Microsoft Endpoint Manager?

- If you are already using Microsoft Endpoint Manager, your onboarding process can be streamlined. For example, you can choose between automatic or manual onboarding. 
- If you are not already using Microsoft Endpoint Manager, you can choose from several options. Your options include using Microsoft Endpoint Manager, a local script, and more. 

## Onboard devices in the Microsoft 365 Defender portal

If you are working through the initial setup and configuration process for Microsoft Defender for Business, you'll be prompted to onboard devices after you have [set up email notifications for your security team](mdb-email-notifications.md).

The following video outlines the onboarding process for Microsoft Defender for Endpoint. This process is similar to what you'll do in Microsoft Defender for Business.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

Follow these steps to onboard devices:

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), on the **Onboard devices** step of the setup and configuration process, choose an onboarding method.

2. Depending on whether you are already using Microsoft Endpoint Manager, take one of the following steps:

   - If you are using Microsoft Endpoint Manager, choose between automatic onboarding (recommended), or manual onboarding, and follow the prompts. 

   - If you are not already using Microsoft Endpoint Manager, review the list of [onboarding options](#onboarding-options). Select an option, download the package for that option, and follow the prompts.

After you have onboarded your devices, proceed to [Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md).

## Onboarding options

Several onboarding options are available in Microsoft Defender for Business. The following table summarizes these options and includes recommendations and links to learn more.

<br/><br/>

| Method | Description |
|:---|:---|
| **Microsoft Endpoint Manager**  | Microsoft Endpoint Manager is an integrated solution for managing and monitoring devices.  Microsoft Endpoint Manager includes services and tools to manage and monitor mobile devices, desktop computers, virtual machines, embedded devices, and servers. Microsoft Endpoint Manager includes Microsoft Intune, Configuration Manager, Desktop Analytics, co-management, and Windows Autopilot. [Learn more about Microsoft Endpoint Manager](/mem/endpoint-manager-overview). <br/><br/>You can use Microsoft Endpoint Manager to onboard your company's devices, and then use the Microsoft 365 Defender portal to manage your security settings and devices. That way, you can onboard devices efficiently, and then take advantage of the [streamlined configuration process in Microsoft Defender for Business](mdb-choose-portal.md).  |
| **Local script**  | Microsoft Defender for Business hosts a downloadable script that you can use on Windows devices. With this script, you can onboard up to ten (10) devices that are running Windows 10 or 11. <br/><br/> To use the local script method, you download the script from the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), extract it on a device, and then run the script using Command Prompt. <br/><br/>To learn more about this method, see [Onboard Windows devices using a local script](../defender-endpoint/configure-endpoints-script.md). |
| **Group Policy** | Group Policy is an infrastructure that allows you to specify managed configurations for users and computers through Group Policy settings and Group Policy Preferences. | 
| **Virtual desktop infrastructure (VDI) onboarding using a script** |  |
| **System Center Configuration Manager** | (for on-premises environments). |
| **Mobile Device Management** | (in Microsoft Intune) |

If you're new to all of the onboarding methods described in this section, consider using either Microsoft Endpoint Manager or the local script.

## What if I want to offboard a device?

See [Offboard a device](mdb-manage-devices.md#offboard-a-device).

## Next step

After you have onboarded devices, your next step is to [Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md).