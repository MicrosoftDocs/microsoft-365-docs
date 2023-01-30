---
title: "Learn about communication compliance"
description: "Learn about communication compliance in Microsoft Purview"
keywords: Microsoft 365, Microsoft Purview, compliance, communication compliance
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.SupervisoryReview'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- highpri 
- tier1
- purview-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- highpri
search.appverid:
- MET150
- MOE150
---

# Learn about communication compliance

> [!IMPORTANT]
> Microsoft Purview Communication Compliance provides the tools to help organizations detect regulatory compliance (for example, SEC or FINRA) and business conduct violations such as sensitive or confidential information, harassing or threatening language, and sharing of adult content. Built with privacy by design, usernames are pseudonymized by default, role-based access controls are built in, investigators are opted in by an admin, and audit logs are in place to help ensure user-level privacy.

Microsoft Purview Communication Compliance is an insider risk solution that helps minimize communication risks by helping you detect, capture, and act on potentially inappropriate messages in your organization. Pre-defined and custom policies allow you to check internal and external communications for policy matches so they can be examined by designated reviewers. Reviewers can investigate email, Microsoft Teams, Yammer, or third-party communications in your organization and take appropriate actions to make sure they're compliant with your organization's message standards.

Communication compliance policies in Microsoft 365 help you overcome many modern challenges associated with compliance and internal and external communications, including:

- Checking increasing types of communication channels
- The increasing volume of message data
- Regulatory enforcement and the risk of fines

Additionally, there may be a separation of duties between your IT admins and your compliance management team. Communication compliance supports the separation between configuration of policies and the investigation and review of messages. For example, the IT group for your organization may be responsible for setting up communication compliance role permissions, groups, and policies and investigators and reviewers may be responsible for message triage, review, and mitigation actions.

For more information and an overview of the planning process to address compliance and risky activities in your organization, see [Starting an insider risk management program](https://download.microsoft.com/download/b/2/0/b208282a-2482-4986-ba07-15a9b9286df0/pwc-starting-an-insider-risk-management-program-with-pwc-and-microsoft.pdf).

Watch the video below to learn how to fulfill regulatory compliance requirements with communication compliance:
<br>
<br>
>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE5dQo1]

> [!IMPORTANT]
> Communication compliance is currently available in tenants hosted in geographical regions and countries supported by Azure service dependencies. To verify that communication compliance is supported for your organization, see [Azure dependency availability by country/region](/troubleshoot/azure/general/dependency-availability-by-country).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Scenarios for communication compliance

Communication compliance policies can assist with reviewing messages in your organization in several important compliance areas:

- **Corporate policies**

    Users must comply with acceptable use, ethical standards, and other corporate policies in all their business-related communications. Communication compliance policies can detect policy matches and help you take corrective actions to help mitigate these types of incidents. For example, you could check user communications in your organization for human resources concerns such as harassment or the use of potentially inappropriate or offensive language.

- **Risk management**

    Organizations are responsible to all communications distributed throughout their infrastructure and corporate network systems. Using communication compliance policies to help identify and manage potential legal exposure and risk can help minimize risks before they can damage corporate operations. For example, you could check messages in your organization for unauthorized communications and conflicts of interest about confidential projects such as upcoming acquisitions, mergers, earnings disclosures, reorganizations, or leadership team changes.

- **Regulatory compliance**

    Most organizations must comply with some type of regulatory compliance standards as part of their normal operating procedures. These regulations often require organizations to implement some type of supervisory or oversight process for messaging that is appropriate for their industry. The Financial Industry Regulatory Authority (FINRA) Rule 3110 is a good example of a requirement for organizations to have supervisory procedures in place to check user communications and the types of businesses in which it engages. Another example may be a need to review broker-dealer communications in your organization to safeguard against potential insider trading, collusion, or bribery activities. Communication compliance policies can help your organization meet these requirements by providing a process to both analyze and report on corporate communications. For more information on support for financial organizations, see [Key compliance and security considerations for US banking and capital markets](../solutions/financial-services-secure-collaboration.md).

## Key feature areas

Communication compliance offers several important features to help address compliance concerns on your messaging platforms:

- Intelligent customizable templates
- Flexible remediation workflows
- Actionable insights

![Communication compliance home page.](../media/communication-compliance-home.png)

### Intelligent customizable templates

Intelligent customizable templates in communication compliance allow you to apply machine learning to intelligently detect communication violations in your organization.

- **Customizable pre-configured templates**: Policy templates help address the most common communications risks. Initial policy creation and follow-on updating are now quicker with pre-defined templates to analyze and mitigate potentially inappropriate content, sensitive information, conflict of interest, and regulatory compliance issues.
- **New machine learning support**: Built-in [classifiers](/microsoft-365/compliance/classifier-get-started-with) to analyze and mitigate discrimination, threats, harassment, profanity, and potentially inappropriate images and help reduce misclassified content in communication messages, saving reviewers time during the investigation and remediation process.
- **Improved condition builder**: Configure policy conditions that are now streamlined into a single, integrated experience in the policy wizard, reducing confusion in how conditions are applied for policies.

### Flexible remediation workflows

Built-in remediation workflows allow you to quickly identify and take action on messages with policy matches in your organization. The following new features increase efficiency for investigation and remediation activities:

- **Flexible remediation workflow**: New remediation workflow helps you quickly take action on policy matches, including new options to escalate messages to other reviewers and to send email notifications to users with policy matches.
- **Conversation policy matching**: Messages in conversations are grouped by policy matches to give you more visibility about how conversations relate to your communication policies. For example, conversation policy matching in the *Pending Alerts* view will automatically show all messages in a Teams channel that have matches for your communications policies for analyzing and mitigating potentially inappropriate messages. Other messages in conversations that don't match your communications policies wouldn't be displayed.
- **Keyword highlighting**: Terms matching policy conditions are highlighted in the message text view to help reviewers quickly analyze and remediate policy alerts.
- **Optical character recognition (OCR) (preview)**: Check, detect, and investigate printed and handwritten text within images embedded or attached to email or Microsoft Teams chat messages.
- **New filters**: Investigate and remediate policy alerts faster with message filters for several fields, including sender, recipient, date, domains, and many more.
- **Improved message views**: Investigation and remediation actions are now quicker with new message source and text views. Message attachments are now viewable to provide complete context when taking remediation actions.
- **User history**: Historical view of all user message remediation activities, such as past notifications and escalations for policy matches, now provides reviewers with more context during the remediation workflow process. First-time or repeat instances of policy matches for users are now archived and easily viewable.
- **Pattern detected notification**: Many harassing and bullying actions take place over time and involve reoccurring instances of the same behavior by a user. The pattern detected notification displayed in alert details helps raise attention to these alerts and this type of behavior.
- **Translation**: Quickly investigate message details in eight languages using translate support in the remediation workflow. Messages in other languages are automatically converted to the display language of the reviewer.
- **Attachment detection**: Check, detect, and investigate linked content (Modern attachments) from OneDrive and Microsoft Teams that match policy classifiers and conditions for Microsoft Teams messages. Attachment content is automatically extracted to a text file for detailed review and action.

### Actionable insights

New interactive dashboards for alerts, policy matches, actions, and trends help you quickly view the status of pending and resolved alerts in your organization.

- **Proactive intelligent alerts**: Alerts for policy matches requiring immediate attention include new dashboards for pending items sorted by severity and new automatic email notifications sent to designated reviewers.
- **Interactive dashboards**: New dashboards display policy matches, pending and resolved actions, and trends by users and policy.
- **Auditing support**: A full log of policy and review activities is easily exported from the Microsoft Purview compliance portal to help support audit review requests.

## Integration with Microsoft 365 services

Communication compliance policies check, detect, and capture messages across several communication channels to help you quickly review and remediate compliance issues:

- **Microsoft Teams**: Chat communications for public and private [Microsoft Teams](/MicrosoftTeams/Teams-overview) channels and individual chats are supported in communication compliance as a standalone channel source or with other Microsoft 365 services. You'll need to manually add individual users, distribution groups, or specific Microsoft Teams channels when you select users and groups to supervise in a communication compliance policy. Teams users can also self-report potentially inappropriate messages in private and group channels and chats for review and remediation.
- **Exchange Online**: All mailboxes hosted on [Exchange Online](/Exchange/exchange-online) in your Microsoft 365 organization are eligible for analyses. Emails and attachments matching communication compliance policy conditions are instantly available for investigation and in compliance reports. Exchange Online is now an optional source channel and is no longer required in communication compliance policies.
- **Yammer**: Private messages and public community conversations in [Yammer](/yammer/yammer-landing-page) are supported in communication compliance policies. Yammer is an optional channel and must be in [native mode](/yammer/configure-your-yammer-network/overview-native-mode) to support checking of messages and attachments.
- **Third-party sources**: You can check messages from [third-party sources](/microsoft-365/compliance/archiving-third-party-data) for data imported into mailboxes in your Microsoft 365 organization. Communication compliance supports connections to several popular platforms, including Instant Bloomberg and others.

To learn more about messaging channel support in communication compliance policies, see [Detect channel signals with communication compliance](/microsoft-365/compliance/communication-compliance-channels).

## Integration with insider risk management (preview)

Communication compliance can provide risk signals detected in messages to insider risk management risky user policies. Using a dedicated [Detect inappropriate text](/microsoft-365/compliance/communication-compliance-policies#policy-templates) policy in communication compliance, you can choose to add this policy to a [Data leaks by risky employees](/microsoft-365/compliance/insider-risk-management-policies#data-leaks-by-risky-users-preview) or [Security policy violations by risky employees](/microsoft-365/compliance/insider-risk-management-policies#security-policy-violations-by-risky-users-preview) policy in insider risk management. Risky users detected in messages by the communication compliance policy act as a triggering event to bring users into scope for the insider risk management policies.

To learn more about integration with insider risk management, see [Create and manage communication compliance policies](/microsoft-365/compliance/communication-compliance-policies#integration-with-insider-risk-management-preview).
To learn more about insider risk management, see [Learn about insider risk management](/microsoft-365/compliance/insider-risk-management).

## Get started with recommended actions (preview)

Whether you're setting up communication compliance for the first time or getting started with creating new policies, the new [recommended actions](/microsoft-365/compliance/communication-compliance-configure#recommended-actions-preview) experience can help you get the most out of communication compliance capabilities. Recommended actions include setting up permissions, creating distribution groups, creating policies, and more.

## Workflow

Communication compliance helps you address common pain points associated with complying with internal policies and regulatory compliance requirements. With focused policy templates and a flexible workflow, you can use actionable insights to quickly resolve detected compliance issues.

Identifying and resolving compliance issues with communication compliance uses the following workflow:

![Communication compliance workflow.](../media/communication-compliance-workflow.png)

### Configure

In this workflow step, you identify your compliance requirements and configure applicable communication compliance policies. Policy templates are a great way to not only quickly configure a new compliance policy, but to also quickly modify and update policies as your requirements change. For example, you may want to quickly test a policy for potentially inappropriate content on communications for a small group of users before configuring a policy for all users in your organization.

>[!IMPORTANT]
>By default Global Administrators do not have access to communication compliance features. To enable permissions for communication compliance features, see [Make communication compliance available in your organization](/microsoft-365/compliance/communication-compliance-configure#step-1-required-enable-permissions-for-communication-compliance).

You can choose from the following policy templates in the Microsoft Purview compliance portal:

- **Detect inappropriate text**: Use this template to quickly create a policy that uses built-in classifiers to automatically detect text in messages that may be considered inappropriate, abusive, or offensive.
- **Detect inappropriate images**: Use this template to quickly create a policy that uses built-in classifiers to automatically detect content that contains adult and racy images that may be considered as inappropriate in your organization.
- **Monitor for sensitive information**: Use this template to quickly create a policy to check communications containing defined sensitive information types or keywords to help make sure that important data isn't shared with people that shouldn't have access.
- **Monitor for financial regulatory compliance**: Use this template to quickly create a policy to check communications for references to standard financial terms associated with regulatory standards.
- **Monitor for conflict of interest**: Use this template to quickly create a policy to detect communications between two groups or two users to help avoid conflicts of interest.
- **Custom policy**: Use this template to configure specific communication channels, individual detection conditions, and the amount of content to detect and review in your organization.
- **User-reported messages policy**: This system policy supports user reported messages from channel, group, and private chat messages. Enabled by default in the Teams admin center.

> [!TIP]
> Use [recommended actions](/microsoft-365/compliance/communication-compliance-configure#recommended-actions) to help you determine if you need a sensitive information type policy or if you need to update existing inappropriate content policies.

### Investigate

In this step, you can look deeper into the issues detected as matching your communication compliance policies. This step includes the following actions available in the Microsoft Purview compliance portal:

- **Alerts**: When a message matches a policy condition, an alert is automatically generated. For each alert, you can see the status, the severity, the time detected, and if an eDiscovery (Premium) case is assigned and its status. New alerts are displayed on the communication compliance home page and the **Alerts** page and are listed in order of severity.
- **Issue management**: For each alert, you can take investigative actions to help remediate the issue detected in the message.
- **Document review**: During the investigation of an issue, you can use several views of the message to help properly evaluate the detected issue. The views include a conversation summary, text-only, and detail views of the communication conversation.
- **Reviewing user activity history**: View the history of user message activities and remediation actions, such as past notifications and escalations, for policy matches.
- **Filters**: Use filters such as sender, recipient, date, and subject to quickly narrow down the message alerts that you want to review.

### Remediate

The next step is to remediate communication compliance issues you've investigated using the following options:

- **Resolve**: After reviewing an issue, you can remediate by resolving the alert. Resolving an alert removes it from the pending alert queue, and the action is preserved as an entry in the *Resolved queue* for the matching policy. Alerts are automatically resolved after marking the alert as misclassified, sending a notice to a user about the alert, or opening a new case for the alert.
- **Tag a message**: As part of the resolution of an issue, you can tag the detected message as compliant, non-compliant, or as questionable as it relates to the policies and standards for your organization. Tagging can help you micro-filter policy alerts for escalations or as part of other internal review processes.
- **Notify the user**: Often, users accidentally or inadvertently violate a communication compliance policy. You can use the notify feature to provide a warning notice to the user and to resolve the issue.
- **Escalate to another reviewer**: Sometimes, the initial reviewer of an issue needs input from other reviewers to help resolve the incident. You can easily escalate message issues to reviewers in other areas of your organization as part of the resolution process.
- **Report as misclassified**: Messages incorrectly detected as matches of compliance policies will occasionally slip through to the review process. You can mark these types of alerts as misclassified, submit feedback to Microsoft about the misclassification to help improve global classifiers, and automatically resolve the issue.
- **Remove message in Teams (preview)**: Potentially inappropriate messages may be removed from displaying in Microsoft Teams channels or personal and group chat messages. Those identified messages that are removed are replaced with a notification that the message has been removed for a policy violation.
- **Escalate for investigation**: In the most serious situations, you may need to share communication compliance information with other reviewers in your organization. Communication compliance is tightly integrated with other Microsoft Purview features to help you with end-to-end risk resolution. Escalating a case for investigation allows you to transfer data and management of the case to Microsoft Purview eDiscovery (Premium). eDiscovery (Premium) provides an end-to-end workflow to preserve, collect, review, analyze, and export content that's responsive to your organization's internal and external investigations. It allows legal teams to manage the entire legal hold notification workflow. To learn more about eDiscovery (Premium) cases, see [Overview of Microsoft Purview eDiscovery (Premium)](/microsoft-365/compliance/overview-ediscovery-20).

### Maintain

Keeping track and mitigating compliance issues identified by communication compliance policies spans the entire workflow process. As alerts are generated and investigation and remediation actions are implemented, existing policies may need review and updates, and new policies may need to be created.

- **Review and report**: Use communication compliance dashboard widgets, export logs, and events recorded in the unified audit logs to continually evaluate and improve your compliance posture.

## Ready to get started?

- For planning information, see [Plan for communication compliance](/microsoft-365/compliance/communication-compliance-plan).
- Check out the [case study for Contoso](/microsoft-365/compliance/communication-compliance-case-study) and see how they quickly configured a communication compliance policy to detect potentially inappropriate content in Microsoft Teams, Exchange Online, and Yammer communications.
- To configure communication compliance for your Microsoft 365 organization, see [Configure communication compliance](/microsoft-365/compliance/communication-compliance-configure).

## More resources

For the latest Ignite videos for communication compliance, see the following:

- [Foster a culture of safety and inclusion with communication compliance](https://www.youtube.com/watch?v=oLVzxcaef3w)
- [Learn how to reduce communication risks within your organization](https://www.youtube.com/watch?v=vzARb1YaxGo)
- [Better with Microsoft Teams - Learn more about the latest native Teams integrated features in communication compliance](https://www.youtube.com/watch?v=m4jukD5Fh-o)

For a quick overview of communication compliance, see the [Detect workplace harassment and respond with Communication Compliance](https://youtu.be/z33ji7a7Zho) video on the [Microsoft Mechanics channel](https://www.youtube.com/user/OfficeGarageSeries).

Check out how [TD Securities is using communication compliance](https://customers.microsoft.com/story/1391545301764211731-td-securities-banking-capital-markets-compliance) to address their regulatory obligations and meet their security and stability needs.

Check out the [Microsoft Mechanics video](https://www.youtube.com/watch?v=Ynkfu8OF0wQ) on how insider risk management and communication compliance work together to help minimize data risks from users in your organization.

To keep up with the latest communication compliance updates, select **What's new** in [communication compliance](https://compliance.microsoft.com/) for your organization.
