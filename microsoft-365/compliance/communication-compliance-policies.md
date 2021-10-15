---
title: "Communication compliance policies"
description: "Learn more about communication compliance policies."
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
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
- MOE150
---

# Communication compliance policies

## Policies

> [!IMPORTANT]
> Using PowerShell to create and manage communication compliance policies is not supported. To create and manage these policies, you must use the policy management controls in the [Microsoft 365 communication compliance solution](https://compliance.microsoft.com/supervisoryreview).

You create communication compliance policies for Microsoft 365 organizations in the Microsoft 365 compliance center. Communication compliance policies define which communications and users are subject to review in your organization, define which custom conditions the communications must meet, and specify who should do reviews. Users assigned the *Communication Compliance Admin* role can set up policies, and anyone who has this role assigned can access the **Communication compliance** page and global settings in the Microsoft 365 compliance center. If needed, you can export the history of modifications to a policy to a .csv (comma-separated values) file that also includes the status of alerts pending review, escalated items, and resolved items. Policies can't be renamed and can be deleted when no longer needed.

## Policy templates

Policy templates are pre-defined policy settings that you can use to quickly create policies to address common compliance scenarios. Each of these templates has differences in conditions and scope, and all templates use the same types of scanning signals. You can choose from the following policy templates:

|**Area**|**Policy Template**|**Details**|
|:-----|:-----|:-----|
| **Offensive language and anti-harassment** | Monitor communications for offensive language | - Locations: Exchange Online, Microsoft Teams, Yammer, Skype for Business <br> - Direction: Inbound, Outbound, Internal <br> - Review Percentage: 100% <br> - Conditions: Offensive language classifier |
| **Sensitive information** | Monitor communications for sensitive information | - Locations: Exchange Online, Microsoft Teams, Yammer, Skype for Business <br> - Direction: Inbound, Outbound, Internal <br> - Review Percentage: 10% <br> - Conditions: Sensitive information, out-of-the-box content patterns, and types, custom dictionary option, attachments larger than 1 MB |
| **Regulatory compliance** | Monitor communications for info related to financial regulatory compliance | - Locations: Exchange Online, Microsoft Teams, Yammer, Skype for Business <br> - Direction: Inbound, Outbound <br> - Review Percentage: 10% <br> - Conditions: custom dictionary option, attachments larger than 1 MB |
| **Conflict of interest** | Monitor communications between two groups or two users to help avoid conflicts of interest | - Locations: Exchange Online, Microsoft Teams, Yammer, Skype for Business <br> - Direction: Internal <br> - Review Percentage: 100% <br> - Conditions: None |

Communications are scanned every 24 hours from the time policies are created. For example, if you create an offensive language policy at 11:00 AM, the policy will gather communication compliance signals every 24 hours at 11:00 AM daily. Editing a policy doesn't change this time. To view the last scan date and time for a policy, navigate to the *Last policy scan* column on the **Policy** page. After creating a new policy, it may take up to 24 hours to view the first policy scan date and time. The date and time of the last scan are converted to the time zone of your local system.

## Pause a policy (preview)

After you've created a communication compliance policy, the policy may be temporarily paused if needed. Pausing a policy may be used for testing or troubleshooting policy matches, or for optimizing policy conditions. Instead of deleting a policy in these circumstances, pausing a policy also preserves existing policy alerts and messages for ongoing investigations and reviews. Pausing a policy prevents inspection and alert generation for all user message conditions defined in the policy for the time the policy is paused. To pause or restart a policy, users must be a member of the *Communication Compliance Admin* role group.

To pause a policy, navigate to the **Policy** page, select a policy, and then select **Pause policy** from the actions toolbar. On the **Pause policy** pane, confirm you'd like to pause the policy by selecting **Pause**. In some cases, it may take up to 24 hours for a policy to be paused. Once the policy is paused, alerts for messages matching the policy aren't created. However, messages associated with alerts that were created prior to pausing the policy remain available for investigation, review, and remediation.

The policy status for paused policies may indicate several states:

- **Active**: The policy is active
- **Paused**: The policy is fully paused.
- **Pausing**: The policy is in the process of being paused.
- **Resuming**: The policy in the process of being resumed.
- **Error in resuming**: An error has been encountered when resuming the policy. For the error stack trace, hover your mouse over the *Error in resuming* status in the Status column on the Policy page.
- **Error in pausing**: An error has been encountered when pausing the policy. For the error stack trace, hover your mouse over the *Error in pausing* status in the Status column on the Policy page.

To resume a policy, navigate to the **Policy** page, select a policy, and then select **Resume policy** from the actions toolbar. On the **Resume policy** pane, confirm you'd like to resume the policy by selecting **Resume**. In some cases, it may take up to 24 hours for a policy to be resumed. Once the policy is resumed, alerts for messages matching the policy will be created and will be available for investigation, review, and remediation.

## Copy a policy (preview)

For organizations with existing communication compliance policies, there may be scenarios when creating a new policy from an existing policy may be helpful. Copying a policy creates an exact duplicate of an existing policy, including all in-scope users, all assigned reviewers, and all policy conditions. Some scenarios may include:

- **Policy storage limit reached**: Active communication compliance policies have message storage limits. When the storage limit for a policy is reached, the policy is automatically deactivated. Organizations that need to continue to detect, capture, and act on inappropriate messages covered by the deactivated policy can quickly create a new policy with an identical configuration.
- **Detect and review inappropriate messages for different groups of users**: Some organizations may prefer to create multiple policies with the same configuration but include different in-scope users and different reviewers for each policy.
- **Similar policies with small changes**: For policies with complex configurations or conditions, it may save time to create a new policy from a similar policy.

To copy a policy, users must be a member of the *Communication Compliance* or *Communication Compliance Admin* role groups. After a new policy is created from an existing policy, it may take up to 24 hours to view messages that match the new policy configuration.

To copy a policy and create a new policy, complete the following steps:

1. Select the policy you want to copy.
2. Select **Copy policy** command bar button on the command bar, or select **Copy policy** from the action menu for the policy.
3. In the **Copy policy** pane, you can accept the default name for the policy in the **Policy name** field or rename the policy. The policy name for the new policy cannot be the same as an existing active or deactivated policy. Complete the **Description** field as needed.
4. If you don't need further customization of the policy, select **Copy policy** to complete the process. If you need to update the configuration of the new policy, select **Customize policy**. This starts the policy wizard to help you update and customize the new policy.

## Storage limit notification (preview)

Each communication compliance policy has a storage limit size of 100-GB or 1 million messages, whichever is reached first. As the policy approaches these limits, notification emails are automatically sent to users assigned to the *Communication Compliance* or *Communication Compliance Admin* role groups. Notifications messages are sent when the storage size or message count reach 80, 90, and 95 percent of the limit. When the policy limit is reached, the policy is automatically deactivated, and the policy stops processing messages for alerts.

>[!IMPORTANT]
>If a policy is deactivated due to reaching the storage and message limits, be sure to evaluate how to manage the deactivated policy. If you delete the policy, all messages, associated attachments, and message alerts will be permanently deleted. If you need to maintain these items for future use, do not delete the deactivated policy.

To manage policies approaching the storage and message limits, consider making a copy of the policy to maintain coverage continuity or take the following actions to help minimize current policy storage size and message counts:

- Consider reducing the number of users assigned to the policy. Removing users from the policy or creating different policies for different groups of users can help slow the growth of policy size and total messages.
- Examine the policy for excessive false positive alerts. Consider adding exceptions or changes to the policy conditions to ignore common false positive alerts.
- If a policy has reached the storage or message limits and has been deactivated, make a copy of the policy  to continue to detect and take action for the same conditions and users.

## Policy settings

### Users

You can choose to select **All users** or to define specific users in a communication compliance policy. Selecting **All users** applies the policy to all users and all groups that any user is included in as a member. Defining specific users applies the policy to the defined users and any groups the defined users are included in as a member.

### Direction

By default, the **Direction is** condition is displayed and can't be removed. Communication direction settings in a policy are chosen individually or together:

- **Inbound**: Detects communications sent **to** supervised users from external and internal senders, including other supervised users in the policy.
- **Outbound**: Detects communications sent **from** supervised users to external and internal recipients, including other supervised users in the policy.
- **Internal**: Detects communications **between** the supervised users or groups in the policy.

### Sensitive information types

You have the option of including sensitive information types as part of your communication compliance policy. Sensitive information types are either pre-defined or custom data types that can help identify and protect credit card numbers, bank account numbers, passport numbers, and more. As part of [Learn about data loss prevention](dlp-learn-about-dlp.md), the sensitive information configuration can use patterns, character proximity, confidence levels, and even custom data types to help identify and flag content that may be sensitive. The default sensitive information types are:

- Financial
- Medical and health
- Privacy
- Custom information type

To learn more about sensitive information details and the patterns included in the default types, see [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md).

### Custom keyword dictionaries

Configure custom keyword dictionaries (or lexicons) to provide simple management of keywords specific to your organization or industry. Keyword dictionaries support up to 100 KB of terms (post-compression) in the dictionary and support any language. The tenant limit is also 100 KB after compression. If needed, you can apply multiple custom keyword dictionaries to a single policy or have a single keyword dictionary per policy. These dictionaries are assigned in a communication compliance policy and can be sourced from a file (such as a .csv or .txt list), or from a list you can [Import in the Compliance center](create-a-keyword-dictionary.md). Use custom dictionaries when you need to support terms or languages specific to your organization and policies.

### Classifiers

Built-in trainable and global classifiers scan sent or received messages across all communication channels in your organization for different types of compliance issues. Classifiers use a combination of artificial intelligence and keywords to identify language in messages likely to violate anti-harassment policies. Built-in classifiers currently support message keyword identification in several languages:

- Chinese (Simplified)
- English
- French
- German
- Italian
- Japanese
- Portuguese
- Spanish

Communication compliance built-in trainable and global classifiers scan communications for terms, images, and sentiment for the following types of language and content:

- **Adult images**: Scans for images that are sexually explicit in nature.
- **Discrimination (preview)**: Scans for explicit discriminatory language and is particularly sensitive to discriminatory language against the African American/Black communities when compared to other communities.
- **Gory images**: Scans for images that depict violence and gore.
- **Profanity**: Scans for profane expressions that embarrass most people.
- **Racy images**: Scans for images that are sexually suggestive in nature, but contain less explicit content than images deemed Adult.
- **Targeted harassment**: Scans for offensive conduct targeting people regarding race, color, religion, national origin.
- **Threat**: Scans for threats to commit violence or physical harm to a person or property.

The *Adult*, *Racy*, and *Gory* image classifiers scan files in .jpeg, .png, .gif, and .bmp formats. The size for image files must be less than 4 megabytes (MB) and the dimensions of the images must be greater than 50x50 pixels and greater than 50 kilobytes (KB) for the image to qualify for evaluation. Image identification is supported for Exchange Online email messages and Microsoft Teams channels and chats.

The built-in trainable and global classifiers don't provide an exhaustive list of terms or images across these areas. Further, language and cultural standards continually change, and in light of these realities, Microsoft reserves the right to update classifiers at its discretion. While classifiers may assist your organization in monitoring these areas, classifiers aren't intended to provide your organization's sole means of monitoring or addressing such language or imagery. Your organization, not Microsoft, remains responsible for all decisions related to monitoring, scanning, and blocking language and images in these areas, including compliance with local privacy and other applicable laws. Microsoft encourages consulting with legal counsel before deployment and use.

> [!NOTE]
> Policies using classifiers will inspect and evaluate messages with a word count of six or greater. Messages containing less than six words aren't evaluated in policies using classifiers. To identify and take action on shorter messages containing inappropriate content, we recommend including a custom keyword dictionary to communication compliance policies monitoring for this type of content.

For information about trainable classifiers in Microsoft 365, see [Getting started with trainable classifiers](classifier-get-started-with.md).

### Optical character recognition (OCR)

Configure built-in or custom communication compliance policies to scan and identify printed or handwritten text from images that may be inappropriate in your organization. Integrated [Azure Cognitive Services and optical scanning support](/azure/cognitive-services/computer-vision/overview-ocr) for identifying text in images help analysts and investigators detect and act on instances where inappropriate conduct may be missed in communications that is primarily non-textual.

You can enable optical character recognition (OCR) in new policies from templates, custom policies, or update existing policies to expand support for processing embedded images and attachments. When enabled in a policy created from a policy template, automatic scanning is supported for embedded or attached images in email and Microsoft Teams chat messages. For images embedded in document files, OCR scanning isn't supported. For custom policies, one or more conditional settings associated with keywords, built-in classifiers, or sensitive info types must be configured in the policy to enable the selection of OCR scanning.

Images from 50 KB to 4 MB in the following image formats are scanned and processed:

- .jpg/.jpeg (joint photographic experts group)
- .png (portable network graphics)
- .bmp (bitmap)
- .tiff (tag image file format)
- .pdf (portable document format)

> [!NOTE]
> Scanning and extraction for embedded and attached .pdf images is currently supported only for email messages.

When reviewing pending alerts for policies with OCR enabled, images identified and matched to policy conditions are displayed as child items for associated alerts. You can view the original image to evaluate the identified text in context with the original message. It may take up to 48 hours for detected images to be available with alerts.

### Conditional settings
<a name="ConditionalSettings"> </a>

The conditions you choose for the policy apply to communications from both email and third-party sources in your organization (like from Instant Bloomberg).

The following table explains more about each condition.

|**Condition**|**How to use this condition**|
|:-----|:-----|
| **Content matches any of these classifiers** | Apply to the policy when any classifiers are included or excluded in a message. Some classifiers are pre-defined in your tenant, and custom classifiers must be configured separately before they're available for this condition. Only one classifier can be defined as a condition in a policy. For more information about configuring classifiers, see [Learn about trainable classifiers (preview)](classifier-learn-about.md). |
| **Content contains any of these sensitive info types** | Apply to the policy when any sensitive information types are included or excluded in a message. Some classifiers are pre-defined in your tenant, and custom classifiers can be configured separately or as part of the condition assignment process. Each sensitive information type you choose is applied separately and only one of these sensitive information types must apply for the policy to apply to the message. For more information about custom sensitive information types, see [Learn about sensitive information types](sensitive-information-type-learn-about.md). |
| **Message is received from any of these domains**  <br><br> **Message is not received from any of these domains** | Apply the policy to include or exclude specific domains or email addresses in received messages. Enter each domain or email address and separate multiple domains or email addresses with a comma. Each domain or email address entered is applied separately, only one domain or email address must apply for the policy to apply to the message. <br><br> If you want to scan all email from a specific domain, but want to exclude messages that don't need review (newsletters, announcements, and so on), you must configure a **Message is not received from any of these domains** condition that excludes the email address (example "newsletter@contoso.com"). |
| **Message is sent to any of these domains**  <br><br> **Message is not sent to any of these domains** | Apply the policy to include or exclude specific domains or email addresses in sent messages. Enter each domain or email address and separate multiple domains or email addresses with a comma. Each domain or email address is applied separately, only one domain or email address must apply for the policy to apply to the message. <br><br> If you want to scan all email sent to a specific domain, but want to exclude sent messages that don't need review, you must configure two conditions: <br> - A **Message is sent to any of these domains** condition that defines the domain ("contoso.com"), AND <br> - A **Message is not sent to any of these domains** condition that excludes the email address ("subscriptions@contoso.com"). |
| **Message is classified with any of these labels**  <br><br> **Message is not classified with any of these labels** | To apply the policy when certain retention labels are included or excluded in a message. Retention labels must be configured separately and configured labels are chosen as part of this condition. Each label you choose is applied separately (only one of these labels must apply for the policy to apply to the message). For more information about retention labels, see [Learn about retention policies and retention labels](retention.md).|
| **Message contains any of these words**  <br><br> **Message contains none of these words** | To apply the policy when certain words or phrases are included or excluded in a message, enter each word separated with a comma. For phrases of two words or more, use quotation marks around the phrase. Each word or phrase you enter is applied separately (only one word must apply for the policy to apply to the message). For more information about entering words or phrases, see the next section [Matching words and phrases to emails or attachments](communication-compliance-policies.md#Matchwords).|
| **Attachment contains any of these words**  <br><br> **Attachment contains none of these words** | To apply the policy when certain words or phrases are included or excluded in a message attachment (such as a Word document), enter each word separated with a comma. For phrases of two words or more, use quotation marks around the phrase. Each word or phrase you enter is applied separately (only one word must apply for the policy to apply to the attachment). For more information about entering words or phrases, see the next section [Matching words and phrases to emails or attachments](communication-compliance-policies.md#Matchwords).|
| **Attachment is any of these file types**  <br><br> **Attachment is none of these file types** | To supervise communications that include or exclude specific types of attachments, enter the file extensions (such as .exe or .pdf). If you want to include or exclude multiple file extensions, enter these on separate lines. Only one attachment extension must match for the policy to apply.|
| **Message size is larger than**  <br><br> **Message size is not larger than** | To review messages based on a certain size, use these conditions to specify the maximum or minimum size a message can be before it's subject to review. For example, if you specify **Message size is larger than** \> **1.0 MB**, all messages that are 1.01 MB and larger are subject to review. You can choose bytes, kilobytes, megabytes, or gigabytes for this condition.|
| **Attachment is larger than**  <br><br> **Attachment is not larger than** | To review messages based on the size of their attachments, specify the maximum or minimum size an attachment can be before the message and its attachments are subject to review. For example, if you specify **Attachment is larger than** \> **2.0 MB**, all messages with attachments 2.01 MB and over are subject to review. You can choose bytes, kilobytes, megabytes, or gigabytes for this condition.|

#### Matching words and phrases to emails or attachments
<a name="Matchwords"> </a>

Each word you enter and separate with a comma is applied separately (only one word must apply for the policy condition to apply to the email or attachment). For example, let's use the condition, **Message contains any of these words**, with the keywords "banker", "confidential", and "insider trading" separated by a comma (banker, confidential,"insider trading"). The policy applies to any messages that includes the word "banker", "confidential", or the phrase "insider trading". Only one of these words or phrases must occur for this policy condition to apply. Words in the message or attachment must exactly match what you enter.

> [!IMPORTANT]
>
> When importing a custom dictionary file, each word or phrase must be separated with a carriage return and on a separate line. For example:
>
> *banker* <br>
> *confidential* <br>
> *insider trading*

To scan both email messages and attachments for the same keywords, create a [custom keyword dictionary](create-a-keyword-dictionary.md) for the terms you wish to scan in messages. This policy configuration identifies defined keywords that appear in either the email message **OR** in the email attachment. Using the standard conditional policy settings (*Message contains any of these words* and *Attachment contains any of these words*) to identify terms in messages and in attachments requires the terms to be present in **BOTH** the message and the attachment.

#### Enter multiple conditions

If you enter multiple conditions, Microsoft 365 uses all the conditions together to determine when to apply the communication compliance policy to communication items. When you set up multiple conditions, all conditions must be met for the policy to apply, unless you enter an exception. For example, you need a policy that applies if a message contains the word "trade", and is larger than 2 MB. However, if the message also contains the words "Approved by Contoso financial", the policy shouldn't apply. In this example, the three conditions would be defined as follows:

- **Message contains any of these words**, with the keyword "trade"
- **Message size is larger than**, with the value 2 MB
- **Message contains none of these words**, with the keywords "Approved by Contoso financial team"

### Review percentage

If you want to reduce the amount of content to review, you can specify a percentage of all the communications governed by a communication compliance policy. A real-time, random sample of content is selected from the total percentage of content that matches chosen policy conditions. If you want reviewers to review all items, you can configure **100%** in a communication compliance policy.

## Alert policies

After you configure a policy, a corresponding alert policy is automatically created and alerts are generated for messages that match conditions defined in the policy. It may take up to 24 hours after creating a policy start to receive alerts from activity indicators. By default, all policy matches alert triggers are assigned a severity level of medium in the associated alert policy. Alerts are generated for a communication compliance policy once the aggregation trigger threshold level is met in the associated alert policy. A single email notification is sent once every 24 hours for any alerts, regardless of the number of individual messages that match policy conditions. For example, Contoso has an offensive language policy enabled and for January 1st, there were 100 policy matches that generated 6 alerts. A single email notification for the 6 alerts is sent at end of January 1st.

For communication compliance policies, the following alert policy values are configured by default:

|**Alert policy trigger**|**Default value**|
|:-----|:-----|
| Aggregation | Simple aggregation |
| Threshold | Default: 4 activities <br> Minimum: 3 activities <br> Maximum: 2,147,483,647 activities |
| Window | Default: 60 minutes <br> Minimum: 60 minutes <br> Maximum: 10,000 minutes |

> [!NOTE]
> The alert policy threshold trigger settings for activities supports a minimum value of 3 or higher for communication compliance policies.

You can change the default settings for triggers on number of activities, period for the activities, and for specific users in alert policies on the **Alert policies** page in the Microsoft 365 compliance center.

### Change the severity level for an alert policy

If you'd like to change the severity level assigned in an alert policy for a specific communication compliance policy, complete the following steps:

1. Sign into [Microsoft 365 compliance center](https://compliance.microsoft.com) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft 365 compliance center, go to **Policies**.

3. Select **Office 365 alert** on the **Policies** page to open the **Alerts policies** page.

4. Select the checkbox for the communication compliance policy you want to update, then select **Edit policy**.

5. On the **Description** tab, select the **Severity** dropdown to configure the policy alert level.

6. Select **Save** to apply the new severity level to the policy.

7. Select **Close** to exit the alert policy details page.
