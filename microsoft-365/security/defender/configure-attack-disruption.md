---
title: Configure automatic attack disruption capabilities in Microsoft Defender XDR
description: Configure automatic attack disruption options in Microsoft Defender XDR
search.appverid: MET150
ms.author: diannegali
author: diannegali
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.service: defender-xdr
ms.localizationpriority: medium
ms.date: 04/04/2024
ms.collection:
- m365-security
- tier2
ms.custom: 
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
f1.keywords: CSH
---

# Configure automatic attack disruption capabilities in Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

Microsoft Defender XDR includes powerful [automated attack disruption](automatic-attack-disruption.md) capabilities that can protect your environment from sophisticated, high-impact attacks.

This article describes how to configure automatic attack disruption capabilities in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft Defender XDR</a> with these steps:

1. [Review the prerequisites](#prerequisites-for-automatic-attack-disruption-in-microsoft-365-defender).
2. [Review or change the automated response exclusions for users](#review-or-change-automated-response-exclusions-for-users).

Then, after you're all set up, you can view and manage containment actions in Incidents and the Action center. And, if necessary, you can make changes to settings.

<a name='prerequisites-for-automatic-attack-disruption-in-microsoft-365-defender'></a>

## Prerequisites for automatic attack disruption in Microsoft Defender XDR

|Requirement|Details|
|---|---|
|Subscription requirements|One of these subscriptions: <ul><li>Microsoft 365 E5 or A5</li><li>Microsoft 365 E3 with the Microsoft 365 E5 Security add-on</li><li>Microsoft 365 E3 with the Enterprise Mobility + Security E5 add-on</li><li>Microsoft 365 A3 with the Microsoft 365 A5 Security add-on</li><li>Windows 10 Enterprise E5 or A5</li><li>Windows 11 Enterprise E5 or A5</li><li>Enterprise Mobility + Security (EMS) E5 or A5</li><li>Office 365 E5 or A5</li><li>Microsoft Defender for Endpoint</li><li>Microsoft Defender for Identity</li><li>Microsoft Defender for Cloud Apps</li><li>Defender for Office 365 (Plan 2)</li><li>Microsoft Defender for Business</li></ul> <p> See [Microsoft Defender XDR licensing requirements](./prerequisites.md#licensing-requirements).|
|Deployment requirements|<ul><li>Deployment across Defender products (e.g., Defender for Endpoint, Defender for Office 365, Defender for Identity, and Defender for Cloud Apps)</li><ul><li>The wider the deployment, the greater the protection coverage is. For example, if a Microsoft Defender for Cloud Apps signal is used in a certain detection, then this product is required to detect the relevant specific attack scenario.</li><li>Similarly, the relevant product should be deployed to execute an automated response action. For example, Microsoft Defender for Endpoint is required to automatically contain a device. </li></ul><li>Microsoft Defender for Endpoint's device discovery is set to 'standard discovery'</li></ul>|
|Permissions|To configure automatic attack disruption capabilities, you must have one of the following roles assigned in either Microsoft Entra ID (<https://portal.azure.com>) or in the Microsoft 365 admin center (<https://admin.microsoft.com>): <ul><li>Global Administrator</li><li>Security Administrator</li></ul>To work with automated investigation and response capabilities, such as by reviewing, approving, or rejecting pending actions, see [Required permissions for Action center tasks](m365d-action-center.md#required-permissions-for-action-center-tasks).|

### Microsoft Defender for Endpoint Prerequisites

#### Minimum Sense Client version (MDE client)

The Minimum Sense Agent version required for the **Contain User** action to work is v10.8470. You can identify the Sense Agent version on a device by running the following PowerShell command: 

> Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Advanced Threat Protection\' -Name "InstallLocation"

#### Automation setting for your organizations devices

Review the configured automation level for your device group policies, wWhether automated investigations run, and whether remediation actions are taken automatically or only upon approval for your devices depend on certain settings. You must be a global administrator or security administrator to perform the following procedure:

1. Go to the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** \> **Endpoints** \> **Device groups** under **Permissions**.

3. Review your device group policies. Look at the **Automation level** column. We recommend using **Full - remediate threats automatically**.  You might need to create or edit your device groups to get the level of automation you want. To exclude a device group from automated containment, set its automation level to **no automated response**. Note that this is not highly recommended and should only be done for a limited number of devices.

#### Device Discovery configuration

Device Discovery settings must be activated to "Standard Discovery" at a minimum. Learn how to configure Device Discovery in [Set up device discovery](configure-device-discovery.md#set-up-device-discovery).

>[!NOTE]
>Attack disruption can act on devices independent of a device's Microsoft Defender Antivirus operating state. The operating state can be in Active, Passive, or EDR Block Mode.

### Microsoft Defender for Identity Prerequisites

#### Set up auditing in domain controllers

Learn how to set up auditing in domain controllers in [Configure audit policies for Windows event logs](/defender-for-identity/deploy/configure-windows-event-collection) to ensure that required audit events are configured on the domain controllers where the Defender for Identity sensor is deployed. 

#### Configure action accounts

Defender for Identity allows you to take remediation actions targeting on-premises Active Directory accounts in the event that an identity is compromised. To take these actions, Defender for Identity needs to have the required permissions to do so. By default, the Defender for Identity sensor impersonates the LocalSystem account of the domain controller and performs the actions. Since the default can be changed, validate that Defender for Identity has the required permissions.

You can find more information on the action accounts in [Configure Microsoft Defender for Identity action accounts](/defender-for-identity/deploy/manage-action-accounts)

The Defender for Identity sensor needs to be deployed on the domain controller where the Active Directory account is to be turned off.

>[!NOTE]
>If you have automations in place to activate or block a user, check if the automations can interfere with Disruption. For example, if there is an automation in place to regularly check and enforce that all active employees have enabled accounts, this could unintentionally activate accounts that were deactivated by attack disruption while an attack is detected. 

### Microsoft Defender for Cloud Apps prerequisites

#### Microsoft Office 365 Connector 

Microsoft Defender for Cloud Apps must be connected to Microsoft Office 365 through the connector. To connect Defender for Cloud Apps, see [Connect Microsoft 365 to Microsoft Defender for Cloud Apps](/defender-cloud-apps/protect-office-365#connect-microsoft-365-to-microsoft-defender-for-cloud-apps). 

#### App Governance

App Governance must be turned on. Refer to the [app governance documentation](/defender-cloud-apps/app-governance-get-started) to turn it on. 

### Microsoft Defender for Office 365 prerequisites

#### Mailboxes location

Mailboxes are required to be hosted in Exchange Online.

#### Mailbox audit logging

The following mailbox events need to be audited by minimum:

- MailItemsAccessed
- UpdateInboxRules
- MoveToDeletedItems
- SoftDelete
- HardDelete

Review [Manage mailbox auditing](/purview/audit-mailboxes) to learn about managing mailbox auditing.

#### Safelinks policy needs to be present.

## Review or change automated response exclusions for users

Automatic attack disruption enables the exclusion of specific user accounts from automated containment actions. Excluded users won't be affected by automated actions triggered by attack disruption. You must be a global administrator or security administrator to perform the following procedure:

1. Go to the Microsoft Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** \> **Microsoft Defender XDR** \> **Identity automated response**. Check the user list to exclude accounts.
:::image type="content" source="../../media/automatic-attack-disruption/Fig3-exclude-specific-users.png" alt-text="Selecting user accounts for automated response exclusion" lightbox="../../media/automatic-attack-disruption/Fig3-exclude-specific-users.png":::

3. To exclude a new user account, select **Add user exclusion**.

Excluding user accounts is not recommended, and accounts added to this list won't be suspended in all supported attack types like business email compromise (BEC) and human-operated ransomware.

## Next steps

- [View details and results](autoad-results.md)
- [Get email notifications for response actions](m365d-response-actions-notifications.md)

## See also

- [Automatic attack disruption in Microsoft Defender XDR](automatic-attack-disruption.md)
- [Automatic attack disruption for SAP](/azure/sentinel/sap/deployment-attack-disrupt)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
