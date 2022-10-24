---
title: Investigate insider risk management activities
description: Learn about investigating insider risk management activities in Microsoft Purview
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection:
- tier1
- purview-compliance
ms.custom: admindeeplinkCOMPLIANCE
---

# Investigate insider risk management activities

>[!IMPORTANT]
>Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

Investigating risky user activities is an important first step in minimizing insider risks for your organization. These risks may be activities that generate alerts from insider risk management policies, or risks from activities that are detected by policies but don't immediately create an insider risk management alert for users. You can investigate these types of activities by using the **User activity reports** or with the **Alert dashboard**.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## User activity reports

User activity reports allow you to examine activities for specific users for a defined time period without having to assign them temporarily or explicitly to an insider risk management policy. In most insider risk management scenarios, users are explicitly defined in policies, and they may have policy alerts (depending on triggering events) and risk scores associated with the activities. But in some scenarios, you may want to examine the activities for users that aren't explicitly defined in a policy. These activities may be for users that you've received a tip about the user and potentially risky activities, or users that typically don't need to be assigned to an insider risk management policy.

After you've configured indicators on the insider risk management **Settings** page, user activity is detected for risky activity associated with the selected indicators. You don't have to configure a policy for user activity reports to detect and report risky activities by users in your organization. Activities included in user activity reports don't require triggering events for the activities to be displayed. This configuration means that all detected activity for the user is available for review, regardless if it has a triggering event or if it creates an alert. Reports are created on a per-user basis and can include all activities for a custom 90-day period. Multiple reports for the same user aren't supported.

After examining activities for a user, investigators can dismiss individual activities as benign, share or email a link to the report with other investigators, or choose to assign the user temporarily or explicitly to an insider risk management policy. Users must be assigned to the *Insider Risk Management Investigators* role group to view the **User activity reports** page.  

![Insider risk management user activity report overview.](../media/insider-risk-user-activity-report-overview.png)

You can get started by selecting **Manage reports** in the **Investigate user activity** section on the insider risk management **Overview** page. To view activities for a user, first select **Create user activity report** and complete the following fields in the **New user activity report** pane:

- **User**: Search for a user by name or email address.
- **Start date**: Use the calendar control to select the start date for user activities.
- **End date**: Use the calendar control to select the end date for user activities. The end date selected must be greater than two days after the selected start date and no greater than 90 days from the selected start date.
New reports typically take up to 10 hours before they're ready for review. When the report is ready, you'll see *Report ready* in the **Status** column on the User activity report page. Select the user to view the detailed report:

![Insider risk management user activity report.](../media/insider-risk-user-activity-report.png)

The **User activity report** for the selected user contains the **User activity**, **Activity explorer**, and **Forensic evidence (preview)** tabs:

- **User activity**: Use this chart view to investigate activities and view potential activities that occur in sequences. This tab is structured to enable quick review of a case, including a historical timeline of all activities, activity details, the current risk score for the user in the case, the sequence of risk events, and filtering controls to help with investigative efforts.
- **Activity explorer**: The **Activity explorer** tab provides risk investigators with a comprehensive analytic tool that provides detailed information about activities. With the Activity explorer, reviewers can quickly review a timeline of detected risky activity and identify and filter all risk activities associated with alerts. To learn more about using the Activity explorer, see the *Activity explorer* section later in this article.
- **Forensic evidence (preview)**: The **Forensic evidence (preview)** tab provides access to forensic evidence captures associated with activities that may result in security incidents for users. Forensic evidence enables customizable visual capturing across devices to help your organization better mitigate, understand, and respond to potential data risks like unauthorized data exfiltration of sensitive data. To learn more about using forensic evidence, see [Learn about insider risk management forensic evidence](/microsoft-365/compliance/insider-risk-management-forensic-evidence).

## Alert dashboard

Insider risk management alerts are automatically generated by risk indicators defined in insider risk management policies. These alerts give compliance analysts and investigators an all-up view of the current risk status and allow your organization to triage and take actions for discovered risks. By default, policies generate a certain amount of low, medium, and high severity alerts, but you can [increase or decrease the alert volume](insider-risk-management-settings.md#alert-volume) to suit your needs. Additionally, you can configure the [alert threshold for policy indicators](insider-risk-management-settings.md#indicator-level-settings-preview) when creating a new policy with the policy creation tool.

Check out the [Insider Risk Management Alerts Triage Experience video](https://www.youtube.com/watch?v=KgmpxBLJLPI) for an overview of how alerts provide details, context, and related content for risky activity and how to make your investigation process more effective.

The insider risk **Alert dashboard** allows you to view and act on alerts generated by insider risk policies. Each report widget displays information for the last 30 days.

- **Total alerts that need review**: The total number of alerts needing review and triage are listed, including a breakdown by alert severity.
- **Open alerts over past 30 days**: The total number of alerts created by policy matches over the last 30 days, sorted by high, medium, and low alert severity levels.
- **Average time to resolve alerts**: A summary of useful alert statistics:
  - Average time to resolve high severity alerts, listed in hours, days, or months.
  - Average time to resolve medium severity alerts, listed in hours, days, or months.
  - Average time to resolve low severity alerts, listed in hours, days, or months.

![Insider risk management alert dashboard.](../media/insider-risk-alerts-dashboard.png)

> [!NOTE]
> Insider risk management uses built-in alert throttling to help protect and optimize your risk investigation and review experience. This throttling guards against issues that might result in an overload of policy alerts, such as misconfigured data connectors or DLP policies. As a result, there might be a delay in displaying new alerts for a user.

## Alert status and severity

You can triage alerts into one of the following statuses:

- **Confirmed**: An alert confirmed and assigned to a new or existing case.
- **Dismissed**: An alert dismissed as benign in the triage process. You can provide a reason for the alert dismissal and include notes that are available in the user's alert history to provide additional context for future reference or for other reviewers. These reasons could range from expected activities, non-impactful events, simply reducing the number of alert activities for the user, or a reason related to the alert notes. Reason classification choices include *Activity is expected for this user*, *Activity is impactful enough for me to investigate further*, and *Alerts for this user contain too much activity*.
- **Needs review**: A new alert where triage actions haven't yet been taken.
- **Resolved**: An alert that is part of a closed and resolved case.

Alert risk scores are automatically calculated from several risk activity indicators. These indicators include the type of risk activity, the number and frequency of the activity occurrence, the history of user risk activity, and the addition of activity risks that may boost the seriousness of the activity. The alert risk score drives the programmatic assignment of a risk severity level for each alert and can't be customized. If alerts remain untriaged and risk activities continue to accrue to the alert, the risk severity level can increase. Risk analysts and investigators can use alert risk severity to help triage alerts in accordance with your organization's risk policies and standards.

Alert risk severity levels are:

- **High severity**: The activities and indicators for the alert pose significant risk. The associated risk activities are serious, repetitive, and corelate strongly to other significant risk factors.
- **Medium severity**: The activities and indicators for the alert pose a moderate risk. The associated risk activities are moderate, frequent, and have some correlation to other risk factors.
- **Low severity**: The activities and indicators for the alert pose a minor risk. The associated risk activities are minor, more infrequent, and don't corelate to other significant risk factors.

## Filter alerts on the Alert dashboard

Depending on the number and type of active insider risk management policies in your organization, reviewing a large queue of alerts can be challenging. Using alert filters can help analysts and investigators sort alerts by several attributes. To filter alerts on the **Alerts dashboard**, select the **Filter** control. You can filter alerts by one or more attributes:

- **Status**: Select one or more status values to filter the alert list. The options are *Confirmed*, *Dismissed*, *Needs review*, and *Resolved*.
- **Severity**: Select one or more alert risk severity levels to filter the alert list. The options are *High*, *Medium*, and *Low*.
- **Time detected**: Select the start and end dates for when the alert was created. This filter searches for alerts between UTC 00:00 on the start date and UTC 00:00 on the end date. To filter alerts for a specific day, enter the date for the day in the **Start date** field and the date of the following day in the **End date** field.
- **Policy**: Select one or more policies to filter the alerts generated by the selected policies.
- **Risk factors**: Select one of more risk factors to filter the alert list. The options are *Cumulative exfiltration activities*, *Activities include priority content*, *Sequence activities*, and *Activities include unallowed domains*.

## Search alerts on the Alert dashboard

To search the alert name for a specific word, select the **Search** control and type the word to search. The search results display any policy alert containing the word defined in the search.

## Dismiss multiple alerts (preview)

It may help save triage time for analysts and investigators to immediately dismiss multiple alerts at once. The **Dismiss alerts** command bar option allows you to select one or more alerts with a *Needs review* status on the dashboard and quickly dismiss these alerts as benign as appropriate in your triage process. You can select up to 400 alerts to dismiss at one time.

To dismiss an insider risk alert, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management** and select the **Alerts** tab.
2. On the **Alerts dashboard**, select the alert (or alerts) with a *Needs review* status that you want to dismiss.
3. On the Alerts command bar, select **Dismiss alerts**.
4. On the **Dismiss alerts** detail pane, you can review the user and policy details associated with the selected alerts.
5. Select **Dismiss alerts** to resolve the alerts as benign or select **Cancel** to close the details pane without dismissing the alerts.

## Triage alerts

To triage an insider risk alert, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management** and select the **Alerts** tab.
2. On the **Alerts dashboard**, select the alert you want to triage.
3. On the **Alert detail** page, you can review information about the alert. You can confirm the alert and create a new case, confirm the alert and add to an existing case, or dismiss the alert. This page also includes the current status for the alert and the alert risk severity level, listed as High, Medium, or Low. The severity level may increase or decrease over time if the alert isn't triaged.

Use the following sections and tabs on the Alert detail page for more information about the alert:

### Header/Summary section

This section contains general information about the user and alert. This  information is available for context while reviewing detailed information about the detected activity included in the alert for the user:

- **Activity that generated this alert**: Displays the top risk activity and policy match during the activity evaluation period that led to the alert being generated.
- **Triggering event**: Displays the most recent triggering event that prompted the policy to start assigning risk scores to the user's activity. If you've configured [integration with communication compliance](/microsoft-365/compliance/communication-compliance-policies#integration-with-insider-risk-management-preview) for *Data leaks by disgruntled users* or *Security policy violations by disgruntled users* policies, the triggering event for these alerts will be scoped to communication compliance activity.
- **User profile**: Displays general information about the user assigned to the alert. If anonymization is enabled, the username, email address, alias, and organization fields are anonymized.
- **User alert history**: Displays a list of alerts for the user for the last 30 days. Includes a link to view the complete alert history for the user.

Alerts generated from policies scoped to only activities that include [priority content](/microsoft-365/compliance/insider-risk-management-policies#prioritize-content-in-policies) include the *Only activity with priority content was scored for this alert* notification in this section.

### All risk factors

This tab opens the summary of risk factors for the user's alert activity. Risk factors can help you determine how risky this user's activity is during your review. The risk factors include summaries for:

- **Top exfiltration activities**: Displays exfiltration activities with the highest number or events for the alert.
- **Cumulative exfiltration activities**: Displays events associated with cumulative exfiltration activity detection (CEAD).
- **Sequences of activities**: Displays the detected activities associated with risk sequences.
- **Unusual activity for this user**: Displays activities for the user that are considered unusual and a departure from their usual activities.
- **Priority content**: Displays activities associated with priority content.
- **Unallowed domains**: Displays activities for events associated with unallowed domains.
- **Health record access**: Displays activities for events associated with accessing health records.
- **Risky browser usage**: Displays activities for events associated with browsing to potentially inappropriate websites.

With these filters, you'll only see alerts with these risk factors, but the activity that generated an alert might not fall into any of these categories. For example, an alert containing sequence activities might have been generated simply because the user copied a file to a USB device.

### Content detected

The section on the **All risk factors** tab includes content associated with the risk activities for the alert and summarizes activity events by key areas. Selecting an activity link opens the Activity explorer and displays more details about the activity.

### Activity explorer

This tab opens the Activity explorer. For more information, see the Activity explorer  section in this article.

### User activity

The **User activity** chart is one of the most powerful tools for internal risk analysis and investigation for alerts and cases in the insider risk management solution. This tab is structured to enable quick review of all activities for a user, including a historical timeline of all alerts, alert details, the current risk score for the user, and the sequence of risk events.  

![Insider risk management user activity.](../media/insider-risk-user-activities.png)

1. **Time filters**: By default, the last three months of activities displayed in the User activity chart. You can easily filter the chart view by selecting the *6 Months*, *3 Months*, or *1 Month* tabs on the bubble chart.
2. **Risk alert activity and details**: Risk activities are visually displayed as colored bubbles in the User activity chart. Bubbles are created for different categories of risk and. Select a bubble to display the details for each risk activity. Details include:
    - **Date** of the risk activity.
    - The **risk activity category**. For example, *Email(s) with attachments sent outside the organization* or *File(s) downloaded from SharePoint Online*.
    - **Risk score** for the alert. This score is the numerical score for the alert risk severity level.
    - Number of events associated with the alert. Links to each file or email associated with the risk activity are also available.
3. **Filters and sorting (preview)**:
    - **Risk category**: Filter activities by the following risk categories: *Activities with risk scores > 15 (unless in a sequence)* and *Sequence activities*.
    - **Activity Type**: Filter activities by the following types: *Access*, *Deletion*, *Collection*, *Exfiltration*, *Infiltration*, *Obfuscation*, and *Security*.
    - **Sort by**: List the timeline activities by *Date occurred* or *Risk score*.
4. **Risk sequence**: The chronological order of risky activities is an important aspect of risk investigation and identifying these related activities is an important part of evaluating overall risk for your organization. Alert activities that are related are displayed with connecting lines to highlight that these activities are associated with a larger risk area. Sequences are also identified in this view by an icon positioned above the sequence activities relative to the risk score for the sequence. Hover over the icon to see the date and time of the risky activity associated with this sequence. This view of activities can help investigators literally 'connect the dots' for risk activities that could have been viewed as isolated or one-off events. Select the icon or any bubble in the sequence to display details for all the associated risk activities. Details include:

    - **Name** of the sequence.
    - **Date** or **Date range** of the sequence.
    - **Risk score** for the sequence. This score is the numerical score for the sequence of the combined alert risk severity levels for each related activity in the sequence.
    - **Number of events associated with each alert in the sequence**. Links to each file or email associated with each risk activity are also available.
    - **Show activities in sequence**. Displays sequence as a highlight line on the bubble chart and expands the alert details to display all related alerts in the sequence.

5. **Risk activity legend**: Across the bottom of the user activity chart, a color-coded legend helps you quickly determine risk category for each alert.
6. **Risk activity chronology**: The full chronology of all risk alerts associated with the case are listed, including all the details available in the corresponding alert bubble.
7. **Case actions**: Options for resolving the case are on the case action toolbar. When viewing in a case, you can resolve a case, send an email notice to the user, or escalate the case for a data or user investigation.

## Activity explorer

> [!NOTE]
> Activity explorer is available in the alert management area for users with triggering events after this feature is available in your organization.

The Activity explorer provides risk investigators and analysts with a comprehensive analytic tool that provides detailed information about alerts. With the Activity explorer, reviewers can quickly review a timeline of detected risky activity and identify and filter all risk activities associated with alerts.

To filter alerts on the Activity explorer for column information, select the Filter control. You can filter alerts by one or more attributes listed in the details pane for the alert. Activity explorer also supports customizable columns to help investigators and analysts focus the dashboard on the information most important to them.

Use the *Activity scope* and *Risk insight* filters to display and sort activities and insights for the following areas.

- **Activity scope filters**: Filters all scored activities for the user.
  - All scored activity for this user
  - Only scored activity in this alert

- **Risk factor filters**: Filters for risk factor activity applicable for all policies assigning risk scores This includes all activity for all policies for in-scope users.
  - Unusual activity
  - Includes events with priority content
  - Includes events with unallowed domain
  - Sequence activities
  - Cumulative exfiltration activities
  - Health record access activities
  - Risky browser usage

![Insider risk management activity explorer overview.](../media/insider-risk-activity-explorer.png)

To use the **Activity explorer**, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management** and select the **Alerts** tab.
2. On the **Alerts dashboard**, select the alert you want to triage.
3. On the **Alerts detail pane**, select **Open expanded view**.
4. On the page for the selected alert, select the **Activity explorer** tab.

When reviewing activities in the Activity explorer, investigators and analysts can select a specific activity and open the activity details pane. The pane displays detailed information about the activity that investigators and analysts can use during the alert triage process. Detailed information may provide context for the alert and assist with identifying the full scope of the risk activity that triggered the alert.

When selecting an activity's events from the activity timeline, the number of activities displayed in the explorer might not match the number of activity events listed in the timeline. Examples of why this difference may occur:

- **Cumulative exfiltration detection**: Cumulative exfiltration detection analyzes event logs, but applies a model that includes de-duplicating similar activities to compute cumulative exfiltration risk. Additionally, there may also be a difference in the number of activities displayed in the Activity explorer if you have made changes to your existing policy or settings. For example, if you modify allowed/unallowed domains or add new file type exclusions after a policy has been created and activity matches have occurred, the cumulative exfiltration activities detection (CEAD) will differ from the results before the policy or settings changes. Cumulative exfiltration activity detection (CEAD) totals are based on the policy and settings configuration at the time of computation and don't include activities prior to the policy and settings changes
- **Emails to external recipients**: Activity for emails sent to external recipients is assigned a risk score based on the number of emails sent, which may not match the activity event logs.

![Insider risk management activity explorer details.](../media/insider-risk-activity-explorer-details.png)

## Create a case for an alert

As alert is reviewed and triaged, you can create a new case to further investigate the risk activity. To create a case for an alert, follow these steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management** and select the **Alerts** tab.
2. On the **Alerts dashboard**, select the alert you want to confirm and create a new case for.
3. On the **Alerts details pane**, select **Actions** > **Confirm alerts & create case**.
4. On the **Confirm alert and create insider risk case** dialog, enter a name for the case, select users to add as contributors, and add comments as applicable. Comments are automatically added to the case as a case note.
5. Select **Create case** to create a new case or select **Cancel** to close the dialog without creating a case.

After the case is created, investigators and analysts can manage and act on the case. For more information, see the [Insider risk management case](insider-risk-management-cases.md) article.

## Retention and item limits

As insider risk management alerts age, their value to minimize risky activity diminishes for most organizations. Conversely, active cases and associated artifacts (alerts, insights, activities) are always valuable to organizations and shouldn't have an automatic expiration date. This includes all future alerts and artifacts in an active status for any user associated with an active case.

To help minimize the number of older items that provide limited current value, the following retention and limits apply for insider risk management alerts, cases, and user activity reports:

|**Item**|**Retention/Limit**|
|:-------|:------------------|
|Alerts with Needs review status|120 days from alert creation, then automatically deleted|
|Active cases (and associated artifacts)|Indefinite retention, never expire|
|Resolved cases (and associated artifacts)|120 days from case resolution, then automatically deleted|
|Maximum number of active cases|100|
|User activities reports|120 days from activity detection, then automatically deleted|

## Get help managing your insider risk alert queue

Reviewing, investigating, and acting on insider risk alerts are important parts of minimizing insider risks in your organization. Quickly taking action to minimize the impact of these risks can potentially save time, money, and regulatory or legal ramifications for your organization. In this remediation process, the first step of reviewing alerts can seem like the most difficult task for many analysts and investigators. Depending on your circumstances, you may be facing some minor obstacles when acting on insider risk alerts. Review the following recommendations and learn how to optimize the alert review process.

### Too many alerts to review

Becoming overwhelmed with the number of alerts produced by your insider risk management policies could be frustrating. The number of alerts can be quickly addressed with simple steps, depending on the types of alert volume you're receiving. You may be receiving too many valid alerts or have too many stale low-risk alerts. Consider taking the following actions:

- **Adjust your insider risk policies**: Selecting and configuring the correct insider risk policy is the most basic method to address the type and volume of alerts. Starting with the appropriate [policy template](insider-risk-management-policies.md#policy-templates) helps focus the types of risk activities and alerts you'll see. Other factors that may impact alert volume are the size of the in-scope user and groups and the content and [channels that are prioritized](insider-risk-management-policies.md#prioritize-content-in-policies). Consider adjusting policies to refine these areas to what is most important for your organization.
- **Modify your insider risk settings**: Insider risk settings include a wide variety of configuration options that can impact the volume and types of alerts you'll receive. These include settings for [policy indicators](insider-risk-management-settings.md#indicators), [indicator thresholds](insider-risk-management-settings.md#indicator-level-settings-preview), and [policy timeframes](insider-risk-management-settings.md#policy-timeframes). Consider configuring [intelligent detections](insider-risk-management-settings.md#intelligent-detections) options to exclude specific file types and sensitive info types, define minimum thresholds before activity alerts are reported by your policies, and change the alert volume configuration to a lower setting.
- **Enable inline alert customization (preview)**: Enabling [inline alert customization](/microsoft-365/compliance/insider-risk-management-settings#inline-alert-customization-preview) allows analysts and investigators to quickly edit policies when reviewing alerts. They can update thresholds for activity detection with Microsoft recommendations, configure custom thresholds, or choose to ignore the type of activity that created the alert. If this is not enabled, then only users assigned to the *Insider Risk Management* role group can use inline alert customization.
- **Bulk deletion of alerts where applicable**: It may help save triage time for your analysts and investigators to immediately [dismiss multiple alerts](insider-risk-management-activities.md#dismiss-multiple-alerts-preview) at once. You can select up to 400 alerts to dismiss at one time.

### Not familiar with the alert triage process

Investigating and acting on alerts in insider risk management is straightforward:

1. **Review the [Alert dashboard](insider-risk-management-activities.md#alert-dashboard) for alerts with a status of Needs review**. [Filter](insider-risk-management-activities.md#filter-alerts-on-the-alert-dashboard) by alert *Status* if needed to help locate these types of alerts.
2. **Start with the alerts with the highest severity**. [Filter](insider-risk-management-activities.md#filter-alerts-on-the-alert-dashboard) by alert *Severity* if needed to help locate these types of alerts.
3. **Select an alert to discover more information and to review the alert details**. If needed, use the [Activity explorer](insider-risk-management-activities.md#activity-explorer) to review a timeline of the associated risky behavior and to identify all risk activities for the alert.
4. **Act on the alert**. You can either confirm and [create a case](insider-risk-management-activities.md#create-a-case-for-an-alert) for the alert or dismiss and resolve the alert.

### Resource constraints in my organization

Modern workplace users often have a wide variety of responsibilities and demands on their time. There are several actions you can take to help address resource constraints:

- **Focus analyst and investigator efforts on the highest risk alerts first**. Depending on your policies, you may be capturing activities and generating alerts with varying degrees of potential impact to your risk mitigation efforts. [Filter alerts](insider-risk-management-activities.md#filter-alerts-on-the-alert-dashboard) by severity and prioritize *High severity* alerts.
- **Assign users as analysts and investigators**. Having the right user assigned to the proper roles is an important part of the insider risk alert review process. Make sure you've assigned the appropriate users to the *Insider Risk Management Analysts* and *Insider Risk Management Investigators* role groups.  
- **Use automated insider risk features to help discover the highest risk activities**. Insider risk management [sequence detection](insider-risk-management-policies.md#sequence-detection-preview) and [cumulative exfiltration detection](insider-risk-management-policies.md#cumulative-exfiltration-detection-preview) features can help you quickly discover harder to find risks in your organization. Consider fine-tuning your [risk score boosters](insider-risk-management-settings.md#indicators), [file type exclusions](insider-risk-management-settings.md#file-type-exclusions), [domains](insider-risk-management-settings.md#domains), and the minimum [indicator threshold settings](insider-risk-management-settings.md#indicator-level-settings-preview) for your policies.
