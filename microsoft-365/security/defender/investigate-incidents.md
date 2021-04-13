---
title: Investigate incidents in Microsoft 365 Defender
description: Analyze incidents related to devices, users, and mailboxes.
keywords: incident, incidents, machines, devices, users, identities, mail, email, mailbox, investigation, graph, evidence
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Investigate incidents in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**

- Microsoft 365 Defender

Microsoft 365 Defender aggregates all related alerts, assets, investigations and evidence from across your devices, users, and mailboxes into an incident to give you a comprehensive look into the entire breadth of an attack.

Within an incident, you investigate the alerts that affect your network, understand what they mean, and collate the evidence so that you can devise an effective remediation plan.

## Initial investigation

Before diving into the details, take a look at the properties and summary of the incident.

You can start by selecting the incident from the check mark column. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incidents-ss-incident-select.png" alt-text="Example of selecting an incident from the check mark column":::

When you do, a summary pane opens with key information about the incident, such as severity, who it is assigned to, and the [MITRE ATT&CK&trade;](https://attack.mitre.org/) categories for the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incidents-ss-incident-side-panel.png" alt-text="Example of the summary pane for an incident":::

From here, you can select **Open incident page**. This opens the main page for the incident where you'll find more summary information and tabs for alerts, devices, users, investigations, and evidence.

You can also open the main page for an incident by selecting the incident name from the incident queue.

## Summary

The **Summary** page gives you a snapshot glance at the top things to notice about the incident.

:::image type="content" source="../../media/incidents-overview/incidents-ss-incident-summary.png" alt-text="Example of the Summary page for an incident in the Microsoft 365 security center":::

The attack categories give you a visual and numeric view of how advanced the attack has progressed against the kill chain. As with other Microsoft security products, Microsoft 365 Defender is aligned to the [MITRE ATT&CK&trade;](https://attack.mitre.org/) framework.

The scope section gives you a list of top impacted assets that are part of this incident. If there is specific information regarding this asset, such as risk level, investigation priority as well as any tagging on the assets this will also surface in this section.

The alerts timeline provides a sneak peek into the chronological order in which the alerts occurred, as well as the reasons that these alerts are linked to this incident.

And last - the evidence section provides a summary of how many different artifacts were included in the incident and their remediation status, so you can immediately identify if any action is needed on your end.

This overview can assist in the initial triage of the incident by providing insight into the top characteristics of the incident that you should be aware of.

## Alerts

On the **Alert** tab, you can view the alert queue for alerts related to the incident and other information about them such as:

- Severity.
- The entities that were involved in the alert.
- The source of the alerts (Microsoft Defender for Identity, Microsoft Defender for Endpoint, Microsoft Defender for Office 365).
- The reason they were linked together.

Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-alerts.png" alt-text="Example of an Alerts page for an incident":::

By default, the alerts are ordered chronologically to allow you to see how the incident played out over time. Selecting each alert takes you to the alert's main page where you can conduct an in-depth investigation of that alert. 

Learn how to use the alert queue and alert pages in [Investigate alerts](investigate-alerts.md)

## Devices

The **Devices** tab lists all the devices related to the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-devices.png" alt-text="Example of a Devices page for an incident":::

You can select the check mark for a device to see details of the device, directory data, active alerts, and logged on users. Select the name of the device to see device details in the Microsoft Defender for Endpoints device inventory.

:::image type="content" source="../../media/investigate-incidents/incident-devices-details.png" alt-text="Example of a devices page for Microsoft Defender for Endpoints":::

From the device page, you can gather additional information about the device, such as all of its alerts, a timeline, and security recommendations. For example, from the **Timeline** tab, you can scroll through the machine timeline and view all events and behaviors observed on the machine in chronological order, interspersed with the alerts raised.

> [!TIP]
> You can do on-demand scans on a device page. In the Microsoft 365 security center, choose **Endpoints > Device inventory**. Select a device that has alerts, and then run an antivirus scan. Actions, such as antivirus scans, are tracked and are visible on the **Device inventory** page. To learn more, see [Run Microsoft Defender Antivirus scan on devices](/microsoft-365/security/defender-endpoint/respond-machine-alerts#run-microsoft-defender-antivirus-scan-on-devices).

## Users

The **Users** tab lists all the users that have been identified to be part of or related to the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-users.png" alt-text="Example of a Users page for an incident":::

You can select the check mark for a user to see details of the user account threat, exposure, and contact information. 
Select the user name to see additional user account details.

## Mailboxes

The **Mailboxes** tab lists all the mailboxes that have been identified to be part of or related to the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-mailboxes.png" alt-text="Example of a Mailboxes page for an incident":::

You can select the check mark for a mailbox to see a list of active alerts. Select the mailbox name to see additional mailbox details on the Explorer page for Microsoft Defender for Office 365.

## Investigations

The **Investigations** tab lists all the automated investigations triggered by alerts in this incident. The investigations will perform remediation actions or wait for analyst approval of actions, depending on how you configured your automated investigations to run in Microsoft Defender for Endpoint and Defender for Office 365.

:::image type="content" source="../../media/investigate-incidents/incident-investigations.png" alt-text="Example of an Investigations page for an incident":::

Select an investigation to navigate to the Investigation details page to get full information on the investigation and remediation status. If there are any actions pending for approval as part of the investigation, they will appear in the Pending actions tab. Take action as part of incident remediation.

## Evidence and Response

The **Evidence and Response** tab shows all the supported events and suspicious entities in the alerts in the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-evidence.png" alt-text="Example of an Evidence and Response page for an incident":::

Microsoft 365 Defender automatically investigates all the incidents' supported events and suspicious entities in the alerts, providing you with information about the important emails, files, processes, services, IP Addresses, and more. This helps you quickly detect and block potential threats in the incident.

Each of the analyzed entities is marked with a verdict (Malicious, Suspicious, Clean) and a remediation status. This helps you understand the remediation status of the entire incident and what next steps can be taken.

## Related topics

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)

