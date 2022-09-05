---
title: Review remediation actions in Microsoft Defender for Business
description: View remediations that were taken on detected threats with Defender for Business. You can view actions in the Action center in the Microsoft 365 Defender portal.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 08/11/2022
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Review remediation actions in the Action center

As threats are detected, remediation actions come into play. Depending on the particular threat and how your security settings are configured, remediation actions might be taken automatically or only upon approval. Examples of remediation actions include: 
- Send a file to quarantine
- Stop a process from running
- Remove a scheduled task

All remediation actions are tracked in the Action center.

:::image type="content" source="../../media/defender-business/mdb-actioncenter.png" alt-text="Screenshot of the Action center":::

**This article describes**:

- [How to use the Action center](#how-to-use-the-action-center)
- [Remediation actions](#remediation-actions)


## How to use the Action center

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Action center**.

3. Select the **Pending** tab to view and approve (or reject) any pending actions. Actions can arise from antivirus/antimalware protection, automated investigations, manual response activities, or live response sessions.

4. Select the **History** tab to view a list of completed actions.

## Remediation actions

Defender for Business includes several remediation actions. These actions include manual response actions, actions following automated investigation, and live response actions.

The following table lists remediation actions that are available.

| Source  | Actions  |
|---------|---------|
| [Automated investigations](../defender-endpoint/automated-investigations.md)      |<ul><li>Quarantine a file</li><li>Remove a registry key</li><li>Kill a process</li><li>Stop a service</li><li>Disable a driver</li><li>Remove a scheduled task </li></ul> |
| [Manual response actions](../defender-endpoint/respond-machine-alerts.md)   |<ul><li>Run antivirus scan</li><li>Isolate a device</li><li>Stop and quarantine</li><li>Add an indicator to block or allow a file</li></ul> |
| [Live response](../defender-endpoint/live-response.md)   |<ul><li>Collect forensic data</li><li>Analyze a file</li><li>Run a script</li><li>Send a suspicious entity to Microsoft for analysis</li><li>Remediate a file </li><li>Proactively hunt for threats</li></ul>|

## Next steps

- [Respond to and mitigate threats in Defender for Business](mdb-respond-mitigate-threats.md)
- [Manage devices in Defender for Business](mdb-manage-devices.md)
