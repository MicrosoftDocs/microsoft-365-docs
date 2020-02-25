---
title: Remediation actions following automated investigations in Microsoft Threat Protection 
description: Get an overview of remediation actions that follow automated investigations in Microsoft Threat Protection
keywords: automated, investigation, alert, trigger, action, remediation
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
ms.topic: conceptual
ms.custom: autoir
---

# Remediation actions following automated investigations in Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection


## Remediation actions

During and after an automated investigation in Microsoft Threat Protection, remediation actions are identified for malicious or suspicious items. Some kinds of remediation actions are taken on devices, also referred to as endpoints. Other remediation actions are taken on email content. Automated investigations complete after remediation actions are taken, approved, or rejected.

The following table summarizes remediation actions that are currently supported in Microsoft Threat Protection: 

|Device (endpoint) remediation actions  |Email remediation actions  |
|---------|---------|
|Quarantine file<br/>Remove registry key<br/>Kill process <br/>Stop service <br/>Disable driver <br/>Remove scheduled task      |Soft delete email messages or clusters<br/>Block URL (time-of-click)<br/>Turn off external mail forwarding          |

Remediation actions, whether they're pending approval or are already complete, can be viewed in the [Action Center](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-action-center).

## Verdicts and outcomes following automated investigations

When an automated investigation completes, a verdict is reached for every piece of evidence involved, and remediation actions are identified. In some cases, remediation actions are taken automatically; in other cases, remediation actions await approval. The following table lists possible verdicts and outcomes:

|Verdict	|Area	|Outcomes|
|------|------|------|
|Malicious	|Devices (endpoints)	|Remediation actions are taken automatically|
|Malicious	|Email content (URLs or attachments) | Recommended remediation actions are pending approval|
|Suspicious	|Devices or email content |Recommended remediation actions are pending approval|
|Clean	|Devices or email content	|No remediation actions are needed|

[Review a pending action in the Action center](mtp-autoir-actions.md#review-a-pending-action-in-the-action-center)

> [!TIP]
> If you think something was missed or wrongly detected by automated investigation and response features in Microsoft Threat Protection, let us know! [Report false positives/negatives](mtp-autoir-report-false-positives-negatives.md).

## Next steps

- [Approve or reject actions](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir-actions)

- [Learn more about the Action center](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-action-center)
