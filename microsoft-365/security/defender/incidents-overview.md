---
title: Incident response with Microsoft Defender XDR
description: Investigate incidents seen across devices, users, and mailboxes in the Microsoft Defender portal.
ms.service: defender-xdr
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
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 09/18/2023
---

# Incident response with Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR

An incident in Microsoft Defender XDR is a collection of correlated alerts and associated data that make up the story of an attack.

Microsoft 365 services and apps create alerts when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple alerts for multiple entities in your tenant.

Because piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming, Microsoft Defender XDR automatically aggregates the alerts and their associated information into an incident.

:::image type="content" source="../../media/incidents-overview/incidents.png" alt-text="How Microsoft Defender XDR correlates events from entities into an incident." lightbox="../../media/incidents-overview/incidents.png":::

Grouping related alerts into an incident gives you a comprehensive view of an attack. For example, you can see:

- Where the attack started.
- What tactics were used.
- How far the attack has gone into your tenant.
- The scope of the attack, such as how many devices, users, and mailboxes were impacted.
- All of the data associated with the attack.

If [enabled](m365d-enable.md), Microsoft Defender XDR can [automatically investigate and resolve](m365d-autoir.md) alerts through automation and artificial intelligence. You can also perform additional remediation steps to resolve the attack.

<a name='incidents-and-alerts-in-the-microsoft-365-defender-portal'></a>

## Incidents and alerts in the Microsoft Defender portal

> [!TIP]
> For a limited time during January 2024, when you visit the **Incidents** page, Defender Boxed appears. Defender Boxed highlights your organization's security successes, improvements, and response actions during 2023. To reopen Defender Boxed, in the Microsoft Defender portal, go to **Incidents**, and then select **Your Defender Boxed**.

You manage incidents from **Incidents & alerts > Incidents** on the quick launch of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target=" blank">Microsoft Defender portal</a>. Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents.png" alt-text="The Incidents page in the Microsoft Defender portal." lightbox="../../media/incidents-queue/incidents-ss-incidents.png":::

Selecting an incident name displays the entire attack story of the incident, including:

- Alert page within incident: The scope of alerts related to the incident and their information on the same tab.
- Graph: A visual representation of the attack that connects the different suspicious entities that are part of the attack with their related assets such as users, devices, and mailboxes. 

You can view the entity details directly from the graph and act on them with response options like file delete or device isolation.

:::image type="content" source="../../media/incidents-overview/incidents-ss-incident-summary.png" alt-text="Screenshot that shows the attack story page for an incident in the Microsoft Defender portal." lightbox="../../media/incidents-overview/incidents-ss-incident-summary.png":::

The additional tabs for an incident are:

- Attack story

  The full story of the attack, including all the alerts, assets, and remediation actions taken.

- Alerts

  All the alerts related to the incident and their information.

- Assets

  All the assets (devices, users, mailboxes, and apps) that have been identified to be part of or related to the incident.

- Investigations

  All the [automated investigations](m365d-autoir.md) triggered by alerts in the incident.

- Evidence and Response

  All the supported events and suspicious entities in the alerts of the incident.

- Summary

  A quick overview of the impacted assets associated with alerts.

> [!NOTE]
> If you see an *Unsupported alert type* alert status, it means that automated investigation capabilities cannot pick up that alert to run an automated investigation. However, you can [investigate these alerts manually](investigate-incidents.md#alerts).

<a name='example-incident-response-workflow-for-microsoft-365-defender'></a>

## Example incident response workflow for Microsoft Defender XDR

Here's an example workflow for responding to incidents in Microsoft 365 with the Microsoft Defender portal.

:::image type="content" source="../../media/incidents-overview/incidents-example-workflow.png" alt-text="An example of an incident response workflow for the Microsoft Defender portal." lightbox="../../media/incidents-overview/incidents-example-workflow.png":::

On an ongoing basis, identify the highest priority incidents for analysis and resolution in the incident queue and get them ready for response. This is a combination of:

- [Triaging](incident-queue.md) to determining the highest priority incidents through filtering and sorting of the incident queue.
- [Managing](manage-incidents.md) incidents by modifying their title, assigning them to an analyst, and adding tags and comments.

Consider these steps for your own incident response workflow:

1. For each incident, begin an [attack and alert investigation and analysis](investigate-incidents.md):

   1. View the attack story of the incident to understand its scope, severity, detection source, and what entities are affected.

   1. Begin analyzing the alerts to understand their origin, scope, and severity with the alert story within the incident.

   1. As needed, gather information on impacted devices, users, and mailboxes with the graph. Right click on any entity to open a flyout with all the details.

   1. See how Microsoft Defender XDR has [automatically resolved some alerts](m365d-autoir.md) with the **Investigations** tab.

   1. As needed, use information in the data set for the incident for more information with the **Evidence and Response** tab.

2. After or during your analysis, perform containment to reduce any additional impact of the attack and eradication of the security threat.

3. As much as possible, recover from the attack by restoring your tenant resources to the state they were in before the incident.

4. [Resolve](manage-incidents.md#resolve-an-incident) the incident and take time for post-incident learning to:

   - Understand the type of the attack and its impact.
   - Research the attack in [Threat Analytics](threat-analytics.md) and the security community for a security attack trend.
   - Recall the workflow you used to resolve the incident and update your standard workflows, processes, policies, and playbooks as needed.
   - Determine whether changes in your security configuration are needed and implement them.

If you're new to security analysis, see the [introduction to responding to your first incident](incidents-overview.md) for additional information and to step through an example incident.

For more information about incident response across Microsoft products, see [this article](/security/compass/incident-response-overview).

<a name='example-security-operations-for-microsoft-365-defender'></a>

## Example security operations for Microsoft Defender XDR

Here's an example of security operations (SecOps) for Microsoft Defender XDR.

:::image type="content" source="../../media/incidents-overview/incidents-example-operations.png" alt-text="An example of security operations for Microsoft Defender XDR" lightbox="../../media/incidents-overview/incidents-example-operations.png":::

Daily tasks can include:

- [Managing](manage-incidents.md) incidents
- Reviewing [automated investigation and response (AIR)](m365d-action-center.md) actions in the Action center
- Reviewing the latest [Threat Analytics](threat-analytics.md)
- [Responding](investigate-incidents.md) to incidents

Monthly tasks can include:

- Reviewing [AIR settings](m365d-configure-auto-investigation-response.md)
- Reviewing [Secure Score](microsoft-secure-score-improvement-actions.md) and [Microsoft Defender Vulnerability Management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md)
- Reporting to your IT security management chain

Quarterly tasks can include a report and briefing of security results to the Chief Information Security Officer (CISO).

Annual tasks can include conducting a major incident or breach exercise to test your staff, systems, and processes.

Daily, monthly, quarterly, and annual tasks can be used to update or refine processes, policies, and security configurations.

See [Integrating Microsoft Defender XDR into your security operations](integrate-microsoft-365-defender-secops.md) for more details.

### SecOps resources across Microsoft products

For more information about SecOps across Microsoft's products, see these resources:

- [Capabilities](/security/compass/security-operations-capabilities)
- [Best practices](/security/compass/security-operations)
- [Videos and slides](/security/compass/security-operations-videos-and-decks)

## Get incident notifications by email

You can set up Microsoft Defender XDR to notify your staff with an email about new incidents or updates to existing incidents. You can choose to get notifications based on:

- Alert severity
- Alert sources 
- Device group

To set up email notifications for incidents, see [get email notifications on incidents](m365d-notifications-incidents.md).

## Training for security analysts

Use this learning module from Microsoft Learn to understand how to use Microsoft Defender XDR to manage incidents and alerts.

|Training:|Investigate incidents with Microsoft Defender XDR|
|---|---|
|![Investigate incidents with Microsoft Defender XDR training icon.](../../media/incidents-overview/m365-defender-address-security-investigation.svg)| Microsoft Defender XDR unifies threat data from multiple services and uses AI to combine them into incidents and alerts. Learn how to minimize the time between an incident and its management for subsequent response and resolution. <p> 27 min - 6 Units |

> [!div class="nextstepaction"]
> [Start >](/training/modules/defender-investigate-incidents/)

## Next steps

Use the listed steps based on your experience level or role on your security team.

### Experience level

Follow this table for your level of experience with security analysis and incident response.

| Level | Steps |
|:-------|:-----|
| **New** | <ol><li> See the [Respond to your first incident walkthrough](first-incident-overview.md) to get a guided tour of a typical process of analysis, remediation, and post-incident review in the Microsoft Defender portal with an example attack. </li><li> See which incidents should be [prioritized](incident-queue.md) based on severity and other factors. </li><li> [Manage incidents](manage-incidents.md), which includes renaming, assigning, classifying, and adding tags and comments based on your incident management workflow.</li></ol> |
| **Experienced** | <ol><li> Get started with the incident queue from the **Incidents** page of the Microsoft Defender portal. From here you can: </li> <ul><li> See which incidents should be [prioritized](incident-queue.md) based on severity and other factors. </li><li> [Manage incidents](manage-incidents.md), which includes renaming, assigning, classifying, and adding tags and comments based on your incident management workflow. </li><li> Perform [investigations](investigate-incidents.md) of incidents. </li></ul> </li><li> Track and respond to emerging threats with [threat analytics](threat-analytics.md). </li><li>  Proactively hunt for threats with [advanced threat hunting](advanced-hunting-overview.md). </li><li> See these [incident response playbooks](/security/compass/incident-response-playbooks) for detailed guidance for phishing, password spray, and app consent grant attacks. </li></ol> |

### Security team role

Follow this table based on your security team role.

| Role | Steps |
|---|---|
| Incident responder (Tier 1) | Get started with the incident queue from the **Incidents** page of the Microsoft Defender portal. From here you can: <ul><li> See which incidents should be [prioritized](incident-queue.md) based on severity and other factors. </li><li> [Manage incidents](manage-incidents.md), which includes renaming, assigning, classifying, and adding tags and comments based on your incident management workflow. </li></ul> |
| Security investigator or analyst (Tier 2) | <ol><li> Perform [investigations](investigate-incidents.md) of incidents from the **Incidents** page of the Microsoft Defender portal. </li><li> See these [incident response playbooks](/security/compass/incident-response-playbooks) for detailed guidance for phishing, password spray, and app consent grant attacks. </li></ol> |
| Advanced security analyst or threat hunter (Tier 3) | <ol><li>Perform [investigations](investigate-incidents.md) of incidents from the **Incidents** page of the Microsoft Defender portal. </li><li> Track and respond to emerging threats with [threat analytics](threat-analytics.md). </li><li> Proactively hunt for threats with [advanced threat hunting](advanced-hunting-overview.md). </li><li> See these [incident response playbooks](/security/compass/incident-response-playbooks) for detailed guidance for phishing, password spray, and app consent grant attacks. |
| SOC manager | See how to [integrate Microsoft Defender XDR into your Security Operations Center (SOC)](integrate-microsoft-365-defender-secops.md). |
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
