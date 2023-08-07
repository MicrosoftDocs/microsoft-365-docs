---
title: Security Operations Guide for Defender for Office 365
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.collection: 
  - zerotrust-solution
  - msftsolution-secops
  - tier1
ms.custom:
description: A prescriptive playbook for SecOps personnel to manage Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/22/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Microsoft Defender for Office 365 Security Operations Guide

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

This article gives an overview of the requirements and tasks for successfully operating Microsoft Defender for Office 365 in your organization. These tasks help ensure that your security operations center (SOC) provides a high-quality, reliable approach to protect, detect, and respond to email and collaboration-related security threats.

The rest of this guide describes the required activities for SecOps personnel. The activities are grouped into prescriptive daily, weekly, monthly, and ad-hoc tasks.

A companion article to this guide provides an overview to [manage incidents and alerts from Defender for Office 365 on the Incidents page in the Microsoft 365 Defender portal](mdo-sec-ops-manage-incidents-and-alerts.md).

The [Microsoft 365 Defender Security Operations Guide](/microsoft-365/security/defender/integrate-microsoft-365-defender-secops) contains additional information that you can use for planning and development.

For a video about this information, see <https://youtu.be/eQanpq9N1Ps>.

## Daily activities

### Monitor the Microsoft 365 Defender Incidents queue

The **Incidents** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/incidents-queue> (also known as the _Incidents queue_) allows you to manage and monitor events from the following sources in Defender for Office 365:

- [Alerts](../../compliance/alert-policies.md#default-alert-policies).
- [Automated investigation and response (AIR)](air-about-office.md).

For more information about the Incidents queue, see [Prioritize incidents in Microsoft 365 Defender](../defender/incident-queue.md).

Your triage plan for monitoring the Incidents queue should use the following order of precedence for incidents:

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
|Triage incidents in the Incidents queue at <https://security.microsoft.com/incidents-queue>.|Daily|Verify that all **Medium** and **High** severity incidents from Defender for Office 365 are triaged.|Security Operations Team|
|Investigate and take Response actions on incidents.|Daily|Investigate all incidents and actively take the recommended or manual response actions.|Security Operations Team|
|Resolve incidents.|Daily|If the incident has been remediated, resolve the incident. Resolving the incident resolves all linked and related active alerts.|Security Operations Team|
|Classify incidents.|Daily|Classify incidents as true or false. For true alerts, specify the threat type. This classification helps your security team see threat patterns and defend your organization from them.|Security Operations Team|

### Manage false positive and false negative detections

In Defender for Office 365, you manage false positives (good mail marked as bad) and false negatives (bad mail allowed) in the following locations:

- The [Submissions page (admin submissions)](submissions-admin.md).
- The [Tenant Allow/Block List](tenant-allow-block-list-about.md)
- [Threat Explorer](threat-explorer-about.md)

For more information, see the [Manage false positive and false negative detections](#manage-false-positive-and-false-negative-detections) section later in this article.

False positive and false negative management and the responsible personas are described in the following table:

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Submit false positives and false negatives to Microsoft at <https://security.microsoft.com/reportsubmission>.|Daily|Provide signals to Microsoft by reporting incorrect email, URL, and file detections.|Security Operations Team|
|Analyze admin submission details.|Daily|Understand the following factors for the submissions you make to Microsoft: <ul><li>What caused the false positive or false negative.</li><li>The state of your Defender for Office 365 configuration at the time of the submission.</li><li>Whether you need to make changes to your Defender for Office 365 configuration.</li></ul>|Security Operations Team <br/><br/> Security Administration|
|Add block entries in the Tenant Allow/Block List at <https://security.microsoft.com/tenantAllowBlockList>.|Daily|Use the Tenant Allow/Block List to add block entries for false negative URL, file, or sender detections as needed.|Security Operations Team|
|Release false positive from quarantine.|Daily|After the recipient confirms that the message was incorrectly quarantined, you can release or approve release requests for users. <br/><br/> To control what users can do to their own quarantined messages (including release or request release), see [Quarantine policies](quarantine-policies.md).|Security Operations Team <br/><br/> Messaging Team|

### Review phishing and malware campaigns that resulted in delivered mail

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review email campaigns.|Daily|[Review email campaigns](campaigns.md) that targeted your organization at <https://security.microsoft.com/campaigns>. Focus on campaigns that resulted in messages being delivered to recipients. <br/><br/> Remove messages from campaigns that exist in user mailboxes. This action is required only when a campaign contains email that hasn't already been remediated by actions from incidents, [zero-hour auto purge (ZAP)](zero-hour-auto-purge.md), or manual remediation.|Security Operations Team|

## Weekly activities

### Review email detection trends in Defender for Office 365 reports

In Defender for Office 365, you can use the following reports to review email detection trends in your organization:

- The [Mailflow status report](reports-email-security.md#mailflow-status-report)
- The [Threat Protection status report](reports-email-security.md#threat-protection-status-report)

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review email detection reports at: <ul><li><https://security.microsoft.com/reports/TPSAggregateReportATP></li><li><https://security.microsoft.com/mailflowStatusReport?viewid=type></li></ul>|Weekly|Review email detection trends for malware, phishing, and spam as compared to good email. Observation over time allows you to see threat patterns and determine whether you need to adjust your Defender for Office 365 policies.|Security Administration <br/><br/> Security Operations Team|

### Track and respond to emerging threats using Threat analytics

Use [Threat analytics](/microsoft-365/security/defender-endpoint/threat-analytics) to review active, trending threats.

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review threats in Threat analytics at <https://security.microsoft.com/threatanalytics3>.|Weekly|Threat analytics provides detailed analysis, including the following items: <ul><li>IOCs.</li><li>Hunting queries about active threat actors and their campaigns.</li><li>Popular and new attack techniques.</li><li>Critical vulnerabilities.</li><li>Common attack surfaces.</li><li>Prevalent malware.</li></ul>|Security Operations Team <br/><br/> Threat hunting team|

### Review top targeted users for malware and phishing

Use the **[Top targeted users](threat-explorer-about.md#top-targeted-users)** tab in Threat Explorer to discover or confirm the users who are the top targets for malware and phishing email.

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review the **Top targeted users** tab in Threat Explorer at <https://security.microsoft.com/threatexplorer>.|Weekly|Use the information to decide if you need to adjust policies or protections for these users. Add the affected users to [Priority accounts](/microsoft-365/admin/setup/priority-accounts) to gain the following benefits: <ul><li>Additional visibility when incidents affect them.</li><li>Tailored heuristics for executive mail flow patterns (priority account protection).</li><li>[Email issues for priority accounts report](/exchange/monitoring/mail-flow-reports/mfr-email-issues-for-priority-accounts-report)</li></ul>|Security Administration <br/><br/> Security Operations Team|

### Review top malware and phishing campaigns that target your organization

Campaign Views reveals malware and phishing attacks against your organization. For more information, see [Campaign Views in Microsoft Defender for Office 365](campaigns.md).

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Use **Campaign Views** at <https://security.microsoft.com/campaigns> to review malware and phishing attacks that affect you.|Weekly|Learn about the attacks and techniques and what Defender for Office 365 was able to identify and block. <br/><br/> Use **Download threat report** in Campaign Views for detailed information about a campaign.|Security Operations Team|

## Ad-hoc activities

### Manual investigation and removal of email

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Investigate and remove bad email in Threat Explorer at <https://security.microsoft.com/threatexplorer> based on user requests.|Ad-hoc|Use the **Trigger investigation** action in Threat Explorer to start an automated investigation and response playbook on any email from the last 30 days. Manually triggering an investigation saves time and effort by centrally including: <ul><li>A root investigation.</li><li>Steps to identify and correlate threats.</li><li>Recommended actions to mitigate those threats.</li></ul> <br/> For more information, see [Example: A user-reported phish message launches an investigation playbook](air-about-office.md#example-a-security-administrator-triggers-an-investigation-from-threat-explorer) <br/><br/> Or, you can use Threat Explorer to [manually investigate email](investigate-malicious-email-that-was-delivered.md) with powerful search and filtering capabilities and [take manual response action](remediate-malicious-email-delivered-office-365.md) directly from the same place. Available manual actions: <ul><li>Move to Inbox</li><li>Move to Junk</li><li>Move to Deleted items</li><li>Soft delete</li><li>Hard delete.</li></ul>|Security Operations Team|

### Proactively hunt for threats

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Regular, proactive hunting for threats at: <ul><li><https://security.microsoft.com/threatexplorer></li><li><https://security.microsoft.com/v2/advanced-hunting></li></ul>.|Ad-hoc|Search for threats using [Threat Explorer](threat-explorer-about.md) and [Advanced hunting](../defender-endpoint/advanced-hunting-overview.md).|Security Operations Team <br/><br/> Threat hunting team|
|Share hunting queries.|Ad-hoc|Actively share frequently used, useful queries within the security team for faster manual threat hunting and remediation. <br/><br/> Use [Threat trackers](threat-trackers.md) and [shared queries in Advanced hunting](/microsoft-365/security/defender/advanced-hunting-shared-queries).|Security Operations Team <br/><br/> Threat hunting team|
|Create custom detection rules at <https://security.microsoft.com/custom_detection>.|Ad-hoc|[Create custom detection rules](../defender/custom-detections-overview.md) to proactively monitor events, patterns, and threats based on Defender for Office 365 data in Advance Hunting. Detection rules contain advanced hunting queries that generate alerts based on the matching criteria.|Security Operations Team <br/><br/> Threat hunting team|

### Review Defender for Office 365 policy configurations

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review the configuration of Defender for Office 365 policies at <https://security.microsoft.com/configurationAnalyzer>.|Ad-hoc <br/><br/> Monthly|Use the [Configuration analyzer](configuration-analyzer-for-security-policies.md) to compare your existing policy settings to the [recommended Standard or Strict values for Defender for Office 365](recommended-settings-for-eop-and-office365.md). The Configuration analyzer identifies accidental or malicious changes that can lower your organization's security posture. <br/><br/> Or you can use the PowerShell-based [ORCA tool](https://aka.ms/getorca).|Security Administration <br/><br/> Messaging Team|
|Review detection overrides in Defender for Office 365 at <https://security.microsoft.com/reports/TPSMessageOverrideReportATP>|Ad-hoc <br/><br/> Monthly|Use the [View data by System override \> Chart breakdown by Reason view](reports-email-security.md#view-data-by-system-override-and-chart-breakdown-by-reason) in the **Threat Protection status report** to review email that was detected as phishing but delivered due to policy or user override settings. <br/><br/> Actively investigate, remove, or fine tune overrides to avoid delivery of email that was determined to be malicious.|Security Administration <br/><br/> Messaging Team|

### Review spoof and impersonation detections

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review the **Spoof intelligence insight** and the **Impersonation detection insights** at <ul><li><https://security.microsoft.com/spoofintelligence></li><li><https://security.microsoft.com/impersonationinsight></li></ul>.|Ad-hoc <br/><br/> Monthly|Use the [spoof intelligence insight](anti-spoofing-spoof-intelligence.md) and the [impersonation insight](anti-phishing-mdo-impersonation-insight.md) to adjust filtering for spoof and impersonation detections.|Security Administration <br/><br/> Messaging Team|

### Review priority account membership

|Activity|Cadence|Description|Persona|
|---|---|---|---|
|Review who's defined as a priority account at <https://security.microsoft.com/securitysettings/userTags>.|Ad-hoc|Keep the membership of [priority accounts](/microsoft-365/admin/setup/priority-accounts) current with organizational changes to get the following benefits for those users: <ul><li>Better visibility in reports.</li><li>Filtering in incidents and alerts.</li><li>Tailored heuristics for executive mail flow patterns (priority account protection).</li></ul> <br/> Use custom [user tags](user-tags-about.md) for other users to get: <ul><li>Better visibility in reports.</li><li>Filtering in incidents and alerts.</li></ul>|Security Operations Team|

## Appendix

### Learn about Microsoft Defender for Office 365 tools and processes

Security operations and response team members need to integrate Defender for Office 365 tools and features into existing investigations and response processes. Learning about new tools and capabilities can take time but it's a critical part of the on-boarding process. The simplest way for SecOps and email security team members to learn about Defender for Office 365 is to use the training content that's available as part of the Ninja training content at <https://aka.ms/mdoninja>.

The content is structured for different knowledge levels (Fundamentals, Intermediate, and Advanced) with multiple modules per level.

Short videos for specific tasks are also available in the [Microsoft Defender for Office 365 YouTube channel](https://www.youtube.com/playlist?list=PL3ZTgFEc7LystRja2GnDeUFqk44k7-KXf).

### Permissions for Defender for Office 365 activities and tasks

Permissions for managing Defender for Office 365 in the Microsoft 365 Defender portal and PowerShell are based on the role-based access control (RBAC) permissions model. RBAC is the same permissions model that's used by most Microsoft 365 services. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).

> [!NOTE]
> Privileged Identity Management (PIM) in Azure AD is also a way to assign required permissions to SecOps personnel. For more information, see [Privileged Identity Management (PIM) and why to use it with Microsoft Defender for Office 365](use-privileged-identity-management-in-defender-for-office-365.md).

The following permissions (roles and role groups) are available in Defender for Office 365 and can be used to grant access to security team members:

- **Azure AD**: Centralized roles that assign permissions for _all_ Microsoft 365 services, including Defender for Office 365. You can view the Azure AD roles and assigned users in the Microsoft 365 Defender portal, but you can't manage them directly there. Instead, you manage Azure AD roles and members at <https://aad.portal.azure.com/#view/Microsoft_AAD_IAM/RolesManagementMenuBlade/~/AllRoles/adminUnitObjectId//resourceScope/%2F>. The most frequent roles used by security teams are:
  - **[Security Administrator](/azure/active-directory/roles/permissions-reference#security-administrator)**
  - **[Security Reader](/azure/active-directory/roles/permissions-reference#security-reader)**

- **Exchange Online** and **Email & collaboration**: Roles and role groups that grant permission specific to Microsoft Defender for Office 365. The following roles aren't available in Azure AD, but can be important for security teams:

  - **Preview** role (Email & collaboration): Assign this role to team members who need to preview or download email messages as part of investigation activities. Allows users to [preview and download](investigate-malicious-email-that-was-delivered.md#preview-role-permissions) email messages in cloud mailboxes using the [email entity page](mdo-email-entity-page.md#email-preview-and-download-for-cloud-mailboxes).

    By default, this role is assigned only to the following role groups:

    - Data Investigator
    - eDiscovery Manager

    To assign this role to a new or existing custom role group, see [Email & collaboration roles in the Microsoft 365 Defender portal](mdo-portal-permissions.md#email--collaboration-roles-in-the-microsoft-365-defender-portal).

  - **Search and Purge** role (Email & collaboration): Approve the deletion of malicious messages as recommended by AIR or take manual action on messages in hunting experiences like Threat Explorer.

    By default, this role is assigned only to the following role groups:

    - Data Investigator
    - Organization Management

    To assign this role to a new or existing custom role group, see [Email & collaboration roles in the Microsoft 365 Defender portal](mdo-portal-permissions.md#email--collaboration-roles-in-the-microsoft-365-defender-portal).

  - **Tenant AllowBlockList Manager** (Exchange Online): Manage allow and block entries in the [Tenant Allow/Block List](tenant-allow-block-list-about.md). Blocking URLs, files (using file hash) or senders is a useful response action to take when investigating malicious email that was delivered.

    By default, this role is assigned only to the **Security Operator role group in Exchange Online**, not in Azure AD. Membership in the **[Security Operator role in Azure AD](/azure/active-directory/roles/permissions-reference#security-operator)** _doesn't_ allow you to manage entries the Tenant Allow/Block List.

    Members of the **Security Administrator** or **Organization management** roles in Azure AD or the corresponding role groups in Exchange Online _are_ able to manage entries in the Tenant Allow/Block List.

### SIEM/SOAR integration

Defender for Office 365 exposes most of its data through a set of programmatic APIs. These APIs help you automate workflows and make full use of Defender for Office 365 capabilities. Data is available through the [Microsoft 365 Defender APIs](/microsoft-365/security/defender/api-overview) and can be used to integrate Defender for Office 365 into existing SIEM/SOAR solutions.

- [Incident API](/microsoft-365/security/defender/api-incident): Defender for Office 365 alerts and automated investigations are active parts of incidents in Microsoft 365 Defender. Security teams can focus on what's critical by grouping the full attack scope and all impacted assets together.

- [Event streaming API](/microsoft-365/security/defender/streaming-api): Allows shipping of real-time events and alerts into a single data stream as they happen. Supported event types in Defender for Office 365 include:
  - [EmailEvents](/microsoft-365/security/defender/advanced-hunting-emailevents-table)
  - [EmailUrlInfo](/microsoft-365/security/defender/advanced-hunting-emailurlinfo-table)
  - [EmailAttachmentInfo](/microsoft-365/security/defender/advanced-hunting-emailattachmentinfo-table)
  - [EmailPostDeliveryEvents](/microsoft-365/security/defender/advanced-hunting-emailpostdeliveryevents-table)

  The events contain data from processing all email (including intra-org messages) in the last 30 days.

- [Advance Hunting API](/microsoft-365/security/defender/api-advanced-hunting): Allows cross-product threat hunting.

- [Threat Assessment API](/graph/api/resources/threatassessment-api-overview): Can be used to report spam, phishing URLs, or malware attachments directly to Microsoft.

To connect Defender for Office 365 incidents and raw data with Microsoft Sentinel, you can use the [Microsoft 365 Defender (M365D) connector](/azure/sentinel/connect-microsoft-365-defender?tabs=MDO)

You can use the following "Hello World" example to test API access to Microsoft Defender APIs: [Hello World for Microsoft 365 Defender REST API](/microsoft-365/security/defender/api-hello-world).

For more information about SIEM tool integration, see [Integrate your SIEM tools with Microsoft 365 Defender](/microsoft-365/security/defender/configure-siem-defender).

## Address false positives and false negatives in Defender for Office 365

User reported messages and admin submissions of email messages are critical positive reinforcement signals for our machine learning detection systems. Submissions help us review, triage, rapidly learn, and mitigate attacks. Actively reporting false positives and false negatives is an important activity that provides feedback to Defender for Office 365 when mistakes are made during detection.

Organizations have multiple options for configuring user reported messages. Depending on the configuration, security teams might have more active involvement when users submit false positives or false negatives to Microsoft:

- User reported messages are sent to Microsoft for analysis when the [User reported settings](submissions-user-reported-messages-custom-mailbox.md) are configured with either of the following settings:
  - **Send the reported messages to**: **Microsoft only**.
  - **Send the reported messages to**: **Microsoft and my reporting mailbox**.

  Security teams members should do add-hoc [admin submissions](submissions-admin.md) when the operations team discovers false positives or false negatives that weren't reported by users.

- When user reported messages are configured to send messages only to the organization's mailbox, security teams should actively send user-reported false positives and false negatives to Microsoft via admin submissions.

When a user reports a message as phishing, Defender for Office 365 generates an alert, and the alert triggers an AIR playbook. Incident logic correlates this information to other alerts and events where possible. This consolidation of information helps security teams triage, investigate, and respond to user reported messages.

The submission pipeline in the service follows a tightly integrated process when user report messages and admins submit messages. This process includes:

- Noise reduction.
- Automated triage.
- Grading by security analysts and human-partnered machine learning-based solutions.

For more information, see [Reporting an email in Defender for Office 365 - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/reporting-an-email-in-microsoft-defender-for-office-365/ba-p/2870231).

Security team members can do submissions from multiple locations in the Microsoft 365 Defender portal at <https://security.microsoft.com>:

- [Admin submission](submissions-admin.md): Use the **Submissions** page to submit suspected spam, phishing, URLs, and files to Microsoft.
- Directly from Threat Explorer using one of the following message actions:
  - Report clean
  - Report phishing
  - Report malware
  - Report spam

  You can select up to 10 messages to perform a bulk submission. Admin submissions created using these methods are visible on the respective tabs on the **Submissions** page.

For the short-term mitigation of false negatives, security teams can directly manage block entries for files, URLs, and domains or email addresses in the [Tenant Allow/Block List](tenant-allow-block-list-about.md).

For the short-term mitigation of false positives, security teams can't directly manage allow entries for domains and email addresses in the Tenant Allow/Block List. Instead, they need to use [admin submissions](submissions-admin.md) to report the email message as a false positive. For instructions, see [Report good email to Microsoft](submissions-admin.md#report-good-email-to-microsoft).

[Quarantine](quarantine-admin-manage-messages-files.md) in Defender for Office 365 holds potentially dangerous or unwanted messages and files. Security teams can view, release, and delete all types of quarantined messages for all users. This capability enables security teams to respond effectively when a false positive message or file is quarantined.

## Integrate third-party reporting tools with Defender for Office 365 user reported messages

If your organization uses a third-party reporting tool that allows users to internally report suspicious email, you can integrate the tool with the user reported message capabilities of Defender for Office 365. This integration provides the following benefits to security teams:

- Integration with the AIR capabilities of Defender for Office 365.
- Simplified triage.
- Reduced investigation and response time.

Designate the reporting mailbox where user reported messages are sent on the **User reported settings** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/securitysettings/userSubmission>. For more information, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

> [!NOTE]
>
> - The reporting mailbox must be an Exchange Online mailbox.
> - The third-party reporting tool must include the original reported message as an uncompressed .EML or .MSG attachment in the message that's sent to the reporting mailbox (don't just forward the original message to the reporting mailbox). For more information, see [Message submission format for third-party reporting tools](submissions-user-reported-messages-custom-mailbox.md#message-submission-format-for-third-party-reporting-tools).
> - The reporting mailbox requires specific prerequisites to allow potentially bad messages to be delivered without being filtered or altered. For more information, see [Configuration requirements for the reporting mailbox](submissions-user-reported-messages-custom-mailbox.md#configuration-requirements-for-the-reporting-mailbox).

When a user reported message arrives in the reporting mailbox, Defender for Office 365 automatically generates the alert named **Email reported by user as malware or phish**. This alert launches an [AIR playbook](air-about-office.md#example-a-user-reported-phish-message-launches-an-investigation-playbook). The playbook performs a series of automated investigations steps:

- Gather data about the specified email.
- Gather data about the threats and _entities_ related to that email (for example, files, URLs, and recipients).
- Provide recommended actions for the SecOps team to take based on the investigation findings.

**Email reported by user as malware or phish** alerts, automated investigations and their recommended actions are automatically correlated to incidents in Microsoft 365 Defender. This correlation further simplifies the triage and response process for security teams. If multiple users report the same or similar messages, all of the users and messages are correlated into the same incident.

Data from alerts and investigations in Defender for Office 365 is automatically compared to alerts and investigations in the other Microsoft 365 Defender products:

- Microsoft Defender for Endpoint
- Microsoft Defender for Cloud Apps
- Microsoft Defender for Identity

If a relationship is discovered, the system creates an incident that gives visibility for the entire attack.
