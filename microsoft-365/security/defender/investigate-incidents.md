---
title: Investigate incidents in Microsoft 365 Defender
description: Investigate incidents related to devices, users, and mailboxes.
keywords: incident, incidents, attack story, analyze, response, machines, devices, users, identities, mail, email, mailbox, investigation, graph, evidence
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 05/24/2023
---

# Investigate incidents in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

Microsoft 365 Defender aggregates all related alerts, assets, investigations, and evidence from across your devices, users, and mailboxes into an incident to give you a comprehensive look into the entire breadth of an attack.

Within an incident, you analyze the alerts that affect your network, understand what they mean, and collate the evidence so that you can devise an effective remediation plan.

## Initial investigation

Before diving into the details, take a look at the properties and the entire attack story of the incident.

You can start by selecting the incident from the check mark column. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incidents-ss-incident-select.png" alt-text="Selecting an incident in the Microsoft 365 Defender portal" lightbox="../../media/investigate-incidents/incidents-ss-incident-select.png":::

When you do, a summary pane opens with key information about the incident, such as severity, to whom it is assigned, and the [MITRE ATT&CK&trade;](https://attack.mitre.org/) categories for the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incidents-ss-incident-side-panel.png" alt-text="The pane that displays the summary details for an incident in the Microsoft 365 Defender portal." lightbox="../../media/investigate-incidents/incidents-ss-incident-side-panel.png":::

From here, you can select **Open incident page**. This opens the main page for the incident where you'll find the full attack story information and tabs for alerts, devices, users, investigations, and evidence.

You can also open the main page for an incident by selecting the incident name from the incident queue.

## Attack story

Attack stories help you to quickly review, investigate, and remediate attacks while viewing the full story of the attack on the same tab. It also allows you to review the entity details and take remediation actions, such as deleting a file or isolating a device without losing context.

The attack story is briefly described in the following video. 
 > [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RW129Jc]

Within the attack story you can find the alert page and the incident graph.

The incident alert page has these sections:

- Alert story, which includes:

   - What happened

   - Actions taken

   - Related events

- Alert properties in the right pane (state, details, description, and others)

Note that not every alert will have all of the listed subsections in the **Alert story** section.

The graph shows the full scope of the attack, how the attack spread through your network over time, where it started, and how far the attacker went. It connects the different suspicious entities that are part of the attack with their related assets such as users, devices, and mailboxes.

From the graph, you can:

- Play the alerts and the nodes on the graph as they occurred over time to understand the chronology of the attack.
  
  :::image type="content" source="../../media/investigate-incidents/play-alert-attack-story.gif" alt-text="Screenshot that shows playing of the alerts and nodes on the attack story graph page.":::

- Open an entity pane, allowing you to review the entity details and act on remediation actions, such as deleting a file or isolating a device.

  :::image type="content" source="../../media/investigate-incidents/review-entity-details-attack-story.gif" alt-text="Screenshot that shows the review of the entity details on the attack story graph page.":::

- Highlight the alerts based on the entity to which they are related.

Use the **Summary** page to assess the relative importance of the incident and quickly access the associated alerts and impacted entities.

## Summary

The **Summary** page gives you a snapshot glance at the top things to notice about the incident.

:::image type="content" source="../../media/incidents-overview/incidents-investigate-summary.png" alt-text="Screenshot that shows the summary information for an incident in the Microsoft 365 Defender portal." lightbox="../../media/incidents-overview/incidents-investigate-summary.png":::

Information is organized in these sections.

| Section | Description |
|:-------|:-----|
| Alerts and categories | A visual and numeric view of how advanced the attack has progressed against the kill chain. As with other Microsoft security products, Microsoft 365 Defender is aligned to the [MITRE ATT&CK&trade;](https://attack.mitre.org/) framework. The alerts timeline shows the chronological order in which the alerts occurred and for each, their status and name. |
| Scope |  Displays the number of impacted devices, users, and mailboxes and lists the entities in order of risk level and investigation priority. |
| Evidence | Displays the number of entities affected by the incident. |
| Incident information | Displays the properties of the incident, such as tags, status, and severity. |
|||

## Alerts

On the **Alerts** tab, you can view the alert queue for alerts related to the incident and other information about them such as:

- Severity.
- The entities that were involved in the alert.
- The source of the alerts (Microsoft Defender for Identity, Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Defender for Cloud Apps, and the app governance add-on).
- The reason they were linked together.

Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-alerts.png" alt-text="The Alerts pane for an incident in the Microsoft 365 Defender portal" lightbox="../../media/investigate-incidents/incident-alerts.png":::

By default, the alerts are ordered chronologically to allow you to see how the attack played out over time. When you select an alert within an incident, Microsoft 365 Defender displays the alert information specific to the context of the overall incident.

You can see the events of the alert, which other triggered alerts caused the current alert, and all the affected entities and activities involved in the attack, including devices, files, users, and mailboxes.

Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-alert-example.png" alt-text="The details of an alert within an incident in the Microsoft 365 Defender portal." lightbox="../../media/investigate-incidents/incident-alert-example.png":::

Learn how to use the alert queue and alert pages in [investigate alerts](investigate-alerts.md).

## Assets

Easily view and manage all your assets in one place with the new **Assets** tab. This unified view includes Devices, Users, Mailboxes and Apps. 

The Assets tab displays the total number of assets beside its name. A list of different categories with the number of assets within that category is presented when selecting the Assets tab.

:::image type="content" source="../../media/investigate-incidents/incident-assets.png" alt-text="The Assets page for an incident in the Microsoft 365 Defender portal" lightbox="../../media/investigate-incidents/incident-assets.png":::

### Devices

The **Devices** view lists all the devices related to the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-devices2.png" alt-text="The Devices page for an incident in the Microsoft 365 Defender portal" lightbox="../../media/investigate-incidents/incident-devices2.png":::

Selecting a device from the list opens a bar that allows you to manage the selected device. You can quickly export, manage tags, initiate automated investigation, and more. 

You can select the check mark for a device to see details of the device, directory data, active alerts, and logged on users. Select the name of the device to see device details in the Defender for Endpoint device inventory. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-devicebar.png" alt-text="The Devices options in the Assets page in the Microsoft 365 Defender portal." lightbox="../../media/investigate-incidents/incident-devicebar.png":::

From the device page, you can gather additional information about the device, such as all of its alerts, a timeline, and security recommendations. For example, from the **Timeline** tab, you can scroll through the device timeline and view all events and behaviors observed on the machine in chronological order, interspersed with the alerts raised. Here's an example

:::image type="content" source="../../media/investigate-incidents/incident-devices-details.png" alt-text="The details of a device in the Device page in the Microsoft 365 Defender portal." lightbox="../../media/investigate-incidents/incident-devices-details.png":::

> [!TIP]
> You can do on-demand scans on a device page. In the Microsoft 365 Defender portal, choose **Endpoints > Device inventory**. Select a device that has alerts, and then run an antivirus scan. Actions, such as antivirus scans, are tracked and are visible on the **Device inventory** page. To learn more, see [Run Microsoft Defender Antivirus scan on devices](/microsoft-365/security/defender-endpoint/respond-machine-alerts#run-microsoft-defender-antivirus-scan-on-devices).

### Users

The **Users** view lists all the users that have been identified to be part of or related to the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-users2.png" alt-text="The Users page in the Microsoft 365 Defender portal." lightbox="../../media/investigate-incidents/incident-users2.png":::

You can select the check mark for a user to see details of the user account threat, exposure, and contact information. Select the user name to see additional user account details.

Learn how to view additional user information and manage the users of an incident in [investigate users](investigate-users.md).

### Mailboxes

The **Mailboxes** view lists all the mailboxes that have been identified to be part of or related to the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-mailboxes2.png" alt-text="The Mailboxes page for an incident in the Microsoft 365 Defender portal." lightbox="../../media/investigate-incidents/incident-mailboxes2.png":::

You can select the check mark for a mailbox to see a list of active alerts. Select the mailbox name to see additional mailbox details on the Explorer page for Defender for Office 365.

### Apps

The **Apps** view lists all the apps identified to be part of or related to the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-apps.png" alt-text="The Apps page for an incident in the Microsoft 365 Defender portal." lightbox="../../media/investigate-incidents/incident-apps.png":::

You can select the check mark for an app to see a list of active alerts. Select the app name to see additional  details on the Explorer page for Defender for Cloud Apps.

## Investigations

The **Investigations** tab lists all the [automated investigations](m365d-autoir.md) triggered by alerts in this incident. Automated investigations will perform remediation actions or wait for analyst approval of actions, depending on how you configured your automated investigations to run in Defender for Endpoint and Defender for Office 365.

:::image type="content" source="../../media/investigate-incidents/incident-investigations.png" alt-text="The Investigations page for an incident in the Microsoft 365 Defender portal" lightbox="../../media/investigate-incidents/incident-investigations.png":::

Select an investigation to navigate to its details page for full information on the investigation and remediation status. If there are any actions pending for approval as part of the investigation, they will appear in the **Pending actions history** tab. Take action as part of incident remediation.

There is also an **Investigation graph** tab that shows:

- The connection of alerts to the impacted assets in your organization.
- Which entities are related to which alerts and how they are part of the story of the attack.
- The alerts for the incident.

The investigation graph helps you quickly understand the full scope of the attack by connecting the different suspicious entities that are part of the attack with their related assets such as users, devices, and mailboxes.

For more information, see [Automated investigation and response in Microsoft 365 Defender](m365d-autoir.md).

## Evidence and Response

The **Evidence and Response** tab shows all the supported events and suspicious entities in the alerts in the incident. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-evidence.png" alt-text="The Evidence and Response page for an incident in the Microsoft 365 Defender portal" lightbox="../../media/investigate-incidents/incident-evidence.png":::

Microsoft 365 Defender automatically investigates all the incidents' supported events and suspicious entities in the alerts, providing you with information about the important emails, files, processes, services, IP Addresses, and more. This helps you quickly detect and block potential threats in the incident.

Each of the analyzed entities is marked with a verdict (Malicious, Suspicious, Clean) and a remediation status. This helps you understand the remediation status of the entire incident and what next steps can be taken.

### Approve or reject remediation actions

For incidents with a remediation status of **Pending approval**, you can approve or reject a remediation action from within the incident.

1. In the navigation pane, go to **Incidents & alerts** \> **Incidents**.
2. Filter on **Pending action** for the Automated investigation state (optional).
3. Select an incident name to open its summary page.
4. Select the **Evidence and Response** tab.
5. Select an item in the list to open its flyout pane.
6. Review the information, and then take one of the following steps:
   - Select the Approve pending action option to initiate a pending action.
   - Select the Reject pending action option to prevent a pending action from being taken.

:::image type="content" source="../../media/defender//m365-defender-approve-reject-action.png" alt-text="The Approve\Reject option in the Evidence and Response management pane for an incident in the Microsoft 365 Defender portal" lightbox="../../media/defender//m365-defender-approve-reject-action.png":::

## Next steps

As needed:

- [Investigate the alerts of an incident](investigate-alerts.md)
- [Investigate the users of an incident](investigate-users.md)

## See also

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
