---
title: "DLP policy conditions, exceptions, and actions"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: None
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
recommendations: false
description: "learn about dlp policy conditions and exceptions"
---

# DLP policy conditions, exceptions, and actions

Conditions and exceptions in DLP policies identify sensitive items that the policy is applied to. Actions define what happens as a consequence of a condition of exception being met.

- Conditions define what to include
- Exceptions define what to exclude.
- Actions define what happens as a consequence of condition or exception being met
 
Most conditions and exceptions have one property that supports one or more values. For example, if the DLP policy is being applied to Exchange emails, the **The sender** is condition requires the sender of the message. Some conditions have two properties. For example, the **A message header includes any of these words** condition requires one property to specify the message header field, and a second property to specify the text to look for in the header field. Some conditions or exceptions don’t have any properties. For example, the **Attachment is password protected** condition simply looks for attachments in messages that are password protected.

Actions typically require additional properties. For example, when the DLP policy rule redirects a message, you need to specify where the message is redirected to. 
<!-- Some actions have multiple properties that are available or required. For example, when the rule adds a header field to the message header, you need to specify both the name and value of the header. When the rule adds a disclaimer to messages, you need to specify the disclaimer text, but you can also specify where to insert the text, or what to do if the disclaimer can't be added to the message. Typically, you can configure multiple actions in a rule, but some actions are exclusive. For example, one rule can't reject and redirect the same message.-->

## Conditions and exceptions for DLP policies

The tables in the following sections describe the conditions and exceptions that are available in DLP.

- [Senders](#senders)
- [Recipients](#recipients)
- [Message subject or body](#message-subject-or-body)
- [Attachments](#attachments)
- [Message headers](#message-headers)
- [Message properties](#message-properties)

### Senders


|**condition or exception in DLP**  |**condition/exception parameters in Microsoft 365 PowerShell** |**property type**  |**description**|
|---------|---------|---------|---------|
|Sender is |condition: *From* <br/> exception: *ExceptIfFrom*      |Addresses |     Messages that are sent by the specified mailboxes, mail users, mail contacts, or Microsoft 365 groups in the organization.|
|Sender IP address is     |condition: *SenderIPRanges*<br/> exception: *ExceptIfSenderIPRanges*         |  IPAddressRanges       | Messages where the sender's IP address matches the specified IP address, or falls within the specified IP address range.       |
|Sender address contains words   | condition: *FromAddressContainsWords* <br/> exception: *ExceptIfFromAddressContainsWords*        |   Words      |   Messages that contain the specified words in the sender's email address.|
| Sender address matches patterns    | condition: *FromAddressMatchesPatterns* <br/> exception: *ExceptFromAddressMatchesPatterns*       |      Patterns   |  Messages where the sender's email address contains text patterns that match the specified regular expressions.  |
|Sender domain is  |  condition: *SenderDomainIs* <br/> exception: *ExceptIfSenderDomainIs*       |DomainName         |     Messages where the domain of the sender's email address matches the specified value. If you need to find sender domains that *contain* the specified domain (for example, any subdomain of a domain), use **The sender address matches**(*FromAddressMatchesPatterns*) condition and specify the domain by using the syntax: '\.domain\.com$'.    |
|Sender scope    | condition: *FromScope* <br/> exception: *ExceptIfFromScope*    | UserScopeFrom    |    Messages that are sent by either internal or external senders.    |
|The sender's specified properties include any of these words|condition: *SenderADAttributeContainsWords* <br/> exception: *ExceptIfSenderADAttributeContainsWords*|First property: `ADAttribute` <p> Second property: `Words`|Messages where the specified Active Directory attribute of the sender contains any of the specified words.|
|The sender's specified properties match these text patterns|condition: *SenderADAttributeMatchesPatterns* <br/> exception: *ExceptIfSenderADAttributeMatchesPatterns*|First property: `ADAttribute` <p> Second property: `Patterns`|Messages where the specified Active Directory attribute of the sender contains text patterns that match the specified regular expressions.|

### Recipients

|**condition or exception in DLP**|	**condition/exception parameters in Microsoft 365 PowerShell** |	**property type** |	**description**|
|---------|---------|---------|---------|
|Recipient is|	condition: *SentTo* <br/> exception: *ExceptIfSentTo* | Addresses |	Messages where one of the recipients is the specified mailbox, mail user, or mail contact in the organization. The recipients can be in the **To**, **Cc**, or **Bcc** fields of the message.|
|Recipient domain is|	condition: *RecipientDomainIs* <br/> exception: *ExceptIfRecipientDomainIs* |	DomainName |	Messages where the domain of the recipient's email address matches the specified value.|
|Recipient address contains words|	condition: *AnyOfRecipientAddressContainsWords* <br/> exception: *ExceptIfAnyOfRecipientAddressContainsWords*|	Words|	Messages that contain the specified words in the recipient's email address. <br/>**Note**: This condition doesn't consider messages that are sent to recipient proxy addresses. It only matches messages that are sent to the recipient's primary email address.|
|Recipient address matches patterns| condition: *AnyOfRecipientAddressMatchesPatterns* <br/> exception: *ExceptIfAnyOfRecipientAddressMatchesPatterns*|	Patterns	|Messages where a recipient's email address contains text patterns that match the specified regular expressions. <br/> **Note**: This condition doesn't consider messages that are sent to recipient proxy addresses. It only matches messages that are sent to the recipient's primary email address.|
|Sent to member of|	condition: *SentToMemberOf* <br/> exception: *ExceptIfSentToMemberOf*|	Addresses|	Messages that contain recipients who are members of the specified distribution group, mail-enabled security group, or Microsoft 365 group. The group can be in the **To**, **Cc**, or **Bcc** fields of the message.|

### Message subject or body

|**condition or exception in DLP** | **condition/exception parameters in Microsoft 365 PowerShell** |**property type**|	**description**|
|---------|---------|---------|---------|
|Subject contains words or phrases|	condition: *SubjectContainsWords* <br/> exception: *ExceptIf SubjectContainsWords*|	Words	|Messages that have the specified words in the Subject field.|
|Subject matches patterns|condition: *SubjectMatchesPatterns* <br/> exception: *ExceptIf SubjectMatchesPatterns*|Patterns	|Messages where the Subject field contain text patterns that match the specified regular expressions.|
|Content contains|	condition: *ContentContainsSensitiveInformation* <br/> exception *ExceptIfContentContainsSensitiveInformation*|	SensitiveInformationTypes|	Messages or documents that contain sensitive information as defined by data loss prevention (DLP) policies.|
| Subject or Body matches pattern    | condition: *SubjectOrBodyMatchesPatterns* <br/> exception: *ExceptIfSubjectOrBodyMatchesPatterns*    | Patterns    | Messages where the subject field or message body contains text patterns that match the specified regular expressions.    |
| Subject or Body contains words    | condition: *SubjectOrBodyContainsWords* <br/> exception: *ExceptIfSubjectOrBodyContainsWords*    | Words    | Messages that have the specified words in the subject field or message body    |


### Attachments

|**condition or exception in DLP**|	**condition/exception parameters in Microsoft 365 PowerShell**|	**property type**	|**description**|
|---------|---------|---------|---------|
|Attachment is password protected|condition: *DocumentIsPasswordProtected* <br/> exception: *ExceptIfDocumentIsPasswordProtected*|none| Messages where an attachment is password protected (and therefore can't be scanned). Password detection only works for Office documents, .zip files, and .7z files.|
|Attachment’s file extension is|condition: *ContentExtensionMatchesWords* <br/> exception: *ExceptIfContentExtensionMatchesWords*|	Words	|Messages where an attachment's file extension matches any of the specified words.|
|Any email attachment’s content could not be scanned|condition: *DocumentIsUnsupported* <br/>exception: *ExceptIf DocumentIsUnsupported*|	n/a|	Messages where an attachment isn't natively recognized by Exchange Online.|
|Any email attachment’s content didn’t complete scanning|	condition: *ProcessingLimitExceeded* <br/> exception: *ExceptIfProcessingLimitExceeded*|	n/a	|Messages where the rules engine couldn't complete the scanning of the attachments. You can use this condition to create rules that work together to identify and process messages where the content couldn't be fully scanned.|
|Document name contains words|condition: *DocumentNameMatchesWords* <br/> exception: *ExceptIfDocumentNameMatchesWords* |Words	|Messages where an attachment's file name matches any of the specified words.|
|Document name matches patterns|condition: *DocumentNameMatchesPatterns* <br/> exception: *ExceptIfDocumentNameMatchesPatterns*|	Patterns	|Messages where an attachment's file name contains text patterns that match the specified regular expressions.|
|Document property is|condition: *ContentPropertyContainsWords* <br/> exception: *ExceptIfContentPropertyContainsWords*	|Words|	Messages or documents where an attachment's file extension matches any of the specified words.|
|Document size equals or is greater than| condition: *DocumentSizeOver* <br/> exception: *ExceptIfDocumentSizeOver*|	Size	|Messages where any attachment is greater than or equal to the specified value.|
|Any attachment's content includes any of these words| condition: *DocumentContainsWords* <br/> exception: *ExceptIfDocumentContainsWords* |`Words`|Messages where an attachment contains the specified words.|
|Any attachments content matches these text patterns|condition: *DocumentMatchesPatterns* <br/> exception: *ExceptIfDocumentMatchesPatterns* |`Patterns`|Messages where an attachment contains text patterns that match the specified regular expressions. |

### Message Headers

|**condition or exception in DLP**|	**condition/exception parameters in Microsoft 365 PowerShell**|	**property type**|	**description**|
|---------|---------|---------|---------|
|Header contains words or phrases|condition: *HeaderContainsWords* <br/> exception: *ExceptIfHeaderContainsWords*|	Hash Table	|Messages that contain the specified header field, and the value of that header field contains the specified words.|
|Header matches patterns|	condition: *HeaderMatchesPatterns* <br/> exception: *ExceptIfHeaderMatchesPatterns*|	Hash Table	|Messages that contain the specified header field, and the value of that header field contains the specified regular expressions.|

### Message properties

|**condition or exception in DLP**|	**condition/exception parameters in Microsoft 365 PowerShell**|	**property type**	|**description**|
|---------|---------|---------|---------|
| With importance    | condition: *WithImportance* <br/> exception: *ExceptIfWithImportance*    | Importance    | Messages that are marked with the specified importance level.    |
| Content character set contains words    | condition: *ContentCharacterSetContainsWords* <br/> *ExceptIfContentCharacterSetContainsWords*    | CharacterSets    | Messages that have any of the specified character set names.    |
| Has sender override    | condition: *HasSenderOverride* <br/> exception: *ExceptIfHasSenderOverride*    | n/a    | Messages where the sender has chosen to override a data loss prevention (DLP) policy. For more information about DLP policies see [Learn about data loss prevention](./dlp-learn-about-dlp.md) |
| Message type matches    | condition: *MessageTypeMatches* <br/> exception: *ExceptIfMessageTypeMatches*    | MessageType    | Messages of the specified type.    |
|The message size is greater than or equal to| condition: *MessageSizeOver* <br/> exception: *ExceptIfMessageSizeOver* |`Size`|Messages where the total size (message plus attachments) is greater than or equal to the specified value. **Note**: Message size limits on mailboxes are evaluated before mail flow rules. A message that's too large for a mailbox will be rejected before a rule with this condition is able to act on the message.|

## Actions for DLP policies

This table describes the actions that are available in DLP.


|**action in DLP**|**action parameters in Microsoft 365 PowerShell**|**property type**|**description**|
|---------|---------|---------|---------|
|Set header|SetHeader|First property: *Header Name* </br> Second property: *Header Value*|The SetHeader parameter specifies an action for the DLP rule that adds or modifies a header field and value in the message header. This parameter uses the syntax "HeaderName:HeaderValue". You can specify multiple header name and value pairs separated by commas|
|Remove header|	RemoveHeader| First property: *MessageHeaderField*</br> Second property: *String*|	The RemoveHeader parameter specifies an action for the DLP rule that removes a header field from the message header. This parameter uses the syntax “HeaderName” or "HeaderName:HeaderValue".You can specify multiple header names or header name and value pairs separated by commas|
|Redirect the message to specific users|*RedirectMessageTo*|Addresses| Redirects the message to the specified recipients. The message isn't delivered to the original recipients, and no notification is sent to the sender or the original recipients.|
|Forward the message for approval to sender’s manager| Moderate|First property: *ModerateMessageByManager*</br> Second property: *Boolean*|The Moderate parameter specifies an action for the DLP rule that sends the email message to a moderator. This parameter uses the syntax: @{ModerateMessageByManager = <$true \| $false>;|
|Forward the message for approval to specific approvers| Moderate|First property: *ModerateMessageByUser*</br>Second property: *Addresses*|The Moderate parameter specifies an action for the DLP rule that sends the email message to a moderator. This parameter uses the syntax: @{ ModerateMessageByUser = @("emailaddress1","emailaddress2",..."emailaddressN")}|
|Add recipient|AddRecipients|First property: *Field*</br>Second property: *Addresses*| Adds one or more recipients to the To/Cc/Bcc field of the message. This parameter uses the syntax: @{<AddToRecipients \| CopyTo \| BlindCopyTo> = "emailaddress"}|
|Add the sender’s manager as recipient|AddRecipients | First property: *AddedManagerAction*</br>Second property: *Field* | Adds the sender's manager to the message as the specified recipient type ( To, Cc, Bcc ), or redirects the message to the sender's manager without notifying the sender or the recipient. This action only works if the sender's Manager attribute is defined in Active Directory. This parameter uses the syntax: @{AddManagerAsRecipientType = "<To \| Cc \| Bcc>"}|    
Prepend subject    |PrependSubject    |String    |Adds the specified text to the beginning of the Subject field of the message. Consider using a space or a colon (:) as the last character of the specified text to differentiate it from the original subject text.</br>To prevent the same string from being added to messages that already contain the text in the subject (for example, replies), add the "The subject contains words" (ExceptIfSubjectContainsWords) exception to the rule.    
|Apply HTML disclaimer    |ApplyHtmlDisclaimer    |First property: *Text*</br>Second property: *Location*</br>Third property: *Fallback action*    |Applies the specified HTML disclaimer to the required location of the message.</br>This parameter uses the syntax: @{ Text = “ ” ; Location = <Append \| Prepend>; FallbackAction = <Wrap \| Ignore \| Reject> }
|Remove Office 365 Message Encryption and rights protection    | RemoveRMSTemplate | n/a| Removes Office 365 encryption applied on an email|
