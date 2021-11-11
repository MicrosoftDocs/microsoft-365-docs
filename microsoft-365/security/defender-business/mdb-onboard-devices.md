---
title: Onboard devices to Microsoft Defender for Business
description: Learn about device onboarding options in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 11/11/2021
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

With Microsoft Defender for Business, you have several options to choose from for onboarding your company's devices. This article walks you through your options.

## What to do

1. [Identify your security and device management path](#part-1-identify-your-security-and-device-management-path).
2. [Choose between automatic or manual device onboarding](#part-2-choose-between-automatic-or-manual-device-onboarding).
3. [Choose a manual onboarding option](#part-3-choose-a-manual-onboarding-method).
4. [See how onboarding works in the Microsoft 365 Defender portal (video included!)](#onboarding-devices-in-the-microsoft-365-defender-portal).
5. [Proceed to your next steps](#next-steps). 

## Part 1: Identify your security and device management path

Review the scenarios listed in the following table and select a path. Then proceed to your next step.
<br/><br/>

|Scenario   | What to do next |
|---------|---------|
| **You are already using Microsoft Endpoint Manager (or Microsoft Intune) to manage devices and security settings** <br/><br/>Defender for Business will detect that you're already using Microsoft Endpoint Manager. You'll be asked whether you want to continue using Endpoint Manager or switch to the [simplified configuration process in Microsoft Defender for Business](mdb-simplified-configuration.md) (*recommended for most customers*).<br/><br/>If you choose the simplified configuration process, your onboarding process will be streamlined, and you can use the automatic onboarding process with Defender for Business.   | Proceed to [Part 2: Choose between automatic or manual device onboarding](#part-2-choose-between-automatic-or-manual-device-onboarding).  |
| **You are not currently using Microsoft Endpoint Manager**<br/><br/>Defender for Business will prompt you to choose an onboarding method. You have several options available, including using a local script or Microsoft Endpoint Manager.  | Proceed to [Part 3: Choose a manual onboarding method](#part-3-choose-a-manual-onboarding-method). |
| **You are using a non-Microsoft productivity and device management tool**<br/><br/>If you're using a non-Microsoft productivity and device management tool, you can continue using that tool to manage devices and security settings. <br/><br/>Or, you can choose an onboarding method in Defender for Business.        | Connect your existing productivity and device management tool to Defender for Business. <br/><br/>--- or ---<br/><br/> Proceed to [Part 3: Choose a manual onboarding method](#part-3-choose-a-manual-onboarding-method).  |

> [!TIP]
> If you are already using Microsoft Endpoint Manager, Defender for Business will detect that, and will prompt you to choose between automatic or manual onboarding. And, you can also opt to onboard devices a few at a time if you don't want to onboard them all at once. To learn more, see [What if I want to onboard devices gradually?](#what-if-i-want-to-onboard-devices-gradually)

## Part 2: Choose between automatic or manual device onboarding

> [!NOTE]
> If you are not already using Microsoft Endpoint Manager (or Microsoft Intune), skip this section and proceed to [Part 3: Choose a manual onboarding method](#part-3-choose-a-manual-onboarding-method).

If you are already using Microsoft Endpoint Manager (or Microsoft Intune), you can choose to onboard devices to Defender for Business automatically or manually. The following table summarizes these options.
<br/><br/>

| Option | What to do next |
|:---|:---|
| **Automatic onboarding** (*Recommended*)<br/><br/>The automatic onboarding process sets up a connection between Defender for Business and Microsoft Endpoint Manager, and then onboards devices to Defender for Business. <br/><br/>We recommend this option because it enables you to onboard devices in Endpoint Manager to Defender for Business efficiently.<br/><br/>**IMPORTANT**: If you choose the automatic onboarding process, *all* devices that are enrolled in Microsoft Endpoint Manager will be onboarded to Defender for Endpoint. | Choose how you'll manage your security policies and settings. You can choose to: <br/><br/>- Switch to the [simplified configuration process in Defender for Business](mdb-simplified-configuration.md) <br/><br/>--- or --- <br/><br/>- Continue using Microsoft Endpoint Manager to manage your security settings and policies |
| **Manual onboarding** <br/><br/>The manual onboarding process enables you to choose from several [onboarding methods](#part-3-choose-a-deployment-method), including Microsoft Endpoint Manager. <br/><br/>You can onboard all devices at one point, or onboard devices gradually. | Proceed to [Part 3: Choose an onboarding method](#part-3-choose-a-manual-onboarding-method).  |

## Part 3: Choose a manual onboarding method

You can choose from several onboarding methods in Defender for Business, as described in this section.

> [!IMPORTANT]
> If you plan to use Microsoft Endpoint Manager, Group Policy, System Center Configuration Manager, or Mobile Device Management to onboard devices, make sure that all of the following requirements are met. [Learn more about the requirements for Defender for Business](mdb-requirements.md).
> 
> - Devices must be running Windows 10 Professional/Enterprise (with [KB5006738](https://support.microsoft.com/topic/october-26-2021-kb5006738-os-builds-19041-1320-19042-1320-and-19043-1320-preview-ccbce6bf-ae00-4e66-9789-ce8e7ea35541) applied)
>
> - Prerequisites must be met for [Security Management for Microsoft Defender for Endpoint](/mem/intune/protect/mde-security-integration). The following configurations must be in place:
>    - [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-whatis) (Azure AD) must be configured such that trust is created between devices and Azure AD.
>    - Defender for Business must have [security management enabled in Microsoft Endpoint Manager](#to-enable-security-management-in-microsoft-endpoint-manager) (instructions are included in this article).
>
> - Devices must be able to connect to the following URLs: 
>   - `enterpriseregistration.windows.net` (for registration in Azure Active Directory)
>   - `login.microsoftonline.com` (for registration in Azure Active Directory)
>   - `*.dm.microsoft.com` (The wildcard (*) supports the cloud-service endpoints that are used for enrollment, check-in, and reporting, and can change as the service scales.)


### Select an onboarding method

| Method | Description |
|:---|:---|
| **Microsoft Endpoint Manager** <br/>(*recommended*)  | Microsoft Endpoint Manager is an integrated solution for managing and monitoring devices. Microsoft Endpoint Manager includes services and tools to manage and monitor mobile devices, desktop computers, virtual machines, embedded devices, and servers. Microsoft Endpoint Manager includes Microsoft Intune, Configuration Manager, Desktop Analytics, co-management, and Windows Autopilot. [Learn more about Microsoft Endpoint Manager](/mem/endpoint-manager-overview). <br/><br/>You can use Microsoft Endpoint Manager to onboard your company's devices, and then use the Microsoft 365 Defender portal to manage your security settings and devices. That way, you can onboard devices efficiently, and then take advantage of the [streamlined configuration process in Microsoft Defender for Business](mdb-simplified-configuration.md). <br/><br/>To learn more about onboarding with Microsoft Endpoint Manager, see [Onboard Windows devices using Mobile Device Management tools](../defender-endpoint/configure-endpoints-mdm.md). |
| **Local script**<br/>(*recommended for onboarding a few devices at a time, such as for a pilot program*)  | Microsoft Defender for Business hosts a downloadable script that you can use on Windows devices. With this script, you can onboard up to ten (10) devices that are running Windows 10 or 11. <br/><br/> To use the local script method, you download the script from the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), extract it on a device, and then run the script using Command Prompt. <br/><br/>To learn more about this method, see [Onboard Windows devices using a local script](../defender-endpoint/configure-endpoints-script.md). |
| **Group Policy** | Group Policy is an infrastructure that allows you to specify managed configurations for users and computers through Group Policy settings and Group Policy Preferences. A Group Policy object (GPO) is a logical object composed a Group Policy container and a Group Policy template. You can create GPOs and apply them to your company's devices. To learn more about group policy, see [Group Policy overview](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/hh831791(v=ws.11)). <br/><br/>To learn more about this method, see [Onboard Windows devices using Group Policy](../defender-endpoint/configure-endpoints-gp.md). | 
| **VDI onboarding script** | If your company is using non-persistent virtual desktop infrastructure (VDI) devices, you can onboard those endpoints using a downloadable script. <br/><br/>To learn more about this method, see [Onboard non-persistent VDI devices](../defender-endpoint/configure-endpoints-vdi.md).  |
| **System Center Configuration Manager** | System Center Configuration Manager (now part of Microsoft Endpoint Manager) can help you onboard and monitor Windows 10 or later clients through policies. You can deploy a Microsoft Defender policy to a target collection or multiple collections. <br/><br/>To learn more about this method, see [Onboard Windows devices using Configuration Manager](../defender-endpoint/configure-endpoints-sccm.md).  |
| **Mobile Device Management** | You can use Mobile Device Management (MDM) with Microsoft Intune (now part of Microsoft Endpoint Manager) to onboard devices. Devices must be enrolled in MDM in order to onboard those devices with Microsoft Intune. <br/><br/>To learn more about this method, see [Onboard Windows devices using Mobile Device Management tools](../defender-endpoint/configure-endpoints-mdm.md). |

> [!TIP]
> If you're new to all of the onboarding methods described in this section, consider using either **Microsoft Endpoint Manager** or the **local script** method.

### To enable security management in Microsoft Endpoint Manager

If you plan to use Microsoft Endpoint Manager, Group Policy, System Center Configuration Manager, or Mobile Device Management to onboard devices, use the following procedure to enable security management in Microsoft Endpoint Manager.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Choose **Settings** > **Endpoints**. Under **Configuration management**, select **Enforcement scope**.

4. Under **OS platform**, turn on **Windows Client devices**.

5. Select **Save**.


## Onboarding devices in the Microsoft 365 Defender portal

The following video outlines the onboarding process for Microsoft Defender for Endpoint. This process is similar to what you'll do in Microsoft Defender for Business. <br/><br/>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqr]

Follow these steps to onboard devices:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Onboarding**.

3. Select an operating system (such as **Windows 10 and 11)**, and then choose an onboarding method (such as **Microsoft Endpoint Manager**, **Local script**, and so on). Follow the guidance provided for the method you selected.

## What if I want to onboard devices gradually?

If you want to onboard your company's devices in phases (as in gradual device onboarding), follow these steps:

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