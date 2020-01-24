---
title: "Communication compliance feature reference"
description: "Feature reference for communication compliance in Microsoft 365. Learn details and specifications for each of the feature components."
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
---

# Communication compliance feature reference

## Policies

You create communication compliance policies for Microsoft 365 organizations in the Microsoft 365 compliance center. If you have an Office 365 organization, you'll [configure Supervision policies](configure-supervision-policies.md) in the Office 365 Security & Compliance Center. Communication compliance policies define which communications and users are subject to review in your organization, define which custom conditions the communications must meet, and specify who should do reviews. Users included in the **Supervisory Review Administrator** role group can set up policies, and anyone who has this role assigned can access the **Communication compliance** page in the Microsoft 365 compliance center. If needed, you can export the history of modifications to a policy to a .csv file that also includes the status of alerts pending review, escalated items, and resolved items. Policies can't be renamed and can be deleted when no longer needed.

>[!NOTE]
>Supervision policies created in the Office 365 security and compliance center for Office 365 subscriptions cannot migrate to Microsoft 365. If you're migrating from an Office 365 subscription to a Microsoft 365 subscription, you'll need to create new communication compliance polices to replace existing Supervision policies.

## Policy templates

Policy templates are pre-defined policy settings that you can use to quickly create policies to address common compliance scenarios. Each of these templates has differences in conditions and scope, and all templates use the same types of scanning signals. You can choose from the following policy templates:

|**Area**|**Policy Template**|**Details**|
|:-----|:-----|:-----|
| **Offensive language and anti-harassment** | Monitor communications for offensive language | - Locations: Exchange, Teams, Skype for Business <br> - Direction: Inbound, Outbound, Internal <br> - Review Percentage: 100% <br> - Conditions: Offensive language classifier |
| **Sensitive information** | Monitor communications for sensitive information | - Locations: Exchange, Teams, Skype for Business <br> - Direction: Inbound, Outbound, Internal <br> - Review Percentage: 10% <br> - Conditions: Sensitive information, out-of-the-box content patterns and types, custom dictionary option, attachments larger than 1 MB |
| **Regulatory compliance** | Monitor communications for info related to financial regulatory compliance | - Locations: Exchange, Teams, Skype for Business <br> - Direction: Inbound, Outbound <br> - Review Percentage: 10% <br> - Conditions: custom dictionary option, attachments larger than 1 MB |

## Supervised users

Before you start using communication compliance, you must determine who needs their communications reviewed. In the policy, user email addresses identify individuals or groups of people to supervise. Some examples of these groups are Office 365 Groups, Exchange-based distribution lists, and Microsoft Teams channels. You also can exclude specific users or groups from scanning with a specific exclusion group or a list of groups.

>[!IMPORTANT]
>Users covered by communication compliance policies must have either a Microsoft 365 E5 Compliance license, an Office 365 Enterprise E3 license with the Advanced Compliance add-on, or be included in an Office 365 Enterprise E5 subscription.If you don't have an existing Enterprise E5 plan and want to try communication compliance, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279).

## Reviewers

When you create a communication compliance policy, you must determine who reviews the messages of the supervised users. In the policy, user email addresses identify individuals or groups of people to review supervised communications. All reviewers must have mailboxes hosted on Exchange Online and must be assigned the **Case Management** and **Review** roles.

## Groups for supervised users and reviewers

To simplify your setup, create groups for people who need their communications reviewed and groups for people who review those communications. If you're using groups, you might need several. For example, if you want to scan communications between two distinct groups of people, or if you want to specify a group that isn't supervised.

When you select an Office 365 group for supervised users, the policy scans the content of the shared Office 365 mailbox and the Microsoft Teams channels associated with the group. When you select a distribution list, the policy scans individual user mailboxes.

## Supported communication types

With communication compliance policies, you can choose to scan messages in one or more of the following communication platforms as a group or as standalone sources. Communications captured across these platforms are retained for seven years for each policy by default, even if users leave your organization and their mailboxes are deleted.

- **Microsoft Teams**: Chat communications and associated attachments in both public and private Microsoft Teams channels and individual chats can be scanned. Teams chats matching communication compliance policy conditions are processed once every 24 hours and then are available in communication compliance reports. Use the following group management configurations to supervise individual user chats and channel communications in Teams:

    - **For Teams chat communications:** Assign individual users or assign a [distribution group](https://support.office.com/article/Distribution-groups-E8BA58A8-FAB2-4AAF-8AA1-2A304052D2DE) to the communication compliance policy. This setting is for one-to-one or one-to-many user/chat relationships.
    - **For Teams Channel communications:** Assign every Microsoft Team channel or Office 365 group you want to scan that contains a specific user to the communication compliance policy. If you add the same user to other Microsoft Teams channels or Office 365 groups, be sure to add these new channels and groups to the communication compliance policy.

- **Exchange email**: Mailboxes hosted on Exchange Online as part of your Microsoft 365 or Office 365 subscription are all eligible for message scanning. Emails and attachments matching communication compliance policy conditions are instantly available in communication compliance reports. Supported attachment types for communication compliance are the same as the [file types supported for Exchange mail flow rule content inspections](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments#supported-file-types-for-mail-flow-rule-content-inspection).

- **Skype for Business Online**: Chat communications and associated attachments in Skype for Business Online can be supervised. Skype for Business Online chats matching communication compliance policy conditions are processed once every 24 hours and then are available in communication compliance reports. Supervised chat conversations are sourced from [previous conversations saved in Skype for Business Online](https://support.office.com/article/Find-a-previous-Skype-for-Business-conversation-18892eba-5f18-4281-8c87-fd48bd72e6a2).  Use the following group management configuration to supervise user chat communications in Skype for Business Online:

    - **For Skype for Business Online chat communications**: Assign individual users or assign a [distribution group](https://support.office.com/article/Distribution-groups-E8BA58A8-FAB2-4AAF-8AA1-2A304052D2DE) to the communication compliance policy. This setting is for one-to-one or one-to-many user/chat relationships.

- **Third-party sources**: You can scan communications from third-party sources for data imported into mailboxes in your Microsoft 365 organization. Connectors support the following third-party resources:

    - [Instant Bloomberg](archive-instant-bloomberg-data.md)
    - [Facebook](archive-facebook-data-with-sample-connector.md)
    - [LinkedIn](archive-linkedin-data.md)
    - SAP SuccessFactors
    - [Twitter](archive-twitter-data-with-sample-connector.md)
    - [Custom data connector](archiving-third-party-data.md)

You must configure a third-party connector for your Microsoft 365 organization before you can assign the connector to a communication compliance policy. The **Third-Party Sources** section of the communication compliance policy wizard only displays currently configured third-party connectors.

## Transitioning from Supervision in Office 365

Organizations using supervision policies in Office 365 and planning to transition to communication compliance policies in Microsoft 365 need to understand these important points:

- Both solutions may be used side by side in your organization, but policies used in each solution must have unique policy names. Groups and custom keyword dictionaries can be shared between solutions during a transition period.
- Messages saved in supervision in Office 365 policy matches cannot be moved or shared into communication compliance in Microsoft 365.
- The supervision solution in Office 365 will be fully replaced by the communication compliance solution in Microsoft 365. We recommend creating new policies in communication compliance that have the same settings as existing supervision policies to use the new investigation and remediation improvements. When transitioning to communication compliance in Microsoft 365, you should plan to export reporting data from supervision in Office 365 if you have internal compliance retention policy requirements.

For retirement information for supervision in Office 365, see the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap) for details.

## Policy settings

### Users

You have the option to select **All users** or to define specific users in a communication compliance policy. Selecting **All users** applies the policy to all users and all groups that any user is included in as a member. Defining specific users applies the policy to the defined users and any groups the defined users are included in as a member.

### Direction

By default, the **Direction is** condition is displayed and can't be removed. Communication direction settings in a policy are chosen individually or together:

- **Inbound**: You can choose **Inbound** to review communications sent **to** the people you chose to supervise.
- **Outbound**: You can choose **Outbound** if you want to review communications sent **from** the people you chose to supervise.
- **Internal**: You can choose **Internal** to review communications sent **between** the people you identified in the policy.

### Sensitive information types

You have the option of including sensitive information types as part of your communication compliance policy. Sensitive information types are either pre-defined or custom data types that can help identify and protect credit card numbers, bank account numbers, passport numbers, and more. As part of Office 365 [data loss prevention (DLP)](data-loss-prevention-policies.md), the sensitive information configuration can use patterns, character proximity, confidence levels, and even custom data types to help identify and flag content that may be sensitive. The default sensitive information types are:

- Financial
- Medical and health
- Privacy
- Custom information type

To learn more about sensitive information details and the patterns included in the default types, see [What sensitive information types look for](what-the-sensitive-information-types-look-for.md).

### Custom keyword dictionaries

Configure custom keyword dictionaries (or lexicons) to provide simple management of keywords specific to your organization or industry. Keyword dictionaries support up to 100,000 terms per dictionary and support any language. If needed, you can apply multiple custom keyword dictionaries to a single policy or have a single keyword dictionary per policy. These dictionaries are assigned in a communication compliance policy and can be sourced from a file (such as a .csv or .txt list), or from a list you can [import in the Compliance center](create-a-keyword-dictionary.md). Use custom dictionaries when you need to support terms or languages specific to your organization and policies.

### Classifiers

Built-in classifiers scan sent or received messages across all communication channels in your organization for different types of compliance issues. Classifiers use a combination of artificial intelligence and keywords to identify language in messages likely to violate anti-harassment policies. Built-in classifiers currently support only English keywords in messages.

Communication compliance built-in classifiers scan communications for terms and sentiment for the following types of language:

- **Threat**: Scans for threats to commit violence or physical harm to a person or property.
- **Harassment**: Scans for offensive conduct targeting people regarding race, color, religion, national origin.
- **Profanity**: Scans for profane expressions that embarrass most people.

The built-in classifiers don't provide an exhaustive list of terms across these areas. Further, language and cultural standards continually change, and in light of these realities, Microsoft reserves the right to update classifiers at its discretion. While classifiers may assist your organization in monitoring these areas, classifiers aren't intended to provide your organization’s sole means of monitoring or addressing such language. Your organization, not Microsoft, remains responsible for all decisions related to scanning and blocking language in these areas.

For information about classifiers in Microsoft 365, see [Classifiers](classifier-getting-started-with.md).

### Conditional settings
<a name="ConditionalSettings"> </a>

The conditions you choose for the policy apply to communications from both email and third-party sources in your organization (like from Facebook or DropBox).

The following table explains more about each condition.
  
|**Condition**|**How to use this condition**|
|:-----|:-----|
| **Content matches any of these classifiers** | Apply to the policy when any classifiers are included or excluded in a message. Some classifiers are pre-defined in your tenant, and custom classifiers must be configured separately before they're available for this condition. Only one classifier can be defined as a condition in a policy. For more information about configuring classifiers, see [Classifiers](classifier-getting-started-with.md). |
| **Content contains any of these sensitive info types** | Apply to the policy when any sensitive information types are included or excluded in a message. Some classifiers are pre-defined in your tenant, and custom classifiers can be configured separately or as part of the condition assignment process. Each sensitive information type you choose is applied separately and only one of these sensitive information types must apply for the policy to apply to the message. For more information about custom sensitive information types, see [Custom sensitive information types](custom-sensitive-info-types.md). |
| **Message is received from any of these domains**  <br><br> **Message is not received from any of these domains** | Apply the policy to include or exclude specific domains or email addresses in received messages. Enter each domain or email address and separate multiple domains or email addresses with a comma. Each domain or email address entered is applied separately, only one domain or email address must apply for the policy to apply to the message. <br><br> If you want to scan all email from a specific domain, but want to exclude messages that don't need review (newsletters, announcements, and so on), you must configure a **Message is not received from any of these domains** condition that excludes the email address (example "newsletter@contoso.com"). |
| **Message is sent to any of these domains**  <br><br> **Message is not sent to any of these domains** | Apply the policy to include or exclude specific domains or email addresses in sent messages. Enter each domain or email address and separate multiple domains or email addresses with a comma. Each domain or email address is applied separately, only one domain or email address must apply for the policy to apply to the message. <br><br> If you want to scan all email sent to a specific domain, but want to exclude sent messages that don't need review, you must configure two conditions: <br> - A **Message is sent to any of these domains** condition that defines the domain ("contoso.com"), AND <br> - A **Message is not sent to any of these domains** condition that excludes the email address ("subscriptions@contoso.com"). |
| **Message is classified with any of these labels**  <br><br> **Message is not classified with any of these labels** | To apply the policy when certain retention labels are included or excluded in a message. Retention labels must be configured separately and configured labels are chosen as part of this condition. Each label you choose is applied separately (only one of these labels must apply for the policy to apply to the message). For more information about configuring retention labels, see [Overview of retention labels](labels.md).|
| **Message contains any of these words**  <br><br> **Message contains none of these words** | To apply the policy when certain words or phrases are included or excluded in a message, enter each word or phrase and separate with a comma. Each word you enter is applied separately (only one word must apply for the policy to apply to the message). For more information about entering words or phrases, see the next section [Matching words and phrases to emails or attachments](communication-compliance-feature-reference.md#Matchwords).|
| **Attachment contains any of these words**  <br><br> **Attachment contains none of these words** | To apply the policy when certain words or phrases are included or excluded in a message attachment (such as a Word document), enter each word or phrase and separate with a comma. Each word you enter is applied separately (only one word must apply for the policy to apply to the attachment). For more information about entering words or phrases, see the next section [Matching words and phrases to emails or attachments](communication-compliance-feature-reference.md#Matchwords).|
| **Attachment is any of these file types**  <br><br> **Attachment is none of these file types** | To supervise communications that include or exclude specific types of attachments, enter the file extensions (such as .exe or .pdf). If you want to include or exclude multiple file extensions, enter these on separate lines. Only one attachment extension must match for the policy to apply.|
| **Message size is larger than**  <br><br> **Message size is not larger than** | To review messages based on a certain size, use these conditions to specify the maximum or minimum size a message can be before it's subject to review. For example, if you specify **Message size is larger than** \> **1.0 MB**, all messages that are 1.01 MB and larger are subject to review. You can choose bytes, kilobytes, megabytes, or gigabytes for this condition.|
| **Attachment is larger than**  <br><br> **Attachment is not larger than** | To review messages based on the size of their attachments, specify the maximum or minimum size an attachment can be before the message and its attachments are subject to review. For example, if you specify **Attachment is larger than** \> **2.0 MB**, all messages with attachments 2.01 MB and over are subject to review. You can choose bytes, kilobytes, megabytes, or gigabytes for this condition.|
   
#### Matching words and phrases to emails or attachments
<a name="Matchwords"> </a>

Each word you enter and separate with a comma is applied separately (only one word must apply for the policy condition to apply to the email or attachment). For example, let's use the condition, **Message contains any of these words**, with the keywords "banker" and "insider trading" separated by a comma (banker, insider trading). The policy applies to any messages that includes the word "banker" or the phrase "insider trading". Only one of these words or phrases must occur for this policy condition to apply. Words in the message or attachment must exactly match what you enter.

To scan both email messages and attachments for the same keywords, create a [data loss prevention policy](create-test-tune-dlp-policy.md) with a [custom keyword dictionary](create-a-keyword-dictionary.md) for the terms you wish to scan in messages. This policy configuration identifies defined keywords that appear in either the email message **OR** in the email attachment. Using the standard conditional policy settings (*Message contains any of these words* and *Attachment contains any of these words*) to identify terms in messages and in attachments requires the terms to be present in **BOTH** the message and the attachment.
  
#### Enter multiple conditions

If you enter multiple conditions, Microsoft 365 uses all the conditions together to determine when to apply the supervision policy to communication items. When you set up multiple conditions, all conditions must be met for the policy to apply, unless you enter an exception. For example, you need a policy that applies if a message contains the word "trade", and is larger than 2 MB. However, if the message also contains the words "Approved by Contoso financial", the policy shouldn't apply. In this example, the three conditions would be defined as follows:
  
- **Message contains any of these words**, with the keywords "trade"
- **Message size is larger than**, with the value 2 MB
- **Message contains none of these words**, with the keywords "Approved by Contoso financial team"

### Review percentage

If you want to reduce the amount of content to review, you can specify a percentage of all the communications governed by a supervision policy. A real-time, random sample of content is selected from the total percentage of content that matches chosen policy conditions. If you want reviewers to review all items, you can configure **100%** in a communication compliance policy.

## Notices

You can create notice templates if you want to send users an email reminder notice for policy matches as part of the issue resolution process. Notices can only be sent to the employee email address associated with the policy match that generated the specific alert for remediation. When selecting a notice template to apply to a policy violation as part of the remediation workflow, you can choose to accept the field values defined in the template or overwrite the fields as needed.

Notices templates are custom email templates where you can define the following message fields:

|**Field**|**Required**| **Details** |
|:-----|:-----|:-----|
|**Template name** | Yes | Friendly name for the notice template that you'll select in the notify workflow during remediation, supports text characters. |
| **Sender address** | Yes | The address of one or more users or groups that send the message to the employee with a policy match, selected from the Active Directory for your subscription. |
| **CC and BCC addresses** | No | Optional users or groups to be notified of the policy match, selected from the Active Directory for your subscription. |
| **Subject** | Yes | Information that appears in the subject line of the message, supports text characters. |
| **Message body** | Yes | Information that appears in the message body, supports text or HTML values. |

### HTML for notices

If you'd like to create more than a simple text-based email message for notifications, you can create a more detailed message by using HTML in the message body field of a notice template. The following example provides the message body format for a basic HTML-based email notification template:

```HTML
<!DOCTYPE html>
<html>
<body>
<h2>Action Required: Contoso Employee Code of Conduct Policy Training</h2>
<p>A recent message you've sent has generated a policy alert for the Contoso Employee <a href='https://www.contoso.com'>Code of Conduct Policy</a>.</p>
<p>You are required to attend the Contoso Employee Code of Conduct <a href='https://www.contoso.com'>training</a> within the next 14 days. Please contact <a href='mailto:hr@contoso.com'>Human Resources</a> with any questions about this training request.</p>
<p>Thank you,</p>
<p><em>Human Resources</em></p>
</body>
</html>
```

>[!NOTE]
>HTML href attribute implementation in the communication compliance notification templates currently support only single quotation marks instead of double quotation marks for URL references.

## Filters

Communication compliance filters allow you to filter and sort alert messages for quicker investigation and remediation actions. Filtering is available on the **Pending** and **Resolved** tabs for each policy. To save a filter or filter set as a saved filter query, one or more values must be configured as filter selections. The following table outlines filter details:

|**Filter**|**Details**|
|:-----|:-----|
| **Date** | The date the message was sent or received by a user in your organization. |
| **File class** | The class of the message based on the message type, either *message* or *attachment*. |
| **Has attachment** | The attachment presence in the message. |
| **Item class** | The source of the message based on the message type, email, Microsoft Team chat, Bloonmberg, etc. |
| **Recipient domains** | The domain to which the message was sent. This domain is normally your Microsoft 365 subscription domain by default. |
| **Recipient** | The user to which the message was sent. |
| **Sender** | The person who sent the message. |
| **Sender domain** | The domain that sent the message. |
| **Size** | The size of the message in KB. |
| **Subject/Title** | The message subject or chat title. |
| **Tags** | The tags assigned to a message, either *Questionable*, *Compliant*, or *Non-compliant*. |
| **Escalated To** | The user name of the person included as part of a message escalation action. |
| **Classifiers** | The name of built-in and custom classifiers that apply to the message. Some examples include *Offensive Language*, *Targeted Harassment*, *Profanity*, *Threat*, and more.

## Alert policies

After you configure a policy, a corresponding alert policy is automatically created and alerts are generated for messages that match conditions defined in the policy. By default, all policy matches alert triggers are assigned a severity level of medium in the associated alert policy. Alerts are generated for a communication compliance policy once the aggregation trigger threshold level is met in the associated Office 365 alert policy.

For communication compliance policies, the following alert policy values are configured by default:

|**Alert policy trigger**|**Default value**|
|:-----|:-----|
| Aggregation | Simple aggregation |
| Threshold | 4 activities |
| Window | 60 minutes |

>[!Note]
>The alert policy threshold trigger settings for activities supports a minimum value of 3 or higher for communication compliance policies.

You can change the default settings for triggers on number of activities, period for the activities, and for specific users in alert policies on the **Alert policies** page in the Office 365 Security & Compliance Center.

### Change the severity level for an alert policy

If you'd like to change the severity level assigned in an alert policy for a specific communication compliance policy, complete the following steps:

1. Sign into [https://compliance.microsoft.com](https://compliance.microsoft.com) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft 365 compliance center, go to **Policies**.

3. Select **Office 365 alert** on the **Policies** page to open the **Alerts policies** page in the **Office 365 Security & Compliance center**.

4. Select the checkbox for the communication compliance policy you want to update, then select **Edit policy**.

5. On the **Description** tab, select the **Severity** dropdown to configure the policy alert level.

6. Select **Save** to apply the new severity level to the policy.

7. Select **Close** to exit the alert policy details page.

## Audit

In some instances, you must provide information to regulatory or compliance auditors to prove supervision of employee activities and communications. This information may be a summary of all activities associated with a defined organizational policy or anytime a communication compliance policy changes. Communication compliance policies have built-in audit trails for complete readiness for internal or external audits. Detailed audit histories of every create, edit, and delete action are captured by your communication policies to provide proof of supervisory procedures.

>[!Important]
>Auditing must be enabled for your organization before communication compliance events will be recorded. To enable auditing, see [Enable auditing for your communication compliance policies](communication-compliance-configure.md#step-6-optional-enable-auditing-for-your-communication-compliance-policies).

To view communication compliance policy activities, select the **Export review activities** control on the main page for any policy. This action generates an audit file in the .csv format that contains the following information:

|**Field**|**Details**|
|:-----|:-----|
| **CreationDate** | The date the activity was performed in a policy. |
| **UserIds** | The user that performed the activity in a policy. |
| **Operations** | The operations performed on the policy. |
| **AuditData** | This field is the main data source for all policy activities. All activities are recorded and separated by comma delimiters. |

You can also view audit activities in the unified audit log or with the [Search-UnifiedAuditLog](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-audit/search-unifiedauditlog) PowerShell cmdlet.

For example, the following example returns the activities for the all the supervisory review activities (policies and rules) and lists detailed information for each:

```PowerShell
Search-UnifiedAuditLog -StartDate 3/1/2019 -EndDate ([System.DateTime]::Now) -RecordType DataGovernance -ResultSize 5000 | Where-Object {$_.Operations -like "*SupervisoryReview*"}  | fl CreationDate,Operations,UserIds,AuditData
```

This example returns the update activities for your communication compliance policies:

```PowerShell
Search-UnifiedAuditLog -StartDate $startDate -EndDate $endDate -Operations SupervisionPolicyCreated,SupervisionPolicyUpdated,SupervisionPolicyDeletedAuditData
```

## Ready to get started?

To configure communication compliance for your Microsoft 365 organization, see [Configure communication compliance for your Microsoft 365 organization (preview)](communication-compliance-configure.md).
