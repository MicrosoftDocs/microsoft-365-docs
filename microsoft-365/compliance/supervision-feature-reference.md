---
title: "Communication cupervision feature reference"
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
description: "Feature reference for communication supervision in Microsoft 365. Learn details and specifications for each of the feature components."
---

# Communication supervision feature reference

## Policies

You create communication supervision policies for Microsoft 365 organizations in the Microsoft 365 compliance center. If you're an Office 365 organization, you'll configure communication policies in the Office 365 Security and Compliance Center. These policies define which communications and users are subject to review in your organization, define custom conditions that the communications must meet, and specifies who should perform reviews. Users included in the Supervisory Review role group can set up policies and anyone who has this role assigned can access the supervision page in either the Microsoft 365 or Office 365 compliance centers. If needed, you can export the history of modifications to a policy to a .csv file that also includes the current status of alerts pending review, escalated items, and resolved items. Policies can be deleted when no longer needed.

## Policy templates

Policy templates are pre-defined policy settings that you can use to quickly create policies to address common compliance scenarios. Each of these templates have differences in conditions and scope and all templates use the same types of scanning signals. You can choose from the following policy templates:

- **Monitor for offensive language**: Use this template to quickly create a supervision policy that uses the  built-in machine learning classifier to automatically detect content that may be considered as harassment.
- **Monitor for sensitive info**: Use this template to create a policy to scan communications containing defined sensitive information types or keywords to help make sure important data isn't shared with people that shouldn't have access.
- **Monitor for FINRA info**: Use this template to... 

## Supervised users

Before you start using communication supervision, you must determine who needs their communications reviewed. In the policy, user email addresses identify individuals or groups of people to supervise. Some examples of these groups are Office 365 Groups, Exchange-based distribution lists, and Microsoft Teams channels. You also can exclude specific users or groups from supervision with a supervised group or a list of groups.

> [!IMPORTANT]
> Users covered by supervision policies must have either a Microsoft 365 E5 Compliance license, an Office 365 Enterprise E3 license with the Advanced Compliance add-on, or be included in an Office 365 Enterprise E5 subscription.If you don't have an existing Enterprise E5 plan and want to try supervision, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279).

## Reviewers

When you create a communication supervision policy, you must determine who will perform the reviews of the messages of the supervised users. In the policy, user email addresses identify individuals or groups of people to review supervised communications. All reviewers must have mailboxes hosted on Exchange Online.

## Groups for supervised users and reviewers

To simplify your setup, create groups for people who need their communications reviewed and groups for people who review those communications. If you're using groups, you might need several. For example, if you want to scan communications between two distinct groups of people, or if you want to specify a group that isn't supervised.

When you select an Office 365 group for supervised users, the policy scans the content of the shared Office 365 mailbox and the Microsoft Teams channels associated with the group. When you select a distribution list, the policy scans individual user mailboxes.

## Supported communication types

With supervision policies, you can choose to scan messages in one or more of the following communication platforms as a group or as standalone sources. Communications captured across these platforms are retained for seven years for each policy by default, even if users leave your organization and their mailbox is deleted.

- **Exchange email:** Mailboxes hosted on Exchange Online as part of your Microsoft 365 or Office 365 subscription are all eligible for message supervision. Emails and attachments matching supervision policy conditions are instantly available in supervision reports. Supported attachment types for supervision are the same as the [file types supported for Exchange mail flow rule content inspections](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments#supported-file-types-for-mail-flow-rule-content-inspection).

- **Microsoft Teams:** Chat communications and associated attachments in both public and private Microsoft Teams channels and individual chats can be supervised. Teams chats matching supervision policy conditions are processed once every 24 hours and then are available in supervision reports. Use the following group management configurations to supervise individual user chats and channel communications in Teams:

    - **For Teams chat supervision:** Assign individual users or assign a [distribution group](https://support.office.com/article/Distribution-groups-E8BA58A8-FAB2-4AAF-8AA1-2A304052D2DE) to the supervision policy. This is for 1-to-1 or 1-to-many user/chat relationships.
    - **For Teams Channel communications:** Assign every Microsoft Team channel or Office 365 group you want to scan that contains a specific user to the supervision policy. If you add the same user to other Microsoft Teams channels or Office 365 groups, be sure to add these new channels and groups to the supervision policy.

- **Skype for Business Online:** Chat communications and associated attachments in Skype for Business Online can be supervised. Skype for Business Online chats matching supervision policy conditions are processed once every 24 hours and then are available in supervision reports. Supervised chat conversations are sourced from [previous conversations saved in Skype for Business Online](https://support.office.com/article/Find-a-previous-Skype-for-Business-conversation-18892eba-5f18-4281-8c87-fd48bd72e6a2).  Use the following group management configuration to supervise user chat communications in Skype for Business Online:

    - **For Skype for Business Online chat supervision:** Assign individual users or assign a [distribution group](https://support.office.com/article/Distribution-groups-E8BA58A8-FAB2-4AAF-8AA1-2A304052D2DE) to the supervision policy. This is for 1-to-1 or 1-to-many user/chat relationships.

- **Third-party sources:** You can supervise communications from third-party sources for data imported into mailboxes in your Microsoft 365 organization. Connectors support the following third-party resources:

    - [Instant Bloomberg](archive-instant-bloomberg-data.md)
    - [Facebook](archive-facebook-data-with-sample-connector.md)
    - [LinkedIn](archive-linkedin-data.md)
    - SAP SuccessFactors
    - [Twitter](archive-twitter-data-with-sample-connector.md)
    - [Custom data connector](archiving-third-party-data.md)

## Policy settings

### Direction

By default, the **Direction is** condition is displayed and can't be removed. Communication direction settings in a policy are chosen individually or together:

- **Inbound**: You can choose **Inbound** to review communications sent **to** the people you chose to supervise **from** people not included in the policy.
- **Outbound**: You can choose **Outbound** if you want to review communications sent **from** the people you chose to supervise **to** people not included in the policy.
- **Internal**: You can choose **Internal** to review communications sent **between** the people you identified in the policy.

### Sensitive information types

You have the option of including sensitive information types as part of your communication supervision policy. Sensitive information types are either pre-defined or custom data types that can help identify and protect credit card numbers, bank account numbers, passport numbers, and more. As a part of Office 365 [data loss prevention (DLP)](data-loss-prevention-policies.md), the sensitive information configuration can use patterns, character proximity, confidence levels, and even custom data types to help identify and flag content that may be sensitive. The default sensitive information types are:

- Financial
- Medical and health
- Privacy
- Custom information type

To learn more about sensitive information details and the patterns included in the default types, see [What sensitive information types look for](what-the-sensitive-information-types-look-for.md).

### Custom keyword dictionaries

Configure custom keyword dictionaries (or lexicons) to provide simple management of keywords specific to your organization or industry. Keyword dictionaries support up to 100,000 terms per dictionary. If needed, you can apply multiple custom keyword dictionaries to a single policy or have a single keyword dictionary per policy. These dictionaries are assigned in a communication supervision policy and can be sourced from a file (such as a .csv or .txt list), or from a list you can [import in the Compliance center](create-a-keyword-dictionary.md).

### Offensive language

Scan sent or received email messages in your organization for offensive language. The built-in machine learning classifier uses a combination of machine learning, artificial intelligence, and keywords to identify language in email messages likely to violate anti-harassment and bullying policies. The offensive language classifier currently supports English keywords and scans the body of email messages.

> [!NOTE]
> Create a [data loss prevention policy](create-test-tune-dlp-policy.md) with a [custom keyword dictionary](create-a-keyword-dictionary.md) of blocked terms if you need to:
>
> - monitor Microsoft Teams communications in your organization for offensive language
> - prevent or block offensive language in communications in your organization

Please note that the built-in machine learning classifier does not provide an exhaustive list of offensive language. Further, language and cultural standards continually change, and in light of these realities, Microsoft reserves the right to update the classier in its discretion. While the classifier may assist your organization in monitoring offensive language, the classifier is not intended to provide your organization’s sole means of monitoring or addressing such language. Your organization, not Microsoft, remains responsible for all decisions related to scanning and blocking offensive language.

The offensive language classifier scans email for sentiment associated with the following types of language:

|**Type**|**Description**|
|:-----|:-----|
| **Profanities** | Expressions that embarrass most people. |
| **Slurs** | Expressions that express prejudice against particular groups (e.g., race, ethnicity, sexual orientation, disability). |
| **Taunts** | Expressions that taunt, condemn, ridicule, or could potentially cause anger or violence. |
| **Disguised expressions** | Expressions for which the meaning or pronunciation is the same as another more offensive term. |

### Conditional settings
<a name="ConditionalSettings"> </a>

The conditions you choose for the policy apply to communications from both email and 3rd-party sources in your organization (like from Facebook or DropBox).

The following table explains more about each condition.
  
|**Condition**|**How to use this condition**|
|:-----|:-----|
| **Content matches any of these classifiers** | Apply to the policy when any classifiers are included or excluded in a message. Some classifiers are pre-defined in your tenant and custom classifiers must be configured separately before they are available for this condition. Only one classifier can be defined as a condition in a policy. For more information about configuring classifiers, see [CLASSIFIER TOPIC](). |
| **Content contains any of these sensitive info types** | Apply to the policy when any sensitive information types are included or excluded in a message. Some classifiers are pre-defined in your tenant and custom classifiers can be configured separately or as part of the condition assignment process. Each sensitive information type you choose is applied separately and only one of these sensitive information types must apply for the policy to apply to the message. For more information about custom sensitive information types, see [Custom sensitive information types](custom-sensitive-info-types.md). |
| **Message is received from any of these domains**  <br><br> **Message is not received from any of these domains** | Apply the policy to include or exclude specific domains or email addresses in received messages. Enter each domain or email address and separate multiple domains or email addresses with a comma. Each domain or email address entered is applied separately, only one domain or email address must apply for the policy to apply to the message. <br><br> If you want to scan all email from a specific domain but want to exclude messages that do not need review (newsletters, announcements, etc.), you must configure the condition a **Message is not received from any of these domains** condition that excludes the email address (example "newsletter@contoso.com"). |
| **Message is sent to any of these domains**  <br><br> **Message is not sent to any of these domains** | Apply the policy to include or exclude specific domains or email addresses in sent messages. Enter each domain or email address and separate multiple domains or email addresses with a comma. Each domain or email address is applied separately, only one domain or email address must apply for the policy to apply to the message. <br><br> If you want to scan all email sent to a specific domain but want to exclude sent messages that do not need review, you must configure two conditions: <br> - A **Message is sent to any of these domains** condition that defines the domain ("contoso.com"), AND <br> - A **Message is not sent to any of these domains** condition that excludes the email address ("subscriptions@contoso.com"). |
| **Message is classified with any of these labels**  <br><br> **Message is not classified with any of these labels** | To apply the policy when certain retention labels are included or excluded in a message. Retention labels must be configured separately and configured labels are chosen as part of this condition. Each label you choose is applied separately (only one of these labels must apply for the policy to apply to the message). For more information about configuring retention labels, see [Overview of retention labels](labels.md).|
| **Message contains any of these words**  <br><br> **Message contains none of these words** | To apply the policy when certain words or phrases are included or excluded in a message, enter each word or phrase on a separate line. Each line of words you enter are applied separately (only one of these lines must apply for the policy to apply to the message). For more information about entering words or phrases, see the next section [Matching words and phrases to emails or attachments](supervision-policies.md#Matchwords).|
| **Attachment contains any of these words**  <br><br> **Attachment contains none of these words** | To apply the policy when certain words or phrases are included or excluded in a message attachment (such as a Word document), enter each word or phrase on a separate line. Each line of words you enter are applied separately (only one line must apply for the policy to apply to the attachment). For more information about entering words or phrases, see the next section [Matching words and phrases to emails or attachments](supervision-policies.md#Matchwords).|
| **Attachment is any of these file types**  <br><br> **Attachment is none of these file types** | To supervise communications that include or exclude specific types of attachments, enter the file extensions (such as .exe or .pdf). If you want to include or exclude multiple file extensions, enter these on separate lines. Only one attachment extension must match for the policy to apply.|
| **Message size is larger than**  <br><br> **Message size is not larger than** | To review messages based on a certain size, use these conditions to specify the maximum or minimum size a message can be before it is subject to review. For example, if you specify **Message size is larger than** \> **1.0 MB**, all messages that are 1.01 MB and larger are subject to review. You can choose bytes, kilobytes, megabytes, or gigabytes for this condition.|
| **Attachment is larger than**  <br><br> **Attachment is not larger than** | To review messages based on the size of their attachments, specify the maximum or minimum size an attachment can be before the message and its attachments are subject to review. For example, if you specify **Attachment is larger than** \> **2.0 MB**, all messages with attachments 2.01 MB and over are subject to review. You can choose bytes, kilobytes, megabytes, or gigabytes for this condition.|
   
#### Matching words and phrases to emails or attachments
<a name="Matchwords"> </a>

Each line of words you enter is applied separately (only one line must apply for the policy condition to apply to the email or attachment). For example, let's use the condition, **Message contains any of these words**, with the keywords "banker" and "insider trading" on separate lines. The policy applies to any messages that includes the word "banker" or the phrase "insider trading". Only one of these words or phrases must occur for this policy condition to apply. Words in the message or attachment must exactly match what you enter.

To scan both email messages and attachments for the same keywords, create a [data loss prevention policy](create-test-tune-dlp-policy.md) with a [custom keyword dictionary](create-a-keyword-dictionary.md) for the terms you wish to scan in messages. This policy configuration identifies defined keywords that appear in either the email message **OR** in the email attachment. Using the standard conditional policy settings (*Message contains any of these words* and *Attachment contains any of these words*) to identify terms in messages and in attachments requires the terms are present in **BOTH** the message and the attachment.
  
#### Enter multiple conditions

If you enter multiple conditions, Microsoft 365 uses all the conditions together to determine when to apply the supervision policy to communication items. When you set up multiple conditions, all conditions must be met for the policy to apply, unless you enter an exception. For example, you need a policy that applies if a message contains the word "trade", and is larger than 2 MB. However, if the message also contains the words "Approved by Contoso financial", the policy should not apply. In this example, the three conditions would be defined as follows:
  
- **Message contains any of these words**, with the keywords "trade"

- **Message size is larger than**, with the value 2 MB

- **Message contains none of these words**, with the keywords "Approved by Contoso financial team"

### Review percentage

If you want to reduce the amount of content to review, you can specify a percentage of all the communications governed by a supervision policy. A real-time, random sample of content is selected from the total percentage of content that matches chosen policy conditions. If you want reviewers to review all items, you can configure **100%** in a communication supervision policy.

## Notices

You can create notice templates if you want to send users an email reminder notice for policy violations as part of the issue resolution process. Notices templates are custom email templates where you can define the following message fields:

- Template name
- Sender address
- BCC and CC addresses
- Message subject
- Message body

When selecting a notice template to apply to a policy violation, you can choose to accept the field values you defined for the template or overwrite the fields as needed. The Message body field accepts either text or HTML data, all other notice template fields accept text-only data.

## PowerShell reference for Office 365 subscriptions

If needed, you can create and manage communication supervision policies in Office 365 subscriptions with the following PowerShell cmdlets. Graph and PowerShell scripting support is not supported for communication supervision in Microsoft 365 subscriptions.

- [New-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/new-supervisoryreviewpolicyv2?view=exchange-ps)
- [Get-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/get-supervisoryreviewpolicyv2?view=exchange-ps)
- [Set-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/set-supervisoryreviewpolicyv2?view=exchange-ps)
- [Remove-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/remove-supervisoryreviewpolicyv2?view=exchange-ps)
- [New-SupervisoryReviewRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/new-supervisoryreviewrule?view=exchange-ps)
- [Set-SupervisoryReviewRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/set-supervisoryreviewrule?view=exchange-ps)
- [Get-SupervisoryReviewActivity](https://docs.microsoft.com/powershell/module/exchange/reporting/get-supervisoryreviewactivity)
- [Get-SupervisoryReviewOverallProgressReport](https://docs.microsoft.com/powershell/module/exchange/reporting/get-supervisoryreviewoverallprogressreport)
- [Get-SupervisoryReviewTopCasesReport](https://docs.microsoft.com/powershell/module/exchange/reporting/get-supervisoryreviewtopcasesreport)

## Monitor & manage

It is easy to review the results of your supervision policies and apply a resolution tag. You can quickly see:

- The status of reviewed items
- Users and groups under supervision
- Users and groups designated as reviewers

## Supervision policy dashboard

Use the supervision policy dashboard to manage supervision policy results and to resolve outstanding items. This dashboard allows reviewers to view items that need to be reviewed, act on an item, and review the results of previously reviewed and resolved items for each supervision policy. You can access the supervision policy dashboard in the Compliance center at **Supervision** > *Your Custom Policy* > **Open**.

### Dashboard Home

The dashboard **Home** page has several sections to help you quickly act on your supervision policies. Here you can:

- Quickly review the pending and resolved highlights for the week
- See a list of the supervised users and supervised groups for the selected policy
- See a list of the reviewers and review teams for the selected policy
- See which communication platforms have content under supervision for the policy

### Review tab

The **Review** tab is where reviewers classify and resolve items identified by the selected policy. Here you can:

- Filter by pending, compliant, non-compliant, and questionable items.
- Tag a single item as compliant, non-compliant, or questionable. You can also record a comment with the item to help clarify the tagging action taken.
- Bulk tag multiple items as compliant, non-compliant, or questionable. You can also record a comment with multiple items to help clarify the tagging action taken.
- View the history of the tagging for a single item. Includes who resolved the item, the date and time of the action, the resolution tag, and any included comments.
- Reclassify previously reviewed items as compliant, non-compliant, or questionable. You can also record a comment with single or multiple items to help clarify the reclassification action taken.

### Resolved Items tab

The **Resolved Items** tab is where reviewers can view all previously resolved items for the selected policy. Here you can:

- Quickly view and sort the subject, sender, and date of resolved items
- View the classification and comment history of any selected item

## Reports

Use the supervision reports to see the review activity at the policy and reviewer level. For each policy, you can also view live statistics on the current state of review activity. You can use the supervision reports to:
  
- Verify that your policies are working as you intended.
- Find out how many communications need review.
- Find out how many communications aren't compliant and which ones are passing review. This information can help you decide whether to fine-tune your policies or change the number of reviewers.

## View the Supervision report

1. Sign into the [Compliance center](https://compliance.microsoft.com) with credentials for an admin account with permissions to view supervision reports.
2. Go to either **Reports** \> **Dashboard** or **Supervision** to view the supervision reporting widget for a summary of current supervision policy activity.
3. Select the **Supervision** widget to open the detailed report page.

> [!NOTE]
> If you aren't able to access the **Reports** page, check that you're a member of the Supervisory Review role group, as described in [Make supervision available in your organization](configure-supervision-policies.md). Inclusion in this role group lets you create and manage supervision polices and run the report.
  
## How to use the report

This report lists each policy and the number of communications at each stage in the review process. Use the report to:
  
- View data for all or specific policies.
- View data grouped by tag type, reviewer, or message type.
- Export data to a CSV file based on activity date, policy, and by reviewer activity.
- Filter data based on activity date, tag type, reviewer, and message type.

Here's a breakdown of the values displayed the **Tag type** column.
  
|**Tag type**|**What it means**|
|:-----|:-----|
| **Not Reviewed** | The number of emails not reviewed yet. These emails are awaiting review in the Office 365 supervision dashboard.
| **Compliant** | The number of emails reviewed and marked as compliant. These messages still need resolution. |
| **Questionable** | The number of emails reviewed and marked questionable. Serves as a flag for other reviewers to help check whether an email needs investigation for compliance. These messages still need resolution. |
| **Non-Compliant (Active)** | The number of non-compliant emails that reviewers are currently investigating. |
| **Non-Compliant (Resolved)** | The number of non-compliant emails that reviewers investigated and resolved. |
| **Hit Policy** | The total number (daily) of messages from Exchange, Teams, and third-party data sources that matched one or more conditions defined in a supervision policy |
| **In Purview** | The total number (daily) of messages from Exchange, Teams, and third-party data sources scanned by a supervision policy |
| **Resolved** | The total number of messages from Exchange, Teams, and third-party data sources classified as **Resolved**|

> [!NOTE]
> Supervision policies must be provisioned before they appear in reports. If policies are deleted, historical data is still shown. However, they're indicated as a "Non-existent policy" and the **Export** function isn't available.

## Audit

In some instances, you must provide information to regulatory or compliance auditors to prove supervision of employee activities and communications. This may be a summary of all supervisory activities associated with a defined policy or anytime a supervision policy changes. Supervision policies have built-in audit trails for complete readiness for internal or external audits. Detailed audit histories of every action captured by your supervision policies provide proof of supervisory procedures.

The following supervision policy activities are audited and available in the unified Office 365 audit logs:

|**Activity**|**Associated commands**|
|:-----|:-----|
| **Create a policy** | [New-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/new-supervisoryreviewpolicyv2) <br> [New-SupervisoryReviewRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/new-supervisoryreviewrule) |
| **Edit a policy** | [Set-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/set-supervisoryreviewpolicyv2) <br> [Set-SupervisoryReviewRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/set-supervisoryreviewrule) |
| **Delete a policy** | [Remove-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/remove-supervisoryreviewpolicyv2) |

View audit activities in the unified audit log or with the [Search-UnifiedAuditLog](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-audit/search-unifiedauditlog) PowerShell cmdlet.

For example, the following example returns the activities for the all the supervisory review activities (policies and rules) and lists detailed information for each:

```
Search-UnifiedAuditLog -StartDate 3/1/2019 -EndDate ([System.DateTime]::Now) -RecordType DataGovernance -ResultSize 5000 | Where-Object {$_.Operations -like "*SupervisoryReview*"}  | fl CreationDate,Operations,UserIds,AuditData
```

In addition to information provided in the supervision reports and logs, you can also use the [Get-SupervisoryReviewActivity](https://docs.microsoft.com/powershell/module/exchange/reporting/get-supervisoryreviewactivity?view=exchange-ps) PowerShell cmdlet to return a complete detailed listing of all supervision policy activities.

## Ready to get started?

To configure communication supervision for your Microsoft 365 organization, see [Configure communication supervision for your Microsoft 365 organization (preview)](configure-supervision-policies.md). To configure communication supervision in your Office 365 organization, see [Configure communication supervision in Office 365](supervision-configure-office-365.md).
