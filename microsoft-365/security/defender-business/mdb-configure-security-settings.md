---
title: View and edit your security settings in Microsoft Defender for Business
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
ms.date: 07/19/2022
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
 - SMB
 - m365-security
 - m365solution-mdb-setup
 - highpri
 - tier1
---

# View and edit security policies and settings in Microsoft Defender for Business

After you've onboarded your company's devices to Defender for Business, the next step is to review your security policies. 

> [!TIP]
> Defender for Business includes preconfigured security policies with recommended settings. You can edit these settings to suit your business needs.

Security policies to review and configure include:

- **[Next-generation protection policies](#view-or-edit-your-next-generation-protection-policies)**, which determine antivirus and antimalware protection for your company's devices
- **[Firewall protection and rules](#view-or-edit-your-firewall-policies-and-custom-rules)**, which determine what network traffic is allowed to flow to and from your company's devices
- **[Web content filtering](#set-up-web-content-filtering)**, which prevents people from visiting certain websites (URLs) based on categories, such as adult content or legal liability
- **[Advanced features](#review-settings-for-advanced-features)**, such as automated investigation and response and endpoint detection and response (EDR) in block mode

In Defender for Business, security policies are applied to devices through [device groups](mdb-create-edit-device-groups.md#what-is-a-device-group). 

In addition to your security policies, you can [view and edit settings](#view-and-edit-other-settings-in-the-microsoft-365-defender-portal), such as which time zone to use in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and whether to receive preview features as they become available.

Use this article as a guide to managing your security policies and settings.

## What to do

1. [Choose where to manage your security policies and devices](#choose-where-to-manage-security-policies-and-devices).
2. [Review your next-generation protection policies](#view-or-edit-your-next-generation-protection-policies).
3. [Review your firewall policies and custom rules](#view-or-edit-your-firewall-policies-and-custom-rules).
4. [Set up web content filtering](#set-up-web-content-filtering).
5. [Review settings for advanced features](#review-settings-for-advanced-features).
6. [View other settings in the Microsoft 365 Defender portal](#view-and-edit-other-settings-in-the-microsoft-365-defender-portal). 
7. [Proceed to your next steps](#next-steps).


## Choose where to manage security policies and devices

Defender for Business features a [simplified configuration process](mdb-simplified-configuration.md) that helps streamline the setup and configuration process. If you select the simplified configuration process, you can view and manage your security policies in the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)). However, you're not limited to this option. If you've been using Microsoft Intune, you can keep using the Microsoft Endpoint Manager admin center.

The following table can help you choose where to manage your security policies and devices.

| Option | Description |
|:---|:---|
| **Use the Microsoft 365 Defender portal** (*recommended*) | The Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) is a one-stop shop for managing your company's devices, security policies, and security settings. You can access your security policies and settings, use the [Microsoft Defender Vulnerability Management dashboard](mdb-view-tvm-dashboard.md), and [view and manage incidents](mdb-view-manage-incidents.md) all in one place. <p>If you're using Intune, devices that you onboard to Defender for Business and your security policies are visible in the Endpoint Manager admin center. To learn more, see the following articles:<ul><li>[Defender for Business default settings and Microsoft Intune](mdb-next-gen-configuration-settings.md#defender-for-business-default-settings-and-microsoft-intune)</li><li>[Firewall in Defender for Business](mdb-firewall.md)</li></ul>   |
| **Use the Microsoft Endpoint Manager admin center** | If your company is already using Intune to manage security policies, you can continue using the Endpoint Manager admin center to manage your devices and security policies. To learn more, see [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy). <p>If you decide to switch to the [simplified configuration process in Defender for Business](mdb-simplified-configuration.md), you'll be prompted to delete any existing security policies in Intune to avoid [policy conflicts](mdb-troubleshooting.yml) later. |

> [!IMPORTANT]
> If you're managing security policies in the Microsoft 365 Defender portal, you can *view* those policies in the Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), where they're listed as **Antivirus** or **Firewall** policies. When you view your firewall policies in the admin center, you'll see two policies listed: one policy for firewall protection and another for custom rules.

## View or edit your next-generation protection policies

Depending on whether you're using the Microsoft 365 Defender portal or the Microsoft Endpoint Manager admin center to manage your next-generation protection policies, use one of the following procedures:

| Portal | Procedure |
|:---|:---|
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) |<ol><li>Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.</li><li>In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type.</li><li>Select an operating system tab (such as **Windows clients**).</li><li>Expand **Next-generation protection** to view your list of policies.</li><li>Select a policy to view more details about the policy.</li><li>To make changes or to learn more about policy settings, see the following articles: <ul><li>[View or edit device policies](mdb-view-edit-policies.md)</li><li>[Understand next-generation configuration settings](mdb-next-gen-configuration-settings.md)</li></ul></li><ol>  |
| Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) |For help managing your security settings in Intune, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security). <ol><li>Go to [https://endpoint.microsoft.com](https://endpoint.microsoft.com) and sign in. You're now in the Endpoint Manager admin center.</li><li>Select **Endpoint security**.</li><li>Select **Antivirus** to view your policies in that category.</li></ol>|

## View or edit your firewall policies and custom rules

Depending on whether you're using the Microsoft 365 Defender portal or the Microsoft Endpoint Manager admin center to manage your firewall protection, use one of the following procedures.

| Portal | Procedure |
|:---|:---|
| Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) |<ol><li>Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.</li><li>In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type.</li><li>Select an operating system tab (such as **Windows clients**).</li><li>Expand **Firewall** to view your list of policies.</li><li>Select a policy to view the details. </li><li>To make changes or to learn more about policy settings, see the following articles:<ul><li>[View or edit device policies](mdb-view-edit-policies.md)</li><li>[Firewall settings](mdb-firewall.md)</li><li>[Manage your custom rules for firewall policies](mdb-custom-rules-firewall.md)</li><ul></li><ol>  |
| Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) |For help managing your security settings in Intune, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security). <ol><li>Go to [https://endpoint.microsoft.com](https://endpoint.microsoft.com) and sign in. You're now in the Endpoint Manager admin center.</li><li>Select **Endpoint security**.</li><li>Select **Firewall** to view your policies in that category. Custom rules that are defined for firewall protection are listed as separate policies.</li></ol>|

## Set up web content filtering

Web content filtering enables your security team to track and regulate access to websites based on content categories, such as:

- Adult content: Sites that are related to cults, gambling, nudity, pornography, sexually explicit material, or violence
- High bandwidth: Download sites, image sharing sites, or peer-to-peer hosts
- Legal liability: Sites that include child abuse images, promote illegal activities, foster plagiarism or school cheating, or that promote harmful activities
- Leisure: Sites that provide web-based chat rooms, online gaming, web-based email, or social networking
- Uncategorized: Sites that have no content or that are newly registered

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

## Review settings for advanced features

In addition to next-generation protection, firewall, and web content-filtering policies, Defender for Business includes advanced security features. These features are preconfigured to recommended settings. You can review and edit the settings to suit your business needs.

To access settings for advanced features in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Settings** > **Endpoints** > **General** > **Advanced features**.

The following table describes advanced feature settings.

| Setting | Description |
|:---|:---|
| **Automated Investigation** <br/>(turned on by default) | As alerts are generated, automated investigations can occur. Each automated investigation determines whether a detected threat requires action and then takes or recommends remediation actions, such as sending a file to quarantine, stopping a process, isolating a device, or blocking a URL. While an investigation is running, any related alerts that arise are added to the investigation until it's completed. If an affected entity is seen elsewhere, the automated investigation expands its scope to include that entity, and the investigation process repeats.<p>You can view investigations on the **Incidents** page. Select an incident, and then select the **Investigations** tab.<p>By default, automated investigation and response capabilities are turned on, tenant wide. **We recommend keeping automated investigation turned on**. If you turn it off, real-time protection in Microsoft Defender Antivirus will be affected, and your overall level of protection will be reduced. <p>[Learn more about automated investigations](../defender-endpoint/automated-investigations.md).   |
| **Live Response**  | Defender for Business includes the following types of manual response actions: <ul><li>Run antivirus scan</li><li>Isolate device</li><li>Stop and quarantine a file</li><li>Add an indicator to block or allow a file</li></ul> <p>[Learn more about response actions](../defender-endpoint/respond-machine-alerts.md). |
| **Live Response for Servers** | (This setting is currently not available in Defender for Business.)   |
| **Live Response unsigned script execution** | (This setting is currently not available in Defender for Business.)  | 
| **Enable EDR in block mode**<br/>(turned on by default) | Provides added protection from malicious artifacts when Microsoft Defender Antivirus isn't the primary antivirus product and is running in passive mode on a device. Endpoint detection and response (EDR) in block mode works behind the scenes to remediate malicious artifacts detected by EDR capabilities. Such artifacts might have been missed by the primary, non-Microsoft antivirus product.<p>[Learn more about EDR in block mode](../defender-endpoint/edr-in-block-mode.md). |
| **Allow or block a file** <br/>(turned on by default) | Enables you to allow or block a file by using [indicators](../defender-endpoint/indicator-file.md). This capability requires Microsoft Defender Antivirus to be in active mode and [cloud protection](../defender-endpoint/cloud-protection-microsoft-defender-antivirus.md) turned on.<p>Blocking a file prevents it from being read, written, or executed on devices in your organization. <p>[Learn more about indicators for files](../defender-endpoint/indicator-file.md).  |
| **Custom network indicators**<br/>(turned on by default) | Enables you to allow or block an IP address, URL, or domain by using [network indicators](../defender-endpoint/indicator-ip-domain.md). This capability requires Microsoft Defender Antivirus to be in active mode and [network protection](../defender-endpoint/enable-network-protection.md) turned on.<p>You can allow or block IPs, URLs, or domains based on your threat intelligence. You can also prompt users if they open a risky app, but the prompt won't stop them from using the app.<p>[Learn more about network protection](../defender-endpoint/network-protection.md). |
| **Tamper protection**<br/>(we recommend you turn on this setting) | Tamper protection prevents malicious apps from doing actions such as:<ul><li>Disable virus and threat protection</li><li>Disable real-time protection</li><li>Turn off behavior monitoring</li><li>Disable cloud protection</li><li>Remove security intelligence updates</li><li>Disable automatic actions on detected threats</li></ul><p>Tamper protection essentially locks Microsoft Defender Antivirus to its secure, default values and prevents your security settings from being changed by apps and unauthorized methods. <p>[Learn more about tamper protection](../defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection.md).  |
| **Show user details**<br/>(turned on by default) | Enables people in your organization to see details, such as employees' pictures, names, titles, and departments. These details are stored in Azure Active Directory (Azure AD).<p>[Learn more about user profiles in Azure AD](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal).  |
| **Skype for Business integration**<br/>(turned on by default) | Skype for Business was retired in July 2021. If you haven't already moved to Microsoft Teams, see [Set up Microsoft Teams in your small business](/microsoftteams/deploy-small-business). <p>Integration with Microsoft Teams (or the former Skype for Business) enables one-click communication between people in your business.   |
| **Web content filtering**<br/>(turned on by default) | Blocks access to websites that contain unwanted content and tracks web activity across all domains. See [Set up web content filtering](#set-up-web-content-filtering). |
| **Microsoft Intune connection**<br/>(we recommend you turn on this setting if you have Intune) | If your organization's subscription includes Microsoft Intune (included in [Microsoft 365 Business Premium](../../business/index.yml)), this setting enables Defender for Business to share information about devices with Intune.  |
| **Device discovery**<br/>(turned on by default) | Enables your security team to find unmanaged devices that are connected to your company network. Unknown and unmanaged devices introduce significant risks to your network, whether it's an unpatched printer, a network device with a weak security configuration, or a server with no security controls.<p>Device discovery uses onboarded devices to discover unmanaged devices, so your security team can onboard the unmanaged devices and reduce your vulnerability. <p>[Learn more about device discovery](../defender-endpoint/device-discovery.md).    |
| **Preview features** | Microsoft is continually updating services such as Defender for Business to include new feature enhancements and capabilities. If you opt in to receive preview features, you'll be among the first to try upcoming features in the preview experience. <p>[Learn more about preview features](../defender-endpoint/preview.md).  |

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
