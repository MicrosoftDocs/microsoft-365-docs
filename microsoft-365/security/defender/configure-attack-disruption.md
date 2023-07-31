---
title: Configure automatic attack disruption capabilities in Microsoft 365 Defender
description: Configure automatic attack disruption options in Microsoft 365 Defender
search.appverid: MET150
ms.author: diannegali
author: diannegali
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: m365d
ms.localizationpriority: medium
ms.date: 05/31/2023
ms.collection:
- m365-security
- tier2
ms.custom: 
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
f1.keywords: CSH
---

# Configure automatic attack disruption capabilities in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

Microsoft 365 Defender includes powerful [automated attack disruption](automatic-attack-disruption.md) capabilities that can protect your environment from sophisticated, high-impact attacks.

This article describes how to configure automatic attack disruption capabilities in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> with these steps:

1. [Review the prerequisites](#prerequisites-for-automatic-attack-disruption-in-microsoft-365-defender).
2. [Review or change the automation level for device groups](#review-or-change-the-automation-level-for-device-groups).
3. [Review or change the automated response exclusions for users](#review-or-change-automated-response-exclusions-for-users).

Then, after you're all set up, you can view and manage containment actions in Incidents and the Action center. And, if necessary, you can make changes to settings.

## Prerequisites for automatic attack disruption in Microsoft 365 Defender

|Requirement|Details|
|---|---|
|Subscription requirements|One of these subscriptions: <ul><li>Microsoft 365 E5 or A5</li><li>Microsoft 365 E3 with the Microsoft 365 E5 Security add-on</li><li>Microsoft 365 E3 with the Enterprise Mobility + Security E5 add-on</li><li>Microsoft 365 A3 with the Microsoft 365 A5 Security add-on</li><li>Windows 10 Enterprise E5 or A5</li><li>Windows 11 Enterprise E5 or A5</li><li>Enterprise Mobility + Security (EMS) E5 or A5</li><li>Office 365 E5 or A5</li><li>Microsoft Defender for Endpoint</li><li>Microsoft Defender for Identity</li><li>Microsoft Defender for Cloud Apps</li><li>Defender for Office 365 (Plan 2)</li><li>Microsoft Defender for Business</li></ul> <p> See [Microsoft 365 Defender licensing requirements](./prerequisites.md#licensing-requirements).|
|Deployment requirements|<ul><li>Deployment across Defender products (e.g., Defender for Endpoint, Defender for Office 365, Defender for Identity, and Defender for Cloud Apps)</li><ul><li>The wider the deployment, the greater the protection coverage is. For example, if a Microsoft Defender for Cloud Apps signal is used in a certain detection, then this product is required to detect the relevant specific attack scenario.</li><li>Similarly, the relevant product should be deployed to execute an automated response action. For example, Microsoft Defender for Endpoint is required to automatically contain a device. </li></ul><li>Microsoft Defender for Endpoint's device discovery is set to 'standard discovery'</li></ul>|
|Permissions|To configure automatic attack disruption capabilities, you must have one of the following roles assigned in either Azure Active Directory (<https://portal.azure.com>) or in the Microsoft 365 admin center (<https://admin.microsoft.com>): <ul><li>Global Administrator</li><li>Security Administrator</li></ul>To work with automated investigation and response capabilities, such as by reviewing, approving, or rejecting pending actions, see [Required permissions for Action center tasks](m365d-action-center.md#required-permissions-for-action-center-tasks).|

## Review or change the automation level for device groups

Whether automated investigations run, and whether remediation actions are taken automatically or only upon approval for your devices depend on certain settings, like your organization's device group policies. Review the configured automation level for your device group policies. You must be a global administrator or security administrator to perform the following procedure:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** \> **Endpoints** \> **Device groups** under **Permissions**.

3. Review your device group policies. Look at the **Automation level** column. We recommend using **Full - remediate threats automatically**.  You might need to create or edit your device groups to get the level of automation you want. To exclude a device group from automated containment, set its automation level to **no automated response**. Note that this is not highly recommended and should only be done for a limited number of devices.

## Review or change automated response exclusions for users

Automatic attack disruption enables the exclusion of specific user accounts from automated containment actions. Excluded users won't be affected by automated actions triggered by attack disruption. You must be a global administrator or security administrator to perform the following procedure:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** \> **Identities** \> **Automated response exclusions**. Check the user list to exclude accounts.
:::image type="content" source="../../media/automatic-attack-disruption/Fig2-exclude-specific-users.png" alt-text="Selecting user accounts for automated response exclusion" lightbox="../../media/automatic-attack-disruption/Fig2-exclude-specific-users.png":::

Excluding user accounts is not recommended, and accounts added to this list won't be suspended in all supported attack types like business email compromise (BEC) and human-operated ransomware.

## Next step

- [View details and results](autoad-results.md)

## See also

- [Automatic attack disruption in Microsoft 365 Defender](automatic-attack-disruption.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
