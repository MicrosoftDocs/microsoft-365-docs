---
title: Review remediation actions in Microsoft Defender for Business
description: View remediations that were taken on detected threats with Defender for Business. You can view actions in the Action center in the Microsoft 365 Defender portal.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Review remediation actions in the Action center

As threats are detected, remediation actions come into play. Depending on the particular threat and how your security settings are configured, remediation actions might be taken automatically or only upon approval. Examples of remediation actions include sending a file to quarantine, stopping a process from running, and removing a scheduled task. All remediation actions are tracked in the Action center.

:::image type="content" source="../../media/defender-business/mdb-actioncenter.png" alt-text="Screenshot of the Action center":::

**This article describes**:

- [How to use the Action center](#how-to-use-the-action-center)
- [Remediation actions](#remediation-actions)

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about security</a>. We'd love to hear from you!
>

## How to use the Action center

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Action center**.

3. Select the **Pending** tab to view and approve (or reject) any pending actions. Such actions can arise from antivirus/antimalware protection, automated investigations, manual response activities, or live response sessions.

4. Select the **History** tab to view a list of completed actions. 

## Remediation actions

Microsoft Defender for Business includes several remediation actions. These actions include manual response actions, actions following automated investigation, and live response actions.

The following table lists remediation actions that are available:

| Source  | Actions  |
|---------|---------|
| [Automated investigations](../defender-endpoint/automated-investigations.md)      | - Quarantine a file <br/>- Remove a registry key <br/>- Kill a process <br/>- Stop a service <br/>- Disable a driver <br/>- Remove a scheduled task        |
| [Manual response actions](../defender-endpoint/respond-machine-alerts.md)   | - Run antivirus scan <br/>- Isolate device <br/>- Stop and quarantine <br/>- Add an indicator to block or allow a file       |
| [Live response](../defender-endpoint/live-response.md)   | - Collect forensic data <br/>- Analyze a file <br/>- Run a script <br/>- Send a suspicious entity to Microsoft for analysis <br/>- Remediate a file <br/>- Proactively hunt for threats         |

## Next steps

- [Respond to and mitigate threats in Microsoft Defender for Business](mdb-respond-mitigate-threats.md)
- [Manage devices in Microsoft Defender for Business](mdb-manage-devices.md)