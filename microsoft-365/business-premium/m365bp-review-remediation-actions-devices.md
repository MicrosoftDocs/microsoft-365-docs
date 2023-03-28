---
title: Review remediation actions in Microsoft 365 Defender
description: See how to view remediations that were taken automatically or that are awaiting approval in the Action center.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.date: 12/05/2022
ms.localizationpriority: medium
ms.reviewer: efratka
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365-initiative-defender-business
- tier1
---

# Review remediation actions in the Microsoft 365 Defender portal

Okay, you've discovered a security breach, but what do you do? It depends on the nature of it.

Microsoft 365 Business Premium includes remediation actions. Some actions are taken automatically when threats are detected, and other actions can be taken manually by your security team.

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
| [Manual response actions](../security/defender-endpoint/respond-machine-alerts.md)   | - Run antivirus scan <br/>- Isolate device <br/>- Add an indicator to block or allow a file       |
| [Live response](../security/defender-endpoint/live-response.md)   | - Collect forensic data <br/>- Analyze a file <br/>- Run a script <br/>- Send a suspicious entity to Microsoft for analysis <br/>- Remediate a file <br/>- Proactively hunt for threats         |
