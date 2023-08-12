---
title: Incident response with Microsoft 365 Defender
description: Investigate incidents seen across devices, users, and mailboxes in the Microsoft 365 Defender portal.
keywords: incidents, alerts, attack story, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack
search.product: eADQiWindows 10XVcnh
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
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 03/06/2023
---

# Incident response with Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

An incident in Microsoft 365 Defender is a collection of correlated alerts and associated data that make up the story of an attack.

Microsoft 365 services and apps create alerts when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple alerts for multiple entities in your tenant.

Because piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming, Microsoft 365 Defender automatically aggregates the alerts and their associated information into an incident.

:::image type="content" source="../../media/incidents-overview/incidents.png" alt-text="How Microsoft 365 Defender correlates events from entities into an incident." lightbox="../../media/incidents-overview/incidents.png":::

Grouping related alerts into an incident gives you a comprehensive view of an attack. For example, you can see:

- Where the attack started.
- What tactics were used.
- How far the attack has gone into your tenant.
- The scope of the attack, such as how many devices, users, and mailboxes were impacted.
- All of the data associated with the attack.

If [enabled](m365d-enable.md), Microsoft 365 Defender can [automatically investigate and resolve](m365d-autoir.md) alerts through automation and artificial intelligence. You can also perform additional remediation steps to resolve the attack.

## Incidents and alerts in the Microsoft 365 Defender portal

You manage incidents from **Incidents & alerts > Incidents** on the quick launch of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target=" blank">Microsoft 365 Defender portal</a>. Here's an example.

:::image type="content" source="../../media/incidents-queue/incidents-ss-incidents.png" alt-text="The Incidents page in the Microsoft 365 Defender portal." lightbox="../../media/incidents-queue/incidents-ss-incidents.png":::

Selecting an incident name displays the entire attack story of the incident, including:

- Alert page within incident: The scope of alerts related to the incident and their information on the same tab.
- Graph: A visual representation of the attack that connects the different suspicious entities that are part of the attack with their related assets such as users, devices, and mailboxes. 

You can view the entity details directly from the graph and act on them with response options like file delete or device isolation.

:::image type="content" source="../../media/incidents-overview/incidents-ss-incident-summary.png" alt-text="Screenshot that shows the attack story page for an incident in the Microsoft 365 Defender portal." lightbox="../../media/incidents-overview/incidents-ss-incident-summary.png":::

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

## Example incident response workflow for Microsoft 365 Defender

Here's an example workflow for responding to incidents in Microsoft 365 with the Microsoft 365 Defender portal.

:::image type="content" source="../../media/incidents-overview/incidents-example-workflow.png" alt-text="An example of an incident response workflow for the Microsoft 365 Defender portal." lightbox="../../media/incidents-overview/incidents-example-workflow.png":::

On an ongoing basis, identify the highest priority incidents for analysis and resolution in the incident queue and get them ready for response. This is a combination of:

- [Triaging](incident-queue.md) to determining the highest priority incidents through filtering and sorting of the incident queue.
- [Managing](manage-incidents.md) incidents by modifying their title, assigning them to an analyst, and adding tags and comments.

Consider these steps for your own incident response workflow:

1. For each incident, begin an [attack and alert investigation and analysis](investigate-incidents.md):

   1. View the attack story of the incident to understand its scope, severity, detection source, and what entities are affected.

   1. Begin analyzing the alerts to understand their origin, scope, and severity with the alert story within the incident.

   1. As needed, gather information on impacted devices, users, and mailboxes with the graph. Right click on any entity to open a flyout with all the details.

   1. See how Microsoft 365 Defender has [automatically resolved some alerts](m365d-autoir.md) with the **Investigations** tab.

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

## Example security operations for Microsoft 365 Defender

Here's an example of security operations (SecOps) for Microsoft 365 Defender.

:::image type="content" source="../../media/incidents-overview/incidents-example-operations.png" alt-text="An example of security operations for Microsoft 365 Defender" lightbox="../../media/incidents-overview/incidents-example-operations.png":::

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

See [Integrating Microsoft 365 Defender into your security operations](integrate-microsoft-365-defender-secops.md) for more details.

### SecOps resources across Microsoft products

For more information about SecOps across Microsoft's products, see these resources:

- [Capabilities](/security/compass/security-operations-capabilities)
- [Best practices](/security/compass/security-operations)
- [Videos and slides](/security/compass/security-operations-videos-and-decks)

## Get incident notifications by email

You can set up Microsoft 365 Defender to notify your staff with an email about new incidents or updates to existing incidents. You can choose to get notifications based on:

- Alert severity
- Alert sources 
- Device group

**Choose to receive email notifications only for specific service source**:
You can easily select specific service sources that you want to get email notifications for.
 
**Get more granularity with specific detection sources**:
You can get notifications only for a specific detection source. 

**Set the severity per detection or service source**:
You can choose to get email notifications only on specific severities per source. For example, you can get notified for Medium and High alerts for EDR and all severities for Microsoft Defender Experts.  

The email notification contains important details about the incident like the incident name, severity, and categories, among others. You can also go directly to the incident and start your analysis right away. For more information, see [Investigate incidents](investigate-incidents.md).

You can add or remove recipients in the email notifications. New recipients get notified about incidents after they're added.

> [!NOTE]
> You need the **Manage security settings** permission to configure email notification settings. If you've chosen to use basic permissions management, users with Security Administrator or Global Administrator roles can configure email notifications. <br> <br>
Likewise, if your organization is using role-based access control (RBAC), you can only create, edit, delete, and receive notifications based on device groups that you are allowed to manage.

### Create a rule for email notifications

Follow these steps to create a new rule and customize email notification settings.

1. Go to [Microsoft 365 Defender](https://security.microsoft.com) in the navigation pane, select **Settings > Microsoft 365 Defender > Incident email notifications**.
2. Select **Add item**.
3. On the **Basics** page, type the rule name and a description, and then select **Next**.
4. On the **Notification settings** page, configure:
    - **Alert severity** - Choose the alert severities that will trigger an incident notification. For example, if you only want to be informed about high-severity incidents, select **High**.
    - **Device group scope** - You can specify all device groups or select from the list of device groups in your tenant.
    - **Send only one notification per incident** - Select if you want one notification per incident.
    - **Include organization name in the email** - Select if you want your organization name to appear in the email notification.
    - **Include tenant-specific portal link** - Select if you want to add a link with the tenant ID in the email notification for access to a specific Microsoft 365 tenant.

    :::image type="content" source="../../media/get-incident-notifications/incidents-email-notification-settings.png" alt-text="Screenshot of the Notification settings page for incident email notifications in the Microsoft 365 Defender portal." lightbox="../../media/get-incident-notifications/incidents-email-notification-settings.png":::

5. Select **Next**. On the **Recipients** page, add the email addresses that will receive the incident notifications. Select **Add** after typing each new email address. To test notifications and ensure that the recipients receive them in the inboxes, select **Send test email**.
6. Select **Next**. On the **Review rule** page, review the settings of the rule, and then select **Create rule**. Recipients will start receiving incident notifications through email based on the settings.

To edit an existing rule, select it from the list of rules. On the pane with the rule name, select **Edit rule** and make your changes on the **Basics**, **Notification settings**, and **Recipients** pages.

To delete a rule, select it from the list of rules. On the pane with the rule name, select **Delete**.

Once you get the notification, you can go directly to the incident and start your investigation right away. For more information on investigating incidents, see [Investigate incidents in Microsoft 365 Defender](investigate-incidents.md).

## Training for security analysts

Use this learning module from Microsoft Learn to understand how to use Microsoft 365 Defender to manage incidents and alerts.

|Training:|Investigate incidents with Microsoft 365 Defender|
|---|---|
|![Investigate incidents with Microsoft 365 Defender training icon.](../../media/incidents-overview/m365-defender-address-security-investigation.svg)| Microsoft 365 Defender unifies threat data from multiple services and uses AI to combine them into incidents and alerts. Learn how to minimize the time between an incident and its management for subsequent response and resolution. <p> 27 min - 6 Units |

> [!div class="nextstepaction"]
> [Start >](/training/modules/defender-investigate-incidents/)

## Next steps

Use the listed steps based on your experience level or role on your security team.

### Experience level

Follow this table for your level of experience with security analysis and incident response.

| Level | Steps |
|:-------|:-----|
| **New** | <ol><li> See the [Respond to your first incident walkthrough](first-incident-overview.md) to get a guided tour of a typical process of analysis, remediation, and post-incident review in the Microsoft 365 Defender portal with an example attack. </li><li> See which incidents should be [prioritized](incident-queue.md) based on severity and other factors. </li><li> [Manage incidents](manage-incidents.md), which includes renaming, assigning, classifying, and adding tags and comments based on your incident management workflow.</li></ol> |
| **Experienced** | <ol><li> Get started with the incident queue from the **Incidents** page of the Microsoft 365 Defender portal. From here you can: </li> <ul><li> See which incidents should be [prioritized](incident-queue.md) based on severity and other factors. </li><li> [Manage incidents](manage-incidents.md), which includes renaming, assigning, classifying, and adding tags and comments based on your incident management workflow. </li><li> Perform [investigations](investigate-incidents.md) of incidents. </li></ul> </li><li> Track and respond to emerging threats with [threat analytics](threat-analytics.md). </li><li>  Proactively hunt for threats with [advanced threat hunting](advanced-hunting-overview.md). </li><li> See these [incident response playbooks](/security/compass/incident-response-playbooks) for detailed guidance for phishing, password spray, and app consent grant attacks. </li></ol> |

### Security team role

Follow this table based on your security team role.

| Role | Steps |
|---|---|
| Incident responder (Tier 1) | Get started with the incident queue from the **Incidents** page of the Microsoft 365 Defender portal. From here you can: <ul><li> See which incidents should be [prioritized](incident-queue.md) based on severity and other factors. </li><li> [Manage incidents](manage-incidents.md), which includes renaming, assigning, classifying, and adding tags and comments based on your incident management workflow. </li></ul> |
| Security investigator or analyst (Tier 2) | <ol><li> Perform [investigations](investigate-incidents.md) of incidents from the **Incidents** page of the Microsoft 365 Defender portal. </li><li> See these [incident response playbooks](/security/compass/incident-response-playbooks) for detailed guidance for phishing, password spray, and app consent grant attacks. </li></ol> |
| Advanced security analyst or threat hunter (Tier 3) | <ol><li>Perform [investigations](investigate-incidents.md) of incidents from the **Incidents** page of the Microsoft 365 Defender portal. </li><li> Track and respond to emerging threats with [threat analytics](threat-analytics.md). </li><li> Proactively hunt for threats with [advanced threat hunting](advanced-hunting-overview.md). </li><li> See these [incident response playbooks](/security/compass/incident-response-playbooks) for detailed guidance for phishing, password spray, and app consent grant attacks. |
| SOC manager | See how to [integrate Microsoft 365 Defender into your Security Operations Center (SOC)](integrate-microsoft-365-defender-secops.md). |
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
