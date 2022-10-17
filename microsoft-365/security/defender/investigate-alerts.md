---
title: Investigate alerts in Microsoft 365 Defender
description: Investigate alerts seen across devices, users, and mailboxes.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
ms.service: microsoft-365-security
ms.subservice: m365d
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
  - m365-security
  - m365initiative-m365-defender
  - tier1
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
search.appverid:
  - MOE150
  - met150
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
>
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
  - **Not Set** (default).
  - **True positive** with a type of threat. Use this classification for alerts that accurately indicate a real threat. Specifying this threat type alerts your security team see threat patterns and act to defend your organization from them.
  - **Informational, expected activity** with a type of activity. Use this option for alerts that are technically accurate, but represent normal behavior or simulated threat activity. You generally want to ignore these alerts but expect them for similar activities in the future where the activities are triggered by actual attackers or malware. Use the options in this category to classify alerts for security tests, red team activity, and expected unusual behavior from trusted apps and users.
  - **False positive** for types of alerts that were created even when there's no malicious activity or for a false alarm. Use the options in this category to classify alerts that are mistakenly identified as normal events or activities as malicious or suspicious. Unlike alerts for 'Informational, expected activity', which can also be useful for catching real threats, you generally don't want to see these alerts again. Classifying alerts as false positive helps Microsoft 365 Defender improve its detection quality.
- A comment on the alert.

> [!NOTE]
> Around August 29th, 2022, previously supported alert determination values ('Apt' and 'SecurityPersonnel') will be deprecated and no longer available via the API.

> [!NOTE]
> One way of managing alerts it through the use of tags. The tagging capability for Microsoft Defender for Office 365 is incrementally being rolled out and is currently in preview.
>
> Currently, modified tag names are only applied to alerts created *after* the update. Alerts that were generated before the modification will not reflect the updated tag name.

To manage a *set of alerts similar to a specific alert*, select **View similar alerts** in the **INSIGHT** box in the summary details section of the alert page.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-manage-select.png" lightbox="../../media/investigate-alerts/alerts-ss-alerts-manage-select.png" alt-text="Manage an alert in the Microsoft 365 Defender portal":::

From the **Manage alerts** pane, you can then classify all of the related alerts at the same time. Here's an example.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-select-related.png" lightbox="../../media/investigate-alerts/alerts-ss-alerts-select-related.png" alt-text="Managing related alerts in the Microsoft 365 Defender portal":::

If similar alerts were already classified in the past, you can save time by using Microsoft 365 Defender recommendations to learn how the other alerts were resolved. From the summary details section, select **Recommendations**.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-recommendations.png" lightbox="../../media/investigate-alerts/alerts-ss-alerts-recommendations.png" alt-text="Example of selecting recommendations for an alert":::

The **Recommendations** tab provides next-step actions and advice for investigation, remediation, and prevention. Here's an example.

:::image type="content" source="../../media/investigate-alerts/alerts-ss-alerts-recommendations-example.png" lightbox="../../media/investigate-alerts/alerts-ss-alerts-recommendations-example.png" alt-text="Example of alert recommendations":::

## Suppress an alert

As a security operations center (SOC) analyst, one of the top issues is triaging the sheer number of alerts that are triggered daily. For lower priority alerts, an analyst is still required to triage and resolve the alert which tends to be a manual process. A SOC analyst's time is valuable, wanting to focus only on high severity and high priority alerts.

Alert suppression provides the ability to tune and manage alerts in advance. This streamlines the alert queue and saves triage time by hiding or resolving alerts automatically, each time a certain expected organizational behavior occurs, and rule conditions are met.

You can create rule conditions based on 'evidence types' such as files, processes, scheduled tasks, and many other evidence types that trigger the alert. After creating the rule, user can apply the rule on the selected alert or any alert type that meets the rule conditions to suppress the alert.

> [!NOTE]
> Suppression of alerts is not recommended. However in certain situations, a known internal business application or security tests trigger an expected activity and you don't want to see these alerts. So, you can create a suppression rule for the alert.

### Create rule conditions to suppress alerts

To create a suppression rule for alerts:

1. Select the investigated alert. In the main alert page, select **Create suppression rule** in the summary details section of the alert page.

    :::image type="content" source="../../media/investigate-alerts/suppression-click.png" lightbox="../../media/investigate-alerts/suppression-click.png" alt-text="Screenshot of Create separation rule action.":::

2. In the **Create suppression rule** pane, select **Only this alert type** to apply the rule on the selected alert.

    However, to apply the rule on any alert type that meets rule conditions select **Any alert type based on IOC conditions**.

    IOCs are indicators such as files, processes, scheduled tasks, and other evidence types that trigger the alert.

    > [!NOTE]
    > You can no longer suppress an alert triggered by 'custom detection' source. You can't create a suppression rule for this alert.

3. In the **IOCs** section, select **Any IOC** to suppress the alert no matter what 'evidence' has caused the alert.

   To set multiple rule conditions, select **Choose IOCs**. Use **AND**, **OR** and grouping options to build relationship between these multiple 'evidence types' that cause the alert.

   1. For example, in the **Conditions** section, select the triggering evidence **Entity Role: Triggering**, **Equals** and select the evidence type from the drop-down list.

      :::image type="content" source="../../media/investigate-alerts/evidence-types-drop-down-list.png" alt-text="Screenshot of evidence types drop-down list." lightbox="../../media/investigate-alerts/evidence-types-drop-down-list.png":::

   2. All the properties of this 'evidence' will auto populate as a new subgroup in the respective fields below.

      :::image type="content" source="../../media/investigate-alerts/properties-evidence.png" alt-text="Screenshot of properties of evidence auto-populating." lightbox="../../media/investigate-alerts/properties-evidence.png" :::

      > [!NOTE]
      > Condition values are not case sensitive.

   3. You can edit and/or delete properties of this 'evidence' as per your requirement (using wildcards, when supported).

   4. Other than files and processes, AntiMalware Scan Interface (AMSI) script, Windows Management Instrumentation (WMI) event, and scheduled tasks are some of the newly added evidence types that you can select from the evidence types drop-down list.

      :::image type="content" source="../../media/investigate-alerts/other-evidence-types.png" alt-text="Screenshot of other types of evidence." lightbox="../../media/investigate-alerts/other-evidence-types.png":::

   5. To add another IOC, click **Add filter**.

      > [!NOTE]
      > Adding at least one IOC to the rule condition is required to suppress any alert type.

4. Alternatively, you can select **Auto fill all alert 7 related IOCs** in the **IOC** section to add all alert related evidence types and their properties at once in the **Conditions** section.

   :::image type="content" source="../../media/investigate-alerts/autofill-iocs.png" alt-text="Screenshot of auto fill all alert related IOCs." lightbox="../../media/investigate-alerts/autofill-iocs.png":::

5. In the **Scope** section, set the Scope in the **Conditions** sub-section by selecting specific device, multiple devices, device groups, the entire organization or by user.

   > [!NOTE]
   > You must have Admin permission when the **Scope** is set only for **User**. Admin permission is not required when the **Scope** is set for **User** together with **Device**, **Device groups**.

   :::image type="content" source="../../media/investigate-alerts/suppression-choose-scope.png" lightbox="../../media/investigate-alerts/suppression-choose-scope.png" alt-text="Screenshot of create suppression rule pane: Conditions, Scope, Action.":::

6. In the **Action** section, take the appropriate action of either **Hide alert** or **Resolve alert**.

   Enter **Name**, **Comment**,  and click **Save**.

7. **Prevent the IOCs from being blocked in the future:**

   Once you save the suppression rule, in the **Successful suppression rule creation** page that appears, you can add the selected IOCs as indicators to the "allow list" and prevent them from being blocked in the future.

   All alert-related IOCs will be shown in the list.

   IOCs that were selected in the suppression conditions will be selected by default.

   1. For example, you can add files to be allowed to the **Select evidence (IOC) to allow**. By default the file that triggered the alert is selected.
   2. Enter the scope to the **Select scope to apply to**. By default scope for the related alert is selected.
   3. Click **Save**. Now the file is not blocked as it is in the allow list.

   :::image type="content" source="../../media/investigate-alerts/suppression-2-choose-iocs.png" lightbox="../../media/investigate-alerts/suppression-2-choose-iocs.png" alt-text="Screenshot of successful suppression rule creation. ":::

8. The new suppression alert functionality is available by default.

   However, you can switch back to the previous experience in Microsoft 365 Defender portal by navigating to **Settings > Endpoints > Alert suppression**, then switch off the **New suppression rules creation enabled** toggle.

   :::image type="content" source="../../media/investigate-alerts/suppression-toggle.png" lightbox="../../media/investigate-alerts/suppression-toggle.png" alt-text="Screenshot of toggle for turning on/off the suppression rule creation feature.":::

   > [!NOTE]
   > Soon, only the new alert suppression experience will be available. You will not be able to go back to the previous experience.

9. **Edit existing rules:**

   You can always add or change rule conditions and scope of new or existing rules in Microsoft Defender portal, by selecting the relevant rule and clicking **Edit rule**.

   To edit existing rules, ensure that the **New suppression rules creation enabled** toggle is enabled.

   :::image type="content" source="../../media/investigate-alerts/suppression-toggle-on-edit.png" lightbox="../../media/investigate-alerts/suppression-toggle-on-edit.png" alt-text="Screenshot of edit suppression rule.":::

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

Watch this short video to learn how automation works efficiently to create a smooth workflow and how to connect Power Automate to Defender for Cloud Apps.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWFIRn]

## Next steps

As needed for in-process incidents, continue your [investigation](investigate-incidents.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Manage incidents](manage-incidents.md)
- [Investigate incidents](investigate-incidents.md)
- [Investigate data loss incidents](investigate-dlp.md)
