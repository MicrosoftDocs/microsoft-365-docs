---
title: "Supervision policies"
description: Learn about using supervision policies in Microsoft 365 to capture employee communications for examination by designated reviewers.
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
localization_priority: Normal
ms.collection:
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
- MOE150
ms.custom: seo-marvel-apr2020
titleSuffix: Microsoft 365 Compliance
---

# Supervision policies

>[!IMPORTANT]
>Following the release of communication compliance in Microsoft 365 Compliance in February 2020, Supervision in Office 365 is being retired. Supervision policies will no longer be available for creation, and policies will eventually be removed, after an extended period of read only access.
>
>If you use Supervision, be aware that:
>
>- Beginning June 15th, 2020, tenants will not have the ability to create new Supervision policies.
>- Beginning August 31st, 2020, existing policies will stop capturing new messages.
>- Beginning October 26th, 2020, existing policies will be deleted.
>
>We actively encourage customers who are currently exploring or using Supervision in Office 365 to use the new [communication compliance](communication-compliance.md) solution to address your communications monitoring or regulatory requirements with a much richer set of intelligent capabilities.

Supervision policies in Microsoft 365 allow you to capture employee communications for examination by designated reviewers. You can define specific policies that capture internal and external email, Microsoft Teams, or 3rd-party communications in your organization. Reviewers can then examine the messages to make sure that they are compliant with your organization's message standards and resolve them with classification type.

These policies can also help you overcome many modern compliance challenges, including:

- Monitoring increasing types of communication channels
- The increasing volume of message data
- Regulatory enforcement & the risk of fines

In some organizations, there may be a separation of duties between IT support and the compliance management group. Microsoft 365 supports the separation between supervision policy feature configuration and the configuration of policies for captured communications. For example, the IT group for an organization may be responsible for setting up role permissions and groups to support supervision policies that are configured and managed by the organization's compliance team.

For a quick overview of Supervision policies, see the [Supervision policy video](https://youtu.be/C3Y8WZ7o_dI) on the [Microsoft Mechanics channel](https://www.youtube.com/user/OfficeGarageSeries).

## Transitioning from Supervision

Organizations using supervision policies and planning to transition to [communication compliance policies in Microsoft 365](communication-compliance.md) need to understand these important points:

- The supervision solution in Microsoft 365 will be fully replaced by the communication compliance solution in Microsoft 365. For organizations transitioning to communication compliance from supervision policies, we recommend creating new policies in communication compliance that have the same *conditions* as existing supervision policies to enable new investigation and remediation improvements. When transitioning to communication compliance in Microsoft 365, you should plan to export reporting data from supervision if you have internal compliance retention policy requirements.
- In the interim, organizations can use both solutions side by side until fully migrated, but policies used in each solution must have *unique policy names*. Groups and custom keyword dictionaries can be shared between solutions during the transition period.
- Messages saved in supervision in Microsoft 365 policy matches cannot be moved or shared into communication compliance in Microsoft 365.

For retirement information for supervision in Office 365, see the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap) for details.

## Scenarios for supervision policies

Supervision policies can assist monitoring communications in your organization in several areas:

- **Corporate policies**

    Employees must comply with acceptable use, ethical standards, and other corporate policies in all their business-related communications. Supervision policies can detect policy violations and help you take corrective actions to help mitigate these types of incidents. For example, you could monitor for potential human resources violations such as harassment or the use of inappropriate or offensive language in employee communications.

- **Risk management**

    Organizations are responsible to all communications distributed throughout their infrastructure and corporate network systems. Using supervision policies to help identify and manage potential legal exposure and risk can help minimize risks before they can damage corporate operations. For example, you could monitor your organization for unauthorized communications for confidential projects such as upcoming acquisitions, mergers, earnings disclosures, reorganizations, or leadership team changes.

- **Regulatory compliance**

    Most organizations must comply with some type of regulatory compliance standards as part of their normal operating procedures. These regulations often require organizations to implement some type of supervisory or oversight process for messaging that is appropriate for their industry. The Financial Industry Regulatory Authority (FINRA) Rule 3110 is a good example of a requirement for organizations to have supervisory procedures in place to monitor the activities of its employees and the types of businesses in which it engages. Another example may be a need to monitor broker-dealers in your organization to safeguard against potential money-laundering, insider trading, collusion, or bribery activities. Supervision policies can help your organization meet these requirements by providing a process to both monitor and report on corporate communications.

## Components

### Supervision policy

You create supervision policies in the Compliance center. These policies define which communications and users are subject to review in your organization, define custom conditions that the communications must meet, and specifies who should perform reviews. Users included in the Supervisory Review role group can set up policies and anyone who has this role assigned can access the Supervision page in the Compliance center.

### Supervised users

Before you start using supervision, you must determine who needs their communications reviewed. In the policy, user email addresses identify individuals or groups of people to supervise. Some examples of these groups are Microsoft 365 Groups, Exchange-based distribution lists, and Microsoft Teams channels. You also can exclude specific users or groups from supervision with a supervised group or a list of groups.

>[!IMPORTANT]
>Users monitored by supervision policies must have a Microsoft 365 E5 Compliance license, an Office 365 Enterprise E3 license with the Advanced Compliance add-on, or be included in an Office 365 Enterprise E5 subscription, or be included in a Microsoft 365 E5 subscription.If you don't have an existing Enterprise E5 plan and want to try supervision, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279).

### Reviewers

When you create a supervision policy, you must determine who will perform the reviews of the messages of the supervised users. In the policy, user email addresses identify individuals or groups of people to review supervised communications. All reviewers must have mailboxes hosted on Exchange Online.

### Groups for supervised users and reviewers

To simplify your setup, create groups for people who need their communications reviewed and groups for people who review those communications. If you're using groups, you might need several. For example, if you want to monitor communications between two distinct groups of people, or if you want to specify a group that isn't supervised.

When you select a Microsoft 365 group for supervised users, the policy monitors the content of the shared mailbox and the Microsoft Teams channels associated with the group. When you select a distribution list, the policy monitors individual user mailboxes.

### Supported communication types

With supervision policies, you can choose to monitor messages in one or more of the following communication platforms:

- **Exchange email:** Mailboxes hosted on Exchange Online as part of your Microsoft 365 subscription are all eligible for message supervision. Emails and attachments matching supervision policy conditions are instantly available for monitoring and in supervision reports. Supported attachment types for supervision are the same as the [file types supported for Exchange mail flow rule content inspections](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments#supported-file-types-for-mail-flow-rule-content-inspection).

- **Microsoft Teams:** Chat communications and associated attachments in both public and private Microsoft Teams channels and individual chats can be supervised. Teams chats matching supervision policy conditions are processed once every 24 hours and then are available for monitoring and in supervision reports. Use the following group management configurations to supervise individual user chats and channel communications in Teams:

    - **For Teams chat supervision:** Assign individual users or assign a [distribution group](https://support.office.com/article/Distribution-groups-E8BA58A8-FAB2-4AAF-8AA1-2A304052D2DE) to the supervision policy. This configuration is for 1-to-1 or 1-to-many user/chat relationships.
    - **For Teams Channel communications:** Assign every Microsoft Team channel or Microsoft 365 group you want to monitor that contains a specific user to the supervision policy. If you add the same user to other Microsoft Teams channels or Microsoft 365 groups, be sure to add these new channels and groups to the supervision policy.

- **Skype for Business Online:** Chat communications and associated attachments in Skype for Business Online can be supervised. Skype for Business Online chats matching supervision policy conditions are processed once every 24 hours and then are available for monitoring and in supervision reports. Supervised chat conversations are sourced from [previous conversations saved in Skype for Business Online](https://support.office.com/article/Find-a-previous-Skype-for-Business-conversation-18892eba-5f18-4281-8c87-fd48bd72e6a2).  Use the following group management configuration to supervise user chat communications in Skype for Business Online:

    - **For Skype for Business Online chat supervision:** Assign individual users or assign a [distribution group](https://support.office.com/article/Distribution-groups-E8BA58A8-FAB2-4AAF-8AA1-2A304052D2DE) to the supervision policy. This configuration is for 1-to-1 or 1-to-many user/chat relationships.

- **Third-party sources:** You can supervise communications from third-party sources (like from Facebook or DropBox) for data imported into mailboxes in your organization. [Learn how to import 3rd-party data](archiving-third-party-data.md).

Communications captured across these platforms are retained for seven years for each policy by default, even if users leave your organization and their mailbox is deleted.

### Policy settings

#### Direction

By default, the **Direction is** condition is displayed and can't be removed. Communication direction settings in a policy are chosen individually or together:

- **Inbound**: You can choose **Inbound** to review communications sent **to** the people you chose to supervise **from** people not included in the policy.
- **Outbound**: You can choose **Outbound** if you want to review communications sent **from** the people you chose to supervise **to** people not included in the policy.
- **Internal**: You can choose **Internal** to review communications sent **between** the people you identified in the policy.

#### Sensitive information types

You have the option of including sensitive information types as part of your supervision policy. Sensitive information types are either pre-defined or custom data types that can help identify and protect credit card numbers, bank account numbers, passport numbers, and more. As a part of [data loss prevention (DLP)](data-loss-prevention-policies.md), the sensitive information configuration can use patterns, character proximity, confidence levels, and even custom data types to help identify and flag content that may be sensitive. The default sensitive information types are:

- Financial
- Medical and health
- Privacy
- Custom information type

To learn more about sensitive information details and the patterns included in the default types, see [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md).

#### Custom keyword dictionaries

Configure custom keyword dictionaries (or lexicons) to provide simple management of keywords specific to your organization or industry. Keyword dictionaries support up to 100KB of terms (post compression) in the dictionary and support any language. The tenant limit is also 100KB after compression. If needed, you can apply multiple custom keyword dictionaries to a single policy or have a single keyword dictionary per policy. These dictionaries are assigned in a supervision policy and can be sourced from a file (such as a .csv or .txt list), or from a list you can [import in the Compliance center](create-a-keyword-dictionary.md).

#### Offensive language

Monitor sent or received email messages in your organization for offensive language. The model uses a combination of machine learning, artificial intelligence, and keywords to identify language in email messages likely to violate anti-harassment and bullying policies. The offensive language model currently supports English keywords and monitors the body of email messages.

>[!NOTE]
>Create a [data loss prevention policy](create-test-tune-dlp-policy.md) with a [custom keyword dictionary](create-a-keyword-dictionary.md) of blocked terms if you need to:
>
>- monitor Microsoft Teams communications in your organization for offensive language
>- prevent or block offensive language in communications in your organization

The model does not provide an exhaustive list of offensive language. Further, language and cultural standards continually change, and in light of these realities, Microsoft reserves the right to update the model in its discretion. While the model may assist your organization in monitoring offensive language, the model is not intended to provide your organization's sole means of monitoring or addressing such language. Your organization, not Microsoft, remains responsible for all decisions related to monitoring and blocking offensive language.

The offensive language model monitors email for sentiment associated with the following types of language:

|**Type**|**Description**|
|:-----|:-----|
| **Profanities** | Expressions that embarrass most people. |
| **Slurs** | Expressions that express prejudice against particular groups (for example, race, ethnicity, sexual orientation, disability). |
| **Taunts** | Expressions that taunt, condemn, ridicule, or could potentially cause anger or violence. |
| **Disguised expressions** | Expressions for which the meaning or pronunciation is the same as another more offensive term. |

#### Conditional settings
<a name="ConditionalSettings"> </a>

The conditions you choose for the policy apply to communications from both email and 3rd-party sources in your organization (like from Facebook or DropBox).

The following table explains more about each condition.
  
|**Condition**|**How to use this condition**|
|:-----|:-----|
| **Message is received from any of these domains** <br><br> **Message is not received from any of these domains** | Apply the policy to include or exclude specific domains or email addresses in received messages. Enter each domain or email address and separate multiple domains or email addresses with a comma. Each domain or email address entered is applied separately, only one domain or email address must apply for the policy to apply to the message. <br><br> If you want to monitor all email from a specific domain but want to exclude messages that do not need review (newsletters, announcements, etc.), you must configure the condition a **Message is not received from any of these domains** condition that excludes the email address (example "newsletter@contoso.com"). |
| **Message is sent to any of these domains** <br><br> **Message is not sent to any of these domains** | Apply the policy to include or exclude specific domains or email addresses in sent messages. Enter each domain or email address and separate multiple domains or email addresses with a comma. Each domain or email address is applied separately, only one domain or email address must apply for the policy to apply to the message. <br><br> If you want to monitor all email sent to a specific domain but want to exclude sent messages that do not need review, you must configure two conditions: <br> - A **Message is sent to any of these domains** condition that defines the domain ("contoso.com"), AND <br> - A **Message is not sent to any of these domains** condition that excludes the email address ("subscriptions@contoso.com"). |
| **Message is classified with any of these labels** <br><br> **Message is not classified with any of these labels** | To apply the policy when certain retention labels are included or excluded in a message. Retention labels must be configured separately and configured labels are chosen as part of this condition. Each label you choose is applied separately (only one of these labels must apply for the policy to apply to the message). For more information about retention labels, see [Learn about retention policies and retention labels](retention.md).|
| **Message contains any of these words** <br><br> **Message contains none of these words** | To apply the policy when certain words or phrases are included or excluded in a message, enter each word or phrase and separate with a comma. Each word you enter is applied separately (only one word must apply for the policy to apply to the message). For more information about entering words or phrases, see the next section [Matching words and phrases to emails or attachments](supervision-policies.md#Matchwords).|
| **Attachment contains any of these words** <br><br> **Attachment contains none of these words** | To apply the policy when certain words or phrases are included or excluded in a message attachment (such as a Word document), enter each word or phrase and separate with a comma. Each word you enter is applied separately (only one word must apply for the policy to apply to the attachment). For more information about entering words or phrases, see the next section [Matching words and phrases to emails or attachments](supervision-policies.md#Matchwords).|
| **Attachment is any of these file types** <br><br> **Attachment is none of these file types** | To supervise communications that include or exclude specific types of attachments, enter the file extensions (such as .exe or .pdf). If you want to include or exclude multiple file extensions, enter these on separate lines. Only one attachment extension must match for the policy to apply.|
| **Message size is larger than** <br><br> **Message size is not larger than** | To review messages based on a certain size, use these conditions to specify the maximum or minimum size a message can be before it is subject to review. For example, if you specify **Message size is larger than** \> **1.0 MB**, all messages that are 1.01 MB and larger are subject to review. You can choose bytes, kilobytes, megabytes, or gigabytes for this condition.|
| **Attachment is larger than** <br><br> **Attachment is not larger than** | To review messages based on the size of their attachments, specify the maximum or minimum size an attachment can be before the message and its attachments are subject to review. For example, if you specify **Attachment is larger than** \> **2.0 MB**, all messages with attachments 2.01 MB and over are subject to review. You can choose bytes, kilobytes, megabytes, or gigabytes for this condition.|
   
##### Matching words and phrases to emails or attachments
<a name="Matchwords"> </a>
Each word you enter and separate with a comma is applied separately (only one word must apply for the policy condition to apply to the email or attachment). For example, let's use the condition, **Message contains any of these words**, with the keywords "banker" and "insider trading" separated by a comma (banker, insider trading). The policy applies to any messages that includes the word "banker" or the phrase "insider trading". Only one of these words or phrases must occur for this policy condition to apply. Words in the message or attachment must exactly match what you enter.

To scan both email messages and attachments for the same keywords, create a [data loss prevention policy](create-test-tune-dlp-policy.md) with a [custom keyword dictionary](create-a-keyword-dictionary.md) for the terms you wish to monitor. This policy configuration identifies defined keywords that appear in either the email message **OR** in the email attachment. Using the standard conditional policy settings (*Message contains any of these words* and *Attachment contains any of these words*) to identify terms in messages and in attachments requires the terms are present in **BOTH** the message and the attachment.
  
##### Enter multiple conditions

If you enter multiple conditions, Microsoft 365 uses all the conditions together to determine when to apply the policy to communication items. When you set up multiple conditions, all conditions must be met for the policy to apply, unless you enter an exception. For example, you need a policy that applies if a message contains the word "trade", and is larger than 2 MB. However, if the message also contains the words "Approved by Contoso financial", the policy should not apply. Thus, in this case, the three conditions would be as follows:
  
- **Message contains any of these words**, with the keyword "trade"

- **Message size is larger than**, with the value 2 MB

- **Message contains none of these words**, with the keywords "Approved by Contoso financial team"

#### Review percentage

If you want to reduce the amount of content to review, you can specify a percentage of all the communications governed by a supervision policy. A real-time, random sample of content is selected from the total percentage of content that matches chosen policy conditions. If you want reviewers to review all items, you can enter **100%** in a supervision policy.

## Monitor & manage

It is easy to monitor the results of your supervision policies and apply a resolution tag. You can quickly see:

- The status of reviewed items
- Users and groups under supervision
- Users and groups designated as reviewers

### Supervision policy dashboard

Use the supervision policy dashboard to manage supervision policy results and to resolve outstanding items. This dashboard allows reviewers to view items that need to be reviewed, act on an item, and review the results of previously reviewed and resolved items for each supervision policy. You can access the supervision policy dashboard in the Compliance center at **Supervision** > *Your Custom Policy* > **Open**.

#### Dashboard Home

The dashboard **Home** page has several sections to help you quickly act on your supervision policies. Here you can:

- Quickly review the pending and resolved highlights for the week
- See a list of the supervised users and supervised groups for the selected policy
- See a list of the reviewers and review teams for the selected policy
- See which communication platforms have content under supervision for the policy

#### Review tab

The **Review** tab is where reviewers classify and resolve items identified by the selected policy. Here you can:

- Filter by pending, compliant, non-compliant, and questionable items.
- Tag a single item as compliant, non-compliant, or questionable. You can also record a comment with the item to help clarify the tagging action taken.
- Bulk tag multiple items as compliant, non-compliant, or questionable. You can also record a comment with multiple items to help clarify the tagging action taken.
- View the history of the tagging for a single item. Includes who resolved the item, the date and time of the action, the resolution tag, and any included comments.
- Reclassify previously reviewed items as compliant, non-compliant, or questionable. You can also record a comment with single or multiple items to help clarify the reclassification action taken.

#### Resolved Items tab

The **Resolved Items** tab is where reviewers can view all previously resolved items for the selected policy. Here you can:

- Quickly view and sort the subject, sender, and date of resolved items
- View the classification and comment history of any selected item

## Reports

Use the supervision reports to see the review activity at the policy and reviewer level. For each policy, you can also view live statistics on the current state of review activity. You can use the supervision reports to:
  
- Verify that your policies are working as you intended.
- Find out how many communications need review.
- Find out how many communications aren't compliant and which ones are passing review. This information can help you decide whether to fine-tune your policies or change the number of reviewers.

### View the Supervision report

1. Sign into the [Compliance center](https://compliance.microsoft.com) with credentials for an admin account with permissions to view supervision reports.
2. Go to either **Reports** \> **Dashboard** or **Supervision** to view the supervision reporting widget for a summary of current supervision policy activity.
3. Select the **Supervision** widget to open the detailed report page.

>[!NOTE]
>If you aren't able to access the **Reports** page, check that you're a member of the Supervisory Review role group, as described in [Make supervision available in your organization](configure-supervision-policies.md). Inclusion in this role group lets you create and manage supervision polices and run the report.
  
### How to use the report

This report lists each policy and the number of communications at each stage in the review process. Use the report to:
  
- View data for all or specific policies.
- View data grouped by tag type, reviewer, or message type.
- Export data to a CSV file based on activity date, policy, and by reviewer activity.
- Filter data based on activity date, tag type, reviewer, and message type.

Here's a breakdown of the values displayed the **Tag type** column.
  
|**Tag type**|**What it means**|
|:-----|:-----|
| **Not Reviewed** | The number of emails not reviewed yet. These emails are awaiting review in the Microsoft 365 supervision dashboard.
| **Compliant** | The number of emails reviewed and marked as compliant. These messages still need resolution. |
| **Questionable** | The number of emails reviewed and marked questionable. Serves as a flag for other reviewers to help check whether an email needs investigation for compliance. These messages still need resolution. |
| **Non-Compliant (Active)** | The number of non-compliant emails that reviewers are currently investigating. |
| **Non-Compliant (Resolved)** | The number of non-compliant emails that reviewers investigated and resolved. |
| **Hit Policy** | The total number (daily) of messages from Exchange, Teams, and third-party data sources that matched one or more conditions defined in a supervision policy |
| **In Purview** | The total number (daily) of messages from Exchange, Teams, and third-party data sources scanned by a supervision policy |
| **Resolved** | The total number of messages from Exchange, Teams, and third-party data sources classified as **Resolved**|

>[!NOTE]
>Supervision policies must be provisioned before they appear in reports. If policies are deleted, historical data is still shown. However, they're indicated as a "Non-existent policy" and the **Export** function isn't available.

## Audit

In some instances, you must provide information to regulatory or compliance auditors to prove supervision of employee activities and communications. This information may be a summary of all supervisory activities associated with a defined policy or anytime a supervision policy changes. Supervision policies have built-in audit trails for complete readiness for internal or external audits. Detailed audit histories of every action monitored by your supervision policies provide proof of supervisory procedures.

View audit activities in the unified audit log or with the [Search-UnifiedAuditLog](https://docs.microsoft.com/powershell/module/exchange/search-unifiedauditlog) PowerShell cmdlet.

For example, the following example returns the activities for the all the supervisory review activities (policies and rules) and lists detailed information for each:

```PowerShell
Search-UnifiedAuditLog -StartDate 3/1/2019 -EndDate ([System.DateTime]::Now) -RecordType DataGovernance -ResultSize 5000 | Where-Object {$_.Operations -like "*SupervisoryReview*"}  | fl CreationDate,Operations,UserIds,AuditData
```

This example returns the update activities for your communication compliance policies:

```PowerShell
Search-UnifiedAuditLog -StartDate $startDate -EndDate $endDate -Operations SupervisionPolicyCreated,SupervisionPolicyUpdated,SupervisionPolicyDeletedAuditData
```

In addition to information provided in the supervision reports and logs, you can also use the [Get-SupervisoryReviewActivity](https://docs.microsoft.com/powershell/module/exchange/get-supervisoryreviewactivity) PowerShell cmdlet to return a complete detailed listing of all supervision policy activities.

## Ready to get started?

To configure supervision policies for your organization, see [Configure supervision policies](configure-supervision-policies.md).
