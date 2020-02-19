---
title: Insider risk management policies
description: Learn about insider risk management policies in Microsoft 365
keywords: Microsoft 365, insider risk management, risk management, compliance
localization_priority: Normal
ms.prod: Microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: m365-security-compliance
---

# Insider risk management policies

Insider risk management policies determine which employees are in-scope and which types of risk indicators are configured for alerts. You can quickly create a policy that applies to all users in your organization, or define individual users or groups for management in a policy. Policies support content priorities to focus policy conditions on multiple or specific Microsoft Teams, SharePoint sites, data sensitivity types, and data labels. Using templates, they include specific risk indicators and how much weight they are assigned within a policy, effectively determining the weight of each alert trigger in the policy. Policies windows allow you to define the time frame to apply the policy to alert activities and are used to determine the duration of the policy once activated. The maximum policy limit is five active policies at the same time. However, you can configure additional policies and activate and deactivate policies as needed.

## Policy dashboard

The **Policy dashboard** allows you to quickly see the policies in your organization and the current status of alerts associated with each policy.

- **Policy name**: The name assigned to the policy in the policy wizard.
- **Active alerts**: The number of active alerts for each policy.
- **Confirmed alerts**: The total number of alerts the resulted in cases from the policy in the last 365 days.
- **Actions taken on alerts**: The total number of alerts that were confirmed or dismissed for the last 365 days.
- **Policy effectiveness**: The percentage determined by total confirmed alerts divided by total actions taken on alerts (which is the sum of alerts that were confirmed or dismissed over the past year).
- **Active**: The status of the case, either *Yes* or *No*.

![Insider risk management policy dashboard](../media/insider-risk-policy-dashboard.png)

## Policy templates

Insider risk management templates are pre-defined policy conditions that define the types of risk indicators monitored by a policy. Each policy must have a template assigned in the policy creation wizard before the policy is created. When you create a new insider risk policy, you'll choose from one of the following templates.

### Departing employee data theft

When employees leave your organization, there are specific risk indicators typically associated with data theft by departing employees. This policy template prioritizes these indicators and focuses detection and alerts to this risk area. Data theft for departing employees may include downloading files from SharePoint Online, copying files to portable devices such as USB drives, printing files, and copying data to personal cloud messaging and storage services near their employment resignation and end dates. This template prioritizes risk indicators relating to these activities and how they correlate with employee employment status.

>[!IMPORTANT]
>When using this template, you must configure a Microsoft 365 HR connector to periodically import resignation and termination date information for employees in your organization. See the [Import data with the HR Connector](import-hr-data.md) topic for step-by-step guidance to configure the Microsoft 365 HR Connector for your organization.

### Data leaks

Protecting data and preventing data leaks is a constant challenge for most organizations, particularly with the rapid grow of new data created by employees, devices, and services. Employees are empowered to create, store, and share information across services and devices that make managing data leaks increasingly more complex and difficult. Data leaks can include accidental oversharing of information outside your organization or data theft with malicious intent. This template prioritizes real-time detection of suspicious SharePoint Online data downloads, file and folder sharing, copying files to portable devices such as USB drives, printing files, and copying data to personal cloud messaging and storage services.

>[!IMPORTANT]
>When using this template, you must configure at least one Data Loss Prevention (DLP) policy to define sensitive information in your organization. See the [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md) topic for step-by-step guidance to configure DLP policies for your organization.

### Offensive language in email

Detecting and taking action to prevent offensive and abusive behavior is a critical component of preventing risk. Built-in offensive language classifiers in Microsoft 365 can scan sent email messages from Exchange Online mailboxes in your organization for different types of compliance issues. These classifiers use a combination of artificial intelligence and keywords to identify language in email likely to violate anti-harassment policies. Use this template to quickly create a policy that uses these classifiers to automatically detect email message content that may be considered abusive or offensive. Insider risk management uses classifiers that scan sent email messages for English language terms and sentiment for offensive language.

## Policy settings

Insider risk settings apply to all insider risk management policies, regardless of the template you chose when creating a policy. Settings are configured using the **Insider risk settings* control located at the top of all insider risk management tabs. These settings control privacy, indicators, monitoring windows, and intelligent detections.

### Privacy

Protecting the privacy of users that have policy matches is important and can help promote objectivity in data investigation and analysis reviews for insider risk alerts. For users with insider risk policy matches, you can choose one of the following settings:

- **Show anonymized versions of usernames**: User names are anonymized to prevent admins, data investigators, and reviewers from seeing who is associated with policy alerts. For example, a user 'Grace Taylor' would appear with a randomized psuedonym such as 'AnonIS8-988' in all areas of the insider risk management experience. Choosing this setting anonymizes all users with current and past policy matches and applies to all policies. User profile information in the insider risk alert and case details will not be available when this option is chosen. However, usernames are displayed when adding new users to existing policies or when assigning users to new policies. If you choose to turn this setting off, usernames will be displayed for all users that have current or past policy matches.
- **Do not show anonymized versions of usernames**: Usernames are displayed for all current and past policy matches for alerts and cases. User profile information (the name, title, alias, and organization or department) is displayed for the user for all insider risk management alerts and cases.

### Indicators

Insider risk policy templates define the type of risk activities that you want to detect and investigate. Each policy template is based on specific indicators that correspond to particular risk activities and alerts are triggered by policies when users perform activities related to these indicators. In some cases, you may want to limit the indicators that are applied to insider risk policies in your organization. You can turn off the indicators for specific areas by disabling them from all insider risk policies.

To define the indicators that are displayed in the insider risk policy wizard, select the appropriate indicators in **Insider risk settings** > **Indicators**. The indicators selected on the **Indicators** settings page can be individually configured when creating or editing an insider risk policy in the policy wizard.

### Policy timeframes

Policy timeframes allow you to define past and future review periods that are triggered after policy matches based on events and activities for the insider risk management policy templates. Depending on the policy template you choose, the following policy timeframes are available:

- **In-scope timespan**: Available for all policy templates, the *In-scope timespan* is the defined number of days that the window activates **after** a triggering event. The window activates for 1 to 30 days after a triggering event occurs for any user assigned to the policy. For example, you've configured an insider risk management policy and set the *In-scope timespan* to 30 days. Several months have passed since you configured the policy and a triggering event occurs for one of the users included in the policy. The triggering event activates the *In-scope timespan* and the policy is active for that user for 30 days after the triggering event occurred.
- **Historic timespan**: Available for all policy templates, the *historic timespan* is the defined number of days that the window activates **before** a triggering event. The window activates for 0 to 180 days before a triggering event occurs for any user assigned to the policy. For example, you've configured an insider risk management policy and set the *Historic timespan* to 90 days. Several months have passed since you configured the policy and a triggering event occurs for one of the users included in the policy. The triggering event activates the *Historic timespan* and the policy gathers historic activities for that user for 90 days prior to the triggering event.

### Intelligent detections

Intelligent detection settings help refine how the detection of risky activities are processed for alerts. In certain circumstances, you may need to define files types to ignore or you want to enforce a detection level for files to help define a minimum bar for alerts. When using offensive language policies, you may need to increase or decrease the detection sensitivity to control the amount of reported policy matches. Use these settings to control file type exclusions, file volume limits, and the offensive language detection sensitivity:

#### Anomaly detections

Anomalous detections include settings for file type exclusions and file volume limits.

- **File type exclusions**: To exclude specific file types from all insider risk management policy matching, enter file type extensions separated by commas. For example, to exclude certain types of music files from policy matches you may enter *aac,mp3,wav,wma* in the **File type exclusions** field. Files with these extensions would be ignored by all insider risk management policies.
- **File volume cut off limit**: To define a minimum file level before activity alerts are reported in insider risk policies, enter the number of files. For example, you would enter '10' if you do not want to generate insider risk alerts when a user downloads 10 files or less, even if the your policies consider this an anomaly.

#### Offensive language detections

To adjust the sensitivity of the offensive language classifier for policies using the *Offensive language in email* template, choose one of the following settings:

- **Low**: The lowest sensitivity level with the broadest range for detection offensive language and sentiment. The probability of false positives for offensive language matching is elevated.
- **Medium**: The mid-level sensitivity level with a balanced range for detection offensive language and sentiment. The probability of false positives for offensive language matching is average.
- **High**: The highest sensitivity level with a narrow range for detection offensive language and sentiment. The probability of false positives for offensive language matching is low.

## Create a new policy

To create a new insider risk management policy, you'll use the policy wizard in **Insider risk management** solution in the Microsoft 365 compliance center.

Complete the following steps to create a new policy:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. Select **Create policy** to open the policy wizard
3. On the **Name your policy and choose a template** page, complete the following fields:
    - **Name (required)**: Enter a friendly name for the policy
    - **Description (optional)**: Enter a description for the policy.
    - **Choose policy template (required)**: Select one of the [policy templates](insider-risk-management-policies.md#policy-templates) to define the types of risk indicators are monitored by the policy.

    >[!IMPORTANT]
    >If you select the *Data leaks* template, you'll need to configure at least one DLP policy that you'll assign later in the wizard. If you select the *Departing employee data theft* template, you'll need to configure the HR Connector to use the full signal detection features of the policy template.

4. Select **Next** to continue.
5. On the **Choose users and groups** page, select **Choose users or groups** to define which users are included in the policy or select **All users and mail-enabled groups** checkbox. Select **Next** to continue.
6. On the **Specify what content to prioritize (optional)** page, you can assign higher risk scores to detected activity based on where the related content is located, what sensitive info is included, and what sensitivity labels are applied:
    - SharePoint sites: Select **Choose SharePoint sites** and select the SharePoint organizations you want to prioritize. For example, *"group1@contoso.sharepoint.com/sites/group1"*.
    - Sensitive info type: Select **Choose sensitive info types** and select the sensitivity types you want to prioritize. For example, *"U.S. Bank Account Number"* and *"Credit Card Number"*.
    - Sensitivity labels: Select **Choose sensitivity labels** and select the labels you want to prioritize. For example, *"Confidential"* and *"Secret"*.
7. Select **Next** to continue.
8. On the **Alert indicators** page, you'll see the indicators that you've defined on the **Insider risk settings** > **Indicators** page. If you selected the *Data leaks* template at the beginning of the wizard, you must select a DLP policy from the **DLP policy** dropdown list.
9. On the **Select monitoring window** page, see the [monitoring window conditions](insider-risk-management-policies.md#monitoring-windows) that you defined on the **Insider risk settings** > **Policy timeframes** page.
10. Select **Next** to continue.
11. On the **Review** page, review the settings you've chosen for the policy. Select **Edit** to change any of the policy values or select **Submit** to create and activate the policy.

## Update a policy

To update an existing insider risk management policy, you'll use the policy wizard in **Insider risk management** solution in the Microsoft 365 compliance center.

Complete the following steps to manage an existing policy:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. On the policy dashboard, select the policy you want to manage.
3. On the policy details page, select **Edit policy**
4. In the policy wizard, you cannot edit the following fields:
    - **Name**: The friendly name for the policy
    - **Select playbook**: The template used to define the types of risk indicators monitored by the policy.
5. Enter a new description for the policy in the **Description** field. Select **Next** to continue.
6. On the **Choose users and groups** page, select **Choose users or groups** to define which users are included in the policy or select **All users and mail-enabled groups** checkbox. Select **Next** to continue
7. On the **Specify what content to prioritize (optional)** page, update the sources to prioritize for risky user activities:
    - SharePoint sites: Select **Choose SharePoint sites** and select the SharePoint organizations you want to prioritize. For example, *"group1@contoso.sharepoint.com/sites/group1"*.
    - Sensitive info type: Select **Choose sensitive info types** and select the sensitivity types you want to prioritize. For example, *"U.S. Bank Account Number"* and *"Credit Card Number"*.
    - Sensitivity labels: Select **Choose sensitivity labels** and select the labels you want to prioritize. For example, *"Confidential"* and *"Secret"*.
8. Select **Next** to continue.
9. On the **Alert indicators** page, you'll see the indicators that you've defined on the **Insider risk settings** > **Indicators** page. If you selected the *Data leaks* template at the beginning of the wizard, you must select a DLP policy from the **DLP policy** dropdown list.
10. On the **Select monitoring window** page, you'll define the [monitoring window conditions](insider-risk-management-policies.md#monitoring-windows) for the policy. Configure the monitoring windows as appropriate.
11. On the **Review** page, review the settings you've chosen for the policy. Select **Edit** to change any of the policy values or select **Submit** to update and activate the changes in the policy.

## Delete a policy

>[!NOTE]
>Deleting a policy does not delete active or archived alerts generated from the policy.

To delete an existing insider risk management policy, complete the following steps:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. On the policy dashboard, select the policy you want to manage.
3. Select **Delete** on the dashboard toolbar.
4. On the **Delete** dialog, Select **Yes** to delete the policy, or select **Cancel** to close the dialog.
