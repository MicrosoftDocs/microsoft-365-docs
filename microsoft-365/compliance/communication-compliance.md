---
title: "Communication compliance in Microsoft 365 (preview)"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.SupervisoryReview'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
- MOE150
description: "Learn about Communication compliance in Microsoft 365"
---

# Communication compliance in Microsoft 365 (preview)

Communication compliance in Microsoft 365 helps you minimize communication risks by helping you detect, capture, and take remediation actions for inappropriate messages in your organization. Pre-defined and custom policies allow you to scan internal and external communications for policy matches so they can be examined by designated reviewers. Reviewers can investigate scanned email, Microsoft Teams, or third-party communications in your organization and take appropriate remediation actions to make sure that they are compliant with your organization's message standards.

Communication compliance policies in Microsoft 365 help you overcome many modern compliance challenges associated with internal and external communications, including:

- Scanning increasing types of communication channels
- The increasing volume of message data
- Regulatory enforcement & the risk of fines

In some organizations, there may be a separation of duties between IT support and the compliance management group. Microsoft 365 supports the separation between Communication compliance configuration and the configuration of policies for scanning communications. For example, the IT group for an organization may be responsible for setting up role permissions and groups to support Communication compliance policies configured and managed by the organization's compliance team.

To learn more about upcoming Communication compliance feature improvements and availability, see the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap).

## Scenarios for Communication compliance

Communication compliance policies can assist with reviewing messages in your organization in several important compliance areas:

- **Corporate policies**

    Employees must comply with acceptable use, ethical standards, and other corporate policies in all their business-related communications. Communication compliance policies can detect policy matches and help you take corrective actions to help mitigate these types of incidents. For example, you could scan employee communications in your organization for potential human resources concerns such as harassment or the use of inappropriate or offensive language.

- **Risk management**

    Organizations are responsible to all communications distributed throughout their infrastructure and corporate network systems. Using communications supervision policies to help identify and manage potential legal exposure and risk can help minimize risks before they can damage corporate operations. For example, you could scan messages in your organization for unauthorized communications about confidential projects such as upcoming acquisitions, mergers, earnings disclosures, reorganizations, or leadership team changes.

- **Regulatory compliance**

    Most organizations must comply with some type of regulatory compliance standards as part of their normal operating procedures. These regulations often require organizations to implement some type of supervisory or oversight process for messaging that is appropriate for their industry. The Financial Industry Regulatory Authority (FINRA) Rule 3110 is a good example of a requirement for organizations to have supervisory procedures in place to scan employee communications and the types of businesses in which it engages. Another example may be a need to review broker-dealer communications in your organization to safeguard against potential money-laundering, insider trading, collusion, or bribery activities. Communication compliance policies can help your organization meet these requirements by providing a process to both scan and report on corporate communications.

## New enhancements

Communication compliance in Microsoft 365 builds on the features of [Supervision policies in Office 365](supervision-policies.md) with several new enhancements:

- Intelligent customizable playbooks​
- Flexible remediation workflows
- Actionable insights

### Intelligent customizable playbooks

Intelligent customizable playbooks in Communication compliance allow you to leverage machine learning to intelligently detect communication violations in your organization.

- **Customizable pre-configured templates**: New policy templates help address the most common communications risks. Policy creation is now quicker with pre-defined anti-harassment and offensive language, sensitive information, and regulatory compliance templates.
- **New machine learning support**: Built-in classifiers help reduce false positives in scanned messages, saving reviewers time during the investigation and remediation process.
- Build your own machine learning model to detect violations unique to your organization

### Flexible remediation workflows​

Built-in remediation workflows allow you to quickly identify and take action on messages with policy matches in your organization. The following new features increase efficiency for investigation and remediation activities:

- **Conversation threading**: Messages are now visually grouped by original message and all associated reply messages, giving you better context during investigation and remediation actions.
- **Keyword highlighting**: Terms matching policy conditions are highlighted in the message text view to help reviewers quickly locate and remediate policy alerts.
- **Exact and near duplicate detection**: In addition to scanning for exact terms matching Communication compliance polices, near duplicate detection groups textually similar terms and messages together to help speed up your review process.
- ​**Improved filters**: Investigate and remediate policy alerts faster with message filters for several fields, including sender, recipient, date, domains, and many more.
- **Improved message views**: Investigation and remediation actions are now quicker with new message source, text, and annotation views.
- **User history view**: Historical view of user message remediation activities, such as past notifications and escalations for policy matches, now provide reviewers with more context during the remediation workflow process.

### Actionable insights

New interactive dashboards for alerts, policy matches, actions, and trends help you quickly view the status of pending and resolved alerts in your organization.

- **Proactive intelligent alerts**: Alerts for policy matches requiring immediate attention include new dashboards for pending items sorted by severity and new automatic email notification sent to designated reviewers.
- **Interactive dashboards**: New dashboards display policy matches, pending and resolved actions, and trends by users and policy.
- **Auditing support**: A full log of policy and review activities are easily exported from the Microsoft 365 compliance center to help support audit review requests.

## Integration with Microsoft 365 services

Communication compliance policies scan and capture messages across several communication channels to help you quickly review and remediate compliance issues:

- **Exchange Online:** All mailboxes hosted on [Exchange Online](https://docs.microsoft.com/Exchange/exchange-online) in your Microsoft 365 organization are eligible for scanning. Emails and attachments matching Communication compliance policy conditions are instantly available for monitoring and in supervision reports. Exchange Online is now an optional source channel and is no longer required in Communication compliance policies.
- **Microsoft Teams:** Chat communications and associated attachments for public and private [Microsoft Teams](https://docs.microsoft.com/MicrosoftTeams/Teams-overview) channels and individual chats are supported in Communication compliance as a standalone channel source or with other Microsoft 365 services. Policies now automatically scan all Microsoft Teams channels and teams for specific users defined in a policy, eliminating the need to keep a separate mapping list for Microsoft Teams assignments.
- **Skype for Business Online:** Communication compliance policies support scanning chat communications and associated attachments in [Skype for Business Online](https://docs.microsoft.com/SkypeForBusiness/skype-for-business-online).
- **Third-party sources:** You can scan messages from [third-party sources](archiving-third-party-data.md) for data imported into mailboxes in your Microsoft 365 organization. Communication compliance supports connections to several popular platforms, including Instant Bloomberg, Facebook, Twitter, and others.

To learn more about messaging channel support in Communication compliance policies, see [supported communication types](communication-compliance-feature-reference.md#supported-communication-types).

## Workflow

Communication compliance helps you address common pain points associated with complying with internal policies and regulatory compliance requirements. With focused policy templates and a flexible workflow, you can use actionable insights to quickly resolve detected compliance issues. 

Identifying and resolving compliance issues with Communication compliance in Microsoft 365 uses the following workflow:

![Communication compliance workflow](media/communication-compliance-workflow.png)

### Configure

In this workflow step, you identify your compliance requirements and configure applicable Communication compliance policies. You can choose from the following policy templates in the Microsoft 365 compliance center:

- **Offensive language and anti-harassment**: Use this template to quickly create a policy that uses the built-in classifier to automatically detect content that may be considered abusive or offensive.
- **Sensitive information**: Use this template to create a policy to scan communications containing defined sensitive information types or keywords to help make sure important data isn't shared with people that shouldn't have access.
- **Regulatory compliance**: Use this template to create a policy to scan communications for references to standard financial terms associated with regulatory standards.
- **Custom policy**: Use this template to configure specific communication channels, individual detection conditions, and the amount of content to review for supervision in your organization.

### Investigate

In this step, you look deeper into the issues detected as matching your Communication compliance policies. This step includes the following actions available in the Microsoft 365 compliance center:

- **Alerts**: When a message matches a supervision policy, an alert is automatically generated. For each alert, you can see the status, the severity, the time detected, and if a case is assigned and its status. New alerts are displayed on the Communication compliance home page and the **Alerts** page and are listed in order of severity.
- **Issue management**: For each alert, you can take investigative actions to help remediate the issue detected in the message
- **Document review**: During the investigation of an issue, you can use several views of the message to help properly evaluate the detected issue. The views include a conversation summary, text-only, annotated, and detail views of the communication conversation.
- **Reviewing user activity history**: View the history of user message activities and remediation actions, such as past notifications and escalations for policy matches.

### Remediate

The next step is to remediate Communication compliance issues you've investigated using the following options:

- **Resolve**: After reviewing an issue, you can remediate by resolving the alert. Resolving an alert removes it from the pending alert queue and the action is preserved as an entry in the Resolved queue for the matching policy. Alerts are automatically resolved after marking the alert as a false positive, sending a notice to an employee about the alert, or opening a new case for the alert.
- **Tag a message**: As part of the resolution of an issue, you can tag the detected message as compliant, non-compliant, or as questionable as it relates to the policies and standards for your organization. Tagging can help you micro-filter policy alerts for escalations or as part of other internal review processes.
- **Notify the user**: In many cases, users accidentally or inadvertently violate a Communication compliance policy. You can use the notify feature to provide a simple warning notice to the user and to resolve the issue.
- **Escalate to another reviewer**: In some cases, the initial reviewer of an issue may need input from other reviewers to help resolve the incident. You can easily escalate message issues to reviewers in other areas of your organization as part of the resolution process.
- **Mark as a false positive**: Messages incorrectly detected as matches of compliance policies will occasionally slip through to the review process. You can mark these types of alerts as false positives and automatically resolve the issue.

### Monitor

Keeping track and managing compliance issues identified by Communication compliance policies spans the entire workflow process. As alerts are generated and investigation and remediation actions are implemented, existing policies may need review and updates, and new policies may need to be created. 

- **Monitor and report**: Use Communication compliance dashboards, reports, export logs, and events recorded in the unified Office 365 audit logs to continually evaluate and improve your compliance posture.

## Ready to get started?

To configure Communication compliance for your Microsoft 365 organization, see [Configure Communication compliance for Microsoft 365 (preview)](communication-compliance-configure.md).
