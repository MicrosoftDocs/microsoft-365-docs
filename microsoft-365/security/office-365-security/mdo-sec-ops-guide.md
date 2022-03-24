---
title: Security Operations Guide for Defender for Office 365
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.date:
ms.topic: conceptual

ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.collection: 
  - M365-security-compliance
ms.custom:
description: Learn about Microsoft Defender for Office 365 for files in SharePoint Online, OneDrive for Business, and Microsoft Teams.
ms.technology: mdo
ms.prod: m365-security
---

# Microsoft Defender for Office 365 Security Operations Guide

The articles in this series give an overview of the requirements for successfully operating Microsoft Defender for Office 365 in your organization. By properly operating your deployment, your security operations center (SOC) can provide a high-quality, reliable service to protect, detect, and respond to email and collaboration-related security threats.

This operations guide gives you an overview of the tasks and activities that are required for optimal on-boarding and consistent management of Defender for Office 365 by your security teams.

The tasks and activities in this guide are grouped into the following categories:

- Regular activities (daily, weekly, monthly, and ad-hoc.)
- Managing Incident and Alert queues

The following sections described the regular activities for SecOps personnel.

## Daily activities

### Monitor the Microsoft 365 Defender Incident queue

In the Microsoft 365 Defender Incident queue, you can monitor alerts from the following Defender for Office 365 sources:

- [Defender for Office 365 alerts](../../compliance/alert-policies.md#default-alert-policies).
- [Automated investigation and response (AIR)](automated-investigation-response-office.md).

For more information about the Incident queue, see [Prioritize incidents in Microsoft 365 Defender](../defender/incident-queue.md).

You triage plan for monitoring the Incident queue for Defender for Office 365 alerts should use the following order of precedence for alerts:

1. **A potentially malicious URL click was detected**.
2. **User restricted from sending email**.
3. **Suspicious email sending patterns detected**.
4. **Email reported by user as malware or phish**, and **Multiple users reported email as malware or phish**.
5. **Email messages containing malicious file removed after delivery**, **Email messages containing malicious URL removed after delivery**, and **Email messages from a campaign removed after delivery**.
6. **Phish delivered due to an ETR override**, **Phish delivered because a user's Junk Mail folder is disabled**, and **Phish delivered due to an IP allow policy**
7. **Malware not zapped because ZAP is disabled** and **Phish not zapped because ZAP is disabled**.

Incident queue management and the responsible personas are described in the following table:

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Triage incidents in the Incident queue|Daily|Verify that all **Medium** and **High** severity incidents from Defender for Office 365 are triaged.|Security Operation Team|
|Investigate and take Response actions on incidents|Daily|Investigate all incidents and actively take the recommended or manual response actions.|Security Operation Team|
|Resolve incidents|Daily|If the incident has been remediated, resolve the incident. Resolving the incident resolves all linked and related active alerts.|Security Operation Team|
|Classify incidents|Daily|Classify incidents as true or false. For true alerts, specify the threat type. This classifications helps your security team see threat patterns and defend your organization from them.|Security Operation Team|

### Manage false positive and false negative detections

In Defender for Office 365, you manage false positives (good mail marked as bad) and false negatives (bad mail allowed) in the following locations:

- [Submissions portal (admin submissions)](admin-submission.md).
- The [Tenant Allow/Block List](tenant-allow-block-list.md)

False positive and false negative management and the responsible personas are described in the following table:

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Submit false positives and false negatives to Microsoft|Daily|Provide signals to Microsoft by reporting incorrect email, URL, and file detections.|Security Operation Team|
|Analyze admin submission details|Daily|Understand the following items: <ul><li>What caused the detection.</li><li>The state of your organization at the time of submission.</li><li>Whether you need to make changes to your Defender for Office 365 configuration settings.</li></ul>|Security Operation Team/Security Administration|
|Add block entries using the Tenant Allow/Block List|Daily|Use the Tenant Allow/Block List to add block entries for URLs, files, or senders as needed for false negatives.|Security Operation Team|
|Release false negatives from quarantine.|Daily|After the recipient confirms that the message was incorrectly quarantined, you can release or approve release requests for users. <p> To control what users can do to their own quarantined messages base on why the message was quarantined, see [Quarantine policies](quarantine-policies.md).|Security Operations Team <p> Messaging Team|

### Review phishing and malware campaigns that resulted in delivered mail

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review email campaigns|Daily|[Review email campaigns](campaigns.md) that targeted your organization. Focus on campaigns that resulted in messages being delivered to recipients. <p> Remove messages from phishing or malware campaigns that exist in user mailboxes. This action is required only when a campaign contains email that hasn't already been remediated by actions from incidents, zero-hour auto purge (ZAP), or manual remediation.|Security Operation Team|

## Weekly activities

### Review detection trends in Defender for Office 365 reports

In Defender for Office 365, you can use the following reports to review detection trends in your organization:

- The [Mailflow status report](view-mail-flow-reports.md#mailflow-status-report)
- The [Threat Protection status report](view-email-security-reports.md#threat-protection-status-report)

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review Defender for Office 365 detection trends|Weekly|Review email detection trends for malware, phishing, and spam as compared to good email. Observation over time allows you to see threat patterns and determine whether you need to adjust your Defender for Office 365 policies.|Security Administration <p> Security Operations Team|

### Track and respond to emerging threats using Threat analytics

Use [Threat analytics](/microsoft-365/security/defender-endpoint/threat-analytics) to review active, trending threats.

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review threats in Threat analytics|Weekly|Threat analytics reports provide detailed analysis, including the following items: <ul><li>IOCs.</li><li>Hunting queries about active threat actors and their campaigns.</li><li>Popular and new attack techniques.</li><li>Critical vulnerabilities.</li><li>Common attack surfaces.</li><li>Prevalent malware.</li><</ul> <p> Use the **Threat analytics** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/threatanalytics3>.|Security Operation Team <p> Threat hunting team|

### Review top targeted users for malware and phishing

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review [top targeted users](threat-explorer.md#top-targeted-users) by malware and phishing.|Weekly|Use the information to decide if you need to adjust policies and the protection configuration for these users. Add the affected user to [Priority accounts](/microsoft-365/admin/setup/priority-accounts) to: <ul<li>Gain visibility when incidents affect them.</li><li>Provide additional protection when needed.</li></ul>|Security Administration <p> Security Operations Team|

### Review top malware and phishing campaigns that target your tenant

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Use [Campaign Views](campaigns.md) to review malware and phishing campaigns that affect your organization at <https://security.microsoft.com/campaigns>.|Weekly|Learn the attacks and techniques that are used and what Defender for Office 365 was able to identify and block. <p> Download the campaign threat report for detailed information.|Security Operations Team|

## Ad-hoc activities

### Manual investigation and removal of email

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Investigate and remove email based on user requests.|Ad-hoc|Use the **Trigger Investigation** action in Threat Explorer to start an automated investigation and response playbook on any email from the last 30 days. This action can save time and effort. [Automatic investigations that are triggered from Threat Explorer](automated-investigation-response-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer) include: <ul><li>A root investigation</li><li>Steps to identify and correlate threats</li><li>recommended actions to mitigate those threats.</li></ul> <p> Or, you can use [Threat Explorer to manually investigate email](investigate-malicious-email-that-was-delivered.md) with powerful search and filtering capabilities and [take manual response action](remediate-malicious-email-delivered-office-365.md) directly from the same place. Available manual actions: <ul><li>Move to Inbox</li><li>Move to Junk</li><li>Move to Deleted items</li><li>Soft delete</li><li>Hard delete.</li></ul>|Security Operations Team|

### Perform regular proactive hunting for threats

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Perform regular proactive Hunting for threats.|Ad-hoc|Search for threats using Threat Explorer and Advanced hunting.|Security Operations Team <p> Threat hunting team|
|Share hunting queries|Ad-hoc|Actively share frequently used, useful hunting queries within the security team for faster manual hunting for threats and remediation. <p> Use [Threat trackers](threat-trackers.md) and [shared queries in Advance Hunting](/microsoft-365/security/defender/advanced-hunting-shared-queries).|Security Operations Team <p> Threat hunting team|
|Create custom detection rules|Ad-hoc|Create custom detections rules to proactively monitor various events, patterns, threats based on Defender for Office 365 data in Advance Hunting. Detection rules are running automatically at regular intervals, generating alerts whenever there are matches with the Advance Hunting query defined within them.|Security Operations Team <p> Threat hunting team|

### Review Defender for Office 365 policy configurations

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review Defender for Office 365 policy configuration.|Ad-hoc <p> Monthly|Use the **Configuration drift analysis and history** tab on the **Configuration analyzer** page at <https://security.microsoft.com/configurationAnalyzer> to compare your Defender for Office 365 policy settings to the [recommended Standard or Strict values](recommended-settings-for-eop-and-office365.md). <p> Or, you can use the PowerShell-based [ORCA tool](https://aka.ms/getorca). <p> Configuration analysis helps to identify accidental or malicious changes that can lower the security posture of your organization.|Security Administration <p> Messaging Team|
|Review Defender for Office 365 detection overrides|Ad-hoc <p> Monthly|Use the [View data by System override and Chart breakdown by Reason view](view-email-security-reports.md#view-data-by-system-override-and-chart-breakdown-by-reason) in the **Threat Protection status report** at <https://security.microsoft.com/reports/TPSAggregateReportATP> to review email that was detected as phishing but delivered due to policy or user override settings. <p> Actively investigate, remove or fine tune filter overrides to avoid delivery of email already detected as malicious.|Security Administration/Messaging Team|

### Review Spoof and Impersonation detection insights

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review Spoof and Impersonation detection insights weekly|Ad-hoc/Monthly|Review Spoof and Impersonation insights weekly. Use the reports to adjust filtering for spoof and impersonation detections with allow/block entries from the insight to reduce false positive or false negatives.|Security Administration <p> Messaging Team|

### Keep user tags for priority accounts up to date

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Keep user tags for priority accounts up to date|Ad-hoc|Keep [priority account tags](/microsoft-365/admin/setup/priority-accounts) up to date to follow organizational changes. Tags can be applied to recipients to ensure easy visibility, filter Incidents impacting high value employees and provide extra protection using the built-in "Priority accounts" tag.|Security Operations Team|

## Manage Incident and Alert queues

An [Incident](/microsoft-365/security/defender/incidents-overview) in Microsoft 365 Defender is a collection of correlated alerts and associated data that make up the story of an attack. Defender for Office 365 [alerts](/microsoft-365/compliance/alert-policies#default-alert-policies), [automated Investigations (AIR)](office-365-air.md#the-overall-flow-of-air) and the outcome of the investigations are natively integrated and correlated into Microsoft 365 Defender incidents.

Alerts are created when suspicious or malicious event or activity detected impacted an entity (email, users, mailboxes) and can provide valuable insights about a complete or ongoing attack. However as the attack progress it can impact multiple entities result in multiple alerts from different types over time. Some of the built in alerts will automatically trigger automated investigation and response (AIR) playbooks which performs a series of investigation steps to look for other impacted email, users, mailboxes or suspicious activities.

Defender for Office 365 alerts, investigations and their data are automatically correlated. When there is a relation between them an Incident is created by the system to give security teams visibility for the entire attack.

We strongly recommend security operations teams manage Defender for Office 365 through Microsoft 365 Defender Incidents. This approach has the following benefits:

- The Incident queue in Microsoft 365 Defender provide multiple options for [management](/microsoft-365/security/defender/manage-incidents): prioritization, filtering, classification, tag management. Incidents can be taken from the queue or assigned to somebody. Comments and comment history can help to track the investigation and response progress.

- If the attack impacts other workloads protected by Microsoft Defender the related alerts, investigations and their data also correlated to the same Incident. (Microsoft Defender for Endpoint, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps).
- Correlation logic is provided by the system there is no need to write complex correlation logic.
- If the correlation logic does not fully meet with your needs you can add Alerts to existing incident or create a new Incident.
- Related Defender for Office 365 alerts, AIR investigations, pending actions from investigations are automatically added to Incidents.
- If the AIR investigation finds no threat the related alerts are automatically resolved by the system. If all alerts within an Incident are resolved the incident status also changes to resolved.
- Related evidences and response actions are aggregated automatically on the Evidences and response tab of the Incident.
- Security team members can take response actions directly from Incidents. For example Soft delete email or remove suspicious Inbox rules.
- Recommended email actions are created only when malicious email' latest delivery location is in a cloud mailbox.
- Pending email actions are updated based on the latest delivery location. If the email already remediated by a manual action the status will reflect that.
- Recommended actions are only created for email and email clusters determined to be the most critical threats: malware, high-confidence phishing, malicious URLs and malicious file.

> [!NOTE]
> Incidents are not just representing static events, they are representing attack stories which may happening over a period of time. Meanwhile the attack is in progress new Defender for Office 365 alerts, AIR investigations and their data continuously added to the existing incident.

Manage incidents on the **Incidents** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/incidents-queue>:

![Incidents page in the Microsoft 365 Defender portal.](../../media/mdo-sec-ops-incidents.png)

![Details flyout on the Incidents page in the Microsoft 365 Defender portal.](../../media/mdo-sec-ops-incident-details.png)

![Filter flyout on the Incidents page in the Microsoft 365 Defender portal.](../../media/mdo-sec-ops-incident-filters.png)

![Summary tab of the incident details in the Microsoft 365 Defender portal.](../../media/mdo-sec-ops-incident-summary-tab.png)

![Evidence and alerts tab of the incident details in the Microsoft 365 Defender portal.](../../media/mdo-sec-ops-incident-evidence-and-response-tab.png)

Manage incidents on the **Incidents** page in Microsoft Sentinel at <https://portal.azure.com/#blade/Microsot_Azure_Security_Insights/ManeMenuBlade>:

![Incidents page in Microsoft Sentinel.](../../media/mdo-sec-ops-microsoft-sentinel-incidents.png)

![Incident details page in Microsoft Sentinel.](../../media/mdo-sec-ops-microsoft-sentinel-incident-details.png)

## Appendix

### Learn about Microsoft Defender for Office 365 tools and processes

Security operations and response team members need to integrate Defender for Office 365 tools and features into existing investigations and response processes. Learning about new tools and capabilities can take time but it is critical part of the on-boarding process. The simplest way for security operations (SecOps) and email security team members to learn about Defender for Office 365 is to use the training content that's available as part of the Ninja training content at <https://aka.ms/mdoninja>.

The content is structured for different knowledge levels (Fundamentals, Intermediate, and Advanced) with multiple modules per level.

### Required permission to manage Defender for Office 365 related activities and tasks

Permissions for managing Defender for Office 365 in the Microsoft 365 Defender portal and PowerShell are based on the role-based access control (RBAC) permissions model. RBAC is the same permissions model that's used by most Microsoft 365 services. For more information, see [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).

The following permissions (roles and role groups) are available in the portal and can be used to grant access to security team members:

- **Azure AD roles**: Centralized roles that assign permissions for _all_ Microsoft 365 services, including Defender for Office 365. You can view the Azure AD roles and assigned users in the Microsoft 365 Defender portal, but you can't manage them directly there. Instead, you manage Azure AD roles and members at <https://aad.portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RolesAndAdministrators>. The most frequent roles used by security teams are:
  - **Security administrator**
  - **Security operator**
  - **Security reader**

- **Email & collaboration roles**: Roles and role groups that grant permission specific to Microsoft Defender for Office 365. The following role are not available in Azure AD, but can be important for security teams:
  - **Preview** role: Assign this role to team members who need to preview or download email messages as part of investigation activities Allows users to [preview and download](investigate-malicious-email-that-was-delivered.md#preview-role-permissions) email messages in cloud mailboxes using the [email entity page](mdo-email-entity-page.md#email-preview-for-cloud-mailboxes).

    By default, this role is assigned only to the following role groups:

    - Data Investigator
    - eDiscovery Manager

    To assign this role to a new or existing role group, see [Modify Email & collaboration role membership in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md#modify-email--collaboration-role-membership-in-the-microsoft-365-defender-portal).

  - **Search and Purge**: Approve the deletion of malicious messages as recommended by AIR or take manual action on messages in hunting experiences like Threat Explorer.

    By default, this role is assigned only to the following role groups:

    - Data Investigator
    - Organization Management

    To assign this role to a new or existing role group, see [Modify Email & collaboration role membership in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md#modify-email--collaboration-role-membership-in-the-microsoft-365-defender-portal).

  - **Tenant AllowBlockList Manager**: Manage allow and block list entries using the [Tenant Allow/Block List](tenant-allow-block-list.md) List feature. Blocking URLs, Files (using file hash) or senders can be useful response actions to take when investigating malicious email that were delivered.

    By default, this role is assigned to the **Security Operator** role.

### SIEM/SOAR integration

Defender for Office 365 exposes much of its data through a set of programmatic APIs. These APIs help you automate workflows and make full use of Defender for Office 365 capabilities. Data is available through the [Microsoft 365 Defender APIs](/microsoft-365/security/defender/api-overview) and can be used to integrate Defender for Office 365 into existing SIEM/SOAR solutions.

- [Incident API](/microsoft-365/security/defender/api-incident): Defender for Office 365 Alerts, Automated Investigations are active part of Incidents in Microsoft 365 Defender. Security teams can focus on what's critical by grouping the full attack scope and all impacted assets together.

- [Event streaming API](/microsoft-365/security/defender/streaming-api): Allows shipping real-time events and alerts in a single data stream as they occur. Supported Defender for Office 365 event types include:
  - [EmailEvents](/microsoft-365/security/defender/advanced-hunting-emailevents-table)
  - [EmailUrlInfo](/microsoft-365/security/defender/advanced-hunting-emailurlinfo-table)
  - [EmailAttachmentInfo](/microsoft-365/security/defender/advanced-hunting-emailattachmentinfo-table)
  - [EmailPostDeliveryEvents](/microsoft-365/security/defender/advanced-hunting-emailpostdeliveryevents-table)

  The events contains data from processing all email (including intra-org messages) in the last 30 days for your organization.

- [Advance Hunting API](/microsoft-365/security/defender/api-advanced-hunting):Allow cross-product threat hunting.

- [Threat Assessment API](/graph/api/resources/threatassessment-api-overview?view=graph-rest-1.0): Can be used to report spam email, phishing URLs or malware attachments received directly to Microsoft.

To connect Defender for Office 365 incidents and raw data with Microsoft Sentinel you can use the [Microsoft 365 Defender (M365D) connector](/azure/sentinel/connect-microsoft-365-defender?tabs=MDO)

<!--- Docs for Splunk, Qradar other 3rd party guidance/connector of already available? --->

You can use this simple "Hello World" example to test API access to Microsoft Defender APIs: [Hello World for Microsoft 365 Defender REST API](/microsoft-365/security/defender/api-hello-world).

## Take response actions

Security teams can make wide variety of response actions on email using Defender for Office 365 tools

- You can delete but also undo actions on email using the options: move to inbox, move to junk, move to deleted items, soft delete, or hard delete. This can be performed directly from Incidents – Evidences and Response tab (recommended), using Threat Explorer or the unified Action center in Microsoft 365 Defender.

- You can start Automated investigation (AIR) playbook manually on any email message using the action: "Trigger investigation" in Threat Explorer

- You can report false positive or false negative detections directly to Microsoft using Threat Explorer or Admin Submission.

- You can block undetected malicious files, URLs or senders using Tenant allow/block list

Defender for Office 365 actions are seamlessly integrated into hunting experiences and the history of actions are visible in the Microsoft 365 Defender unified action center.

The most effective way to take action is to use the built-in integration with Microsoft 365 Defender Incidents. Actions recommended by Automated Investigation and Response (AIR) within Defender for Office 365 can be simply approved on the [Evidence and response](/microsoft-365/security/defender/investigate-incidents#evidence-and-response) tab of a Microsoft 365 Defender Incident. This way you investigate the complete attack story, benefit from the built-in correlation with other workloads end point (MDE), identity (MDI), cloud apps (MDA) and take response actions on email all from a single place.

Taking actions on email can be result of a manual investigation or hunting activity. Using [Threat Explorer](threat-explorer.md) security team members can take action on any email message which may still exists in users cloud mailboxes. This includes intra-org messages sent between users within your organization. In Threat Explorer data is available for the past 30 days.

## Address false positives and false negatives in Defender for Office 365

User and admin submissions of email messages are critical positive reinforcement signals for our machine learning based detection systems to review, triage, rapid-learn and mitigate attacks. Actively reporting false positives (good email that was blocked or detected) and false negatives (unwanted email or phishing that was delivered to the inbox) is an important activity as this provides feedback to Defender for Office 365 when a mistake is made during detection.

There are multiple options for organizations to choose from when configuring User submissions. Depending on the configuration security teams may have more active involvement when false positives or false negatives submitted by end-users to Microsoft.

- When [user reported message settings](user-submission.md) is configured to send reported messages to "Microsoft" or "Microsoft and my organization's mailbox" the feedback provided by users directly arrives to Microsoft. Security teams members should still actively perform add-hoc [Admin submissions](admin-submission.md) in scenarios when false positive/ false negative detections not reported by users but discovered by the operations teams.
- When the user reported message settings is configured to "My organization's mailbox" only, the user submissions are not directly sent to Microsoft. Security teams should actively perform additional Admin submission based on the user reported email to ensure false positive/false negative signals are arrived to Microsoft.

In both cases if a user report an email as phishing Defender for Office 365 generates an alert, the alert will trigger an automated investigation (AIR) playbook and Incident logic will correlate this to other alerts, events whenever it is possible to assist security teams triaging, investigating and responding to user reported email.

User and Admin submitted messages are handled by the submission pipeline on the Microsoft side, which follows a tightly integrated process. This process includes: noise reduction, automated triage, grading by security analysts and human partnered machine learning based solution. More details: [Reporting an email in Defender for Office 365 - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/reporting-an-email-in-microsoft-defender-for-office-365/ba-p/2870231)

Security team members can perform an Admin submission from multiple location within <https://security.microsoft.com> portal.

- [Admin submission](admin-submission.md) – using the Submissions portal to submit suspected spam, phishing, URLs, and files to Microsoft.

- Directly from Threat Explorer using one of the following message actions: Report clean, Report phishing, Report Malware, Report Spam. You can select up to 10 messages to perform a bulk submission. Admin submissions created this way also visible in the Submission portal.

To mitigate high impact false positives or false negatives in short term use [Tenant Allow/Block list](tenant-allow-block-list.md) together with Admin submissions. [Blocked entries](manage-tenant-blocks.md) for File, URL and Sender entries can directly managed by security teams. [Allow entries](manage-tenant-allows.md) however, only can be added using the admin submission process "Allow messages like this" option.

[Quarantine](manage-quarantined-messages-and-files.md) in Defender for Office 365 holds potentially dangerous or unwanted messages detected. Security teams can view, release, and delete all types of quarantined messages for all users. This enables security teams to respond effectively when a false positive detection impact users.

## Integrate third-party reporting tools with Defender for Office 365 user submission

If your organization using a third-party reporting tool to allow users reporting suspicious email to the security operations team you can integrate the tool with Defender for Office 365 user submissions capabilities. Through this integration security operations teams can benefit from the automated investigation and response (AIR) capabilities of Defender for Office 365 to simplify the triage process and reduce investigation and response time when a user report a potentially malicious email delivered to a mailbox.

Use the **Use this custom mailbox to receive user reported submissions** setting in the [user reported message settings page](user-submission.md) to define the custom mailbox where the third-party reporting tool send reported messages.

Note: The custom mailbox should be an Exchange Online mailbox. The original reported message reported by the third-party tool must be included as a .EML or .MSG attachment (not compressed) in the message that's sent to the custom mailbox (don't just forward the original message to the custom mailbox).

When a user reported email arrives to the custom mailbox Defender for Office 365 will automatically generates the alert **Email reported by user as malware or phish** which launches an [automated investigation and response (AIR) playbook](automated-investigation-response-office.md#example-a-user-reported-phish-message-launches-an-investigation-playbook). The playbooks performs a series of automated investigations steps. It gathers data about the email in question and threats, entities related to that email. Such entities can include files, URLs, and recipients. It provides recommended actions to take for security operations team based on the investigation findings.

**Email reported by user as malware or phish** alerts, automated investigations and their recommended actions are automatically correlated to Microsoft 365 Defender Incidents to further simply the triage and response process for security teams. If multiple users are reporting similar or the same email they will be part of the same Incident as a result of the correlation.

Alerts, investigations and their data from Defender for Office 365 are automatically correlated to ones from Microsoft Defender for Endpoint, Microsoft Defender for Cloud Apps, Microsoft Defender for Identity. When there is a relation between them an Incident is created by the system to give security teams visibility for the entire attack.
