---
title: Configure automated investigation and response capabilities in Microsoft 365 Defender
description: Configure automated investigation and response with self-healing in Microsoft 365 Defender
search.appverid: MET150
ms.author: josephd
author: JoeDavies-MSFT
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.prod: m365-security
localization_priority: Normal
ms.collection:
- M365-security-compliance
- m365initiative-m365-defender
ms.custom: autoir
ms.reviewer: evaldm, isco
f1.keywords: CSH
ms.technology: m365d
---

# Configure automated investigation and response capabilities in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

Microsoft 365 Defender includes powerful [automated investigation and response capabilities](m365d-autoir.md) that can save your security operations team much time and effort. With [self-healing](m365d-autoir.md#how-automated-investigation-and-self-healing-works), these capabilities mimic the steps a security analyst would take to investigate and respond to threats, only faster, and with more ability to scale.

This article describes how to configure automated investigation and response in Microsoft 365 Defender with these steps:

1. [Review the prerequisites](#prerequisites-for-automated-investigation-and-response-in-microsoft-365-defender).
2. [Review or change the automation level for device groups](#review-or-change-the-automation-level-for-device-groups).
3. [Review your security and alert policies in Office 365](#review-your-security-and-alert-policies-in-office-365).
4. [Make sure Microsoft 365 Defender is turned on](#make-sure-microsoft-365-defender-is-turned-on).

Then, after you're all set up, you can [view and manage remediation actions in the Action center](m365d-autoir-actions.md).

## Prerequisites for automated investigation and response in Microsoft 365 Defender

<br>

****

|Requirement|Details|
|---|---|
|Subscription requirements|One of these subscriptions: <ul><li>Microsoft 365 E5</li><li>Microsoft 365 A5</li><li>Microsoft 365 E3 with the Microsoft 365 E5 Security add-on</li><li>Microsoft 365 A3 with the Microsoft 365 A5 Security add-on</li><li>Office 365 E5 plus Enterprise Mobility + Security E5 plus Windows E5</li></ul> <p> See [Microsoft 365 Defender licensing requirements](./prerequisites.md#licensing-requirements).|
|Network requirements|<ul><li>[Microsoft Defender for Identity](/azure-advanced-threat-protection/what-is-atp) enabled</li><li>[Microsoft Cloud App Security](/cloud-app-security/what-is-cloud-app-security) configured</li><li>[Microsoft Defender for Identity integration](/cloud-app-security/mdi-integration)</li></ul>|
|Windows machine requirements|<ul><li>Windows 10, version 1709 or later installed (See [Windows 10 release information](/windows/release-information/))</li><li>The following threat protection services configured:<ul><li>[Microsoft Defender for Endpoint](../defender-endpoint/configure-endpoints.md)</li><li>[Microsoft Defender Antivirus](/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features)</li></ul></li></ul>|
|Protection for email content and Office files|[Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365#configure-atp-policies) configured|
|Permissions|To configure automated investigation and response capabilities, you must have the Global Administrator or Security Administrator role assigned in either Azure Active Directory (<https://portal.azure.com>) or in the Microsoft 365 admin center (<https://admin.microsoft.com>). <p> To get the permissions needed to work with automated investigation and response capabilities, such as reviewing, approving, or rejecting pending actions, see [Required permissions for Action center tasks](m365d-action-center.md#required-permissions-for-action-center-tasks).|
|

## Review or change the automation level for device groups

Whether automated investigations run, and whether remediation actions are taken automatically or only upon approval for your devices depend on certain settings, such as your organization's device group policies. Review the configured automation level for your device group policies.

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in.

2. Go to **Settings** > **Permissions** > **Device groups**.

3. Review your device group policies. In particular, look at the **Remediation level** column. We recommend using **Full - remediate threats automatically**.  You might need to create or edit your device groups to get the level of automation you want. To get help with this task, see the following articles:
   - [How threats are remediated](/windows/security/threat-protection/microsoft-defender-atp/automated-investigations#how-threats-are-remediated)
   - [Create and manage device groups](/windows/security/threat-protection/microsoft-defender-atp/machine-groups)

## Review your security and alert policies in Office 365

Microsoft provides built-in [alert policies](../../compliance/alert-policies.md) that help identify certain risks. These risks include Exchange admin permissions abuse, malware activity, potential external and internal threats, and information governance risks. Some alerts can trigger [automated investigation and response in Office 365](../office-365-security/office-365-air.md). Make sure your [Defender for Office 365](../office-365-security/defender-for-office-365.md) features are configured correctly.

Although certain alerts and security policies can trigger automated investigations, *no remediation actions are taken automatically for email and content*. Instead, all remediation actions for email and email content await approval by your security operations team in the [Action center](m365d-action-center.md).

Security settings in Office 365 help protect email and content. To view or change these settings, follow the guidance in [Protect against threats](../office-365-security/protect-against-threats.md).

1. In the Microsoft 365 Defender portal (<https://security.microsoft.com>), go to **Policies & Rules** \> **Threat policies**.

2. Make sure all of the following policies are configured. To get help and recommendations, see [Protect against threats](/microsoft-365/security/office-365-security/protect-against-threats).
   - [Anti-malware](../office-365-security/protect-against-threats.md#part-1---anti-malware-protection-in-eop)
   - [Anti-phishing](../office-365-security/protect-against-threats.md#part-2---anti-phishing-protection-in-eop-and-defender-for-office-365)
   - [Safe Attachments](../office-365-security/protect-against-threats.md#safe-attachments-policies-in-microsoft-defender-for-office-365)
   - [Safe Links](../office-365-security/protect-against-threats.md#safe-links-policies-in-microsoft-defender-for-office-365)
   - [Anti-spam](../office-365-security/protect-against-threats.md#part-3---anti-spam-protection-in-eop)

3. Make sure [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](../office-365-security/mdo-for-spo-odb-and-teams.md) is turned on.

4. Make sure [Zero-hour auto purge (ZAP) in Exchange Online](../office-365-security/zero-hour-auto-purge.md) is in effect.

5. (This step is optional.) Review your [Office 365 alert policies](../../compliance/alert-policies.md) in the Microsoft 365 compliance center ([https://compliance.microsoft.com/compliancepolicies](https://compliance.microsoft.com/compliancepolicies)). Several default alert policies are in the Threat management category. Some of these alerts can trigger automated investigation and response. To learn more, see [Default alert policies](../../compliance/alert-policies.md#default-alert-policies).

## Make sure Microsoft 365 Defender is turned on

:::image type="content" source="../../media/mtp-enable/mtp-on.png" alt-text="MTP on.":::

1. Sign in to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).

2. In the navigation pane, look for **Incidents & Alerts**, **Hunting**, and **Action center** as shown in the preceding image.
   - If you see **Incidents & Alerts**, **Hunting**, and **Action center**, Microsoft 365 Defender is turned on. See the [Review or change the automation level for device groups](#review-or-change-the-automation-level-for-device-groups) section of this article.
   - If you do *not* see **Incidents**, **Action center**, or **Hunting**, Microsoft 365 Defender might not be turned on. In this case, [visit the Action center](m365d-action-center.md)).

3. In the navigation pane, choose **Settings** > **Microsoft 365 Defender**. Confirm that Microsoft 365 Defender is turned on.

> [!TIP]
> Need help? See [Turn on Microsoft 365 Defender](m365d-enable.md).

## Next steps

- [Remediation actions in Microsoft 365 Defender](m365d-remediation-actions.md)
- [Visit the Action center](m365d-action-center.md)
