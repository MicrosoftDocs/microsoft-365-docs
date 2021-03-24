---
title: Remediation actions in Microsoft 365 Defender
description: Get an overview of remediation actions that follow automated investigations in Microsoft 365 Defender
keywords: automated, investigation, alert, trigger, action, remediation
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: deniseb
author: denisebmsft
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
ms.custom: autoir
ms.date: 01/29/2021 
ms.reviewer: evaldm, isco
ms.technology: m365d
---

# Remediation actions in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

## Remediation actions

During and after an automated investigation in Microsoft 365 Defender, remediation actions are identified for malicious or suspicious items. Some kinds of remediation actions are taken on devices, also referred to as endpoints. Other remediation actions are taken on email content. Automated investigations complete after remediation actions are taken, approved, or rejected.

> [!IMPORTANT]
> Whether remediation actions are taken automatically or only upon approval depends on certain settings, such as how automation levels. To learn more, see the following articles:
> - [Configure your automated investigation and response capabilities in Microsoft 365 Defender](m365d-configure-auto-investigation-response.md)
> - [How threats are remediated on devices](../defender-endpoint/automated-investigations.md)
> - [Threats and remediation actions on email & collaboration content](../office-365-security/air-remediation-actions.md#threats-and-remediation-actions)

The following table summarizes remediation actions that are currently supported in Microsoft 365 Defender: 

|Device (endpoint) remediation actions  |Email remediation actions  |
|:---------|:---------|
|- Collect investigation package <br/>- Isolate device (this action can be undone)<br/>- Offboard machine <br/>- Release code execution <br/>- Release from quarantine <br/>- Request sample <br/>- Restrict code execution (this action can be undone) <br/>- Run antivirus scan <br/>- Stop and quarantine      |- Block URL (time-of-click)<br/>- Soft delete email messages or clusters<br/>- Quarantine email<br/>- Quarantine an email attachment<br/>- Turn off external mail forwarding          |

Remediation actions, whether pending approval or already complete, can be viewed in the [Action Center](m365d-action-center.md).

## Remediation actions that follow automated investigations

When an automated investigation completes, a verdict is reached for every piece of evidence involved. Depending on the verdict, remediation actions are identified. In some cases, remediation actions are taken automatically; in other cases, remediation actions await approval. It all depends on how [automated investigation and response is configured](m365d-configure-auto-investigation-response.md).

The following table lists possible verdicts and outcomes:

| Verdict    | Area    | Outcomes|
|------|------|------|
| Malicious    | Devices (endpoints)    | Remediation actions are taken automatically (assuming your organization's [device groups](m365d-configure-auto-investigation-response.md#review-or-change-the-automation-level-for-device-groups) are set to **Full - remediate threats automatically**)|
| Malicious    | Email content (URLs or attachments) | Recommended remediation actions are pending approval|
| Suspicious    | Devices or email content | Recommended remediation actions are pending approval|
| No threats found    | Devices or email content    | No remediation actions are needed|


## Remediation actions that are taken manually

In addition to remediation actions that follow automated investigations, your security operations team can take certain remediation actions manually. These include the following actions:

- Manual device action, such as device isolation or file quarantine.
- Manual email action, such as soft-deleting email messages. 
- [Advanced hunting](../defender-endpoint/advanced-hunting-overview.md) action on devices or email.
- [Explorer](../office-365-security/threat-explorer.md) action on email content, such as moving email to junk, soft-deleting email, or hard-deleting email.
- Manual [live response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/live-response) action, such as deleting a file, stopping a process, and removing a scheduled task.
- Live response action with [Microsoft Defender for Endpoint APIs](../defender-endpoint/management-apis.md#microsoft-defender-for-endpoint-apis), such as isolating a device, running an antivirus scan, and getting information about a file. 

## Next steps

- [Visit the Action center](m365d-action-center.md)
- [View and manage remediation actions]( m365d-autoir-actions.md)
- [Handle false positives/negatives in automated investigation and response capabilities](m365d-autoir-report-false-positives-negatives.md)
