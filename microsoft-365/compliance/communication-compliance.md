---
title: "Communications compliance in Microsoft 365 (preview)"
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
description: "Learn about communications compliance in Microsoft 365"
---

# Communications compliance in Microsoft 365 (preview)

Communication compliance in Microsoft 365 allows you to capture employee corporate communications for examination and remediation by designated reviewers. By defining specific conditions in supervision policies, you can scan and capture internal and external email, Microsoft Teams, or 3rd-party communications in your organization. Designated reviewers can then examine messages with alerts to make sure that they are compliant with your organization's message standards and remediate them according to their importance and severity.

Communication compliance policies help you overcome many modern compliance challenges associated with internal and external communications, including:

- Scanning increasing types of communication channels
- The increasing volume of message data
- Regulatory enforcement & the risk of fines

In some organizations, there may be a separation of duties between IT support and the compliance management group. Microsoft 365 supports the separation between supervision policy feature configuration and the configuration of policies for captured communications. For example, the IT group for an organization may be responsible for setting up role permissions and groups to support supervision policies configured and managed by the organization's compliance team.

For a quick overview of communication compliance policies, see the [supervision policy video](https://youtu.be/C3Y8WZ7o_dI) on the [Microsoft Mechanics channel](https://www.youtube.com/user/OfficeGarageSeries).

To learn more about upcoming communication compliance feature improvements and availability, see the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap).

## Scenarios for communication compliance

Communication compliance policies can assist with reviewing messages in your organization in several areas:

- **Corporate policies**

    Employees must comply with acceptable use, ethical standards, and other corporate policies in all their business-related communications. Communication compliance policies can detect policy matches and help you take corrective actions to help mitigate these types of incidents. For example, you could scan employee communications in your organization for potential human resources concerns such as harassment or the use of inappropriate or offensive language.

- **Risk management**

    Organizations are responsible to all communications distributed throughout their infrastructure and corporate network systems. Using communications supervision policies to help identify and manage potential legal exposure and risk can help minimize risks before they can damage corporate operations. For example, you could scan messages in your organization for unauthorized communications about confidential projects such as upcoming acquisitions, mergers, earnings disclosures, reorganizations, or leadership team changes.

- **Regulatory compliance**
scan
    Most organizations must comply with some type of regulatory compliance standards as part of their normal operating procedures. These regulations often require organizations to implement some type of supervisory or oversight process for messaging that is appropriate for their industry. The Financial Industry Regulatory Authority (FINRA) Rule 3110 is a good example of a requirement for organizations to have supervisory procedures in place to scan employee communications and the types of businesses in which it engages. Another example may be a need to review broker-dealer communications in your organization to safeguard against potential money-laundering, insider trading, collusion, or bribery activities. Communication compliance policies can help your organization meet these requirements by providing a process to both scan and report on corporate communications.

## Integration with Microsoft 365 services

Communication compliance policies scan and capture messages across several communication channels to help you review and remediate compliance issues:

- **Exchange Online:** All mailboxes hosted on Exchange Online in your Microsoft 365 or Office 365 subscription are eligible for supervision. Emails and attachments matching communication compliance policy conditions are instantly available for monitoring and in supervision reports. Exchange Online is now an optional source channel and is no longer required in communication compliance policies.
- **Microsoft Teams:** Chat communications and associated attachments for public and private Microsoft Teams channels and individual chats are supported in communication compliance as a standalone channel source or with other Microsoft 365 services. Policies now automatically scan all Microsoft Teams channels and teams for specific users defined in a policy, eliminating the need to keep a separate mapping list for Microsoft Teams assignments.
- **Skype for Business Online:** Communication compliance policies support scanning chat communications and associated attachments in Skype for Business Online.
- **Third-party sources:** You can scan messages from third-party sources for data imported into mailboxes in your Microsoft 365 organization. Communication compliance supports connections to several popular platforms, including Instant Bloomberg, Facebook, Twitter, and others.

To learn more about messaging channel support in communication compliance policies, see [supported communication types](supervision-feature-reference.md#supported-communication-types).

## Workflow

Communication compliance helps you address common pain points associated with complying with internal policies and regulatory compliance requirements. With focused policy templates and a flexible workflow, you can use actionable insights to quickly resolve detected compliance issues. Identifying and resolving communication compliance issues with supervision in Microsoft 365 uses the following workflow:

WORKFLOW ARTWORK

### Configure

In this workflow step, you identify your compliance requirements and configure applicable communication compliance policies. You can choose from the following policy types in the Microsoft 365 compliance center:

- **Offensive language and anti-harassment**: Use the *Monitor for offensive language* template to quickly create a supervision policy that uses the built-in machine learning classifier to automatically detect content that may be considered as harassment.
- **Sensitive information**: Use the *Monitor for sensitive info* template to create a policy to scan communications containing defined sensitive information types or keywords to help make sure important data isn't shared with people that shouldn't have access.
- **Regulatory compliance**: Use the *Monitor for FINRA info* template to... 
- **Custom policy**: Use the *Custom Policy* template to configure specific communication channels, individual detection conditions, and the amount of content to review for supervision in your organization.

### Investigate

In this step, you look deeper into the issues detected as matching your communication compliance policies. This step includes the following actions available in the Microsoft 365 compliance center:

- **Alerts**: When a message matches a supervision policy, an alert is automatically generated. For each alert, you can see the status, the severity, the time detected, and if a case is assigned and its status. New alerts are displayed on the communication compliance home page and the **Alerts** page and are listed in order of severity.
- **Issue management**: For each alert, you can take investigative actions to help remediate the issue detected in the message
- **Document review**: During the investigation of an issue, you can use several views of the message to help properly evaluate the detected issue. The views include a conversation summary, text-only, annotated, and detail views of the communication conversation.
- **Reviewing user activity history**: In addition to message views, you can view the history... NEED MORE INFO - past remediation action for the user, includes supervision cases, escalations, notifications

### Remediate

You remediate communication compliance issues you've investigated using the following options:

- **Resolve**: After reviewing an issue, you can remediate by resolving the alert. Resolving an alert removes it from the pending alert queue and the action is preserved as an entry in the Resolved queue for the matching policy. Alerts are automatically resolved after marking the alert as a false positive, sending a notice to an employee about the alert, or opening a new case for the alert.
- **Tag a message**: As part of the resolution of an issue, you can tag the detected message as compliant, non-compliant, or as questionable as it relates to the policies and standards for your organization. Tagging can help you micro-filter policy alerts for escalations or as part of other internal review processes.
- **Notify the user**: In many cases, users accidentally or inadvertently violate a communication compliance policy. You can use the notify feature to provide a simple warning notice to the user and to resolve the issue.
- **Escalate to another reviewer**: In some cases, the initial reviewer of an issue may need input from other reviewers to help resolve the incident. You can easily escalate message issues to reviewers in other areas of your organization as part of the resolution process.
- **Mark as a false positive**: Messages incorrectly detected as matches of compliance policies will occasionally slip through to the review process. You can mark these types of alerts as false positives and automatically resolve the issue.
- **Open a case in other Microsoft 365 compliance solutions**: In the most severe cases, you may need to open a case for deeper investigation and review of an issue. Communication compliance is tightly integrated with other Microsoft 365 compliance review features to help you with end-to-end resolution management. Opening a case transfers management of the issue and automatically resolves the alert in the communication compliance workflow.
    - **Insider risk management case**: Insider risk management uses logs and risk signals across Microsoft 365 services and other third-party sources to help identify, triage, and remediate risks. Cases in insider risk management contain alerts, user activities, and content sets and alert submissions from communication compliance help provide reviewers with a complete end-to-end perspective of risky activities. To learn more about insider risk management cases in Microsoft 365, see [insider risk management in Microsoft 365](insider-risk-overview.md).
    - **Data Investigation case**: Data Investigations allow you to search for sensitive, malicious, or misplaced data across Microsoft 365 and to take appropriate action to redmediate the data spillage. Creating a new investigation from a communication compliance alert allows reviewers to properly evaluate the extent of any data spillage. To learn more about data investigation cases, see [Overview of Data Investigations in Microsoft 365](overview-data-investigations.md).
    - **Advanced eDiscovery case**: Advanced eDiscovery provides an end-to-end workflow to preserve, collect, review, analyze, and export content that's responsive to your organization's internal and external investigations. It also lets legal teams manage the entire legal hold notification workflow to communicate with custodians involved in a case. Assigning an employee as a custodian in an Advanced eDiscovery case from a communication compliance alert helps your legal team take appropriate actions and manage content preservation. To learn more about Advanced eDiscovery cases, see [Overview of the Advanced eDiscovery in Microsoft 365](overview-ediscovery-20.md).

### Monitor

Keeping track and managing compliance issues identified by communication compliance policies spans the entire workflow process. As alerts are generated and investigation and remediation actions are implemented, existing policies may need review and updates and new policies may need to be created. Use communication compliance dashboards, reports, and events recorded in the unified Office 365 audit logs to evaluate and improve your compliance posture.

## Ready to get started?

To configure communication compliance for your Microsoft 365 organization, see [Configure communication compliance for Microsoft 365 (Preview)](configure-supervision-policies.md).
