---
title: Configure your security settings in Microsoft Defender for Business
description: Configure your security settings and policies in Microsoft Defender for Business
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

# Configure your security settings and policies in Microsoft Defender for Business

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

After you have onboarded your company's devices to Microsoft Defender for Business, you next step is to view and if necessary, edit your security settings and policies. 

## What to do

1. [Choose where to manage your security settings and policies](#choose-where-to-manage-your-security-settings-and-policies).
2. [View your security settings and policies](#view-your-security-settings-and-policies). 
3. [Proceed to your next steps](#next-steps).

## Choose where to manage your security settings and policies

When it comes to managing your security settings and policies, you can choose from several options, as described in the following table: <br/><br/>

| Option | Description |
|:---|:---|
| **Use the default security settings and policies in the Microsoft 365 Defender portal** (recommended) | Defender for Business was designed for the busy small or medium-sized business in mind. The default security settings and policies in Defender for Business are designed to protect your company's devices from day one.<br/><br/>You can use the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) to view and manage your security settings and policies.<br/><br/>To learn more, see [View or edit device policies](mdb-view-edit-policies.md). |
| **Use Microsoft Endpoint Manager** | If your company is using Microsoft Endpoint Manager to manage security settings and policies, you can continue using Endpoint Manager and apply security policies and settings to some or all devices. To learn more, see [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy). <br/><br/>Consider switching to the [simplified configuration process in Defender for Business](mdb-simplified-configuration.md). If you make the switch, you'll be prompted to delete any existing security policies in Microsoft Endpoint Manager before proceeding with the simplified configuration process in Defender for Business. Deleting your policies in Microsoft Endpoint Manager helps avoid policy conflicts later. |

> [!TIP]
> If you would like to sign up for the Microsoft Defender for Business preview program, visit [https://aka.ms/MDB-Preview](https://aka.ms/MDB-Preview).

## View your security settings and policies

To view your security settings and policies, use one of the procedures in the following table:
<br/><br/>

| Portal | Procedure |
|:---|:---|
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) | 1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. <br/><br/>2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type.<br/><br/>3. Select an operating system tab (such as **Windows clients**).<br/><br/>4. Expand a category (such as **Next-generation protection** or **Firewall**) to view your list of policies.<br/><br/>5. Select a policy to view more details about the policy. To make changes or to learn more about policy settings, see the following articles: <br/>- [View or edit device policies](mdb-view-edit-policies.md)<br/>- [Understand next-generation configuration settings](mdb-next-gen-configuration-settings.md)<br/>- [Firewall settings](mdb-firewall.md)  |
| Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) | 1. Go to [https://endpoint.microsoft.com](https://endpoint.microsoft.com) and sign in. You're now in the Microsoft Endpoint Manager admin center.<br/><br/>2. Select **Endpoint security**.<br/><br/>3. Select a category, such as **Antivirus**, **Firewall**, **Endpoint detection and response**, or **Attack surface reduction** to view policies in that category. <br/><br/>To get help managing your security settings in Microsoft Endpoint Manager, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security). |

## Next steps

Proceed to one or more of the following tasks:

- [Get started using Microsoft Defender for Business](mdb-get-started.md)

- [Manage devices in Microsoft Defender for Business](mdb-manage-devices.md)

- [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md)

- [View or edit policies in Microsoft Defender for Business](mdb-view-edit-policies.md)

