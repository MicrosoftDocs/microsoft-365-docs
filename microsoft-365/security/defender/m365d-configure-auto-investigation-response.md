---
title: Configure automated investigation and response capabilities in Microsoft 365 Defender
description: Configure automated investigation and response with self-healing in Microsoft 365 Defender
search.appverid: MET150
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: m365d
ms.localizationpriority: medium
ms.date: 11/03/2022
ms.collection:
- m365-security
- tier2
ms.custom: 
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
f1.keywords: CSH
---

# Configure automated investigation and response capabilities in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

Microsoft 365 Defender includes powerful [automated investigation and response capabilities](m365d-autoir.md) that can save your security operations team much time and effort. With [self-healing](m365d-autoir.md#how-automated-investigation-and-self-healing-works), these capabilities mimic the steps a security analyst would take to investigate and respond to threats, only faster, and with more ability to scale.

This article describes how to configure automated investigation and response in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> with these steps:

1. [Review the prerequisites](#prerequisites-for-automated-investigation-and-response-in-microsoft-365-defender).
2. [Review or change the automation level for device groups](#review-or-change-the-automation-level-for-device-groups).
3. [Review your security and alert policies in Office 365](#review-your-security-and-alert-policies-in-office-365).
4. [Make sure Microsoft 365 Defender is turned on](#make-sure-microsoft-365-defender-is-turned-on).

Then, after you're all set up, you can [view and manage remediation actions in the Action center](m365d-autoir-actions.md). And, if necessary, you can [make changes to your automated investigation settings](#need-to-make-changes).

## Prerequisites for automated investigation and response in Microsoft 365 Defender

|Requirement|Details|
|---|---|
|Subscription requirements|One of these subscriptions: <ul><li>Microsoft 365 E5</li><li>Microsoft 365 A5</li><li>Microsoft 365 E3 with the Microsoft 365 E5 Security add-on</li><li>Microsoft 365 A3 with the Microsoft 365 A5 Security add-on</li><li>Office 365 E5 plus Enterprise Mobility + Security E5 plus Windows E5</li></ul> <p> See [Microsoft 365 Defender licensing requirements](./prerequisites.md#licensing-requirements).|
|Network requirements|<ul><li>[Microsoft Defender for Identity](/azure-advanced-threat-protection/what-is-atp) enabled</li><li>[Microsoft Defender for Cloud Apps](/cloud-app-security/what-is-cloud-app-security) configured</li><li>[Microsoft Defender for Identity integration](/cloud-app-security/mdi-integration)</li></ul>|
|Windows device requirements|<ul><li>Windows 11</li><li>Windows 10, version 1709 or later installed (See [Windows release information](/windows/release-information/))</li><li>The following threat protection services are configured:<ul><li>[Microsoft Defender for Endpoint](../defender-endpoint/configure-endpoints.md)</li><li>[Microsoft Defender Antivirus](/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features)</li></ul></li></ul>|
|Protection for email content and Office files|[Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365#configure-atp-policies) configured|
|Permissions|To configure automated investigation and response capabilities, you must have the Global Administrator or Security Administrator role assigned in either Azure Active Directory (<https://portal.azure.com>) or in the Microsoft 365 admin center (<https://admin.microsoft.com>). <p> To get the permissions needed to work with automated investigation and response capabilities, such as reviewing, approving, or rejecting pending actions, see [Required permissions for Action center tasks](m365d-action-center.md#required-permissions-for-action-center-tasks).|

## Review or change the automation level for device groups

Whether automated investigations run, and whether remediation actions are taken automatically or only upon approval for your devices depend on certain settings, such as your organization's device group policies. Review the configured automation level for your device group policies.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** > **Endpoints** > **Device groups** under **Permissions**.

3. Review your device group policies. In particular, look at the **Automation level** column. We recommend using **Full - remediate threats automatically**.  You might need to create or edit your device groups to get the level of automation you want. To get help with this task, see the following articles:
   - [How threats are remediated](/windows/security/threat-protection/microsoft-defender-atp/automated-investigations#how-threats-are-remediated)
   - [Create and manage device groups](/windows/security/threat-protection/microsoft-defender-atp/machine-groups)

## Review your security and alert policies in Office 365

Microsoft provides built-in [alert policies](../../compliance/alert-policies.md) that help identify certain risks. These risks include Exchange admin permissions abuse, malware activity, potential external and internal threats, and data lifecycle management risks. Some alerts can trigger [automated investigation and response in Office 365](../office-365-security/office-365-air.md). Make sure your [Defender for Office 365](../office-365-security/defender-for-office-365.md) features are configured correctly.

Although certain alerts and security policies can trigger automated investigations, *no remediation actions are taken automatically for email and content*. Instead, all remediation actions for email and email content await approval by your security operations team in the [Action center](m365d-action-center.md).

Security settings in Office 365 help protect email and content. To view or change these settings, follow the guidance in [Protect against threats](../office-365-security/protect-against-threats.md).

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, go to **Policies & Rules** \> **Threat policies**.

2. Make sure all of the following policies are configured. To get help and recommendations, see [Protect against threats](/microsoft-365/security/office-365-security/protect-against-threats).
   - [Anti-malware](../office-365-security/protect-against-threats.md#part-1---anti-malware-protection-in-eop)
   - [Anti-phishing](../office-365-security/protect-against-threats.md#part-2---anti-phishing-protection-in-eop-and-defender-for-office-365)
   - [Anti-spam](../office-365-security/protect-against-threats.md#part-3---anti-spam-protection-in-eop)
   - [Safe Attachments](../office-365-security/protect-against-threats.md#safe-attachments-policies-in-microsoft-defender-for-office-365)
   - [Safe Links](../office-365-security/protect-against-threats.md#safe-links-policies-in-microsoft-defender-for-office-365)

3. Make sure [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](../office-365-security/mdo-for-spo-odb-and-teams.md) is turned on.

4. Make sure [Zero-hour auto purge (ZAP) in Exchange Online](../office-365-security/zero-hour-auto-purge.md) is in effect.

5. (This step is optional.) Review your [Office 365 alert policies](../../compliance/alert-policies.md) in the Microsoft Purview compliance portal ([https://compliance.microsoft.com/compliancepolicies](https://compliance.microsoft.com/compliancepolicies)). Several default alert policies are in the Threat management category. Some of these alerts can trigger automated investigation and response. To learn more, see [Default alert policies](../../compliance/alert-policies.md#default-alert-policies).

## Make sure Microsoft 365 Defender is turned on

:::image type="content" source="../../media/mtp-enable/mtp-on.png" alt-text="The left navigation pane in the Microsoft 365 Defender portal when Microsoft 365 Defender is turned on" lightbox="../../media/mtp-enable/mtp-on.png":::

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>

2. In the navigation pane, look for **Incidents & Alerts**, **Hunting**, and **Action center** as shown in the preceding image.
   - If you see **Incidents & Alerts**, **Hunting**, and **Actions & submissions**, Microsoft 365 Defender is turned on. In this case, [visit the Action center](m365d-action-center.md).
   - If you don't* see **Incidents & alerts**, **Hunting**, or **Actions & submissions**, then Microsoft 365 Defender might not be turned on. In this case, see [Turn on Microsoft 365 Defender](m365d-enable.md).

> [!TIP]
> Need help? See [Turn on Microsoft 365 Defender](m365d-enable.md).

## Need to make changes?

You can choose from several options to change settings for your automated investigation and response capabilities. Some options are listed in the following table:

| To do this  | Follow these steps  |
|---------|---------|
| Specify automation levels for groups of devices     | <ol><li>Set up one or more device groups. See [Create and manage device groups](../defender-endpoint/machine-groups.md). </li><li>In the Microsoft 365 Defender portal, go to **Permissions** > **Endpoints roles & groups** > **Device groups**.</li><li>Select a device group and review its **Automation level** setting. (We recommend using **Full - remediate threats automatically**). See [Automation levels in automated investigation and remediation capabilities](../defender-endpoint/automation-levels.md).</li><li>Repeat steps 2 and 3 as appropriate for all your device groups. </li></ol>     |
| Turn automated investigation on or off     | *We recommend keeping automated investigation turned on. If you want to turn it off for some devices, we recommend [reviewing or changing the automation level for device groups](#review-or-change-the-automation-level-for-device-groups) instead of turning off automated investigation for your organization.* <ol><li>In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Settings** > **Endpoints** > **Advanced features**. </li><li>Turn the **Automated Investigation** toggle to **On** (or **Off**). <br/>Keep in mind that if you turn off automated investigation here, it will affect automated investigation and response actions for all devices. It will also affect [manual response actions for emails](../office-365-security/air-remediation-actions.md) (such as hard delete and soft delete).</li><li>Go to **Auto remediation** and review your automated remediation levels for your devices. See [Automation levels in automated investigation and remediation capabilities](../defender-endpoint/automation-levels.md).        |


## Next steps

- [Remediation actions in Microsoft 365 Defender](m365d-remediation-actions.md)
- [Visit the Action center](m365d-action-center.md)
