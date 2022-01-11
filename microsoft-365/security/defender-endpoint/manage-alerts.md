---
title: Manage Microsoft Defender for Endpoint alerts
description: Change the status of alerts, create suppression rules to hide alerts, submit comments, and review change history for individual alerts with the Manage Alert menu.
keywords: manage alerts, manage, alerts, status, new, in progress, resolved, resolve alerts, suppress, supression, rules, context, history, comments, changes
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Manage Microsoft Defender for Endpoint alerts

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-managealerts-abovefoldlink)

Defender for Endpoint notifies you of possible malicious events, attributes, and contextual information through alerts. A summary of new alerts is displayed in the **Security operations dashboard**, and you can access all alerts in the **Alerts queue**.

You can manage alerts by selecting an alert in the **Alerts queue**, or the **Alerts** tab of the Device page for an individual device.

Selecting an alert in either of those places brings up the **Alert management pane**.

![Image of alert management pane and alerts queue.](images/atp-alerts-selected.png)

## Link to another incident

You can create a new incident from the alert or link to an existing incident.

## Assign alerts

If an alert is not yet assigned, you can select **Assign to me** to assign the alert to yourself.

## Suppress alerts

There might be scenarios where you need to suppress alerts from appearing in Microsoft 365 Defender. Defender for Endpoint lets you create suppression rules for specific alerts that are known to be innocuous such as known tools or processes in your organization.

Suppression rules can be created from an existing alert. They can be disabled and reenabled if needed.

When a suppression rule is created, it will take effect from the point when the rule is created. The rule will not affect existing alerts already in the queue, prior to the rule creation. The rule will only be applied on alerts that satisfy the conditions set after the rule is created.

There are two contexts for a suppression rule that you can choose from:

- **Suppress alert on this device**
- **Suppress alert in my organization**

The context of the rule lets you tailor what gets surfaced into the portal and ensure that only real security alerts are surfaced into the portal.

You can use the examples in the following table to help you choose the context for a suppression rule:

|Context|Definition|Example scenarios|
|---|---|---|
|**Suppress alert on this device**|Alerts with the same alert title and on that specific device only will be suppressed. <p> All other alerts on that device will not be suppressed.|<ul><li>A security researcher is investigating a malicious script that has been used to attack other devices in your organization.</li><li>A developer regularly creates PowerShell scripts for their team.</li></ul>|
|**Suppress alert in my organization**|Alerts with the same alert title on any device will be suppressed.|<ul><li>A benign administrative tool is used by everyone in your organization.</li></ul>|

### Suppress an alert and create a new suppression rule

Create custom rules to control when alerts are suppressed, or resolved. You can control the context for when an alert is suppressed by specifying the alert title, Indicator of compromise, and the conditions. After specifying the context, you'll be able to configure the action and scope on the alert.

1. Select the alert you'd like to suppress. This brings up the **Alert management** pane.

2. Select **Create a suppression rule**.

    You can create a suppression condition using these attributes. An AND operator is applied between each condition, so suppression occurs only if all conditions are met.

    - File SHA1
    - File name - wildcard supported
    - Folder path - wildcard supported
    - IP address
    - URL - wildcard supported
    - Command line - wildcard supported

3. Select the **Triggering IOC**.

4. Specify the action and scope on the alert.

   You can automatically resolve an alert or hide it from the portal. Alerts that are automatically resolved will appear in the resolved section of the alerts queue, alert page, and device timeline and will appear as resolved across Defender for Endpoint APIs.

   Alerts that are marked as hidden will be suppressed from the entire system, both on the device's associated alerts and from the dashboard and will not be streamed across Defender for Endpoint APIs.

5. Enter a rule name and a comment.

6. Click **Save**.

#### View the list of suppression rules

1. In the navigation pane, select **Settings** \> **Alert suppression**.

2. The list of suppression rules shows all the rules that users in your organization have created.

For more information on managing suppression rules, see [Manage suppression rules](manage-suppression-rules.md)

## Change the status of an alert

You can categorize alerts (as **New**, **In Progress**, or **Resolved**) by changing their status as your investigation progresses. This helps you organize and manage how your team can respond to alerts.

For example, a team leader can review all **New** alerts, and decide to assign them to the **In Progress** queue for further analysis.

Alternatively, the team leader might assign the alert to the **Resolved** queue if they know the alert is benign, coming from a device that is irrelevant (such as one belonging to a security administrator), or is being dealt with through an earlier alert.

## Alert classification

You can choose not to set a classification, or specify whether an alert is a true alert or a false alert. It's important to provide the classification of true positive/false positive. This classification is used to monitor alert quality, and make alerts more accurate. The "determination" field defines additional fidelity for a "true positive" classification.

## Add comments and view the history of an alert

You can add comments and view historical events about an alert to see previous changes made to the alert.

Whenever a change or comment is made to an alert, it is recorded in the **Comments and history** section.

Added comments instantly appear on the pane.

## Related topics

- [Manage suppression rules](manage-suppression-rules.md)
- [View and organize the Microsoft Defender for Endpoint Alerts queue](alerts-queue.md)
- [Investigate Microsoft Defender for Endpoint alerts](investigate-alerts.md)
- [Investigate a file associated with a Microsoft Defender for Endpoint alert](investigate-files.md)
- [Investigate devices in the Microsoft Defender for Endpoint Devices list](investigate-machines.md)
- [Investigate an IP address associated with a Microsoft Defender for Endpoint alert](investigate-ip.md)
- [Investigate a domain associated with a Microsoft Defender for Endpoint alert](investigate-domain.md)
- [Investigate a user account in Microsoft Defender for Endpoint](investigate-user.md)
