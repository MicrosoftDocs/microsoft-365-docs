---
title: View and edit your security settings in Microsoft Defender for Business
description: Configure your security policies in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 02/21/2022
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# View and edit your security policies and settings in Microsoft Defender for Business (preview)

> [!IMPORTANT]
> Microsoft Defender for Business is now in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. We will onboard an initial set of customers and partners in the coming weeks and will expand the preview leading up to general availability. Note that preview will launch with an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

## Overview

After you've onboarded your organization's devices to Microsoft Defender for Business (preview), your next step is to view and if necessary, edit your security policies and settings. Security policies include:

- Next-generation protection policies, which determine antivirus and antimalware protection for your company's devices
- Firewall protection and rules, which determine what network traffic is allowed to flow to or from your company's devices
- Web content filtering, which prevents people from visiting certain websites (URLs) based on categories, such as adult content or legal liability.

In Defender for Business (preview), security policies are applied to devices through [device groups](mdb-create-edit-device-groups.md#what-is-a-device-group). 

In addition to your security policies, you can view and edit settings, such as which time zone to use in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and whether to receive preview features as they become available.

Use this article as a guide to managing your security policies and settings.

## What to do

1. [Choose where to manage your security policies and devices](#choose-where-to-manage-security-policies-and-devices).

3. [View your security policies](#view-your-security-policies).

4. [View and edit other settings in the Microsoft 365 Defender portal](#view-and-edit-other-settings-in-the-microsoft-365-defender-portal) 

5. [Proceed to your next steps](#next-steps).

## Choose where to manage security policies and devices

Defender for Business (preview) features a [simplified configuration process](mdb-simplified-configuration.md) that helps streamline the setup and configuration process. If you select the simplified configuration process, you can view and manage your security policies in the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)). However, you're not limited to this option. If you've been using Microsoft Endpoint Manager (which includes Microsoft Intune), you can keep using your Endpoint Manager.

The following table can help you choose where to manage your security policies and devices. <br/><br/>

| Option | Description |
|:---|:---|
| **Use the default security policies in the Microsoft 365 Defender portal** (*recommended*) | Defender for Business (preview) was designed for the busy small or medium-sized business in mind. The default security policies in Defender for Business are designed to protect your organization's devices from day one.<br/><br/>You can use the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) to view and manage your security policies.<br/><br/>To learn more, see [View or edit device policies](mdb-view-edit-policies.md). |
| **Use Microsoft Endpoint Manager** | If your organization is using Microsoft Endpoint Manager to manage security policies, you can continue using Endpoint Manager and apply security policies to some or all devices. To learn more, see [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy). <br/><br/>Consider switching to the [simplified configuration process in Defender for Business](mdb-simplified-configuration.md). If you make the switch, you'll be prompted to delete any existing security policies in Microsoft Endpoint Manager before proceeding with the simplified configuration process in Defender for Business. Deleting your policies in Microsoft Endpoint Manager helps avoid policy conflicts later. |

> [!TIP]
> If you would like to sign up for the Microsoft Defender for Business preview program, visit [https://aka.ms/MDB-Preview](https://aka.ms/MDB-Preview). To learn more, see [Get Microsoft Defender for Business (preview)](get-defender-business.md).



## View or edit your next-generation protection policies


| Portal | Procedure |
|:---|:---|
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) | 1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. <br/><br/>2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type.<br/><br/>3. Select an operating system tab (such as **Windows clients**).<br/><br/>4. Expand a category (such as **Next-generation protection** or **Firewall**) to view your list of policies.<br/><br/>5. Select a policy to view more details about the policy. To make changes or to learn more about policy settings, see the following articles: <br/>- [View or edit device policies](mdb-view-edit-policies.md)<br/>- [Understand next-generation configuration settings](mdb-next-gen-configuration-settings.md)<br/>- [Firewall settings](mdb-firewall.md)  |
| Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) | 1. Go to [https://endpoint.microsoft.com](https://endpoint.microsoft.com) and sign in. You're now in the Microsoft Endpoint Manager admin center.<br/><br/>2. Select **Endpoint security**.<br/><br/>3. Select a category, such as **Antivirus**, **Firewall**, **Endpoint detection and response**, or **Attack surface reduction** to view policies in that category. <br/><br/>To get help managing your security settings in Microsoft Endpoint Manager, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security). |

## View or edit your firewall policies and custom rules


| Portal | Procedure |
|:---|:---|
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) | 1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. <br/><br/>2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type.<br/><br/>3. Select an operating system tab (such as **Windows clients**).<br/><br/>4. Expand a category (such as **Next-generation protection** or **Firewall**) to view your list of policies.<br/><br/>5. Select a policy to view more details about the policy. To make changes or to learn more about policy settings, see the following articles: <br/>- [View or edit device policies](mdb-view-edit-policies.md)<br/>- [Understand next-generation configuration settings](mdb-next-gen-configuration-settings.md)<br/>- [Firewall settings](mdb-firewall.md)  |
| Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) | 1. Go to [https://endpoint.microsoft.com](https://endpoint.microsoft.com) and sign in. You're now in the Microsoft Endpoint Manager admin center.<br/><br/>2. Select **Endpoint security**.<br/><br/>3. Select a category, such as **Antivirus**, **Firewall**, **Endpoint detection and response**, or **Attack surface reduction** to view policies in that category. <br/><br/>To get help managing your security settings in Microsoft Endpoint Manager, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security). |

## Set up web content filtering



## View and edit other settings in the Microsoft 365 Defender portal

In addition to security policies that are applied to devices, there are other settings you can view and edit in Defender for Business (preview). For example, you specify the time zone to use, and you can onboard (or offboard) devices. 

> [!NOTE]
> You might see more settings in your tenant than are listed in this article. We are highlighting the settings that you should review in Defender for Business (preview).

### Settings to review for Defender for Business

The following table describes settings to view (and if necessary, edit) in Defender for Business (preview).

<br/><br/>

| Category | Setting | Description |
|:---|:---|:---|
| **Security center** | **Time zone** | Select the time zone to be used for the dates and times displayed in incidents, detected threats, and automated investigation & remediation. You can either use UTC or your local time zone (*recommended*).  |
| **Microsoft 365 Defender** | **Account** | View details, such where your data is stored, your tenant ID, and your organization (org) ID. |
| **Microsoft 365 Defender**  | **Preview features**  | Turn on preview features to try upcoming features and new capabilities. You can be among the first to preview new features and provide feedback. |
| **Endpoints**  | **Email notifications** | Set up or edit your email notification rules. When vulnerabilities are detected or an alert is created, the recipients specified in your email notification rules will receive an email. [Learn more about email notifications](mdb-email-notifications.md). |
| **Endpoints**   | **Device management** > **Onboarding** | Onboard devices to Defender for Business by using a downloadable script. To learn more, see [Onboard devices to Microsoft Defender for Business (preview)](mdb-onboard-devices.md).   |  
| **Endpoints**  |  **Device management** > **Offboarding** | Offboard (remove) devices from Defender for Business (preview). When you offboard a device, it no longer sends data to Defender for Business (preview), but data received prior to offboarding is retained. To learn more, see [Offboarding a device](mdb-onboard-devices.md#offboarding-a-device).  |

### Access your settings in the Microsoft 365 Defender portal

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)), and sign in.

2. Select **Settings**, and then select a category (such as **Security center**, **Microsoft 365 Defender**, or **Endpoints**).

3. In the list of settings, select an item to view or edit.


## Next steps

Proceed to one or more of the following tasks:

- [Get started using Microsoft Defender for Business (preview)](mdb-get-started.md)

- [Manage devices in Microsoft Defender for Business (preview)](mdb-manage-devices.md)

- [View and manage incidents in Microsoft Defender for Business (preview)](mdb-view-manage-incidents.md)

- [View or edit policies in Microsoft Defender for Business (preview)](mdb-view-edit-policies.md)

