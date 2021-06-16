---
title: "Alert policies in the security and compliance centers"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
- MOE150
ms.assetid: 8927b8b9-c5bc-45a8-a9f9-96c732e58264
ms.custom: 
- seo-marvel-apr2020
description: "Create alert policies in the security and compliance center in Office 365 and Microsoft 365 to monitor potential threats, data loss, and permissions issues."
---

# Alert policies in the security and compliance center

You can use the alert policy and alert dashboard tools in the Microsoft 365 security and compliance centers to create alert policies and then view the alerts generated when users perform activities that match the conditions of an alert policy. There are several default alert policies that help you monitor activities such as assigning admin privileges in Exchange Online, malware attacks, phishing campaigns, and unusual levels of file deletions and external sharing.

Alert policies let you categorize the alerts that are triggered by a policy, apply the policy to all users in your organization, set a threshold level for when an alert is triggered, and decide whether to receive email notifications when alerts are triggered. There's also a **View alerts** page in the security and compliance center where you can view and filter alerts, set an alert status to help you manage alerts, and then dismiss alerts after you've addressed or resolved the underlying incident.

> [!NOTE]
> Alert policies are available for organizations with a Microsoft 365 Enterprise, Office 365 Enterprise, or Office 365 US Government E1/F1/G1, E3/F3/G3, or E5/G5 subscription. Advanced functionality is only available for organizations with an E5/G5 subscription, or for organizations that have an E1/F1/G1 or E3/F3/G3 subscription and a Microsoft Defender for Office 365 P2 or a Microsoft 365 E5 Compliance or an E5 eDiscovery and Audit add-on subscription. The functionality that requires an E5/G5 or add-on subscription is highlighted in this topic. Also note that alert policies are available in Office 365 GCC, GCC High, and DoD US government environments.

## How alert policies work

Here's a quick overview of how alert policies work and the alerts that are triggers when user or admin activity matches the conditions of an alert policy.

![Overview of how alert policies work](../media/e02a622d-b429-448b-8107-dd1a4770b4e0.png)

1. An admin in your organization creates, configures, and turns on an alert policy by using the **Alert policies** page in the security and compliance center. You can also create alert policies by using the [New-ProtectionAlert](/powershell/module/exchange/new-protectionalert) cmdlet in Security & Compliance Center PowerShell.

   To create alert policies, you have to be assigned the Manage Alerts role or the Organization Configuration role in the security and compliance center.

   > [!NOTE]
   > It takes up to 24 hours after creating or updating an alert policy before alerts can be triggered by the policy. This is because the policy has to be synced to the alert detection engine.

2. A user performs an activity that matches the conditions of an alert policy. In the case of malware attacks, infected email messages sent to users in your organization trigger an alert.

3. Microsoft 365 generates an alert that's displayed on the **View alerts** page in the Security & Compliance Center. Also, if email notifications are enabled for the alert policy, Microsoft sends a notification to a list of recipients. The alerts that an admin or other users can see that on the View alerts page is determined by the roles assigned to the user. For more information, see [RBAC permissions required to view alerts](#rbac-permissions-required-to-view-alerts).

4. An admin manages alerts in the security and compliance center. Managing alerts consists of assigning an alert status to help track and manage any investigation.

## Alert policy settings

An alert policy consists of a set of rules and conditions that define the user or admin activity that generates an alert, a list of users who trigger the alert if they perform the activity, and a threshold that defines how many times the activity has to occur before an alert is triggered. You also categorize the policy and assign it a severity level. These two settings help you manage alert policies (and the alerts that are triggered when the policy conditions are matched) because you can filter on these settings when managing policies and viewing alerts in the security and compliance center. For example, you can view alerts that match the conditions from the same category or view alerts with the same severity level.

To view and create alert policies, go to [https://protection.office.com](https://protection.office.com) and then select **Alerts** \> **Alert policies**.

![In the security and compliance center, select Alerts, then select Alert policies to view and create alert policies](../media/09ebd451-8e84-44e1-aefc-63e70bba4d97.png)

An alert policy consists of the following settings and conditions.

- **Activity the alert is tracking** - You create a policy to track an activity or in some cases a few related activities, such a sharing a file with an external user by sharing it, assigning access permissions, or creating an anonymous link. When a user performs the activity defined by the policy, an alert is triggered based on the alert threshold settings.

    > [!NOTE]
    > The activities that you can track depend on your organization's Office 365 Enterprise or Office 365 US Government plan. In general, activities related to malware campaigns and phishing attacks require an E5/G5 subscription or an E1/F1/G1 or E3/F3/G3 subscription with an [Defender for Office 365](../security/office-365-security/defender-for-office-365.md) Plan 2 add-on subscription.

- **Activity conditions** - For most activities, you can define additional conditions that must be met to trigger an alert. Common conditions include IP addresses (so that an alert is triggered when the user performs the activity on a computer with a specific IP address or within an IP address range), whether an alert is triggered if a specific user or users perform that activity, and whether the activity is performed on a specific file name or URL. You can also configure a condition that triggers an alert when the activity is performed by any user in your organization. The available conditions are dependent on the selected activity.

- **When the alert is triggered** - You can configure a setting that defines how often an activity can occur before an alert is triggered. This allows you to set up a policy to generate an alert every time an activity matches the policy conditions, when a certain threshold is exceeded, or when the occurrence of the activity the alert is tracking becomes unusual for your organization.

    ![Configure how alerts are triggered, based on when the activity occurs, a threshold, or unusual activity for your organization](../media/97ee1ed2-e7a9-47a2-a980-5f9f63872c65.png)

    If you select the setting based on unusual activity, Microsoft establishes a baseline value that defines the normal frequency for the selected activity. It takes up to seven days to establish this baseline, during which alerts won't be generated. After the baseline is established, an alert is triggered when the frequency of the activity tracked by the alert policy greatly exceeds the baseline value. For auditing-related activities (such as file and folder activities), you can establish a baseline based on a single user or based on all users in your organization; for malware-related activities, you can establish a baseline based on a single malware family, a single recipient, or all messages in your organization.

    > [!NOTE]
    > The ability to configure alert policies based on a threshold or based on unusual activity requires an E5/G5 subscription, or an E1/F1/G1 or E3/F3/G3 subscription with a Microsoft Defender for Office 365 P2, Microsoft 365 E5 Compliance, or Microsoft 365 eDiscovery and Audit add-on subscription. Organizations with an E1/F1/G1 and E3/F3/G3 subscription can only create alert policies where an alert is triggered every time that an activity occurs.

- **Alert category** - To help with tracking and managing the alerts generated by a policy, you can assign one of the following categories to a policy.

  - Data loss prevention

  - Information governance

  - Mail flow

  - Permissions

  - Threat management

  - Others

  When an activity occurs that matches the conditions of the alert policy, the alert that's generated is tagged with the category defined in this setting. This allows you to track and manage alerts that have the same category setting on the **View alerts** page in the security and compliance center because you can sort and filter alerts based on category.

- **Alert severity** - Similar to the alert category, you assign a severity attribute (**Low**, **Medium**, **High**, or **Informational**) to alert policies. Like the alert category, when an activity occurs that matches the conditions of the alert policy, the alert that's generated is tagged with the same severity level that's set for the alert policy. Again, this allows you to track and manage alerts that have the same severity setting on the **View alerts** page. For example, you can filter the list of alerts so that only alerts with a **High** severity are displayed.

    > [!TIP]
    > When setting up an alert policy, consider assigning a higher severity to activities that can result in severely negative consequences, such as detection of malware after delivery to users, viewing of sensitive or classified data, sharing data with external users, or other activities that can result in data loss or security threats. This can help you prioritize alerts and the actions you take to investigate and resolve the underlying causes.

- **Email notifications** - You can set up the policy so that email notifications are sent (or not sent) to a list of users when an alert is triggered. You can also set a daily notification limit so that once the maximum number of notifications has been reached, no more notifications are sent for the alert during that day. In addition to email notifications, you or other administrators can view the alerts that are triggered by a policy on the **View alerts** page. Consider enabling email notifications for alert policies of a specific category or that have a higher severity setting.

## Default alert policies

Microsoft provides built-in alert policies that help identify Exchange admin permissions abuse, malware activity, potential external and internal threats, and information governance risks. On the **Alert policies** page, the names of these built-in policies are in bold and the policy type is defined as **System**. These policies are turned on by default. You can turn off these policies (or back on again), set up a list of recipients to send email notifications to, and set a daily notification limit. The other settings for these policies can't be edited.

The following table lists and describes the available default alert policies and the category each policy is assigned to. The category is used to determine which alerts a user can view on the View alerts page. For more information, see [RBAC permissions required to view alerts](#rbac-permissions-required-to-view-alerts).

The table also indicates the Office 365 Enterprise and Office 365 US Government plan required for each one. Some default alert policies are available if your organization has the appropriate add-on subscription in addition to an E1/F1/G1 or E3/F3/G3 subscription.

| Default alert policy | Description | Category | Enterprise subscription |
|:-----|:-----|:-----|:-----|
|**A potentially malicious URL click was detected**|Generates an alert when a user protected by [Safe Links](../security/office-365-security/safe-links.md) in your organization clicks a malicious link. This event is triggered when URL verdict changes are identified by Microsoft Defender for Office 365 or when users override the Safe Links pages (based on your organization's Microsoft 365 for business Safe Links policy). This alert policy has a **High** severity setting. For Defender for Office 365 P2, E5, G5 customers, this alert automatically triggers [automated investigation and response in Office 365](../security/office-365-security/office-365-air.md). For more information on events that trigger this alert, see [Set up Safe Links policies](../security/office-365-security/set-up-safe-links-policies.md).|Threat management|E5/G5 or Defender for Office 365 P2 add-on subscription|
|**Admin Submission result completed**|Generates an alert when an [Admin Submission](../security/office-365-security/admin-submission.md) completes the rescan of the submitted entity. An alert will be triggered every time a rescan result is rendered from an Admin Submission. These alerts are meant to remind you to [review the results of previous submissions](https://protection.office.com/reportsubmission), submit user reported messages to get the latest policy check and rescan verdicts, and help you determine if the filtering policies in your organization are having the intended impact. This policy has a **Informational** severity setting.|Threat management|E1/F1, E3/F3, or E5|
|**Admin triggered manual investigation of email**|Generates an alert when an admin triggers the manual investigation of an email from Threat Explorer. For more information, see [Example: A security administrator triggers an investigation from Threat Explorer](../security/office-365-security/automated-investigation-response-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer). This alert notifies your organization that the investigation was started. The alert provides information about who triggered it and includes a link to the investigation. This policy has an **Informational** severity setting.|Threat management| E5/G5 or Microsoft Defender for Office 365 P2 add-on subscription| 
|**Creation of forwarding/redirect rule**|Generates an alert when someone in your organization creates an inbox rule for their mailbox that forwards or redirects messages to another email account. This policy only tracks inbox rules that are created using Outlook on the web (formerly known as Outlook Web App) or Exchange Online PowerShell. This policy has a **Informational** severity setting. For more information about using inbox rules to forward and redirect email in Outlook on the web, see [Use rules in Outlook on the web to automatically forward messages to another account](https://support.office.com/article/1433e3a0-7fb0-4999-b536-50e05cb67fed).|Threat management|E1/F1/G1, E3/F3/G3, or E5/G5|
|**eDiscovery search started or exported**|Generates an alert when someone uses the Content search tool in the Security and compliance center. An alert is triggered when the following content search activities are performed: <br/><br/>* A content search is started<br/>* The results of a content search are exported<br/>* A content search report is exported<br/><br/>Alerts are also triggered when the previous content search activities are performed in association with an eDiscovery case. This policy has a **Informational** severity setting. For more information about content search activities, see [Search for eDiscovery activities in the audit log](search-for-ediscovery-activities-in-the-audit-log.md#ediscovery-activities).|Threat management|E1/F1/G1, E3/F3/G3, or E5/G5|
|**Elevation of Exchange admin privilege**|Generates an alert when someone is assigned administrative permissions in your Exchange Online organization. For example, when a user is added to the Organization Management role group in Exchange Online. This policy has a **Low** severity setting.|Permissions|E1/F1/G1, E3/F3/G3, or E5/G5|
|**Email messages containing malware removed after delivery**|Generates an alert when any messages containing malware are delivered to mailboxes in your organization. If this event occurs, Microsoft removes the infected messages from Exchange Online mailboxes using [Zero-hour auto purge](../security/office-365-security/zero-hour-auto-purge.md). This policy has an **Informational** severity setting and automatically triggers [automated investigation and response in Office 365](../security/office-365-security/office-365-air.md).|Threat management|E5/G5 or Microsoft Defender for Office 365 P2 add-on subscription|
|**Email messages containing phish URLs removed after delivery**|Generates an alert when any messages containing phish are delivered to mailboxes in your organization. If this event occurs, Microsoft removes the infected messages from Exchange Online mailboxes using [Zero-hour auto purge](../security/office-365-security/zero-hour-auto-purge.md). This policy has an **Informational** severity setting and automatically triggers [automated investigation and response in Office 365](../security/office-365-security/office-365-air.md).|Threat management|E5/G5 or Defender for Office 365 P2 add-on subscription|
|**Email reported by user as malware or phish**|Generates an alert when users in your organization  report messages as phishing email using the Report Message add-in. This policy has an **Low** severity setting. For more information about this add-in, see [Use the Report Message add-in](https://support.office.com/article/b5caa9f1-cdf3-4443-af8c-ff724ea719d2). For Defender for Office 365 P2, E5, G5 customers, this alert automatically triggers [automated investigation and response in Office 365](../security/office-365-security/office-365-air.md).|Threat management|E1/F1/G1, E3/F3/G3, or E5/G5|
|**Email sending limit exceeded**|Generates an alert when someone in your organization has sent more mail than is allowed by the outbound spam policy. This is usually an indication the user is sending too much email or that the account may be compromised. This policy has a **Medium** severity setting. If you get an alert generated by this alert policy, it's a good idea to [check whether the user account is compromised](../security/office-365-security/responding-to-a-compromised-email-account.md).|Threat management|E1/F1/G1, E3/F3/G3, or E5/G5|
|**Form blocked due to potential phishing attempt**|Generates an alert when someone in your organization has been restricted from sharing forms and collecting responses using Microsoft Forms due to detected repeated phishing attempt behavior. This policy has a **High severity** setting.|Threat management|E1, E3/F3, or E5|
|**Form flagged and confirmed as phishing**|Generates an alert when a form created in Microsoft Forms from within your organization has been identified as potential phishing through Report Abuse and confirmed as phishing by Microsoft. This policy has a **High** severity setting.|Threat management|E1, E3/F3, or E5|
|**Messages have been delayed**|Generates an alert when Microsoft can't deliver email messages to your on-premises organization or a partner server by using a connector. When this happens, the message is queued in Office 365. This alert is triggered when there are 2,000 messages or more that have been queued for more than an hour. This policy has a **High** severity setting.|Mail flow|E1/F1/G1, E3/F3/G3, or E5/G5|
|**Malware campaign detected after delivery**|Generates an alert when an unusually large number of messages containing malware are delivered to mailboxes in your organization. If this event occurs, Microsoft removes the infected messages from Exchange Online mailboxes. This policy has a **High** severity setting.|Threat management|E5/G5 or Microsoft Defender for Office 365 P2 add-on subscription|
|**Malware campaign detected and blocked**|Generates an alert when someone has attempted to send an unusually large number of email messages containing a certain type of malware to users in your organization. If this event occurs, the infected messages are blocked by Microsoft and not delivered to mailboxes. This policy has a **Low** severity setting.|Threat management|E5/G5 or Defender for Office 365 P2 add-on subscription|
|**Malware campaign detected in SharePoint and OneDrive**|Generates an alert when an unusually high volume of malware or viruses is detected in files located in SharePoint sites or OneDrive accounts in your organization. This policy has a **High** severity setting.|Threat management|E5/G5 or Defender for Office 365 P2 add-on subscription|
|**Malware not zapped because ZAP is disabled**| Generates an alert when Microsoft detects delivery of a malware message to a mailbox because Zero-Hour Auto Purge for Phish messages is disabled. This policy has an **Informational** severity setting. |Threat management|E5/G5 or Defender for Office 365 P2 add-on subscription|
|**Phish delivered because a user's Junk Mail folder is disabled**|Generates an alert when Microsoft detects a user’s Junk Mail folder is disabled, allowing delivery of a high confidence phishing message to a mailbox. This policy has an **Informational** severity setting.|Threat management|E5/G5 or Defender for Office 365 P1 or P2 add-on subscription|
|**Phish delivered due to an ETR override**|Generates an alert when Microsoft detects an Exchange Transport Rule (ETR) that allowed delivery of a high confidence phishing message to a mailbox. This policy has an **Informational** severity setting. For more information about Exchange Transport Rules (Mail flow rules), see [Mail flow rules (transport rules) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules).|Threat management|E5/G5 or Defender for Office 365 P1 or P2 add-on subscription|
|**Phish delivered due to an IP allow policy**|Generates an alert when Microsoft detects an IP allow policy that allowed delivery of a high confidence phishing message to a mailbox. This policy has an **Informational** severity setting. For more information about the IP allow policy (connection filtering), see [Configure the default connection filter policy - Office 365](../security/office-365-security/configure-the-connection-filter-policy.md).|Threat management|E5/G5 or Defender for Office 365 P1 or P2 add-on subscription|
|**Phish not zapped because ZAP is disabled**| Generates an alert when Microsoft detects delivery of a high confidence phishing message to a mailbox because Zero-Hour Auto Purge for Phish messages is disabled. This policy has an **Informational** severity setting.|Threat management|E5/G5 or Defender for Office 365 P2 add-on subscription|
|**Phish delivered due to tenant or user override**<sup>1</sup>|Generates an alert when Microsoft  detects an admin or user override allowed the delivery of a phishing message to a mailbox. Examples of overrides include an inbox or mail flow rule that allows messages from a specific sender or domain, or an anti-spam policy that allows messages from specific senders or domains. This policy has a **High** severity setting.|Threat management|E5/G5 or Defender for Office 365 P2 add-on subscription|
|**Suspicious email forwarding activity**|Generates an alert when someone in your organization has autoforwarded email to a suspicious external account. This is an early warning for behavior that may indicate the account is compromised, but not severe enough to restrict the user. This policy has a **High** severity setting. Although it's rare, an alert generated by this policy may be an anomaly. It's a good idea to [check whether the user account is compromised](../security/office-365-security/responding-to-a-compromised-email-account.md).|Threat management|E1/F1/G1, E3/F3/G3, or E5/G5|
|**Suspicious email sending patterns detected**|Generates an alert when someone in your organization has sent suspicious email and is at risk of being restricted from sending email. This is an early warning for behavior that may indicate that the account is compromised, but not severe enough to restrict the user. This policy has a **Medium** severity setting. Although it's rare, an alert generated by this policy may be an anomaly. However, it's a good idea to [check whether the user account is compromised](../security/office-365-security/responding-to-a-compromised-email-account.md).|Threat management|E1/F1/G1, E3/F3/G3, or E5/G5  |
|**Tenant restricted from sending email**|Generates an alert when most of the email traffic from your organization has been detected as suspicious and Microsoft has restricted your organization from sending email. Investigate any potentially compromised user and admin accounts, new connectors, or open relays, and then contact Microsoft Support to unblock your organization. This policy has a **High** severity setting. For more information about why organizations are blocked, see [Fix email delivery issues for error code 5.7.7xx in Exchange Online](/Exchange/mail-flow-best-practices/non-delivery-reports-in-exchange-online/fix-error-code-5-7-700-through-5-7-750).|Threat management|E1/F1/G1, E3/F3/G3, or E5/G5|
|**Unusual external user file activity**|Generates an alert when an unusually large number of activities are performed on files in SharePoint or OneDrive by users outside of your organization. This includes activities such as accessing files, downloading files, and deleting files. This policy has a **High** severity setting.|Information governance|E5/G5, Microsoft Defender for Office 365 P2, or Microsoft 365 E5 add-on subscription|
|**Unusual volume of external file sharing**|Generates an alert when an unusually large number of files in SharePoint or OneDrive are shared with users outside of your organization. This policy has a **Medium** severity setting.|Information governance|E5/G5, Defender for Office 365 P2, or Microsoft 365 E5 add-on subscription|
|**Unusual volume of file deletion**|Generates an alert when an unusually large number of files are deleted in SharePoint or OneDrive within a short time frame. This policy has a **Medium** severity setting.|Information governance|E5/G5, Defender for Office 365 P2, or Microsoft 365 E5 add-on subscription|
|**Unusual increase in email reported as phish**|Generates an alert when there's a significant increase in the number of people in your organization using the Report Message add-in in Outlook to report messages as phishing mail. This policy has a **Medium** severity setting. For more information about this add-in, see [Use the Report Message add-in](https://support.office.com/article/b5caa9f1-cdf3-4443-af8c-ff724ea719d2).|Threat management|E5/G5 or Defender for Office 365 P2 add-on subscription|
|**User impersonation phish delivered to inbox/folder**<sup>1,</sup><sup>2</sup>|Generates an alert when Microsoft detects that an admin or user override has allowed the delivery of a user impersonation phishing message to the inbox (or other user-accessible folder) of a mailbox. Examples of overrides include an inbox or mail flow rule that allows messages from a specific sender or domain, or an anti-spam policy that allows messages from specific senders or domains. This policy has a **Medium** severity setting.|Threat management|E5/G5 or Defender for Office 365 P2 add-on subscription|
|**User restricted from sending email**|Generates an alert when someone in your organization is restricted from sending outbound mail. This typically results when an account is compromised, and the user is listed on the **Restricted Users** page in the Security & Compliance Center. (To access this page, go to **Threat management > Review > Restricted Users**). This policy has a **High** severity setting. For more information about restricted users, see [Removing a user, domain, or IP address from a block list after sending spam email](/office365/securitycompliance/removing-user-from-restricted-users-portal-after-spam).|Threat management|E1/F1/G1, E3/F3/G3, or E5/G5|
|**User restricted from sharing forms and collecting responses**|Generates an alert when someone in your organization has been restricted from sharing forms and collecting responses using Microsoft Forms due to detected repeated phishing attempt behavior. This policy has a **High** severity setting.|Threat management|E1, E3/F3, or E5|
|||||

> [!NOTE]
> <sup>1</sup> We've temporarily removed this default alert policy based on customer feedback. We're working to improve it, and will replace it with a new version in the near future. Until then, you can create a custom alert policy to replace this functionality by using the following settings:<br/>&nbsp; * Activity is Phish email detected at time of delivery<br/>&nbsp; * Mail is not ZAP'd<br/>&nbsp; * Mail direction is Inbound<br/>&nbsp; * Mail delivery status is Delivered<br/>&nbsp; * Detection technology is Malicious URL retention, URL detonation, Advanced phish filter, General phish filter, Domain impersonation, User impersonation, and Brand impersonation<br/><br/>&nbsp;&nbsp;&nbsp;For more information about anti-phishing in Office 365, see [Set up anti-phishing and anti-phishing policies](../security/office-365-security/set-up-anti-phishing-policies.md).<br/><br/><sup>2</sup> To recreate this alert policy, follow the guidance in the previous footnote, but choose User impersonation as the only Detection technology.

The unusual activity monitored by some of the built-in policies is based on the same process as the alert threshold setting that was previously described. Microsoft establishes a baseline value that defines the normal frequency for "usual" activity. Alerts are then triggered when the frequency of activities tracked by the built-in alert policy greatly exceeds the baseline value.

## Viewing alerts

When an activity performed by users in your organization matches the settings of an alert policy, an alert is generated and displayed on the **View alerts** page in the security and compliance center. Depending on the settings of an alert policy, an email notification is also sent to a list of specified users when an alert is triggered. For each alert, the dashboard on the **View alerts** page displays the name of the corresponding alert policy, the severity and category for the alert (defined in the alert policy), and the number of times an activity has occurred that resulted in the alert being generated. This value is based on the threshold setting of the alert policy. The dashboard also shows the status for each alert. For more information about using the status property to manage alerts, see [Managing alerts](#managing-alerts).

To view alerts, go to [https://protection.office.com](https://protection.office.com) and then select **Alerts** \> **View alerts**.

![In the security and compliance, select Alerts, then select View alerts to view alerts](../media/ec5ea59b-bf61-459f-8b65-970ab4bb8bcc.png)

You can use the following filters to view a subset of all the alerts on the **View alerts** page.

- **Status.** Use this filter to show alerts that are assigned a particular status. The default status is **Active**. You or other administrators can change the status value.

- **Policy.** Use this filter to show alerts that match the setting of one or more alert policies. Or you can display all alerts for all alert policies.

- **Time range.** Use this filter to show alerts that were generated within a specific date and time range.

- **Severity.** Use this filter to show alerts that are assigned a specific severity.

- **Category.** Use this filter to show alerts from one or more alert categories.

- **Tags.** Use this filter to show alerts from one or more user tags. Tags are reflected based on tagged mailboxes or users that appear in the alerts. See [User tags in Office 356 ATP](../security/office-365-security/user-tags.md) to learn more.

- **Source.** Use this filter to show alerts triggered by alert policies in the security and compliance center or alerts triggered by Office 365 Cloud App Security policies, or both. For more information about Office 365 Cloud App Security alerts, see [Viewing Cloud App Security alerts](#viewing-cloud-app-security-alerts).

> [!IMPORTANT]
> Filtering and sorting by user tags is currently in public preview.
> It may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided about it.

## Alert aggregation

When multiple events that match the conditions of an alert policy occur with a short period of time, they are added to an existing alert by a process called *alert aggregation*. When an event triggers an alert, the alert is generated and displayed on the **View alerts** page and a notification is sent. If the same event occurs within the aggregation interval, then Microsoft 365 adds details about the new event to the existing alert instead of triggering a new alert. The goal of alert aggregation is to help reduce alert "fatigue" and let you focus and take action on fewer alerts for the same event.

The length of the aggregation interval depends on your Office 365 or Microsoft 365 subscription.

|Subscription|Aggregation interval|
|:---------|:---------:|
|Office 365 or Microsoft 365 E5/G5|1 minute|
|Defender for Office 365 Plan 2 |1 minute|
|E5 Compliance add-on or E5 Discovery and Audit add-on|1 minute|
|Office 365 or Microsoft 365 E1/F1/G1 or E3/F3/G3|15 minutes|
|Defender for Office 365 Plan 1 or Exchange Online Protection|15 minutes|
|||

When events that match the same alert policy occur within the aggregation interval, details about the subsequent event are added to the original alert. For all events, information about aggregated events is displayed in the details field and the number of times an event occurred with the aggregation interval is displayed in the activity/hit count field. You can view more information about all aggregated events instances by viewing the activity list.

The following screenshot shows an alert with four aggregated events. The activity list contains information about the four email messages relevant to the alert.

![Example of alert aggregation](../media/AggregatedAlertExample.png)

Keep the following things in mind about alert aggregation:

- Alerts triggered by the **A potentially malicious URL click was detected** [default alert policy](#default-alert-policies) are not aggregated. This is because alerts triggered by this policy are unique to each user and email message.

- At this time, the **Hit count** alert property doesn't indicate the number of aggregated events for all alert policies. For alerts triggered by these alert policies, you can view the aggregated events by clicking **View message list** or **View activity** on the alert. We're working to make the number of aggregated events listed in the **Hit count** alert property available for all alert policies.

## RBAC permissions required to view alerts

The Role Based Access Control (RBAC) permissions assigned to users in your organization determine which alerts a user can see on the **View alerts** page. How is this accomplished? The management roles assigned to users (based on their membership in role groups in the Security & Compliance Center) determine which alert categories a user can see on the **View alerts** page. Here are some examples:

- Members of the Records Management role group can view only the alerts that are generated by alert policies that are assigned the **Information governance** category.

- Members of the Compliance Administrator  role group can't view alerts that are generated by alert policies that are assigned the **Threat management** category.

- Members of the eDiscovery Manager role group can't view any alerts because none of the assigned roles provide permission to view alerts from any alert category.

This design (based on RBAC permissions) lets you determine which alerts can be  viewed (and managed) by users in specific job roles in your organization.

The following table lists the roles that are required to view alerts from the six different alert categories. The first column in the tables lists all roles in the Security & Compliance Center.  A check mark indicates that a user who is assigned that role can view alerts from the corresponding alert category listed in the top row.

To see which category a default alert policy is assigned to, see the table in [Default alert policies](#default-alert-policies).

|Role|Information governance|Data loss prevention|Mail flow|Permissions|Threat management|Others|
|:---------|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|
|Audit Logs|||||||
|Case Management|||||||
|Compliance Administrator|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||![Check mark](../media/checkmark.png)||![Check mark](../media/checkmark.png)|
|Compliance Search|||||||
|Device Management|||||||
|Disposition Management|||||||
|DLP Compliance Management||![Check mark](../media/checkmark.png)|||||
|Export|||||||
|Hold|||||||
|Manage Alerts||||||![Check mark](../media/checkmark.png)|
|Organization Configuration||||||![Check mark](../media/checkmark.png)|
|Preview|||||||
|Record Management|![Check mark](../media/checkmark.png)||||||
|Retention Management|![Check mark](../media/checkmark.png)||||||
|Review|||||||
|RMS Decrypt|||||||
|Role Management||||![Check mark](../media/checkmark.png)|||
|Search And Purge|||||||
|Security Administrator||![Check mark](../media/checkmark.png)||![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|
|Security Reader||![Check mark](../media/checkmark.png)||![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)
|Service Assurance View|||||||
|Supervisory Review Administrator|||||||
|View-Only Audit Logs|||||||
|View-Only Device Management|||||||
|View-Only DLP Compliance Management||![Check mark](../media/checkmark.png)|||||
|View-Only Manage Alerts||||||![Check mark](../media/checkmark.png)|
|View-Only Recipients|||![Check mark](../media/checkmark.png)||||
|View-Only Record Management|![Check mark](../media/checkmark.png)||||||
|View-Only Retention Management|![Check mark](../media/checkmark.png)||||||
|||||||

> [!TIP]
> To view the roles that are assigned to each of the default role groups, run the following commands in Security & Compliance Center PowerShell:
> 
> ```powershell
> $RoleGroups = Get-RoleGroup
> ```
> 
> ```powershell
> $RoleGroups | foreach {Write-Output -InputObject `r`n,$_.Name,"-----------------------"; Get-RoleGroup $_.Identity | Select-Object -ExpandProperty Roles}
> ```
> 
> You can also view the roles assigned to a role group in the Security & Compliance Center. Go to the **Permissions** page, and select a role group. The assigned roles are listed on the flyout page.

## Managing alerts

After alerts have been generated and displayed on the **View alerts** page in the security and compliance center, you can triage, investigate, and resolve them. Here are some tasks you can perform to manage alerts.

- **Assign a status to alerts.** You can assign one of the following statuses to alerts: **Active** (the default value), **Investigating**, **Resolved**, or **Dismissed**. Then, you can filter on this setting to display alerts with the same status setting. This status setting can help track the process of managing alerts.

- **View alert details.** You can select an alert to display a flyout page with details about the alert. The detailed information depends on the corresponding alert policy, but it typically includes the following:

  - The name of the actual operation that triggered the alert, such as a cmdlet or an audit log operation.

  - A description of the activity that triggered the alert.

  - The user (or list of users) who triggered the alert. This is included only for alert policies that are set up to track a single user or a single activity.

  - The number of times the activity tracked by the alert was performed. This number may not match that actual number of related alerts listed on the View alerts page because more alerts may have been triggered.

  - A link to an activity list that includes an item for each activity that was performed that triggered the alert. Each entry in this list identifies when the activity occurred, the name of the actual operation (such as "FileDeleted"), the user who performed the activity, the object (such as a file, an eDiscovery case, or a mailbox) that the activity was performed on, and the IP address of the user's computer. For malware-related alerts, this links to a message list.

  - The name (and link) of the corresponding alert policy.

- **Suppress email notifications.** You can turn off (or suppress) email notifications from the flyout page for an alert. When you suppress email notifications, Microsoft won't send notifications when activities or events that match the conditions of the alert policy occur. But alerts will be triggered when activities performed by users match the conditions of the alert policy. You can also turn off email notifications by editing the alert policy.

- **Resolve alerts.** You can mark an alert as resolved on the flyout page for an alert (which sets the status of the alert to **Resolved**). Unless you change the filter, resolved alerts aren't displayed on the **View alerts** page.

## Viewing Cloud App Security alerts

Alerts that are triggered by Office 365 Cloud App Security policies are now displayed on the **View alerts** page in the security and compliance center. This includes alerts that are triggered by activity policies and alerts that are triggered by anomaly detection policies in Office 365 Cloud App Security. This means you can view all alerts in the security and compliance center. Office 365 Cloud App Security is only available for organizations with an Office 365 Enterprise E5 or Office 365 US Government G5 subscription. For more information, see [Overview of Cloud App Security](/cloud-app-security/what-is-cloud-app-security).

Organizations that have Microsoft Cloud App Security as part of an Enterprise Mobility + Security E5 subscription or as a standalone service can also view Cloud App Security alerts that are related to Office 365 apps and services in the Security & Compliance Center.

To display only Cloud App Security alerts in the security and compliance center, use the **Source** filter and select **Cloud App Security**.

![Use the Source filter to display only Cloud App Security alerts](../media/FilterCASAlerts.png)

Similar to an alert triggered by an alert policy in the security and compliance center, you can select a Cloud App Security alert to display a flyout page with details about the alert. The alert includes a link to view the details and manage the alert in the Cloud App Security portal and a link to the corresponding Cloud App Security policy that triggered the alert. See [Monitor alerts in Cloud App Security](/cloud-app-security/monitor-alerts).

![Alert details contain links to the Cloud App Security portal](../media/CASAlertDetail.png)

> [!IMPORTANT]
> Changing the status of a Cloud App Security alert in the security and compliance center won't update the resolution status for the same alert in the Cloud App Security portal. For example, if you mark the status of the alert as **Resolved** in the security and compliance center, the status of the alert in the Cloud App Security portal is unchanged. To resolve or dismiss a Cloud App Security alert, manage the alert in the Cloud App Security portal.
