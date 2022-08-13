---
title: Review remediation actions in Microsoft 365 Business Premium
description: See how to view remediations that were taken automatically or that are awaiting approval in the Action center.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.service: o365-administration
ms.localizationpriority: high
ms.date: 07/19/2022
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Review remediation actions in Microsoft 365 Business Premium

Okay, you've discovered a security breach, but what do you do? It depends on the nature of it.

Examples of remediation actions include sending a file to quarantine, stopping a process from running, or completely removing a scheduled task. All remediation actions are tracked in the Action center, which is located at [https://security.microsoft.com/action-center](https://security.microsoft.com/action-center).

:::image type="content" source="../media/defender-business/mdb-actioncenter.png" alt-text="Screenshot of the Action Center in M365.":::

**This article describes**:

- [How to use the Action center](#how-to-use-your-action-center).
- [Types of remediation actions](#types-of-remediation-actions).


## How to use your Action center

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Action center**.

3. Select the **Pending** tab to view and approve (or reject) any pending actions. Such actions can arise from antivirus/antimalware protection, automated investigations, manual response activities, or live response sessions.

4. Select the **History** tab to view a list of completed actions.

## Types of remediation actions

Your subscription includes several different types of remediation actions for detected threats. These actions include manual response actions, actions following automated investigation, and live response actions.

The following table lists remediation actions that are available:

| Source  | Actions  |
|---------|---------|
| [Automated investigations](../security/defender-endpoint/automated-investigations.md)      | - Quarantine a file <br/>- Remove a registry key <br/>- Kill a process <br/>- Stop a service <br/>- Disable a driver <br/>- Remove a scheduled task        |
| [Manual response actions](../security/defender-endpoint/respond-machine-alerts.md)   | - Run antivirus scan <br/>- Isolate device <br/>- Stop and quarantine <br/>- Add an indicator to block or allow a file       |
| [Live response](../security/defender-endpoint/live-response.md)   | - Collect forensic data <br/>- Analyze a file <br/>- Run a script <br/>- Send a suspicious entity to Microsoft for analysis <br/>- Remediate a file <br/>- Proactively hunt for threats         |
