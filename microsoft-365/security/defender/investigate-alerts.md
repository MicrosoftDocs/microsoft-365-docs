---
title: Investigate alerts in Microsoft 365 Defender
description: Investigate alerts seen across devices, users, and mailboxes.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
search.appverid: 
  - MOE150
ms.technology: m365d
---
# Investigate alerts in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

>[!Note]
>This article describes security alerts in Microsoft 365 Defender. However, you can use activity alerts to send email notifications to yourself or other admins when users perform specific activities in Microsoft 365. For more information, see [Create activity alerts - Microsoft Purview | Microsoft Docs](../../compliance/create-activity-alerts.md).

Alerts are the basis of all incidents and indicate the occurrence of malicious or suspicious events in your environment. Alerts are typically part of a broader attack and provide clues about an incident.

In Microsoft 365 Defender, related alerts are aggregated together to form [incidents](incidents-overview.md). Incidents will always provide the broader context of an attack, however, analyzing alerts can be valuable when deeper analysis is required.

The **Alerts queue** shows the current set of alerts. You get to the alerts queue from **Incidents & alerts > Alerts** on the quick launch of the [Microsoft 365 Defender portal](https://go.microsoft.com/fwlink/p/?linkid=2077139).

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-queue.png" alt-text="The Alerts section in the Microsoft 365 Defender portal" lightbox="../../media/investigate-alerts/alerts-ss-alerts-queue.png":::

Alerts from different Microsoft security solutions like Microsoft Defender for Endpoint, Microsoft Defender for Office 365, and Microsoft 365 Defender appear here.

By default, the alerts queue in the Microsoft 365 Defender portal displays the new and in progress alerts from the last 30 days. The most recent alert is at the top of the list so you can see it first. 

From the default alerts queue, you can select **Filter** to see a **Filter** pane, from which you can specify a subset of the alerts. Here's an example.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-filter.png" alt-text="The Filters section in the Microsoft 365 Defender portal." lightbox="../../media/investigate-alerts/alerts-ss-alerts-filter.png":::

You can filter alerts according to these criteria:

- Severity
- Status
- Service sources
- Entities (the impacted assets)
- Automated investigation state

## Required roles for Defender for Office 365 alerts

You'll need to have any of the following roles to access Microsoft Defender for Office 365 alerts:

- For Azure Active Directory (Azure AD) global roles:

   - Global administrator

   - Security administrator

   - Security Operator

   - Global Reader

   - Security Reader

- Office 365 Security & Compliance Role Groups

   - Compliance Administrator

   - Organization Management 

- A [custom role](custom-roles.md)

## Analyze an alert

To see the main alert page, select the name of the alert. Here's an example.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-main.png" alt-text="The details of an alert in the Microsoft 365 Defender portal" lightbox="../../media/investigate-alerts/alerts-ss-alerts-main.png":::

You can also select the **Open the main alert page** action from the **Manage alert** pane.

An alert page is composed of these sections: 

- Alert story, which is the chain of events and alerts related to this alert in chronological order
- Summary details

Throughout an alert page, you can select the ellipses (**...**) beside any entity to see available actions, such as linking the alert to another incident. The list of available actions depends on the type of alert.

### Alert sources

Microsoft 365 Defender alerts may come from solutions like Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Cloud Apps, and the app governance add-on for Microsoft Defender for Cloud Apps. You may notice alerts with prepended characters in the alert. The following table provides guidance to help you understand the mapping of alert sources based on the prepended character on the alert.

> [!NOTE]
> - The prepended GUIDs are specific only to unified experiences such as unified alerts queue, unified alerts page, unified investigation, and unified incident.
> - The prepended character does not change the GUID of the alert. The only change to the GUID is the prepended component.

| Alert source | Prepended character |
| :---|:--- |
| Microsoft Defender for Office 365 | `fa{GUID}` <br> Example: `fa123a456b-c789-1d2e-12f1g33h445h6i` |
| Microsoft Defender for Endpoint | `da` or `ed` for custom detection alerts <br> |
| Microsoft Defender for Identity | `aa{GUID}` <br> Example: `aa123a456b-c789-1d2e-12f1g33h445h6i` |
| Microsoft Defender for Cloud Apps |`ca{GUID}` <br> Example: `ca123a456b-c789-1d2e-12f1g33h445h6i` |

### Analyze affected assets

The **Actions taken** section has a list of impacted assets, such as mailboxes, devices, and users affected by this alert. 

You can also select **View in action center** to view the **History** tab of the **Action center** in the Microsoft 365 Defender portal. 

### Trace an alert's role in the alert story

The alert story displays all assets or entities related to the alert in a process tree view. The alert in the title is the one in focus when you first land on your selected alert's page. Assets in the alert story are expandable and clickable. They provide additional information and expedite your response by allowing you to take action right in the context of the alert page. 

> [!NOTE]
> The alert story section may contain more than one alert, with additional alerts related to the same execution tree appearing before or after the alert you've selected.

### View more alert information on the details page

The details page shows the details of the selected alert, with details and actions related to it. If you select any of the affected assets or entities in the alert story, the details page changes to provide contextual information and actions for the selected object.

Once you've selected an entity of interest, the details page changes to display information about the selected entity type, historic information when it's available, and options to take action on this entity directly from the alert page.

## Manage alerts

To manage an alert, select **Manage alert** in the summary details section of the alert page. For a single alert, here's an example of the **Manage alert** pane.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-manage.png" alt-text="The Manage alert section in the Microsoft 365 Defender portal" lightbox="../../media/investigate-alerts/alerts-ss-alerts-manage.png":::

The **Manage alert** pane allows you to view or specify:

- The alert status (New, Resolved, In progress).
- The user account that has been assigned the alert.
- The alert's classification:

   - **Not set** (the default).

   - **True positive** with a type of threat. Use this classification for alerts that accurately indicate a real threat. Specifying the threat type helps your security team see threat patterns and act to defend your organization from them.

   - **Informational, expected activity** with a type of activity. Use the options in this category to classify alerts for security tests, red team activity, and expected unusual behavior from trusted apps and users.

   - **False positive** for types of alerts that were created even when there is no malicious activity. Classifying alerts as false positive helps Microsoft 365 Defender improve its detection quality.

- A comment on the alert.

> [!NOTE]
> One way of managing alerts it through the use of tags. The tagging capability for Microsoft Defender for Office 365 is incrementally being rolled out and is currently in preview. <br>
> Currently, modified tag names are only applied to alerts created *after* the update. Alerts that were generated before the modification will not reflect the updated tag name. 

To manage a *set of alerts similar to a specific alert*, select **View similar alerts** in the **INSIGHT** box in the summary details section of the alert page.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-manage-select.png" lightbox="../../media/investigate-alerts/alerts-ss-alerts-manage-select.png" alt-text="Manage an alert in the Microsoft 365 Defender portal":::

From the **Manage alerts** pane, you can then classify all of the related alerts at the same time. Here's an example.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-select-related.png" lightbox="../../media/investigate-alerts/alerts-ss-alerts-select-related.png" alt-text="Managing related alerts in the Microsoft 365 Defender portal":::

If similar alerts were already classified in the past, you can save time by using Microsoft 365 Defender recommendations to learn how the other alerts were resolved. From the summary details section, select **Recommendations**.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-recommendations.png" lightbox="../../media/investigate-alerts/alerts-ss-alerts-recommendations.png" alt-text="Example of selecting recommendations for an alert":::

The **Recommendations** tab provides next-step actions and advice for investigation, remediation, and prevention. Here's an example.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-recommendations-example.png" lightbox="../../media/investigate-alerts/alerts-ss-alerts-recommendations-example.png" alt-text="Example of alert recommendations":::

## Resolve an alert

Once you're done analyzing an alert and it can be resolved, go to the **Manage alert** pane for the alert or similar alerts and mark the status as **Resolved** and then classify it as a **True positive** with a type of threat, an **Informational, expected activity** with a type of activity, or a **False positive**.

Classifying alerts helps Microsoft 365 Defender improve its detection quality.

## Use Power Automate to triage alerts

Modern security operations (SecOps) teams need automation to work effectively. To focus on hunting and investigating real threats, SecOps teams use Power Automate to triage through the list of alerts and eliminate the ones that aren't threats.  

### Criteria for resolving alerts

- User has Out-of-office message turned on

- User isn't tagged as high risk

If both are true, SecOps marks the alert as legitimate travel and resolves it. A notification is posted in Microsoft Teams after the alert is resolved.

### Connect Power Automate to Microsoft Defender for Cloud Apps

To create the automation, you'll need an API token before you can connect Power Automate to Microsoft Defender for Cloud Apps.

1. Click **Settings**, select **Security extensions**, and then click **Add token** in the **API tokens** tab.

2. Provide a name for your token, and then click **Generate**. Save the token as you'll need it later.

### Create an automated flow

For the detailed step-by-step process, see the video [here](https://www.microsoft.com/en-us/videoplayer/embed/RWFIRn).

This video also describes how to connect power automate to Defender for Cloud Apps.

## Next steps

As needed for in-process incidents, continue your [investigation](investigate-incidents.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Manage incidents](manage-incidents.md)
- [Investigate incidents](investigate-incidents.md)
