---
title: Set up, review, and edit your security policies and settings in Microsoft Defender for Business
description: View and edit security policies and settings in Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 05/03/2023
ms.reviewer: efratka
f1.keywords: NOCSH 
ms.collection: 
 - SMB
 - m365-security
 - m365solution-mdb-setup
 - highpri
 - tier1
---

# Set up, review, and edit your security policies and settings in Microsoft Defender for Business

This article walks you through how to review, create, or edit your security policies, and how to navigate advanced settings in Defender for Business.

:::image type="content" source="media/mdb-setup-step6.png" alt-text="Visual depicting step 6 - Review and edit security policies in Defender for Business.":::

When you're setting up (or maintaining) Defender for Business, an important part of the process includes reviewing your default policies, such as next-generation protection and firewall policies, as well as creating or editing additional policies, such as for web content filtering and attack surface reduction capabilities. In addition to your security policies, you can [view and edit settings](#view-and-edit-other-settings-in-the-microsoft-365-defender-portal), such as which time zone to use in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and whether to receive preview features as they become available.

## What to do

1. [Choose where to manage your security policies and devices](#choose-where-to-manage-security-policies-and-devices).
2. [Review your next-generation protection policies](#view-or-edit-your-next-generation-protection-policies).
3. [Review your firewall policies and custom rules](#view-or-edit-your-firewall-policies-and-custom-rules).
4. [Set up web content filtering](#set-up-web-content-filtering).
5. [Enable standard attack surface reduction capabilities](#enable-standard-attack-surface-reduction-capabilities).
6. [Review settings for advanced features](#review-settings-for-advanced-features).
7. [View other settings in the Microsoft 365 Defender portal](#view-and-edit-other-settings-in-the-microsoft-365-defender-portal). 
8. [Proceed to your next steps](#next-steps).

## Choose where to manage security policies and devices

You can choose to use either the Microsoft 365 Defender portal or the Microsoft Intune admin center to onboard devices and create or edit security policies. The following table explains both options.

| Option | Description |
|:---|:---|
| **Microsoft 365 Defender portal** | The Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) is a one-stop shop for managing your company's devices, security policies, and security settings in Defender for Business. With a simplified configuration process, you can use the Microsoft 365 Defender portal to onboard devices, access your security policies and settings, use the [Microsoft Defender Vulnerability Management dashboard](mdb-view-tvm-dashboard.md), and [view and manage incidents](mdb-view-manage-incidents.md) in one place. <br/><br/>Note that currently, controlled folder access and attack surface reduction rules are set up and configured in the Microsoft Intune admin center. |
| **Microsoft Intune admin center** | The Microsoft Intune admin center ([https://intune.microsoft.com/](https://intune.microsoft.com/)) lets you manage your workforce's devices and apps, including how they access your company data. You can onboard devices and access your security policies and settings in Intune. You can also use Intune to set up and configure attack surface reduction rules in Defender for Business. Intune is not included in the standalone version of Defender for Business, but it can be added on. <br/><br/>If your company has been using Intune, you can choose to continue using it to manage your devices and security policies. To learn more, see [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy)  |

> [!NOTE]
> If you're managing your security policies in the Microsoft 365 Defender portal, you can view those policies in the Intune admin center, where they're listed as **Antivirus** or **Firewall** policies. When you view your firewall policies in the Intune admin center, you'll see two policies listed: one policy for firewall protection and another for custom rules.
> 
> If you were using Intune and decide you want to switch to using the Microsoft 365 Defender portal instead, you'll be prompted to delete any existing security policies in Intune to avoid [policy conflicts](/microsoft-365/security/defender-business/mdb-troubleshooting#i-need-to-resolve-a-policy-conflict) later.

## View or edit your next-generation protection policies

Depending on whether you're using the Microsoft 365 Defender portal or Intune to manage your next-generation protection policies, use one of the following procedures:

| Portal | Procedure |
|:---|:---|
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) |1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.<br/>2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type.<br/>3. Select an operating system tab (such as **Windows clients**).<br/>4. Expand **Next-generation protection** to view your list of policies.<br/>5. Select a policy to view more details about the policy.<br/><br/> To make changes or to learn more about policy settings, see the following articles: <br/>- [View or edit device policies](mdb-view-edit-policies.md)<br/>- [Understand next-generation configuration settings](mdb-next-gen-configuration-settings.md)  |
| Microsoft Intune admin center ([https://intune.microsoft.com](https://intune.microsoft.com)) |1. Go to [https://intune.microsoft.com](https://intune.microsoft.com) and sign in. You're now in the Intune admin center.<br/>2. Select **Endpoint security**.<br/>3. Select **Antivirus** to view your policies in that category. <br/><br/>For help with managing your security settings in Intune, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security). |

## View or edit your firewall policies and custom rules

Depending on whether you're using the Microsoft 365 Defender portal or Intune to manage your firewall protection, use one of the following procedures.

| Portal | Procedure |
|:---|:---|
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) |1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.<br/>2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type.<br/>3. Select an operating system tab (such as **Windows clients**).<br/>4. Expand **Firewall** to view your list of policies.<br/>5. Select a policy to view the details. <br/><br/>To make changes or to learn more about policy settings, see the following articles:<br/>- [View or edit device policies](mdb-view-edit-policies.md)<br/>- [Firewall settings](mdb-firewall.md)<br/>- [Manage your custom rules for firewall policies](mdb-custom-rules-firewall.md)  |
| Microsoft Intune admin center ([https://intune.microsoft.com](https://intune.microsoft.com)) |1. Go to [https://intune.microsoft.com](https://intune.microsoft.com) and sign in. You're now in the Intune admin center.<br/>2. Select **Endpoint security**.<br/>3. Select **Firewall** to view your policies in that category. Custom rules that are defined for firewall protection are listed as separate policies. <br/><br/>For help with managing your security settings in Intune, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security).|

## Set up web content filtering

Web content filtering enables your security team to track and regulate access to websites based on content categories, as described in the following table:

| Category | Description |
|:---|:---|
| **Adult content** | Sites that are related to cults, gambling, nudity, pornography, sexually explicit material, or violence |
| **High bandwidth** | Download sites, image sharing sites, or peer-to-peer hosts |
| **Legal liability** | Sites that include child abuse images, promote illegal activities, foster plagiarism or school cheating, or that promote harmful activities |
| **Leisure** | Sites that provide web-based chat rooms, online gaming, web-based email, or social networking |
| **Uncategorized** | Sites that have no content or that are newly registered |

Not all websites in these categories are malicious, but they could be problematic for your company because of compliance regulations, bandwidth usage, or other concerns. You can create an audit-only policy to get a better understanding of whether your security team should block any website categories.

Web content filtering is available on the major web browsers, with blocks performed by Windows Defender SmartScreen (Microsoft Edge) and Network Protection (Chrome, Firefox, Brave, and Opera). For more information, see [Prerequisites for web content filtering](../defender-endpoint/web-content-filtering.md#prerequisites).

### To set up web content filtering

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), choose **Settings** > **Web content filtering** > **+ Add policy**.

2. Specify a name and description for your policy.

3. Select the categories to block. Use the expand icon to fully expand each parent category, and then select specific web content categories. To set up an audit-only policy that doesn't block any websites, don't select any categories.

   Don't select **Uncategorized**.

4. Specify the policy scope by selecting device groups to apply the policy to. Only devices in the selected device groups will be prevented from accessing websites in the selected categories.

5. Review the summary and save the policy. The policy refresh might take up to two hours to apply to your selected devices.

> [!TIP]
> To learn more about web content filtering, see [Web content filtering](../defender-endpoint/web-content-filtering.md).

## Enable standard attack surface reduction capabilities

Attack surfaces are all the places where your organization is vulnerable to cyberthreats and attacks. Defender for Business includes several attack surface reduction (ASR) capabilities to help protect your organization:

- **Network protection**, which is turned on by default with [next-generation protection](mdb-next-gen-configuration-settings.md).
- **Firewall protection**, which is turned on by default with [firewall policies](mdb-firewall.md).
- **Web protection**, which is turned on by default when [web content filtering](#set-up-web-content-filtering) is set up.
- **Controlled folder access**, which serves as part of your ransomware protection when you [set up controlled folder access](mdb-asr.md#set-up-controlled-folder-access).
- **ASR rules**, which help protect against certain software-based behaviors when you [enable your ASR rules](mdb-asr.md#enable-your-standard-protection-asr-rules). 

For more information, see [Attack surface reduction capabilities in Microsoft Defender for Business](mdb-asr.md).

## Review settings for advanced features

In addition to next-generation protection, firewall, and web content-filtering policies, Defender for Business includes advanced security features. These features are preconfigured to recommended settings. You can review and edit the settings to suit your business needs.

To access settings for advanced features in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Settings** > **Endpoints** > **General** > **Advanced features**.

The following table describes advanced feature settings.

| Setting | Description |
|:---|:---|
| **Automated Investigation** <br/>(turned on by default) | As alerts are generated, automated investigations can occur. Each automated investigation determines whether a detected threat requires action and then takes or recommends remediation actions, such as sending a file to quarantine, stopping a process, isolating a device, or blocking a URL. While an investigation is running, any related alerts that arise are added to the investigation until it's completed. If an affected entity is seen elsewhere, the automated investigation expands its scope to include that entity, and the investigation process repeats.<br/><br/>You can view investigations on the **Incidents** page. Select an incident, and then select the **Investigations** tab.<br/><br/>By default, automated investigation and response capabilities are turned on, tenant wide. **We recommend keeping automated investigation turned on**. If you turn it off, real-time protection in Microsoft Defender Antivirus will be affected, and your overall level of protection will be reduced. <br/><br/>[Learn more about automated investigations](../defender-endpoint/automated-investigations.md).   |
| **Live Response**  | Defender for Business includes the following types of manual response actions: <br/>- Run antivirus scan<br/>- Isolate device<br/>- Stop and quarantine a file<br/>- Add an indicator to block or allow a file <br/><br/>[Learn more about response actions](../defender-endpoint/respond-machine-alerts.md). |
| **Live Response for Servers** | (This setting is currently not available in Defender for Business.)   |
| **Live Response unsigned script execution** | (This setting is currently not available in Defender for Business.)  | 
| **Enable EDR in block mode**<br/>(turned on by default) | Provides added protection from malicious artifacts when Microsoft Defender Antivirus isn't the primary antivirus product and is running in passive mode on a device. Endpoint detection and response (EDR) in block mode works behind the scenes to remediate malicious artifacts detected by EDR capabilities. Such artifacts might have been missed by the primary, non-Microsoft antivirus product.<br/><br/>[Learn more about EDR in block mode](../defender-endpoint/edr-in-block-mode.md). |
| **Allow or block a file** <br/>(turned on by default) | Enables you to allow or block a file by using [indicators](../defender-endpoint/indicator-file.md). This capability requires Microsoft Defender Antivirus to be in active mode and [cloud protection](../defender-endpoint/cloud-protection-microsoft-defender-antivirus.md) turned on.<br/><br/>Blocking a file prevents it from being read, written, or executed on devices in your organization. <br/><br/>[Learn more about indicators for files](../defender-endpoint/indicator-file.md).  |
| **Custom network indicators**<br/>(turned on by default) | Enables you to allow or block an IP address, URL, or domain by using [network indicators](../defender-endpoint/indicator-ip-domain.md). This capability requires Microsoft Defender Antivirus to be in active mode and [network protection](../defender-endpoint/enable-network-protection.md) turned on.<br/><br/>You can allow or block IPs, URLs, or domains based on your threat intelligence. You can also prompt users if they open a risky app, but the prompt won't stop them from using the app.<br/><br/>[Learn more about network protection](../defender-endpoint/network-protection.md). |
| **Tamper protection**<br/>(we recommend you turn on this setting) | Tamper protection prevents malicious apps from doing actions such as:<br/>- Disable virus and threat protection<br/>- Disable real-time protection<br/>- Turn off behavior monitoring<br/>- Disable cloud protection<br/>- Remove security intelligence updates<br/>- Disable automatic actions on detected threats<br/><br/>Tamper protection essentially locks Microsoft Defender Antivirus to its secure, default values and prevents your security settings from being changed by apps and unauthorized methods. <br/><br/>[Learn more about tamper protection](../defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection.md).  |
| **Show user details**<br/>(turned on by default) | Enables people in your organization to see details, such as employees' pictures, names, titles, and departments. These details are stored in Azure Active Directory (Azure AD).<br/><br/>[Learn more about user profiles in Azure AD](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal).  |
| **Skype for Business integration**<br/>(turned on by default) | Skype for Business was retired in July 2021. If you haven't already moved to Microsoft Teams, see [Set up Microsoft Teams in your small business](/microsoftteams/deploy-small-business). <br/><br/>Integration with Microsoft Teams (or the former Skype for Business) enables one-click communication between people in your business.   |
| **Web content filtering**<br/>(turned on by default) | Blocks access to websites that contain unwanted content and tracks web activity across all domains. See [Set up web content filtering](#set-up-web-content-filtering). |
| **Microsoft Intune connection**<br/>(we recommend you turn on this setting if you have Intune) | If your organization's subscription includes Microsoft Intune (included in [Microsoft 365 Business Premium](../../business/index.yml)), this setting enables Defender for Business to share information about devices with Intune.  |
| **Device discovery**<br/>(turned on by default) | Enables your security team to find unmanaged devices that are connected to your company network. Unknown and unmanaged devices introduce significant risks to your network, whether it's an unpatched printer, a network device with a weak security configuration, or a server with no security controls.<br/><br/>Device discovery uses onboarded devices to discover unmanaged devices, so your security team can onboard the unmanaged devices and reduce your vulnerability. <br/><br/>[Learn more about device discovery](../defender-endpoint/device-discovery.md).    |
| **Preview features** | Microsoft is continually updating services such as Defender for Business to include new feature enhancements and capabilities. If you opt in to receive preview features, you'll be among the first to try upcoming features in the preview experience. <br/><br/>[Learn more about preview features](../defender-endpoint/preview.md).  |

## View and edit other settings in the Microsoft 365 Defender portal

In addition to security policies applied to devices, there are other settings you can view and edit in Defender for Business. For example, you specify the time zone to use, and you can onboard (or offboard) devices. 

> [!NOTE]
> You might see more settings in your tenant than are listed in this article. This article highlights the most important settings that you should review in Defender for Business.

### Settings to review for Defender for Business

The following table describes settings you can view and  edit in Defender for Business:

| Category | Setting | Description |
|:---|:---|:---|
| **Security center** | **Time zone** | Select the time zone to use for the dates and times displayed in incidents, detected threats, and automated investigation and remediation. You can either use UTC or your local time zone (*recommended*).  |
| **Microsoft 365 Defender** | **Account** | View details such where your data is stored, your tenant ID, and your organization (org) ID. |
| **Microsoft 365 Defender**  | **Preview features**  | Turn on preview features to try upcoming features and new capabilities. You can be among the first to preview new features and provide feedback. |
| **Endpoints**  | **Email notifications** | Set up or edit your email notification rules. When vulnerabilities are detected or an alert is created, the recipients specified in your email notification rules will receive an email. [Learn more about email notifications](mdb-email-notifications.md). |
| **Endpoints**   | **Device management** > **Onboarding** | Onboard devices to Defender for Business by using a downloadable script. To learn more, see [Onboard devices to Defender for Business](mdb-onboard-devices.md).   |  
| **Endpoints**  |  **Device management** > **Offboarding** | Offboard (remove) devices from Defender for Business. When you offboard a device, it no longer sends data to Defender for Business, but data received prior to offboarding is retained. To learn more, see [Offboarding a device](mdb-offboard-devices.md).  |

### Access your settings in the Microsoft 365 Defender portal

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)), and sign in.

2. Select **Settings**, and then select a category (such as **Security center**, **Microsoft 365 Defender**, or **Endpoints**).

3. In the list of settings, select an item to view or edit.

## Next steps

- [Get started using Defender for Business](mdb-get-started.md)
- [Manage devices in Defender for Business](mdb-manage-devices.md)
- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
- [View or edit policies in Defender for Business](mdb-view-edit-policies.md)
