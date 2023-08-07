---
title: Remediation actions in Microsoft 365 Defender
description: Get an overview of remediation actions that follow automated investigations in Microsoft 365 Defender
keywords: automated, investigation, alert, trigger, action, remediation
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier3
ms.topic: conceptual
ms.custom: autoir
ms.reviewer: evaldm, isco
ms.date: 02/17/2021
---

# Remediation actions in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

During and after an automated investigation in Microsoft 365 Defender, remediation actions are identified for malicious or suspicious items. Some kinds of remediation actions are taken on devices, also referred to as endpoints. Other remediation actions are taken on identities, accounts and email content. Automated investigations complete after remediation actions are taken, approved, or rejected.

> [!IMPORTANT]
> Whether remediation actions are taken automatically or only upon approval depends on certain settings, such as automation levels. To learn more, see the following articles:
>
> - [Configure your automated investigation and response capabilities in Microsoft 365 Defender](m365d-configure-auto-investigation-response.md)
> - [Configure action accounts in Microsoft Defender for Identity](/defender-for-identity/manage-action-accounts)
> - [How threats are remediated on devices](../defender-endpoint/automated-investigations.md)
> - [Threats and remediation actions on email & collaboration content](../office-365-security/air-remediation-actions.md#threats-and-remediation-actions)

The following table summarizes remediation actions that are currently supported in Microsoft 365 Defender.

|Device (endpoint) remediation actions  |Email remediation actions  |Users (accounts)  |
|:---------|:---------|----------|
|- Collect investigation package <br/>- Isolate device (this action can be undone)<br/>- Offboard machine <br/>- Release code execution <br/>- Release from quarantine <br/>- Request sample <br/>- Restrict code execution (this action can be undone) <br/>- Run antivirus scan <br/>- Stop and quarantine <br/>- Contain devices from the network     |- Block URL (time-of-click)<br/>- Soft delete email messages or clusters<br/>- Quarantine email<br/>- Quarantine an email attachment<br/>- Turn off external mail forwarding          |- Disable user<br />- Reset user password<br />- Confirm user as compromised          |

Remediation actions, whether pending approval or already complete, can be viewed in the [Action center](m365d-action-center.md).

## Remediation actions that follow automated investigations

When an automated investigation completes, a verdict is reached for every piece of evidence involved. Depending on the verdict, remediation actions are identified. In some cases, remediation actions are taken automatically; in other cases, remediation actions await approval. It all depends on how [automated investigation and response is configured](m365d-configure-auto-investigation-response.md).

The following table lists possible verdicts and outcomes:

| Verdict    | Affected entities    | Outcomes|
|------|------|------|
| Malicious    | Devices (endpoints)    | Remediation actions are taken automatically (assuming your organization's [device groups](m365d-configure-auto-investigation-response.md#review-or-change-the-automation-level-for-device-groups) are set to **Full - remediate threats automatically**)|
| Compromised | Users | Remediation actions are taken automatically |
| Malicious    | Email content (URLs or attachments) | Recommended remediation actions are pending approval|
| Suspicious    | Devices or email content | Recommended remediation actions are pending approval|
| No threats found    | Devices or email content    | No remediation actions are needed|

## Remediation actions that are taken manually

In addition to remediation actions that follow automated investigations, your security operations team can take certain remediation actions manually. These include the following:

- Manual device action, such as device isolation or file quarantine
- Manual email action, such as soft-deleting email messages
- Manual user action, such as disable user or reset user password
- [Advanced hunting](../defender-endpoint/advanced-hunting-overview.md) action on devices, users, or email
- [Explorer](../office-365-security/threat-explorer-about.md) action on email content, such as moving email to junk, soft-deleting email, or hard-deleting email
- Manual [live response](/windows/security/threat-protection/microsoft-defender-atp/live-response) action, such as deleting a file, stopping a process, and removing a scheduled task
- Live response action with [Microsoft Defender for Endpoint APIs](../defender-endpoint/management-apis.md#microsoft-defender-for-endpoint-apis), such as isolating a device, running an antivirus scan, and getting information about a file

## Next steps

- [Visit the Action center](m365d-action-center.md)
- [View and manage remediation actions](m365d-autoir-actions.md)
- [Address false positives or false negatives](m365d-autoir-report-false-positives-negatives.md)
- [Contain devices from the network](../defender-endpoint\respond-machine-alerts.md#contain-devices-from-the-network)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
