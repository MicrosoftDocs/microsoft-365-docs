---
title: View and edit your security settings in Microsoft Defender for Business
description: Configure your security policies in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 04/12/2022
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

> [!NOTE]
> Microsoft Defender for Business is now included in [Microsoft 365 Business Premium](../../business-premium/index.md). 

## Overview

After you've onboarded your company's devices to Microsoft Defender for Business, your next step is to view and if necessary, edit your security policies and settings. Security policies to configure include:

- **[Next-generation protection policies](#view-or-edit-your-next-generation-protection-policies)**, which determine antivirus and antimalware protection for your company's devices
- **[Firewall protection and rules](#view-or-edit-your-firewall-policies-and-custom-rules)**, which determine what network traffic is allowed to flow to or from your company's devices
- **[Web content filtering](#set-up-web-content-filtering)**, which prevents people from visiting certain websites (URLs) based on categories, such as adult content or legal liability.
- **[Advanced features](#review-settings-for-advanced-features)**, such as automated investigation and response, and endpoint detection and response (EDR) in block mode.

In Defender for Business, security policies are applied to devices through [device groups](mdb-create-edit-device-groups.md#what-is-a-device-group). 

In addition to your security policies, you can [view and edit settings](#view-and-edit-other-settings-in-the-microsoft-365-defender-portal), such as which time zone to use in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and whether to receive preview features as they become available.

Use this article as a guide to managing your security policies and settings.

## What to do

1. [Choose where to manage your security policies and devices](#choose-where-to-manage-security-policies-and-devices).

2. [View or edit your next-generation protection policies](#view-or-edit-your-next-generation-protection-policies).

3. [View or edit your firewall policies and custom rules](#view-or-edit-your-firewall-policies-and-custom-rules).

4. [Set up web content filtering](#set-up-web-content-filtering).

5. [Review settings for advanced features](#review-settings-for-advanced-features).

6. [View and edit other settings in the Microsoft 365 Defender portal](#view-and-edit-other-settings-in-the-microsoft-365-defender-portal). 

7. [Proceed to your next steps](#next-steps).

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about security</a>. We'd love to hear from you!
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

Depending on whether you're using the Microsoft 365 Defender portal or Microsoft Endpoint Manager to manage your next-generation protection policies, use one of the procedures in the following table:

| Portal | Procedure |
|:---|:---|
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) | 1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. <br/><br/>2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type.<br/><br/>3. Select an operating system tab (such as **Windows clients**).<br/><br/>4. Expand **Next-generation protection** to view your list of policies.<br/><br/>5. Select a policy to view more details about the policy. To make changes or to learn more about policy settings, see the following articles: <br/>- [View or edit device policies](mdb-view-edit-policies.md)<br/>- [Understand next-generation configuration settings](mdb-next-gen-configuration-settings.md)  |
| Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) | 1. Go to [https://endpoint.microsoft.com](https://endpoint.microsoft.com) and sign in. You're now in the Microsoft Endpoint Manager admin center.<br/><br/>2. Select **Endpoint security**.<br/><br/>3. Select **Antivirus** to view your policies in that category. <br/><br/>To get help managing your security settings in Microsoft Endpoint Manager, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security). |

## View or edit your firewall policies and custom rules

Depending on whether you're using the Microsoft 365 Defender portal or Microsoft Endpoint Manager to manage your firewall protection, use one of the procedures in the following table:

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

## Review settings for advanced features

In addition to next-generation protection, firewall, and web content filtering policies, Defender for Business includes advanced security features. These features are preconfigured using recommended settings; however, you can review them, and if necessary, edit settings to suit your business needs.

To access settings for advanced features, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Settings** > **Endpoints** > **General** > **Advanced features**.

The following table describes settings for advanced features:

| Setting | Description |
|:---|:---|
| Automated Investigation <br/>(turned on by default) | As alerts are generated, automated investigations can occur. Each automated investigation determines whether a detected threat requires action, and then takes (or recommends) remediation actions (such as sending a file to quarantine, stopping a process, isolating a device, or blocking a URL). While an investigation is running, any other related alerts that arise are added to the investigation until it completes. If an affected entity is seen elsewhere, the automated investigation expands its scope to include that entity, and the investigation process repeats.<br/><br/>You can view investigations on the **Incidents** page. Select an incident, and then select the **Investigations** tab.<br/><br/>[Learn more about automated investigations](../defender-endpoint/automated-investigations.md).   |
| Live Response <br/>(turned on by default) | Defender for Business includes the following types of manual response actions: <br/>- Run antivirus scan<br/>- Isolate device<br/>- Stop and quarantine a file<br/>- Add an indicator to block or allow a file <br/><br/>[Learn more about response actions](../defender-endpoint/respond-machine-alerts.md). |
| Live Response for Servers | (This setting is currently not available in Defender for Business)   |
| Live Response unsigned script execution | (This setting is currently not available in Defender for Business)  | 
| Enable EDR in block mode<br/>(turned on by default) | Provides added protection from malicious artifacts when Microsoft Defender Antivirus is not the primary antivirus product and is running in passive mode on a device. EDR in block mode works behind the scenes to remediate malicious artifacts that were detected by EDR capabilities. Such artifacts might have been missed by the primary, non-Microsoft antivirus product. For devices running Microsoft Defender Antivirus as their primary antivirus, EDR in block mode provides an extra layer of defense by allowing Microsoft Defender Antivirus to take automatic actions on post-breach, behavioral EDR detections.<br/><br/>[Learn more about EDR in block mode](../defender-endpoint/edr-in-block-mode.md). |
| Allow or block a file <br/>(turned on by default) | Enables you to allow or block a file by using [indicators](../defender-endpoint/indicator-file.md). This capability requires Microsoft Defender Antivirus to be in active mode and [cloud protection](../defender-endpoint/cloud-protection-microsoft-defender-antivirus.md) to be turned on.<br/><br/>Blocking a file will prevent it from being read, written, or executed on devices in your organization. <br/><br/>[Learn more about indicators for files](../defender-endpoint/indicator-file.md).  |
| Custom network indicators<br/>(turned on by default) | Enables you to allow or block an IP address, URL, or domain by using [network indicators](../defender-endpoint/indicator-ip-domain.md). This capability requires Microsoft Defender Antivirus to be in active mode and [network protection](../defender-endpoint/enable-network-protection.md) to be turned on.<br/><br/>You can allow or block IPs, URLs, or domains based on your own threat intelligence. You can also warn users with a prompt if they open a risky app. The prompt won't stop them from using the app, but you can provide a warning for users.<br/><br/>[Learn more about network protection](../defender-endpoint/network-protection.md). |
| Tamper protection<br/>(we recommend turning this setting on) | Tamper protection prevents malicious apps taking actions such as:<br/>- Disabling virus and threat protection<br/>- Disabling real-time protection<br/>- Turning off behavior monitoring<br/>- Disabling cloud protection<br/>- Removing security intelligence updates<br/>- Disabling automatic actions on detected threats<br/><br/>Tamper protection essentially locks Microsoft Defender Antivirus to its secure, default values, and prevents your security settings from being changed by apps and unauthorized methods. <br/><br/>[Lern more about tamper protection](../defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection.md).  |
| Show user details<br/>(turned on by default) | Enables people in your organization to see details, such as employees' picture, name, title, and department. These details are stored in Azure Active Directory (Azure AD).<br/><br/>[Learn more about user profiles in Azure AD](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal).  |
| Skype for Business integration<br/>(turned on by default) | Skype for Business was retired in July 2021. If you haven't already moved to Microsoft Teams, see [Set up Microsoft Teams in your small business](/microsoftteams/deploy-small-business). <br/><br/>Integration with Microsoft Teams (or the former Skype for Business) enables one-click communication between people in your business.   |
| Web content filtering<br/>(turned on by default) | Block access to websites containing unwanted content and track web activity across all domains. See [Set up web content filtering](#set-up-web-content-filtering). |
| Microsoft Intune connection<br/>(we recommend turning this setting on if you have Intune) | If your organization's subscription includes Microsoft Intune (part of Microsoft Endpoint Manager, and included in [Microsoft 365 Business Premium](../../business/index.yml)), this setting enables Defender for Business to share information about devices with Intune.  |
| Device discovery<br/>(turned on by default) | Enables your security team to find unmanaged devices that are connected to your company network. Unknown and unmanaged devices introduce significant risks to your network - whether it's an unpatched printer, network devices with weak security configurations, or a server with no security controls. <br/><br/>Device discovery uses onboarded devices to discover unmanaged devices, so your security team can onboard the unmanaged devices and reduce your vulnerability. <br/><br/>[Learn more about device discovery](../defender-endpoint/device-discovery.md).    |
| Preview features | Microsoft is continually updating services, such as Defender for Business, to include new feature enhancements and capabilities. If you opt in to receive preview features, you'll be among the first to try upcoming features in the preview experience. <br/><br/>[Learn more about preview features](../defender-endpoint/preview.md).  |


## View and edit other settings in the Microsoft 365 Defender portal

In addition to security policies that are applied to devices, there are other settings you can view and edit in Defender for Business. For example, you specify the time zone to use, and you can onboard (or offboard) devices. 

> [!NOTE]
> You might see more settings in your tenant than are listed in this article. This article highlights the most important settings that you should review in Defender for Business.

### Settings to review for Defender for Business

The following table describes settings to view (and if necessary, edit) in Defender for Business:

| Category | Setting | Description |
|:---|:---|:---|
| **Security center** | **Time zone** | Select the time zone to be used for the dates and times displayed in incidents, detected threats, and automated investigation & remediation. You can either use UTC or your local time zone (*recommended*).  |
| **Microsoft 365 Defender** | **Account** | View details, such where your data is stored, your tenant ID, and your organization (org) ID. |
| **Microsoft 365 Defender**  | **Preview features**  | Turn on preview features to try upcoming features and new capabilities. You can be among the first to preview new features and provide feedback. |
| **Endpoints**  | **Email notifications** | Set up or edit your email notification rules. When vulnerabilities are detected or an alert is created, the recipients specified in your email notification rules will receive an email. [Learn more about email notifications](mdb-email-notifications.md). |
| **Endpoints**   | **Device management** > **Onboarding** | Onboard devices to Defender for Business by using a downloadable script. To learn more, see [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md).   |  
| **Endpoints**  |  **Device management** > **Offboarding** | Offboard (remove) devices from Defender for Business. When you offboard a device, it no longer sends data to Defender for Business, but data received prior to offboarding is retained. To learn more, see [Offboarding a device](mdb-offboard-devices.md).  |

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
