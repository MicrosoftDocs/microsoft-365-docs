---
title: Review remediation actions in Microsoft Defender XDR
description: See how to view remediations that were taken automatically or that are awaiting approval in the Action center.
search.appverid: MET150
ms.author: chrisda
author: chrisda
manager: deniseb
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business-security
ms.date: 05/31/2024
ms.localizationpriority: medium
ms.reviewer: efratka
f1.keywords: NOCSH
ms.collection:
- SMB
- m365-security
- m365-initiative-defender-business
- tier2
---

# Review remediation actions in the Microsoft Defender portal

Okay, you've discovered a security breach, but what do you do? It depends on the nature of it.

Microsoft 365 Business Premium includes remediation actions. Some actions are taken automatically when threats are detected, and other actions can be taken manually by your security team.

Examples of remediation actions include sending a file to quarantine, stopping a process from running, or completely removing a scheduled task. All remediation actions are tracked in the Action center, which is located at <https://security.microsoft.com/action-center>.

:::image type="content" source="../media/defender-business/mdb-actioncenter.png" alt-text="Screenshot of the Action Center in M365.":::

**This article describes**:

- [How to use the Action center](#how-to-use-your-action-center).
- [Types of remediation actions](#types-of-remediation-actions).

## How to use your Action center

1. Go to the Microsoft Defender portal (<https://security.microsoft.com>), and sign in.

2. In the navigation pane, choose **Action center**.

3. Select the **Pending** tab to view and approve (or reject) any pending actions. Such actions can arise from antivirus/antimalware protection, automated investigations, manual response activities, or live response sessions.

4. Select the **History** tab to view a list of completed actions.

## Types of remediation actions

Your subscription includes several different types of remediation actions for detected threats. These actions include manual response actions, actions following automated investigation, and live response actions.

The following table lists remediation actions that are available:

|Source|Actions|
|---|---|
|[Automated attack disruption](/defender-business/mdb-attack-disruption) (NEW!)|<ul><li>Contain a device</li><li>Contain a user account on a device</li></ul>|
|[Automated investigations](/defender-endpoint/automated-investigations)|<ul><li>Quarantine a file/li><li>Remove a registry key/li><li>Kill a process/li><li>Stop a service/li><li>Disable a driver/li><li>Remove a scheduled task</li></ul>|
|[Manual response actions](/defender-endpoint/respond-machine-alerts)|<ul><li>Run antivirus scan/li><li>Isolate device/li><li>Add an indicator to block or allow a file</li></ul>|
|[Live response](/defender-endpoint/live-response)|<ul><li>Collect forensic data/li><li>Analyze a file/li><li>Run a script/li><li>Send a suspicious entity to Microsoft for analysis/li><li>Remediate a file/li><li>Proactively hunt for threats</li></ul>|
