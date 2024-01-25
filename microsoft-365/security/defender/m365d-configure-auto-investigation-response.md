---
title: Configure automated investigation and response capabilities in Microsoft Defender XDR
description: Configure automated investigation and response with self-healing in Microsoft Defender XDR
search.appverid: MET150
ms.author: diannegali
author: diannegali
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.service: defender-xdr
ms.localizationpriority: medium
ms.date: 9/18/2023
ms.collection:
- m365-security
- tier2
ms.custom: 
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
f1.keywords: CSH
---

# Configure automated investigation and response capabilities in Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

Microsoft Defender XDR includes powerful [automated investigation and response capabilities](m365d-autoir.md) that can save your security operations team much time and effort. With [self-healing](m365d-autoir.md#how-automated-investigation-and-self-healing-works), these capabilities mimic the steps a security analyst would take to investigate and respond to threats, only faster, and with more ability to scale.

This article describes how to configure automated investigation and response in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft Defender XDR</a> with these steps:

1. [Review the prerequisites](#prerequisites-for-automated-investigation-and-response-in-microsoft-365-defender).
2. [Review or change the automation level for device groups](#review-or-change-the-automation-level-for-device-groups).
3. [Review your security and alert policies in Office 365](#review-your-security-and-alert-policies-in-office-365).

Then, after you're all set up, you can [view and manage remediation actions in the Action center](m365d-autoir-actions.md). And, if necessary, you can [make changes to automated investigation settings](#need-to-make-changes-to-automated-investigation-settings).

<a name='prerequisites-for-automated-investigation-and-response-in-microsoft-365-defender'></a>

## Prerequisites for automated investigation and response in Microsoft Defender XDR

|Requirement|Details|
|---|---|
|Subscription requirements|One of these subscriptions: <ul><li>Microsoft 365 E5</li><li>Microsoft 365 A5</li><li>Microsoft 365 E3 with the Microsoft 365 E5 Security add-on</li><li>Microsoft 365 A3 with the Microsoft 365 A5 Security add-on</li><li>Office 365 E5 plus Enterprise Mobility + Security E5 plus Windows E5</li></ul> <br/> See [Microsoft Defender XDR licensing requirements](./prerequisites.md#licensing-requirements).|
|Network requirements|<ul><li>[Microsoft Defender for Identity](/azure-advanced-threat-protection/what-is-atp) enabled</li><li>[Microsoft Defender for Cloud Apps](/cloud-app-security/what-is-cloud-app-security) configured</li><li>[Microsoft Defender for Identity integration](/cloud-app-security/mdi-integration)</li></ul>|
|Windows device requirements|<ul><li>Windows 11</li><li>Windows 10, version 1709 or later installed (See [Windows release information](/windows/release-information/))</li><li>The following threat protection services are configured:<ul><li>[Microsoft Defender for Endpoint](../defender-endpoint/configure-endpoints.md)</li><li>[Microsoft Defender Antivirus](/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features)</li></ul></li></ul>|
|Protection for email content and Office files|<ul><li>[Microsoft Defender for Office 365 is configured](/microsoft-365/security/office-365-security/defender-for-office-365#configure-atp-policies)</li><li>[Automated investigation and remediation capabilities in Defender for Endpoint are configured](../defender-endpoint/configure-automated-investigations-remediation.md) (required for manual response actions, such as deleting email messages on devices)</li></ul>|
|Permissions|To configure automated investigation and response capabilities, you must have one of the following roles assigned in either Microsoft Entra ID (<https://portal.azure.com>) or in the Microsoft 365 admin center (<https://admin.microsoft.com>): <ul><li>Global Administrator</li><li>Security Administrator</li></ul>To work with automated investigation and response capabilities, such as by reviewing, approving, or rejecting pending actions, see [Required permissions for Action center tasks](m365d-action-center.md#required-permissions-for-action-center-tasks).|

## Review or change the automation level for device groups

Whether automated investigations run, and whether remediation actions are taken automatically or only upon approval for your devices depend on certain settings, such as your organization's device group policies. Review the configured automation level for your device group policies. You must be a global administrator or security administrator to perform the following procedure:

1. Go to the Microsoft Defender portal at <https://security.microsoft.com> and sign in.

2. Go to **Settings** \> **Endpoints** \> **Device groups** under **Permissions**.

3. Review your device group policies. In particular, look at the **Automation level** column. We recommend using **Full - remediate threats automatically**.  You might need to create or edit your device groups to get the level of automation you want. To get help with this task, see the following articles:

   - [How threats are remediated](/windows/security/threat-protection/microsoft-defender-atp/automated-investigations#how-threats-are-remediated)
   - [Create and manage device groups](/windows/security/threat-protection/microsoft-defender-atp/machine-groups)

## Review your security and alert policies in Office 365

Microsoft provides built-in [alert policies](../office-365-security/alert-policies-defender-portal.md) that help identify certain risks. These risks include Exchange admin permissions abuse, malware activity, potential external and internal threats, and data lifecycle management risks. Some alerts can trigger [automated investigation and response in Office 365](../office-365-security/air-about.md). Make sure your [Defender for Office 365](../office-365-security/defender-for-office-365.md) features are configured correctly.

Although certain alerts and security policies can trigger automated investigations, *no remediation actions are taken automatically for email and content*. Instead, all remediation actions for email and email content await approval by your security operations team in the [Action center](m365d-action-center.md).

Security settings in Exchange Online Protection (EOP) and Defender for Office 365 help protect email and content. We recommend using the Standard and Strict [preset security policies](../office-365-security/preset-security-policies.md#preset-security-policies-in-eop-and-microsoft-defender-for-office-365) to assign protection to users.

If you're using custom policies, use the [Configuration analyzer](../office-365-security/configuration-analyzer-for-security-policies.md) to compare your policy settings to the Standard and Strict preset security policy settings. For a detailed listing of all policy settings, see the tables in [Recommended settings for EOP and Microsoft Defender for Office 365 security](../office-365-security/recommended-settings-for-eop-and-office365.md).

You can review your [alert policies](../office-365-security/alert-policies-defender-portal.md) in the Defender portal at <https://security.microsoft.com> \> **Policies & rules** \> **Alert policy** or directly at <https://security.microsoft.com/alertpoliciesv2>. Several default alert policies are in the **Threat management** category. Some of the alert policies in the **Threat management** category can trigger automated investigation and response. To learn more, see [Threat management alert policies](/purview/alert-policies#threat-management-alert-policies).

## Need to make changes to automated investigation settings?

You can choose from several options to change settings for your automated investigation and response capabilities. Some options are listed in the following table:

|To do this|Follow these steps|
|---|---|
|Specify automation levels for groups of devices|<ol><li>Set up one or more device groups. See [Create and manage device groups](../defender-endpoint/machine-groups.md). </li><li>In the Microsoft Defender portal, go to **Permissions** \> **Endpoints roles & groups** \> **Device groups**.</li><li>Select a device group and review its **Automation level** setting. (We recommend using **Full - remediate threats automatically**). See [Automation levels in automated investigation and remediation capabilities](../defender-endpoint/automation-levels.md).</li><li>Repeat steps 2 and 3 as appropriate for all your device groups. </li></ol>|

## Next steps

- [Remediation actions in Microsoft Defender XDR](m365d-remediation-actions.md)
- [Visit the Action center](m365d-action-center.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
