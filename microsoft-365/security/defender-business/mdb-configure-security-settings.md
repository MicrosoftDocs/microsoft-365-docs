---
title: View and edit your security settings in Microsoft Defender for Business
description: Configure your security policies in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 03/15/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# View and edit your security policies and settings in Microsoft Defender for Business

> [!IMPORTANT]
> Microsoft Defender for Business is rolling out to [Microsoft 365 Business Premium](../../business-premium/index.md) customers, beginning March 1, 2022. Defender for Business as a standalone subscription is in in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. Preview includes an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

## Overview

After you've onboarded your company's devices to Microsoft Defender for Business, your next step is to view and if necessary, edit your security policies and settings. Security policies to configure include:

- **[Next-generation protection policies](#view-or-edit-your-next-generation-protection-policies)**, which determine antivirus and antimalware protection for your company's devices
- **[Firewall protection and rules](#view-or-edit-your-firewall-policies-and-custom-rules)**, which determine what network traffic is allowed to flow to or from your company's devices
- **[Web content filtering](#set-up-web-content-filtering)**, which prevents people from visiting certain websites (URLs) based on categories, such as adult content or legal liability.

In Defender for Business, security policies are applied to devices through [device groups](mdb-create-edit-device-groups.md#what-is-a-device-group). 

In addition to your security policies, you can [view and edit settings](#view-and-edit-other-settings-in-the-microsoft-365-defender-portal), such as which time zone to use in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and whether to receive preview features as they become available.

Use this article as a guide to managing your security policies and settings.

## What to do

1. [Choose where to manage your security policies and devices](#choose-where-to-manage-security-policies-and-devices).

2. [View or edit your next-generation protection policies](#view-or-edit-your-next-generation-protection-policies).

3. [View or edit your firewall policies and custom rules](#view-or-edit-your-firewall-policies-and-custom-rules).

4. [Set up web content filtering](#set-up-web-content-filtering).

5. [View and edit other settings in the Microsoft 365 Defender portal](#view-and-edit-other-settings-in-the-microsoft-365-defender-portal). 

6. [Proceed to your next steps](#next-steps).

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

## Choose where to manage security policies and devices

Defender for Business features a [simplified configuration process](mdb-simplified-configuration.md) that helps streamline the setup and configuration process. If you select the simplified configuration process, you can view and manage your security policies in the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)). However, you're not limited to this option. If you've been using Microsoft Endpoint Manager (which includes Microsoft Intune), you can keep using your Endpoint Manager.

The following table can help you choose where to manage your security policies and devices. <br/><br/>

| Option | Description |
|:---|:---|
| **Use the Microsoft 365 Defender portal** (*recommended*) | The Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) can be your one-stop shop for managing your company's devices, security policies, and security settings. You can access your security policies and settings, use your [Threat & Vulnerability Management dashboard](mdb-view-tvm-dashboard.md), and [view and manage incidents](mdb-view-manage-incidents.md) all in one place. <br/><br/>If you're using Microsoft Endpoint Manager, devices that you onboard to Defender for Business and your security policies are visible in Endpoint Manager. To learn more, see the following articles:<br/><br/>- [Defender for Business default settings and Microsoft Endpoint Manager](mdb-next-gen-configuration-settings.md#defender-for-business-default-settings-and-microsoft-endpoint-manager)<br/><br/>- [Firewall in Microsoft Defender for Business](mdb-firewall.md)   |
| **Use Microsoft Endpoint Manager** | If your company is already using Endpoint Manager (which includes Microsoft Intune) to manage security policies, you can continue using Endpoint Manager to manage devices and security policies. To learn more, see [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy). <br/><br/>If you decide to switch to the [simplified configuration process in Defender for Business](mdb-simplified-configuration.md), you'll be prompted to delete any existing security policies in Endpoint Manager to avoid [policy conflicts](mdb-troubleshooting.yml) later. |

> [!IMPORTANT]
> If you are managing security policies in the Microsoft 365 Defender portal, you can *view* those policies in Endpoint Manager, listed as Antivirus or Firewall policies. When you view your firewall policies in Endpoint Manager, you'll see two policies listed: one policy for your firewall protection, and another for custom rules.

## View or edit your next-generation protection policies

Depending on whether you're using the Microsoft 365 Defender portal or Microsoft Endpoint Manager to manage your next-generation protection policies, use one of the procedures in the following table: <br/><br/>

| Portal | Procedure |
|:---|:---|
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) | 1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. <br/><br/>2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type.<br/><br/>3. Select an operating system tab (such as **Windows clients**).<br/><br/>4. Expand **Next-generation protection** to view your list of policies.<br/><br/>5. Select a policy to view more details about the policy. To make changes or to learn more about policy settings, see the following articles: <br/>- [View or edit device policies](mdb-view-edit-policies.md)<br/>- [Understand next-generation configuration settings](mdb-next-gen-configuration-settings.md)  |
| Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) | 1. Go to [https://endpoint.microsoft.com](https://endpoint.microsoft.com) and sign in. You're now in the Microsoft Endpoint Manager admin center.<br/><br/>2. Select **Endpoint security**.<br/><br/>3. Select **Antivirus** to view your policies in that category. <br/><br/>To get help managing your security settings in Microsoft Endpoint Manager, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security). |

## View or edit your firewall policies and custom rules

Depending on whether you're using the Microsoft 365 Defender portal or Microsoft Endpoint Manager to manage your firewall protection, use one of the procedures in the following table: <br/><br/>

| Portal | Procedure |
|:---|:---|
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) | 1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. <br/><br/>2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type.<br/><br/>3. Select an operating system tab (such as **Windows clients**).<br/><br/>4. Expand **Firewall** to view your list of policies.<br/><br/>5. Select a policy to view more details about the policy. To make changes or to learn more about policy settings, see the following articles: <br/>- [View or edit device policies](mdb-view-edit-policies.md)<br/>- [Firewall settings](mdb-firewall.md)<br/>- [Manage your custom rules for firewall policies](mdb-custom-rules-firewall.md)  |
| Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) | 1. Go to [https://endpoint.microsoft.com](https://endpoint.microsoft.com) and sign in. You're now in the Microsoft Endpoint Manager admin center.<br/><br/>2. Select **Endpoint security**.<br/><br/>3. Select **Firewall** to view your policies in that category. Custom rules that are defined for firewall protection are listed as separate policies.<br/><br/>To get help managing your security settings in Microsoft Endpoint Manager, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security). |

## Set up web content filtering

Web content filtering enables your security team to track and regulate access to websites based on their content categories, such as:

- Adult content: Sites that are related to cults, gambling, nudity, pornography, sexually explicit material, or violence

- High bandwidth: Download sites, image sharing sites, or peer-to-peer hosts

- Legal liability: Sites that include child abuse images, promote illegal activities, foster plagiarism or school cheating, or that promote harmful activities

- Leisure: Sites that provide web-based chat rooms, online gaming, web-based email, or social networking

- Uncategorized: Sites that have no content or that are newly registered

Not all of the websites in these categories are malicious, but they could be problematic for your company because of compliance regulations, bandwidth usage, or other concerns. In addition, you can create an audit-only policy to get a better understanding of whether your security team should block any website categories.

Web content filtering is available on the major web browsers, with blocks performed by Windows Defender SmartScreen (Microsoft Edge) and Network Protection (Chrome, Firefox, Brave, and Opera). For more information see [Prerequisites for web content filtering](../defender-endpoint/web-content-filtering.md#prerequisites).

### To set up web content filtering

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), choose **Settings** > **Web content filtering** > **+ Add policy**.

2. Specify a name and description for your policy.

3. Select categories to block. Use the expand icon to fully expand each parent category and select specific web content categories.

   To set up an audit-only policy that does not block any websites, do not select any categories.

   Do not select **Uncategorized**.

4. Specify the policy scope by selecting device groups to apply the policy. Only devices in the selected device groups will be prevented from accessing websites in the selected categories.

5. Review the summary and save the policy. The policy refresh might take up to 2 hours to apply to your selected devices.

> [!TIP]
> To learn more about web content filtering, see [Web content filtering](../defender-endpoint/web-content-filtering.md).

## View and edit other settings in the Microsoft 365 Defender portal

In addition to security policies that are applied to devices, there are other settings you can view and edit in Defender for Business. For example, you specify the time zone to use, and you can onboard (or offboard) devices. 

> [!NOTE]
> You might see more settings in your tenant than are listed in this article. This article highlights the most important settings that you should review in Defender for Business.

### Settings to review for Defender for Business

The following table describes settings to view (and if necessary, edit) in Defender for Business.

<br/><br/>

| Category | Setting | Description |
|:---|:---|:---|
| **Security center** | **Time zone** | Select the time zone to be used for the dates and times displayed in incidents, detected threats, and automated investigation & remediation. You can either use UTC or your local time zone (*recommended*).  |
| **Microsoft 365 Defender** | **Account** | View details, such where your data is stored, your tenant ID, and your organization (org) ID. |
| **Microsoft 365 Defender**  | **Preview features**  | Turn on preview features to try upcoming features and new capabilities. You can be among the first to preview new features and provide feedback. |
| **Endpoints**  | **Email notifications** | Set up or edit your email notification rules. When vulnerabilities are detected or an alert is created, the recipients specified in your email notification rules will receive an email. [Learn more about email notifications](mdb-email-notifications.md). |
| **Endpoints**   | **Device management** > **Onboarding** | Onboard devices to Defender for Business by using a downloadable script. To learn more, see [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md).   |  
| **Endpoints**  |  **Device management** > **Offboarding** | Offboard (remove) devices from Defender for Business. When you offboard a device, it no longer sends data to Defender for Business, but data received prior to offboarding is retained. To learn more, see [Offboarding a device](mdb-onboard-devices.md#offboarding-a-device).  |

### Access your settings in the Microsoft 365 Defender portal

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)), and sign in.

2. Select **Settings**, and then select a category (such as **Security center**, **Microsoft 365 Defender**, or **Endpoints**).

3. In the list of settings, select an item to view or edit.


## Next steps

Proceed to one or more of the following tasks:

- [Get started using Microsoft Defender for Business](mdb-get-started.md)
- [Manage devices in Microsoft Defender for Business](mdb-manage-devices.md)
- [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md)
- [View or edit policies in Microsoft Defender for Business](mdb-view-edit-policies.md)

- [View or edit policies in Microsoft Defender for Business](mdb-view-edit-policies.md)
